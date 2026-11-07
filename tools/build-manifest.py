#!/usr/bin/env python3
"""Build manifest.json for the extracted Wormix asset set."""
import hashlib, json, os, sys, collections

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

def sha256(p, block=1 << 20):
    h = hashlib.sha256()
    with open(p, 'rb') as f:
        for chunk in iter(lambda: f.read(block), b''):
            h.update(chunk)
    return h.hexdigest()

def walk(base):
    out = []
    for dirpath, _dirs, files in os.walk(base):
        for fn in sorted(files):
            p = os.path.join(dirpath, fn)
            out.append((os.path.relpath(p, base), p))
    return sorted(out)

def main():
    man = {'format': 1, 'generated_by': 'tools/build-manifest.py', 'versions': {}}
    packs_root = os.path.join(ROOT, 'packs')
    swf_root = os.path.join(ROOT, 'swf')
    data_root = os.path.join(ROOT, 'data')
    client_root = os.path.join(ROOT, 'client')

    versions = sorted({v for v in os.listdir(swf_root) if os.path.isdir(os.path.join(swf_root, v))})
    for ver in versions:
        entry = {'swf': [], 'packs': [], 'data': [], 'client': [], 'totals': {}}

        for rel, p in walk(os.path.join(swf_root, ver)):
            entry['swf'].append({'path': rel, 'size': os.path.getsize(p), 'sha256': sha256(p)})
            if rel.endswith('.swf'):
                pd = os.path.join(packs_root, ver, rel.replace('data/', '', 1)[:-len('.swf')])
                if os.path.isdir(pd):
                    counts = collections.Counter()
                    size = 0
                    for d2, _s, f2 in os.walk(pd):
                        for fn in f2:
                            counts[os.path.splitext(fn)[1].lstrip('.').lower() or 'none'] += 1
                            size += os.path.getsize(os.path.join(d2, fn))
                    entry['packs'].append({'swf': rel, 'dir': os.path.relpath(pd, ROOT),
                                           'files': dict(sorted(counts.items())), 'bytes': size})

        for rel, p in walk(os.path.join(data_root, ver)) if os.path.isdir(os.path.join(data_root, ver)) else []:
            entry['data'].append({'path': rel, 'size': os.path.getsize(p)})

        if os.path.isdir(os.path.join(client_root, ver)):
            for rel, p in walk(os.path.join(client_root, ver)):
                entry['client'].append({'path': rel, 'size': os.path.getsize(p),
                                        'sha256': sha256(p) if os.path.getsize(p) < 8 << 20 else None})

        entry['totals'] = {
            'swf_files': len([s for s in entry['swf'] if s['path'].endswith('.swf')]),
            'swf_bytes': sum(s['size'] for s in entry['swf']),
            'pack_files': sum(sum(p['files'].values()) for p in entry['packs']),
            'pack_bytes': sum(p['bytes'] for p in entry['packs']),
            'data_files': len(entry['data']),
            'data_bytes': sum(d['size'] for d in entry['data']),
            'client_files': len(entry['client']),
            'client_bytes': sum(c['size'] for c in entry['client']),
        }
        man['versions'][ver] = entry

    path = os.path.join(ROOT, 'manifest.json')
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(man, f, indent=1, ensure_ascii=False)
    print('wrote', path)
    for ver, e in man['versions'].items():
        print(ver, e['totals'])

if __name__ == '__main__':
    main()
