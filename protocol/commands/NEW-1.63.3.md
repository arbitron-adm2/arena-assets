# Новые и изменённые команды 1.63.3

Всего id: 250. Новых: 79; из них со схемой полей: 118.

Направление: `s->c` — читает поля (ответ сервера), `c->s` — только пишет (запрос клиента).

| id | класс | напр. | поля | предполагаемое имя |
|---:|---|---|---|---|
| 0 | §`%2§ | ? | — | — |
| 17 | §`+I§ | s->c | action:Short, battleId:UnsignedInt, message:UTF | PlayerActionNotify |
| 144 | §'%22`§ | ? | — | — |
| 145 | §%3C%22m§ | ? | — | — |
| 146 | §##`§ | ? | — | — |
| 160 | §`#]§ | ? | — | — |
| 161 | §%22+e§ | ? | — | — |
| 162 | §!#I§ | ? | — | — |
| 163 | §6&c§ | ? | — | — |
| 164 | §5+c§ | ? | — | — |
| 166 | §;&F§ | ? | — | — |
| 167 | §1!6§ | ? | — | — |
| 1001 | §++n§ | ? | — | — |
| 1002 | §6%22Q§ | ? | — | — |
| 1003 | §`$p§ | ? | — | — |
| 1004 | §4'=§ | ? | — | — |
| 1008 | §]#_§ | ? | — | — |
| 1015 | §'%X§ | ? | — | — |
| 1023 | §0%22S§ | ? | — | — |
| 2002 | §#$,§ | s->c | profileId:UnsignedInt, battleId:UnsignedInt | BattleMemberCommand |
| 2003 | §%z§ | s->c | battleId:UnsignedInt | BattleByIdCommand |
| 2006 | §7!G§ | s->c | battleId:UnsignedInt, seed:Int, serverTime:Int | BattleSeed |
| 7001 | §%+;§ | ? | — | — |
| 7002 | §&!1§ | ? | — | — |
| 7003 | §^%22%3C§ | ? | — | — |
| 7011 | §!$M§ | ? | — | — |
| 7102 | §%3C$3§ | ? | — | — |
| 7104 | § '#§ | ? | — | — |
| 7105 | §-&P§ | ? | — | — |
| 7106 | §8#8§ | ? | — | — |
| 7107 | §%22&7§ | ? | — | — |
| 7108 | §;l§ | ? | — | — |
| 7110 | §3%]§ | ? | — | — |
| 7112 | §]'r§ | ? | — | — |
| 7113 | §6+!§ | ? | — | — |
| 7114 | § 'v§ | ? | — | — |
| 7115 | §3&g§ | ? | — | — |
| 7116 | §%22#Z§ | ? | — | — |
| 7117 | §`$%3E§ | ? | — | — |
| 7120 | §%22#%3E§ | ? | — | — |
| 7121 | §;!U§ | ? | — | — |
| 7122 | §%#5§ | ? | — | — |
| 7123 | §9+J§ | ? | — | — |
| 7124 | §3!P§ | ? | — | — |
| 7125 | § 'p§ | ? | — | — |
| 7127 | §2&R§ | ? | — | — |
| 7128 | §@&k§ | ? | — | — |
| 7209 | §6$[§ | c->s | — | — |
| 10144 | §3j§ | c->s | — | — |
| 10160 | §6+3§ | c->s | — | — |
| 10161 | §=%§ | c->s | — | — |
| 10162 | §%3C$w§ | c->s | — | — |
| 10163 | §1%22+§ | c->s | — | — |
| 10164 | §1#f§ | c->s | — | — |
| 10166 | §7$Y§ | s->c | profileId:UnsignedInt | GetProfile |
| 10167 | §`!q§ | c->s | — | — |
| 10168 | §]%22,§ | c->s | — | — |
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
