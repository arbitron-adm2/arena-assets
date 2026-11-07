package §,&+§
{
   import §#"V§.§!&5§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%# §.§@a§;
   import §,$J§.§,$O§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §6%2§.§#"B§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §<%E§.§,$2§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^!"§.§^$F§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §=#x§
   {
      
      private static const §5$<§:Vector.<Race> = new <Race>[Race.§+#T§,Race.§+&8§,Race.§!!S§];
      
      §§push(§§findproperty(§,!p§));
      var _temp_4:* = new <§>%Q§>[new §>%Q§(§+%z§.ANTITOXIN,0.2,1,18),new §>%Q§(§+%z§.BANDAGE,0.3,1,20),new §>%Q§(§+%z§.WATERMELON,0.1,1,15),new §>%Q§(§+%z§.HOLY_GRENADE,0.1,1,21,28),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_1,0.1,1,28)];
      var _temp_7:* = new <§>%Q§>[new §>%Q§(§+%z§.ANTITOXIN,0.2,1,18),new §>%Q§(§+%z§.BANDAGE,0.3,1,20),new §>%Q§(§+%z§.WATERMELON,0.1,1,15),new §>%Q§(§+%z§.HOLY_GRENADE,0.1,1,21,28),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_1,0.1,1,28)];
      
      private static var §,!p§:Vector.<§>%Q§> = new <§>%Q§>[new §>%Q§(§+%z§.ANTITOXIN,0.2,1,18),new §>%Q§(§+%z§.BANDAGE,0.3,1,20),new §>%Q§(§+%z§.WATERMELON,0.1,1,15),new §>%Q§(§+%z§.HOLY_GRENADE,0.1,1,21,28),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_1,0.1,1,28)];
      
      private var config:Array;
      
      public function §=#x§()
      {
         §§push(this);
         §§push({
            "hatId":0,
            "pricePoints":5,
            "minUserLevel":1,
            "maxUserLevel":12,
            "races":§5$<§,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MORTAR,0.5,-1,5)]
         });
         §§push({
            "hatId":§,$O§.PANAMA,
            "pricePoints":6,
            "minUserLevel":5,
            "maxUserLevel":16,
            "typeParams":new <§^$F§>[§^$F§.§'$1§,§^$F§.§6! §],
            "races":§5$<§,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MORTAR,0.5,-1,5),new §>%Q§(§+%z§.§4"k§,0.4)]
         });
         §§push({
            "hatId":§,$O§.WIZARD,
            "pricePoints":6,
            "minUserLevel":5,
            "maxUserLevel":16,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.§6! §],
            "races":§5$<§,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MORTAR,0.4),new §>%Q§(§+%z§.§4"k§,0.7),new §>%Q§(§+%z§.SHOTGUN,0.3)]
         });
         §§push({
            "hatId":§,$O§.§ %!§,
            "pricePoints":7,
            "minUserLevel":5,
            "maxUserLevel":16,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE],
            "races":new <Race>[Race.§+#T§,Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MORTAR,0.7),new §>%Q§(§+%z§.SHOTGUN,0.5)]
         });
         §§push({
            "hatId":§,$O§.CYLINDER,
            "pricePoints":7,
            "minUserLevel":5,
            "maxUserLevel":16,
            "typeParams":new <§^$F§>[§^$F§.§6! §],
            "races":§5$<§,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MORTAR,0.5),new §>%Q§(§+%z§.§4"k§,0.5)]
         });
         §§push({
            "hatId":§,$O§.§-'§,
            "pricePoints":9,
            "minUserLevel":6,
            "maxUserLevel":17,
            "typeParams":new <§^$F§>[§^$F§.§'$1§,§^$F§.BALANCE,§^$F§.§6! §],
            "races":new <Race>[Race.§ "w§,Race.§+&8§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MORTAR,0.7),new §>%Q§(§+%z§.STICKY_GRENADE,0.7),new §>%Q§(§+%z§.SHOTGUN,0.4)]
         });
         §§push({
            "hatId":§,$O§.§3"U§,
            "pricePoints":10,
            "minUserLevel":7,
            "maxUserLevel":17,
            "typeParams":new <§^$F§>[§^$F§.§'$1§],
            "races":new <Race>[Race.§+#T§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN,0.8),new §>%Q§(§+%z§.SHOTGUN,0.5)]
         });
         §§push({
            "hatId":§,$O§.MONK,
            "pricePoints":11,
            "minUserLevel":8,
            "maxUserLevel":18,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.§'$1§],
            "races":§5$<§,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.STICKY_GRENADE,0.7),new §>%Q§(§+%z§.SHURIKEN,0.3)]
         });
         §§push({
            "hatId":§,$O§.SOMBRERO,
            "pricePoints":11,
            "minUserLevel":8,
            "maxUserLevel":18,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.§6! §],
            "races":§5$<§,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.SHOTGUN,0.7),new §>%Q§(§+%z§.MORTAR,0.7)]
         });
         §§push({
            "hatId":§,$O§.§,#S§,
            "pricePoints":12,
            "minUserLevel":8,
            "maxUserLevel":18,
            "races":new <Race>[Race.§+#T§,Race.§"$H§,Race.§+&8§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN,0.5,-1,1,12),new §>%Q§(§+%z§.§`L§,0.5,-1,13),new §>%Q§(§+%z§.STICKY_GRENADE,0.7),new §>%Q§(§+%z§.§4"k§,0.7)]
         });
         §§push({
            "hatId":§,$O§.DARTH_VADER,
            "pricePoints":14,
            "minUserLevel":9,
            "maxUserLevel":20,
            "typeParams":new <§^$F§>[§^$F§.§'$1§,§^$F§.BALANCE],
            "races":new <Race>[Race.§+#T§,Race.§"$H§,Race.§+&8§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MORTAR,0.7),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_1,0.5)]
         });
         §§push({
            "hatId":§,$O§.RED_CAP,
            "pricePoints":14,
            "minUserLevel":9,
            "maxUserLevel":19,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE,§^$F§.§6! §],
            "races":new <Race>[Race.§+#T§,Race.§"$H§,Race.§+&8§,Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§4"k§,0.7),new §>%Q§(§+%z§.STICKY_GRENADE,0.7),new §>%Q§(§+%z§.MORTAR,0.6),new §>%Q§(§+%z§.§^&6§,0.5)]
         });
         §§push({
            "hatId":§,$O§.COSMONAUT,
            "pricePoints":14,
            "minUserLevel":9,
            "maxUserLevel":19,
            "typeParams":new <§^$F§>[§^$F§.BALANCE,§^$F§.§6! §],
            "races":new <Race>[Race.§+#T§,Race.§"$H§,Race.§+&8§,Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§4"k§,0.7),new §>%Q§(§+%z§.STICKY_GRENADE,0.3),new §>%Q§(§+%z§.MORTAR,0.6),new §>%Q§(§+%z§.SHOTGUN,0.7)]
         });
         §§push({
            "hatId":§,$O§.VIKING,
            "pricePoints":16,
            "minUserLevel":10,
            "maxUserLevel":20,
            "typeParams":new <§^$F§>[§^$F§.BALANCE,§^$F§.§6! §],
            "races":new <Race>[Race.§+#T§,Race.§"$H§,Race.§+&8§,Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MORTAR,0.6),new §>%Q§(§+%z§.STICKY_GRENADE,0.6)]
         });
         §§push({
            "hatId":§,$O§.§8$x§,
            "pricePoints":17,
            "minUserLevel":11,
            "maxUserLevel":21,
            "races":new <Race>[Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§?$w§,0.7),new §>%Q§(§+%z§.SHOTGUN,0.7),new §>%Q§(§+%z§.MINIGUN,0.5)]
         });
         §§push({
            "hatId":§,$O§.§!%>§,
            "pricePoints":18,
            "minUserLevel":11,
            "maxUserLevel":21,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE,§^$F§.§6! §],
            "races":new <Race>[Race.§"$H§,Race.§+&8§,Race.§+#T§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA,0.7),new §>%Q§(§+%z§.MINIGUN,0.6),new §>%Q§(§+%z§.MORTAR,0.6),new §>%Q§(§+%z§.§4"k§,0.6)]
         });
         §§push({
            "hatId":§,$O§.AVIATOR,
            "pricePoints":18,
            "minUserLevel":11,
            "maxUserLevel":21,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE,§^$F§.§6! §],
            "races":new <Race>[Race.§"$H§,Race.§+&8§,Race.§ "w§,Race.§+#T§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA,0.7),new §>%Q§(§+%z§.MINIGUN,0.6),new §>%Q§(§+%z§.MORTAR,0.6),new §>%Q§(§+%z§.§^&6§,0.8)]
         });
         §§push({
            "hatId":§,$O§.§0#'§,
            "pricePoints":19,
            "minUserLevel":11,
            "maxUserLevel":22,
            "typeParams":new <§^$F§>[§^$F§.§`"G§],
            "races":new <Race>[Race.§+#T§,Race.§"$H§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA,0.7,-1,1,19),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.7,-1,20),new §>%Q§(§+%z§.§^&6§,0.7),new §>%Q§(§+%z§.§8#d§,0.5),new §>%Q§(§+%z§.MINIGUN,0.6)]
         });
         §§push({
            "hatId":§,$O§.§4$W§,
            "pricePoints":20,
            "minUserLevel":12,
            "maxUserLevel":22,
            "typeParams":new <§^$F§>[§^$F§.§`"G§],
            "races":new <Race>[Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.MORTAR,0.6,-1,1,19),new §>%Q§(§+%z§.§?$w§,0.6,-1,20)]
         });
         §§push({
            "hatId":§,$O§.ELVIS,
            "pricePoints":20,
            "minUserLevel":12,
            "maxUserLevel":22,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE],
            "races":new <Race>[Race.§1"^§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA,0.7),new §>%Q§(§+%z§.STICKY_GRENADE,0.5),new §>%Q§(§+%z§.§^";§,0.6,-1,18),new §>%Q§(§+%z§.MOLOTOV,0.6,-1,21)]
         });
         §§push({
            "hatId":§,$O§.PIRATE,
            "pricePoints":21,
            "minUserLevel":12,
            "maxUserLevel":23,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE],
            "races":new <Race>[Race.§"$H§,Race.§+&8§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_1,0.7),new §>%Q§(§+%z§.§8#d§,0.6),new §>%Q§(§+%z§.SNIPER_RIFLE,0.5),new §>%Q§(§+%z§.CANNON,0.6,-1,16)]
         });
         §§push({
            "hatId":§,$O§.NIGHT,
            "pricePoints":21,
            "minUserLevel":12,
            "maxUserLevel":23,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE],
            "races":new <Race>[Race.§ "w§,Race.§+#T§,Race.§+&8§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_1,0.7),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.6),new §>%Q§(§+%z§.SNIPER_RIFLE,0.5),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.6,-1,16)]
         });
         §§push({
            "hatId":§,$O§.INDIAN,
            "pricePoints":22,
            "minUserLevel":13,
            "maxUserLevel":24,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE],
            "races":new <Race>[Race.§+&8§,Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.§^&6§,0.6),new §>%Q§(§+%z§.STICKY_GRENADE,0.7)]
         });
         §§push({
            "hatId":§,$O§.GREEN_IROQUOIS,
            "pricePoints":22,
            "minUserLevel":13,
            "maxUserLevel":24,
            "typeParams":new <§^$F§>[§^$F§.§'$1§,§^$F§.BALANCE],
            "races":new <Race>[Race.§+&8§,Race.§+#T§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.§^&6§,0.6),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.6)]
         });
         §§push({
            "hatId":§,$O§.COLORED_IROQUOIS,
            "pricePoints":22,
            "minUserLevel":14,
            "maxUserLevel":25,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE],
            "races":new <Race>[Race.§ "w§,Race.§"$H§,Race.§+#T§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§^&6§,0.7),new §>%Q§(§+%z§.§?$w§,0.7),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.7),new §>%Q§(§+%z§.MOLOTOV,0.3)]
         });
         §§push({
            "hatId":§,$O§.SAMURAI,
            "pricePoints":23,
            "minUserLevel":13,
            "maxUserLevel":24,
            "typeParams":new <§^$F§>[§^$F§.§'$1§],
            "races":new <Race>[Race.§+#T§,Race.§"$H§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA,0.7),new §>%Q§(§+%z§.§`L§,0.6),new §>%Q§(§+%z§.STICKY_GRENADE,0.5),new §>%Q§(§+%z§.SHURIKEN,0.1,-1,1,17),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_1,0.1,-1,18)]
         });
         §§push({
            "hatId":§,$O§.PINK_HELMET,
            "pricePoints":24,
            "minUserLevel":15,
            "maxUserLevel":26,
            "typeParams":new <§^$F§>[§^$F§.§6! §],
            "races":new <Race>[Race.§1"^§,Race.§+&8§,Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.SHOTGUN,0.5),new §>%Q§(§+%z§.GRENADE,0.3)]
         });
         §§push({
            "hatId":§,$O§.§0!w§,
            "pricePoints":24,
            "minUserLevel":15,
            "maxUserLevel":26,
            "typeParams":new <§^$F§>[§^$F§.§'$1§],
            "races":new <Race>[Race.§#%V§,Race.§+#T§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§?$w§,0.7),new §>%Q§(§+%z§.CARPET_BAZOOKA,0.7,-1,1,19),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.7,-1,20),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_1,0.6)]
         });
         §§push({
            "hatId":§,$O§.§+%[§,
            "pricePoints":25,
            "minUserLevel":16,
            "maxUserLevel":28,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.§6! §],
            "races":new <Race>[Race.§+#T§,Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§^&6§,0.7),new §>%Q§(§+%z§.SNIPER_RIFLE,0.6),new §>%Q§(§+%z§.MINIGUN,0.5),new §>%Q§(§+%z§.AK_47,0.5,-1,19)]
         });
         §§push({
            "hatId":§,$O§.AQUALUNG,
            "pricePoints":26,
            "minUserLevel":17,
            "typeParams":new <§^$F§>[§^$F§.§'$1§,§^$F§.BALANCE,§^$F§.§6! §],
            "races":new <Race>[Race.§1"^§,Race.§+#T§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§8#d§,0.7),new §>%Q§(§+%z§.CANNON,0.7,-1,1,21),new §>%Q§(§+%z§.CANNON_UPG_1,0.7,-1,22),new §>%Q§(§+%z§.MORTAR,0.5)]
         });
         §§push({
            "hatId":§,$O§.NIMBUS,
            "pricePoints":27,
            "minUserLevel":17,
            "typeParams":new <§^$F§>[§^$F§.§'$1§],
            "races":new <Race>[Race.§#%V§,Race.§-K§,Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_1,0.7,-1),new §>%Q§(§+%z§.SNIPER_RIFLE,0.6,-1,1,21),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.6,-1,23),new §>%Q§(§+%z§.CARPET_BAZOOKA,0.5)]
         });
         §§push("hatId");
         §§push(§,$O§.MASK_SHAMAN_RABBITS);
         §§push("pricePoints");
         §§push(27);
         §§push("minUserLevel");
         §§push(17);
         §§push("typeParams");
         §§push(new <§^$F§>[§^$F§.§`"G§,§^$F§.§6! §]);
         §§push("races");
         §§push(null);
         §§push({
            "hatId":§,$O§.ELEGANT_SAMURAI,
            "pricePoints":28,
            "minUserLevel":19,
            "typeParams":new <§^$F§>[§^$F§.§'$1§],
            "races":new <Race>[Race.§#%V§,Race.§ "w§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§4!r§,0.1,-1,19,24),new §>%Q§(§+%z§.SHURIKEN_U2B_SAW,0.1,-1,25),new §>%Q§(§+%z§.§8#d§,0.4),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.7,-1,1,23),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.7,-1,24),new §>%Q§(§+%z§.STICKY_GRENADE,0.5)]
         });
         §§push({
            "hatId":§,$O§.CHIEFTAIN,
            "pricePoints":29,
            "minUserLevel":20,
            "typeParams":new <§^$F§>[§^$F§.§`"G§],
            "races":new <Race>[Race.§+&8§,Race.§1"^§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.6,-1,24),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_1,0.6,-1,1,23),new §>%Q§(§+%z§.SHOTGUN,0.5)]
         });
         §§push({
            "hatId":§,$O§.§ ![§,
            "pricePoints":31,
            "minUserLevel":20,
            "typeParams":new <§^$F§>[§^$F§.§'$1§,§^$F§.BALANCE,§^$F§.§6! §],
            "races":new <Race>[Race.§"$H§,Race.§+#T§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.7,-1,1,24),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.7,-1,25),new §>%Q§(§+%z§.§^";§,0.6),new §>%Q§(§+%z§.§^&6§,0.5),new §>%Q§(§+%z§.MINIGUN,0.5)]
         });
         §§push({
            "hatId":§,$O§.GLADIATOR_HELMET,
            "pricePoints":32,
            "minUserLevel":20,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.§6! §],
            "races":new <Race>[Race.§+#T§,Race.§#%V§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.5),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,0.6)]
         });
         §§push({
            "hatId":§,$O§.ELEGANT_LEGIONER,
            "pricePoints":33,
            "minUserLevel":21,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE,§^$F§.§6! §],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§?$w§,0.7,-1,1,25),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,0.7,-1,26),new §>%Q§(§+%z§.§8#d§,0.6),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5)]
         });
         §§push({
            "hatId":§,$O§.DARK_CULTIST_HOOD,
            "pricePoints":33,
            "minUserLevel":21,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE,§^$F§.§6! §],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.7,-1,1,25),new §>%Q§(§+%z§.CROSSBOW,0.7,-1,26),new §>%Q§(§+%z§.§8#d§,0.6),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5),new §>%Q§(§+%z§.§,!_§,0.4),new §>%Q§(§+%z§.§[$X§,0.3)]
         });
         §§push({
            "hatId":§,$O§.DARK_CULTIST_HOOD,
            "pricePoints":33,
            "minUserLevel":21,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE,§^$F§.§6! §],
            "races":new <Race>[Race.§ &F§,Race.§+#L§,Race.§@T§,Race.ALIEN],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.7,-1,1,25),new §>%Q§(§+%z§.CROSSBOW,0.7,-1,26),new §>%Q§(§+%z§.§8#d§,0.6),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5),new §>%Q§(§+%z§.§7#L§,0.3),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.2)]
         });
         §§push({
            "hatId":§,$O§.LEGIONER,
            "pricePoints":33,
            "minUserLevel":22,
            "typeParams":new <§^$F§>[§^$F§.§`"G§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.AK_47,0.7),new §>%Q§(§+%z§.CANNON_UPG_1,0.6,-1,22,28),new §>%Q§(§+%z§.CANNON_UPG_2,0.6,-1,29),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.6,-1,1,28),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.6,-1,29)]
         });
         §§push({
            "hatId":§,$O§.CROWN_PRINCESS,
            "pricePoints":34,
            "minUserLevel":23,
            "races":new <Race>[Race.§ "w§,Race.§#%V§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§`L§,0.7,-1,1,28),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.7,-1,29),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.6,-1,28),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_1,0.5)]
         });
         §§push({
            "hatId":§,$O§.CROWN,
            "pricePoints":34,
            "minUserLevel":23,
            "races":new <Race>[Race.§1"^§,Race.§+&8§,Race.§!!S§,Race.§9"B§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§?$w§,0.7,-1,1,27),new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,0.7,-1,28),new §>%Q§(§+%z§.MOLOTOV,0.6),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.5)]
         });
         §§push({
            "hatId":§,$O§.NIGHT_VISION_DEVICE,
            "pricePoints":35,
            "minUserLevel":23,
            "races":new <Race>[Race.§+#T§,Race.§+&8§,Race.§1"^§,Race.§#%V§,Race.§-K§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§^&6§,0.7),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.4,-1,1,27),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7,-1,28)]
         });
         §§push({
            "hatId":§,$O§.MASK_SCREAM,
            "pricePoints":35,
            "minUserLevel":24,
            "races":new <Race>[Race.§"$H§,Race.§+&8§,Race.§1"^§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§^&6§,0.7),new §>%Q§(§+%z§.§`L§,0.4),new §>%Q§(§+%z§.SNIPER_RIFLE,0.7,-1,1,27),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7,-1,28)]
         });
         §§push({
            "hatId":§,$O§.NEO,
            "pricePoints":36,
            "minUserLevel":25,
            "typeParams":new <§^$F§>[§^$F§.§'$1§,§^$F§.§6! §],
            "races":new <Race>[Race.§#%V§,Race.§-K§,Race.§+#T§,Race.§!!S§,Race.§9"B§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.AK_47,0.7),new §>%Q§(§+%z§.MOLOTOV,0.6),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.6),new §>%Q§(§+%z§.SNIPER_RIFLE,0.6,-1,1,27),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.6,-1,28),new §>%Q§(§+%z§.§4!r§,0.05,-1,1,28),new §>%Q§(§+%z§.SHURIKEN_U2A_TRAJECTORY,0.05,-1,29)]
         });
         §§push({
            "hatId":§,$O§.NINJA_TURTLES,
            "pricePoints":36,
            "minUserLevel":25,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.§6! §],
            "races":new <Race>[Race.§#%V§,Race.§1"^§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.7,-1,1,27),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.7,-1,28),new §>%Q§(§+%z§.§4!r§,0.1,-1,1,28),new §>%Q§(§+%z§.SHURIKEN_U2B_SAW,0.1,-1,29)]
         });
         §§push({
            "hatId":§,$O§.BOSS_YAKUZA_STEEL,
            "pricePoints":37,
            "minUserLevel":25,
            "typeParams":new <§^$F§>[§^$F§.§`"G§,§^$F§.BALANCE],
            "races":new <Race>[Race.§+&8§,Race.§-K§,Race.§1"^§,Race.§!!S§,Race.§9"B§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§^";§,0.6),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.7,-1,1,27),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.7,-1,28),new §>%Q§(§+%z§.SNIPER_RIFLE,0.6,-1,1,27),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.6,-1,28)]
         });
         §§push({
            "hatId":§,$O§.DEMON_HAT,
            "pricePoints":38,
            "minUserLevel":26,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§`L§,0.6),new §>%Q§(§+%z§.CANNON_UPG_1,0.4),new §>%Q§(§+%z§.MOLOTOV,0.3),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.3)]
         });
         §§push({
            "hatId":§,$O§.RUSSIAN,
            "pricePoints":39,
            "minUserLevel":26,
            "typeParams":new <§^$F§>[§^$F§.§`"G§],
            "races":new <Race>[Race.§ "w§,Race.§-K§,Race.§+#T§,Race.§!!S§,Race.§9"B§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.AK_47,0.7),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.7),new §>%Q§(§+%z§.§8#d§,0.6),new §>%Q§(§+%z§.SNIPER_RIFLE,0.5)]
         });
         §§push({
            "hatId":§,$O§.§,z§,
            "pricePoints":41,
            "minUserLevel":26,
            "typeParams":new <§^$F§>[§^$F§.§'$1§],
            "races":new <Race>[Race.§"$H§,Race.§+#T§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.7),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.BANDAGE,0.2,2)]
         });
         §§push({
            "hatId":§,$O§.HELMET_STUNT,
            "pricePoints":41,
            "minUserLevel":26,
            "typeParams":new <§^$F§>[§^$F§.§'$1§],
            "races":new <Race>[Race.§"$H§,Race.§+#T§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.7),new §>%Q§(§+%z§.MOLOTOV,0.6),new §>%Q§(§+%z§.§^";§,0.6),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.6),new §>%Q§(§+%z§.BANDAGE,0.2,2)]
         });
         §§push({
            "hatId":§,$O§.OFFICER,
            "pricePoints":43,
            "minUserLevel":26,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,0.7),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.MOLOTOV,0.6),new §>%Q§(§+%z§.AK_47,0.6)]
         });
         §§push({
            "hatId":§,$O§.HERO_MASK,
            "pricePoints":44,
            "minUserLevel":26,
            "races":new <Race>[Race.§#%V§,Race.§ "w§,Race.§-K§,Race.§1"^§],
            "typeParams":new <§^$F§>[§^$F§.§'$1§,§^$F§.BALANCE],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.7,-1,1,29),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.7,-1,29),new §>%Q§(§+%z§.§4!r§,0.05),new §>%Q§(§+%z§.AK_47,0.6),new §>%Q§(§+%z§.§8#d§,0.5)]
         });
         §§push({
            "hatId":§,$O§.MASTER,
            "pricePoints":45,
            "minUserLevel":26,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7,-1,1,27),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_1,0.6,-1,1,28),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6,-1,29),new §>%Q§(§+%z§.CANNON_UPG_1,0.5,-1,1,28),new §>%Q§(§+%z§.CANNON_UPG_2,0.5,-1,28),new §>%Q§(§+%z§.MOLOTOV,0.5,-1)]
         });
         §§push({
            "hatId":§,$O§.FIREPROOF_HELMET,
            "pricePoints":47,
            "minUserLevel":26,
            "races":new <Race>[Race.§+&8§,Race.§-K§,Race.§1"^§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.§^";§,0.7),new §>%Q§(§+%z§.MOLOTOV,0.7),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.5)]
         });
         §§push({
            "hatId":§,$O§.SOVIET,
            "pricePoints":48,
            "minUserLevel":27,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,0.7),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,0.6),new §>%Q§(§+%z§.MOLOTOV,0.5)]
         });
         §§push({
            "hatId":§,$O§.SHERIFF,
            "pricePoints":50,
            "minUserLevel":27,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,0.7),new §>%Q§(§+%z§.AK_47,0.7),new §>%Q§(§+%z§.CROSSBOW,0.6)]
         });
         §§push({
            "hatId":§,$O§.ACE,
            "pricePoints":51,
            "minUserLevel":27,
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.7),new §>%Q§(§+%z§.§^";§,0.6),new §>%Q§(§+%z§.§?$w§,0.5,-1,1,28),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,0.5,-1,29)]
         });
         §§push({
            "hatId":§,$O§.§0!o§,
            "pricePoints":55,
            "minUserLevel":28,
            "typeParams":new <§^$F§>[§^$F§.§'$1§],
            "races":new <Race>[Race.§+#T§,Race.§"$H§,Race.§+&8§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.ANTITOXIN,0.2,1),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.§8#d§,0.5),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,0.6),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.6,2),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7)]
         });
         §§push({
            "hatId":§,$O§.VAMPIRE,
            "pricePoints":55,
            "minUserLevel":28,
            "typeParams":new <§^$F§>[§^$F§.§`"G§],
            "races":new <Race>[Race.§1"^§,Race.§#%V§],
            "baseArsenal":new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.7),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.7),new §>%Q§(§+%z§.WATERMELON,0.6,2),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.5),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.5)]
         });
         §§push("hatId");
         §§push(§,$O§.BLACK_RAVEN);
         §§push("pricePoints");
         §§push(55);
         §§push("minUserLevel");
         §§push(28);
         §§push("typeParams");
         §§push(new <§^$F§>[§^$F§.§`"G§]);
         §§push("races");
         §§push(new <Race>[Race.§"$H§,Race.§1"^§]);
         §§push("baseArsenal");
         var _temp_441:* = new <§>%Q§>[new §>%Q§(§+%z§.CANNON_UPG_2,0.7),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.6),new §>%Q§(§+%z§.CROSSBOW,0.5),new §>%Q§(§+%z§.ANTITOXIN,0.2,1)];
         §§pop().config = null;
         super();
      }
      
      public static function §3&H§() : §>%Q§
      {
         var _loc1_:uint = §-q§.random(0,§,!p§.length - 1);
         return §,!p§[_loc1_];
      }
      
      public function get §&#T§() : Array
      {
         return this.config;
      }
   }
}

