# Новые команды 1.63.3

Новых id: **79**. С полями: 27. Без payload: 12.

Имена — производные от полей (черновые, не из документации).

| id | имя (черновое) | напр. | поля |
|---:|---|---|---|
| 0 | Marker | c->s | — |
| 17 | PlayerBattleAction | s->c | action:Short, battleId:UnsignedInt, message:UTF |
| 144 | BuyTask | c->s | — |
| 145 | SetValues | c->s | — |
| 146 | Empty146 | c->s | — |
| 160 | Empty160 | c->s | — |
| 161 | Empty161 | c->s | — |
| 162 | Empty162 | c->s | — |
| 163 | Empty163 | c->s | — |
| 164 | Empty164 | c->s | — |
| 166 | KickByProfile | c->s | — |
| 167 | Empty167 | c->s | — |
| 1001 | EnterBattleWithWager | c->s | — |
| 1002 | InviteToBattle | c->s | — |
| 1003 | JoinBattle | c->s | — |
| 1004 | BattleError | c->s | — |
| 1008 | Empty1008 | c->s | — |
| 1015 | BattleConnect | c->s | — |
| 1023 | LeaveBattle | c->s | — |
| 2002 | BattleMemberCommand | s->c | profileId:UnsignedInt, battleId:UnsignedInt |
| 2003 | BattleById | s->c | battleId:UnsignedInt |
| 2006 | BattleSeed | s->c | battleId:UnsignedInt, seed:Int, serverTime:Int |
| 7001 | ClanInfoRequest | ? | — |
| 7002 | CreateClan | c->s | — |
| 7003 | ClanLeaveRequest | c->s | — |
| 7011 | ClanKeepAlive | c->s | — |
| 7102 | SocialProfileCommand | c->s | — |
| 7104 | SocialProfileCommand2 | c->s | — |
| 7105 | SocialEmpty7105 | ? | — |
| 7106 | SocialFriendCommand | c->s | — |
| 7107 | SocialFriendCommand2 | c->s | — |
| 7108 | SocialSetLevel | c->s | — |
| 7110 | SocialSetText | c->s | — |
| 7112 | SocialSetScope | c->s | — |
| 7113 | SocialSetLimit | c->s | — |
| 7114 | SocialSetName | c->s | — |
| 7115 | SocialEmpty7115 | c->s | — |
| 7116 | SocialSetDescription | c->s | — |
| 7117 | SocialSetSeason | c->s | — |
| 7120 | SocialEmpty7120 | c->s | — |
| 7121 | SocialSetDonation | c->s | — |
| 7122 | SocialSetClosed | c->s | — |
| 7123 | SocialEmpty7123 | c->s | — |
| 7124 | SocialSetMedals | c->s | — |
| 7125 | SocialEmpty7125 | ? | — |
| 7127 | SocialSetFlag | c->s | — |
| 7128 | SocialSetFlag2 | c->s | — |
| 7209 | ClanEmpty7209 | s->c | — |
| 10144 | BattleMarker10144 | s->c | — |
| 10160 | Empty10160 | s->c | — |
| 10161 | Empty10161 | s->c | — |
| 10162 | Empty10162 | s->c | — |
| 10163 | Empty10163 | s->c | — |
| 10164 | Empty10164 | s->c | — |
| 10166 | GetProfile | s->c | profileId:UnsignedInt |
| 10167 | Empty10167 | s->c | — |
| 10168 | Empty10168 | s->c | — |
| 10169 | VersionCheck | s->c | version:UTF |
| 17001 | ServiceResult | s->c | serviceResult:Short |
| 17003 | ServiceResult17003 | s->c | serviceResult:Short |
| 17011 | ServiceComeback | s->c | serviceResult:Short, comeback:Int |
| 17102 | ServiceResult17102 | s->c | serviceResult:Short |
| 17104 | ServiceProfileSocial | s->c | serviceResult:Short, profileId:Int, socialId:Short |
| 17106 | ServiceRank | s->c | serviceResult:Short, socialId:Short, rank:Short, profileId:Int |
| 17108 | ServiceLevel | s->c | serviceResult:Short, level:Int |
| 17109 | ServiceResult17109 | s->c | serviceResult:Short |
| 17112 | ServiceResult17112 | s->c | serviceResult:Short |
| 17113 | ServiceResult17113 | s->c | serviceResult:Short |
| 17114 | ServiceResult17114 | s->c | serviceResult:Short |
| 17115 | ServiceResult17115 | s->c | serviceResult:Short |
| 17116 | ServiceResult17116 | s->c | serviceResult:Short |
| 17120 | ServiceResult17120 | s->c | serviceResult:Short |
| 17121 | ServiceResult17121 | s->c | serviceResult:Short |
| 17122 | ServiceResult17122 | s->c | serviceResult:Short |
| 17123 | ServiceResult17123 | s->c | serviceResult:Short |
| 17124 | ServiceResult17124 | s->c | serviceResult:Short |
| 17125 | ServiceResult17125 | s->c | serviceResult:Short |
| 17127 | ServiceResult17127 | s->c | serviceResult:Short |
| 17128 | ServiceResult17128 | s->c | serviceResult:Short |
