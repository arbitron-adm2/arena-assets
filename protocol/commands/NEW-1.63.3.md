# Команды 1.63.3 — детализация

Всего id: 250. Новых: 79.

Направление определяется по наличию `read*`/`write*` в сериализаторе:
`s->c` — ответ сервера, `c->s` — запрос клиента, `?` — ни чтения, ни записи (маркер).

| id | класс | напр. | поля | предположительное имя |
|---:|---|---|---|---|
| 0 | §`%2§ | c->s | — | — |
| 17 | §`+I§ | s->c | action:Short, battleId:UnsignedInt, message:UTF | PlayerActionNotify |
| 144 | §'%22`§ | c->s | — | — |
| 145 | §%3C%22m§ | c->s | — | — |
| 146 | §##`§ | c->s | — | — |
| 160 | §`#]§ | c->s | — | — |
| 161 | §%22+e§ | c->s | — | — |
| 162 | §!#I§ | c->s | — | — |
| 163 | §6&c§ | c->s | — | — |
| 164 | §5+c§ | c->s | — | — |
| 166 | §;&F§ | c->s | — | — |
| 167 | §1!6§ | c->s | — | — |
| 1001 | §++n§ | c->s | — | — |
| 1002 | §6%22Q§ | c->s | — | — |
| 1003 | §`$p§ | c->s | — | — |
| 1004 | §4'=§ | c->s | — | — |
| 1008 | §]#_§ | c->s | — | — |
| 1015 | §'%X§ | c->s | — | — |
| 1023 | §0%22S§ | c->s | — | — |
| 2002 | §#$,§ | s->c | profileId:UnsignedInt, battleId:UnsignedInt | BattleMemberCommand |
| 2003 | §%z§ | s->c | battleId:UnsignedInt | BattleByIdCommand |
| 2006 | §7!G§ | s->c | battleId:UnsignedInt, seed:Int, serverTime:Int | BattleSeed |
| 7001 | §%+;§ | ? | — | — |
| 7002 | §&!1§ | c->s | — | — |
| 7003 | §^%22%3C§ | c->s | — | — |
| 7011 | §!$M§ | c->s | — | — |
| 7102 | §%3C$3§ | c->s | — | — |
| 7104 | § '#§ | c->s | — | — |
| 7105 | §-&P§ | ? | — | — |
| 7106 | §8#8§ | c->s | — | — |
| 7107 | §%22&7§ | c->s | — | — |
| 7108 | §;l§ | c->s | — | — |
| 7110 | §3%]§ | c->s | — | — |
| 7112 | §]'r§ | c->s | — | — |
| 7113 | §6+!§ | c->s | — | — |
| 7114 | § 'v§ | c->s | — | — |
| 7115 | §3&g§ | c->s | — | — |
| 7116 | §%22#Z§ | c->s | — | — |
| 7117 | §`$%3E§ | c->s | — | — |
| 7120 | §%22#%3E§ | c->s | — | — |
| 7121 | §;!U§ | c->s | — | — |
| 7122 | §%#5§ | c->s | — | — |
| 7123 | §9+J§ | c->s | — | — |
| 7124 | §3!P§ | c->s | — | — |
| 7125 | § 'p§ | ? | — | — |
| 7127 | §2&R§ | c->s | — | — |
| 7128 | §@&k§ | c->s | — | — |
| 7209 | §6$[§ | s->c | — | — |
| 10144 | §3j§ | s->c | — | — |
| 10160 | §6+3§ | s->c | — | — |
| 10161 | §=%§ | s->c | — | — |
| 10162 | §%3C$w§ | s->c | — | — |
| 10163 | §1%22+§ | s->c | — | — |
| 10164 | §1#f§ | s->c | — | — |
| 10166 | §7$Y§ | s->c | profileId:UnsignedInt | GetProfile |
| 10167 | §`!q§ | s->c | — | — |
| 10168 | §]%22,§ | s->c | — | — |
| 10169 | §%%22g§ | s->c | version:UTF | VersionCheck |
| 17001 | §@%a§ | s->c | serviceResult:Short | ServiceResult |
| 17003 | §9%22^§ | s->c | serviceResult:Short | ServiceResult |
| 17011 | §6+H§ | s->c | serviceResult:Short, comeback:Int | ServiceResult |
| 17102 | §9#S§ | s->c | serviceResult:Short | ServiceResult |
| 17104 | §%3F'e§ | s->c | serviceResult:Short, profileId:Int, socialId:Short | ServiceResult |
| 17106 | §2!t§ | s->c | serviceResult:Short, socialId:Short, rank:Short, profileId:Int | ServiceResult |
| 17108 | §!i§ | s->c | serviceResult:Short, level:Int | ServiceResult |
| 17109 | §[%225§ | s->c | serviceResult:Short | ServiceResult |
| 17112 | §,%22K§ | s->c | serviceResult:Short | ServiceResult |
| 17113 | §0'=§ | s->c | serviceResult:Short | ServiceResult |
| 17114 | §6+W§ | s->c | serviceResult:Short | ServiceResult |
| 17115 | §7%%§ | s->c | serviceResult:Short | ServiceResult |
| 17116 | §2%+§ | s->c | serviceResult:Short | ServiceResult |
| 17120 | §%3C!l§ | s->c | serviceResult:Short | ServiceResult |
| 17121 | §%3F+M§ | s->c | serviceResult:Short | ServiceResult |
| 17122 | §@#%22§ | s->c | serviceResult:Short | ServiceResult |
| 17123 | §'$,§ | s->c | serviceResult:Short | ServiceResult |
| 17124 | §&$=§ | s->c | serviceResult:Short | ServiceResult |
| 17125 | §&+&§ | s->c | serviceResult:Short | ServiceResult |
| 17127 | §6%22#§ | s->c | serviceResult:Short | ServiceResult |
| 17128 | §%3E$Y§ | s->c | serviceResult:Short | ServiceResult |
