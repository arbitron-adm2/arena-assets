#!/usr/bin/env python3
"""Re-export shape PNGs for packs where FFDec aborted on a zero-size shape."""
import os, re, subprocess, sys, glob

FFDEC = os.environ.get('FFDEC', os.path.expanduser('~/.local/share/ffdec/ffdec.jar'))
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = sys.argv[1] if len(sys.argv) > 1 else '1.61.7'

def ranges(ids):
    ids = sorted(ids)
    out, start, prev = [], None, None
    for i in ids:
        if start is None:
            start = prev = i
        elif i == prev + 1:
            prev = i
        else:
            out.append(f'{start}-{prev}' if start != prev else str(start))
            start = prev = i
    if start is not None:
        out.append(f'{start}-{prev}' if start != prev else str(start))
    return ','.join(out)

def dump_ids(swf):
    p = subprocess.run(['java', '-jar', FFDEC, '-dumpSWF', swf], capture_output=True, text=True)
    return [int(m) for m in re.findall(r'DefineShape\w* \(chid: (\d+)\)', p.stdout)]

logdir = os.path.join(ROOT, 'packs', '_logs')
for log in sorted(glob.glob(os.path.join(logdir, '*.png.log'))):
    txt = open(log, errors='ignore').read()
    if 'cannot be <= 0' not in txt:
        continue
    name = os.path.basename(log)[:-len('.png.log')]
    rel = name.replace('_', '/', 0)  # placeholder
    # log names are path with / -> _
    swf = None
    for cand in glob.glob(os.path.join(ROOT, 'swf', VER, '**', '*.swf'), recursive=True):
        r = os.path.relpath(cand, os.path.join(ROOT, 'swf', VER))[:-4].replace('/', '_')
        if r == name:
            swf = cand
            break
    if not swf:
        print('skip (no swf)', name); continue
    m = re.findall(r'Exported shape (\d+)/(\d+)', txt)
    if not m:
        print('skip (no count)', name); continue
    done = int(m[-1][0])
    ids = dump_ids(swf)
    if not ids:
        print('skip (no shape ids)', name); continue
    culprit = ids[done] if done < len(ids) else None
    keep = [i for i in ids if i != culprit]
    sel = ranges(keep)
    out = os.path.join(ROOT, 'packs', VER, os.path.relpath(swf, os.path.join(ROOT, 'swf', VER))[:-4].replace('data/', '', 1))
    print(f'{name}: shapes={len(ids)} done={done} culprit={culprit} keep={len(keep)} -> {out}')
    r = subprocess.run(['java', '-jar', FFDEC, '-format', 'shape:png', '-selectid', sel,
                        '-export', 'shape', out, swf], capture_output=True, text=True)
    tail = [l for l in r.stdout.splitlines() if 'Exported shape' in l or 'FAIL' in l or 'Error' in l]
    print('   ', tail[-1] if tail else r.stdout[-200:])
