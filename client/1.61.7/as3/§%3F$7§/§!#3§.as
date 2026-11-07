package §?$7§
{
   import § $q§.§<"]§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"% §.LevelUpDialog;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§'"%§;
   import §##j§.§7%R§;
   import §##j§.§<!P§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&!?§.§"_§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §+%S§.§["4§;
   import §,$J§.§,$O§;
   import §,&+§.§=#x§;
   import §0%z§.*;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#T§.§^!P§;
   import §6#Z§.§&!Z§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §8#a§.§>!o§;
   import §9![§.§^§;
   import §9%W§.§&!P§;
   import §;!J§.§8!a§;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=1§.§ $K§;
   import §=1§.§"%T§;
   import §=1§.§'#z§;
   import §=1§.§1$v§;
   import §=1§.§4"s§;
   import §=1§.§>#i§;
   import §=1§.Archivist;
   import §=1§.ArcticWarrior;
   import §=1§.Cyborg;
   import §=1§.Druid;
   import §=1§.Enchanter;
   import §=1§.GravityMaster;
   import §=1§.Hacker;
   import §=1§.Paladin;
   import §=1§.Pharaoh;
   import §=1§.SolarPriest;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §]^§.§-$T§;
   import §]^§.§4&+§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §!#3§ extends §+l§
   {
      
      private static var instance:§!#3§;
      
      private var list:Vector.<§8%6§>;
      
      public function §!#3§()
      {
         §§push(this);
         var _temp_8:* = new <§8%6§>[new §-$T§(§+#N§.§"v§,Paladin,§0$N§.BOSS_PALADIN_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_PALADIN),new §`%g§(§+%z§.HELICOPTER,1),new §`%g§(§+%z§.BAT,1),new §`%g§(§+%z§.FORCE_FIELD,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_PALADIN),new §`%g§(§+%z§.HELICOPTER,2),new §`%g§(§+%z§.BAT,2),new §`%g§(§+%z§.FORCE_FIELD,2)]),12),new §-$T§(§+#N§.§<!Z§,Hacker,§0$N§.BOSS_HACKER_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_HACKER),new §`%g§(§+%z§.TELEPORT_ANCHOR,1),new §`%g§(§+%z§.AIR_BLOCKER,1),new §`%g§(§+%z§.UFO,2)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_HACKER),new §`%g§(§+%z§.TELEPORT_ANCHOR,2),new §`%g§(§+%z§.AIR_BLOCKER,2),new §`%g§(§+%z§.UFO,4)]),12),new §-$T§(§+#N§.THIEVES,§'#z§,§0$N§.BOSS_THIEVES_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_THIEF),new §`%g§(§+%z§.ANTIFREEZE,2),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.WATERMELON,2)]),new §1%z§([new §<!P§(2)
         ,new §'"%§(80),new §]$X§(§,$O§.BOSS_THIEF),new §`%g§(§+%z§.ANTIFREEZE,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.WATERMELON,4)]),15),new §-$T§(§+#N§.§2$&§,§4"s§,§0$N§.BOSS_PSIONICS_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_PSI_TELEPATHIST),new §`%g§(§+%z§.EMERGENCY_TELEPORT,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.METEOR,1)]),new §1%z§([new §<!P§(2),new §'"%§(80),new §]$X§(§,$O§.BOSS_PSI_TELEPATHIST),new §`%g§(§+%z§.EMERGENCY_TELEPORT,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.METEOR,2)]),15),new §-$T§(§+#N§.§=!q§,§"%T§,§0$N§.BOSS_PHANTOMS_DESCR,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§,$O§.BOSS_PHANTOM),new §`%g§(§+%z§.§7&E§,1),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.CARPET_STRIKE,1)]),new §1%z§([new §<!P§(2),new §'"%§(100),new §]$X§(§,$O§.BOSS_PHANTOM),new §`%g§(§+%z§.§7&E§,2),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.CARPET_STRIKE,2)]),15,new §1%z§([new §]$X§(§]!E§.CURSED_BROOM,8)])),new §-$T§(§+#N§.§ %§,§ $K§,§0$N§.BOSS_ARCHDEMON_DESCR
         ,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§]!E§.BOSS_ARCHIDEMON_SHIELD),new §`%g§(§+%z§.HOLY_GRENADE,1),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.ANVIL,1)]),new §1%z§([new §<!P§(2),new §'"%§(100),new §]$X§(§]!E§.BOSS_ARCHIDEMON_SHIELD),new §`%g§(§+%z§.HOLY_GRENADE,2),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.ANVIL,2)]),15),new §-$T§(§+#N§.§+F§,Druid,§0$N§.BOSS_DRUID_DESCR,new §1%z§([new §7%R§(120),new §'"%§(60),new §]$X§(§,$O§.EAGLE_HAT),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.SOUL_GUN,2)]),new §1%z§([new §<!P§(3),new §'"%§(120),new §]$X§(§,$O§.EAGLE_HAT),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.SOUL_GUN,4)]),18),new §-$T§(§+#N§.PHARAOH,Pharaoh,§0$N§.BOSS_PHARAOH_DESCR,new §1%z§([new §7%R§(120),new §'"%§(60),new §]$X§(§,$O§.§6$;§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.NAPALM_STRIKE,2)]),new §1%z§([new §<!P§(3),new §'"%§(120),new §]$X§(§,$O§.§6$;§),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§
         .ANTITOXIN,4),new §`%g§(§+%z§.NAPALM_STRIKE,4)]),18),new §-$T§(§+#N§.CYBORG,Cyborg,§0$N§.BOSS_CYBORG_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§,$O§.BOSS_CYBORG),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.AIR_STRIKE,2)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§,$O§.BOSS_CYBORG),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.AIR_STRIKE,4)]),18),new §-$T§(§+#N§.§+W§,§>#i§,§0$N§.BOSS_JARL_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§,$O§.BOSS_JARL_HELM),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,2)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§,$O§.BOSS_JARL_HELM),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,4)]),18),new §-$T§(§+#N§.§&$R§,Enchanter,§0$N§.BOSS_ENCHANTER_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§]!E§.BOSS_ENCHANTER_FIERY_DAGGER),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN
         ,3),new §`%g§(§+%z§.PLASMAGUN,1)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§]!E§.BOSS_ENCHANTER_FIERY_DAGGER),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.PLASMAGUN,2)]),20),new §-$T§(§+#N§.ARCHIVIST,Archivist,§0$N§.BOSS_ARCHIVIST_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§,$O§.§5"=§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.ADRENALINE,2)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§,$O§.§5"=§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.ADRENALINE,4)]),20,new §1%z§([new §]$X§(§]!E§.§=%>§,6)])),new §-$T§(§+#N§.§^%+§,GravityMaster,§0$N§.GRAVITY_MASTER_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.BOSS_GRAVITY_MASTER_SHIELD),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.ANTIDOTE,2)]),new §1%z§([new §<!P§(4),new §'"%§(160),new §]$X§(§]!E§.BOSS_GRAVITY_MASTER_SHIELD),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§
         .ANTIDOTE,4)]),20),new §-$T§(§+#N§.SOLAR_PRIEST,SolarPriest,§0$N§.BOSS_SOLAR_PRIEST_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§,$O§.§5#U§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§!%D§,2)]),new §1%z§([new §<!P§(5),new §'"%§(160),new §]$X§(§,$O§.§5#U§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§!%D§,4)]),20,new §1%z§([new §]$X§(§]!E§.§!%M§,6)])),new §-$T§(§+#N§.§0"]§,ArcticWarrior,§0$N§.BOSS_ARCTIC_WARRIOR_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.BOSS_ARCTIC_SWORD),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§5-§,2)]),new §1%z§([new §<!P§(5),new §'"%§(160),new §]$X§(§]!E§.BOSS_ARCTIC_SWORD),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§5-§,4)]),24),new §-$T§(§+#N§.§!%Z§,§1$v§,§0$N§.BOSS_QUEEN_SPIDERS_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.BOSS_SCORPION_STAFF),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§
         .§;%Z§,2)]),new §1%z§([new §<!P§(5),new §'"%§(160),new §]$X§(§]!E§.BOSS_SCORPION_STAFF),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§;%Z§,4)]),24)];
         var _temp_16:* = new <§8%6§>[new §-$T§(§+#N§.§"v§,Paladin,§0$N§.BOSS_PALADIN_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_PALADIN),new §`%g§(§+%z§.HELICOPTER,1),new §`%g§(§+%z§.BAT,1),new §`%g§(§+%z§.FORCE_FIELD,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_PALADIN),new §`%g§(§+%z§.HELICOPTER,2),new §`%g§(§+%z§.BAT,2),new §`%g§(§+%z§.FORCE_FIELD,2)]),12),new §-$T§(§+#N§.§<!Z§,Hacker,§0$N§.BOSS_HACKER_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_HACKER),new §`%g§(§+%z§.TELEPORT_ANCHOR,1),new §`%g§(§+%z§.AIR_BLOCKER,1),new §`%g§(§+%z§.UFO,2)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_HACKER),new §`%g§(§+%z§.TELEPORT_ANCHOR,2),new §`%g§(§+%z§.AIR_BLOCKER,2),new §`%g§(§+%z§.UFO,4)]),12),new §-$T§(§+#N§.THIEVES,§'#z§,§0$N§.BOSS_THIEVES_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_THIEF),new §`%g§(§+%z§.ANTIFREEZE,2),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.WATERMELON,2)]),new §1%z§([new §<!P§(2)
         ,new §'"%§(80),new §]$X§(§,$O§.BOSS_THIEF),new §`%g§(§+%z§.ANTIFREEZE,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.WATERMELON,4)]),15),new §-$T§(§+#N§.§2$&§,§4"s§,§0$N§.BOSS_PSIONICS_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_PSI_TELEPATHIST),new §`%g§(§+%z§.EMERGENCY_TELEPORT,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.METEOR,1)]),new §1%z§([new §<!P§(2),new §'"%§(80),new §]$X§(§,$O§.BOSS_PSI_TELEPATHIST),new §`%g§(§+%z§.EMERGENCY_TELEPORT,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.METEOR,2)]),15),new §-$T§(§+#N§.§=!q§,§"%T§,§0$N§.BOSS_PHANTOMS_DESCR,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§,$O§.BOSS_PHANTOM),new §`%g§(§+%z§.§7&E§,1),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.CARPET_STRIKE,1)]),new §1%z§([new §<!P§(2),new §'"%§(100),new §]$X§(§,$O§.BOSS_PHANTOM),new §`%g§(§+%z§.§7&E§,2),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.CARPET_STRIKE,2)]),15,new §1%z§([new §]$X§(§]!E§.CURSED_BROOM,8)])),new §-$T§(§+#N§.§ %§,§ $K§,§0$N§.BOSS_ARCHDEMON_DESCR
         ,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§]!E§.BOSS_ARCHIDEMON_SHIELD),new §`%g§(§+%z§.HOLY_GRENADE,1),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.ANVIL,1)]),new §1%z§([new §<!P§(2),new §'"%§(100),new §]$X§(§]!E§.BOSS_ARCHIDEMON_SHIELD),new §`%g§(§+%z§.HOLY_GRENADE,2),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.ANVIL,2)]),15),new §-$T§(§+#N§.§+F§,Druid,§0$N§.BOSS_DRUID_DESCR,new §1%z§([new §7%R§(120),new §'"%§(60),new §]$X§(§,$O§.EAGLE_HAT),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.SOUL_GUN,2)]),new §1%z§([new §<!P§(3),new §'"%§(120),new §]$X§(§,$O§.EAGLE_HAT),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.SOUL_GUN,4)]),18),new §-$T§(§+#N§.PHARAOH,Pharaoh,§0$N§.BOSS_PHARAOH_DESCR,new §1%z§([new §7%R§(120),new §'"%§(60),new §]$X§(§,$O§.§6$;§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.NAPALM_STRIKE,2)]),new §1%z§([new §<!P§(3),new §'"%§(120),new §]$X§(§,$O§.§6$;§),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§
         .ANTITOXIN,4),new §`%g§(§+%z§.NAPALM_STRIKE,4)]),18),new §-$T§(§+#N§.CYBORG,Cyborg,§0$N§.BOSS_CYBORG_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§,$O§.BOSS_CYBORG),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.AIR_STRIKE,2)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§,$O§.BOSS_CYBORG),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.AIR_STRIKE,4)]),18),new §-$T§(§+#N§.§+W§,§>#i§,§0$N§.BOSS_JARL_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§,$O§.BOSS_JARL_HELM),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,2)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§,$O§.BOSS_JARL_HELM),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,4)]),18),new §-$T§(§+#N§.§&$R§,Enchanter,§0$N§.BOSS_ENCHANTER_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§]!E§.BOSS_ENCHANTER_FIERY_DAGGER),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN
         ,3),new §`%g§(§+%z§.PLASMAGUN,1)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§]!E§.BOSS_ENCHANTER_FIERY_DAGGER),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.PLASMAGUN,2)]),20),new §-$T§(§+#N§.ARCHIVIST,Archivist,§0$N§.BOSS_ARCHIVIST_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§,$O§.§5"=§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.ADRENALINE,2)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§,$O§.§5"=§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.ADRENALINE,4)]),20,new §1%z§([new §]$X§(§]!E§.§=%>§,6)])),new §-$T§(§+#N§.§^%+§,GravityMaster,§0$N§.GRAVITY_MASTER_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.BOSS_GRAVITY_MASTER_SHIELD),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.ANTIDOTE,2)]),new §1%z§([new §<!P§(4),new §'"%§(160),new §]$X§(§]!E§.BOSS_GRAVITY_MASTER_SHIELD),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§
         .ANTIDOTE,4)]),20),new §-$T§(§+#N§.SOLAR_PRIEST,SolarPriest,§0$N§.BOSS_SOLAR_PRIEST_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§,$O§.§5#U§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§!%D§,2)]),new §1%z§([new §<!P§(5),new §'"%§(160),new §]$X§(§,$O§.§5#U§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§!%D§,4)]),20,new §1%z§([new §]$X§(§]!E§.§!%M§,6)])),new §-$T§(§+#N§.§0"]§,ArcticWarrior,§0$N§.BOSS_ARCTIC_WARRIOR_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.BOSS_ARCTIC_SWORD),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§5-§,2)]),new §1%z§([new §<!P§(5),new §'"%§(160),new §]$X§(§]!E§.BOSS_ARCTIC_SWORD),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§5-§,4)]),24),new §-$T§(§+#N§.§!%Z§,§1$v§,§0$N§.BOSS_QUEEN_SPIDERS_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.BOSS_SCORPION_STAFF),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§
         .§;%Z§,2)]),new §1%z§([new §<!P§(5),new §'"%§(160),new §]$X§(§]!E§.BOSS_SCORPION_STAFF),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§;%Z§,4)]),24)];
         §§pop().list = new <§8%6§>[new §-$T§(§+#N§.§"v§,Paladin,§0$N§.BOSS_PALADIN_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_PALADIN),new §`%g§(§+%z§.HELICOPTER,1),new §`%g§(§+%z§.BAT,1),new §`%g§(§+%z§.FORCE_FIELD,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_PALADIN),new §`%g§(§+%z§.HELICOPTER,2),new §`%g§(§+%z§.BAT,2),new §`%g§(§+%z§.FORCE_FIELD,2)]),12),new §-$T§(§+#N§.§<!Z§,Hacker,§0$N§.BOSS_HACKER_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_HACKER),new §`%g§(§+%z§.TELEPORT_ANCHOR,1),new §`%g§(§+%z§.AIR_BLOCKER,1),new §`%g§(§+%z§.UFO,2)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_HACKER),new §`%g§(§+%z§.TELEPORT_ANCHOR,2),new §`%g§(§+%z§.AIR_BLOCKER,2),new §`%g§(§+%z§.UFO,4)]),12),new §-$T§(§+#N§.THIEVES,§'#z§,§0$N§.BOSS_THIEVES_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_THIEF),new §`%g§(§+%z§.ANTIFREEZE,2),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.WATERMELON,2)]),new §1%z§([new §<!P§(2)
         ,new §'"%§(80),new §]$X§(§,$O§.BOSS_THIEF),new §`%g§(§+%z§.ANTIFREEZE,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.WATERMELON,4)]),15),new §-$T§(§+#N§.§2$&§,§4"s§,§0$N§.BOSS_PSIONICS_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_PSI_TELEPATHIST),new §`%g§(§+%z§.EMERGENCY_TELEPORT,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.METEOR,1)]),new §1%z§([new §<!P§(2),new §'"%§(80),new §]$X§(§,$O§.BOSS_PSI_TELEPATHIST),new §`%g§(§+%z§.EMERGENCY_TELEPORT,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.METEOR,2)]),15),new §-$T§(§+#N§.§=!q§,§"%T§,§0$N§.BOSS_PHANTOMS_DESCR,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§,$O§.BOSS_PHANTOM),new §`%g§(§+%z§.§7&E§,1),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.CARPET_STRIKE,1)]),new §1%z§([new §<!P§(2),new §'"%§(100),new §]$X§(§,$O§.BOSS_PHANTOM),new §`%g§(§+%z§.§7&E§,2),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.CARPET_STRIKE,2)]),15,new §1%z§([new §]$X§(§]!E§.CURSED_BROOM,8)])),new §-$T§(§+#N§.§ %§,§ $K§,§0$N§.BOSS_ARCHDEMON_DESCR
         ,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§]!E§.BOSS_ARCHIDEMON_SHIELD),new §`%g§(§+%z§.HOLY_GRENADE,1),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.ANVIL,1)]),new §1%z§([new §<!P§(2),new §'"%§(100),new §]$X§(§]!E§.BOSS_ARCHIDEMON_SHIELD),new §`%g§(§+%z§.HOLY_GRENADE,2),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.ANVIL,2)]),15),new §-$T§(§+#N§.§+F§,Druid,§0$N§.BOSS_DRUID_DESCR,new §1%z§([new §7%R§(120),new §'"%§(60),new §]$X§(§,$O§.EAGLE_HAT),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.SOUL_GUN,2)]),new §1%z§([new §<!P§(3),new §'"%§(120),new §]$X§(§,$O§.EAGLE_HAT),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.SOUL_GUN,4)]),18),new §-$T§(§+#N§.PHARAOH,Pharaoh,§0$N§.BOSS_PHARAOH_DESCR,new §1%z§([new §7%R§(120),new §'"%§(60),new §]$X§(§,$O§.§6$;§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.NAPALM_STRIKE,2)]),new §1%z§([new §<!P§(3),new §'"%§(120),new §]$X§(§,$O§.§6$;§),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§
         .ANTITOXIN,4),new §`%g§(§+%z§.NAPALM_STRIKE,4)]),18),new §-$T§(§+#N§.CYBORG,Cyborg,§0$N§.BOSS_CYBORG_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§,$O§.BOSS_CYBORG),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.AIR_STRIKE,2)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§,$O§.BOSS_CYBORG),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.AIR_STRIKE,4)]),18),new §-$T§(§+#N§.§+W§,§>#i§,§0$N§.BOSS_JARL_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§,$O§.BOSS_JARL_HELM),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,2)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§,$O§.BOSS_JARL_HELM),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,4)]),18),new §-$T§(§+#N§.§&$R§,Enchanter,§0$N§.BOSS_ENCHANTER_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§]!E§.BOSS_ENCHANTER_FIERY_DAGGER),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN
         ,3),new §`%g§(§+%z§.PLASMAGUN,1)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§]!E§.BOSS_ENCHANTER_FIERY_DAGGER),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.PLASMAGUN,2)]),20),new §-$T§(§+#N§.ARCHIVIST,Archivist,§0$N§.BOSS_ARCHIVIST_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§,$O§.§5"=§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.ADRENALINE,2)]),new §1%z§([new §<!P§(3),new §'"%§(150),new §]$X§(§,$O§.§5"=§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.ADRENALINE,4)]),20,new §1%z§([new §]$X§(§]!E§.§=%>§,6)])),new §-$T§(§+#N§.§^%+§,GravityMaster,§0$N§.GRAVITY_MASTER_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.BOSS_GRAVITY_MASTER_SHIELD),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.ANTIDOTE,2)]),new §1%z§([new §<!P§(4),new §'"%§(160),new §]$X§(§]!E§.BOSS_GRAVITY_MASTER_SHIELD),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§
         .ANTIDOTE,4)]),20),new §-$T§(§+#N§.SOLAR_PRIEST,SolarPriest,§0$N§.BOSS_SOLAR_PRIEST_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§,$O§.§5#U§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§!%D§,2)]),new §1%z§([new §<!P§(5),new §'"%§(160),new §]$X§(§,$O§.§5#U§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§!%D§,4)]),20,new §1%z§([new §]$X§(§]!E§.§!%M§,6)])),new §-$T§(§+#N§.§0"]§,ArcticWarrior,§0$N§.BOSS_ARCTIC_WARRIOR_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.BOSS_ARCTIC_SWORD),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§5-§,2)]),new §1%z§([new §<!P§(5),new §'"%§(160),new §]$X§(§]!E§.BOSS_ARCTIC_SWORD),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§5-§,4)]),24),new §-$T§(§+#N§.§!%Z§,§1$v§,§0$N§.BOSS_QUEEN_SPIDERS_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.BOSS_SCORPION_STAFF),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§
         .§;%Z§,2)]),new §1%z§([new §<!P§(5),new §'"%§(160),new §]$X§(§]!E§.BOSS_SCORPION_STAFF),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§;%Z§,4)]),24)];
         super();
      }
      
      public static function getInstance() : §!#3§
      {
         if(!instance)
         {
            instance = new §!#3§();
         }
         return instance;
      }
      
      override public function §!!e§() : Vector.<§8%6§>
      {
         return this.list;
      }
      
      override public function §%#y§() : uint
      {
         return Math.ceil(this.list.length / §+l§.§4!b§);
      }
      
      override public function §##H§(param1:int) : Vector.<§-$T§>
      {
         var _loc4_:§-$T§ = null;
         var _loc2_:int = §+l§.§4!b§ * param1;
         var _loc3_:Vector.<§-$T§> = new Vector.<§-$T§>(0);
         for each(_loc4_ in this.list.slice(_loc2_,_loc2_ + §+l§.§4!b§))
         {
            _loc3_.push(_loc4_);
         }
         return _loc3_;
      }
      
      public function getRecord(param1:int) : §8%6§
      {
         var _loc2_:§8%6§ = null;
         for each(_loc2_ in this.list)
         {
            if(_loc2_.getId() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §^u§(param1:int) : §-$T§
      {
         var _loc2_:§-$T§ = null;
         var _loc3_:Vector.<§]$X§> = null;
         var _loc4_:§]$X§ = null;
         loop0:
         for each(_loc2_ in this.list)
         {
            _loc3_ = _loc2_.§3"c§().§2!O§();
            var _loc7_:int = 0;
            var _loc8_:* = _loc3_;
            do
            {
               for each(_loc4_ in _loc8_)
               {
               }
               continue loop0;
            }
            while(_loc4_.getId() != param1);
            return _loc2_;
         }
         return null;
      }
      
      public function §[&5§(param1:int) : §-$T§
      {
         var _loc2_:§-$T§ = null;
         var _loc3_:Vector.<§]$X§> = null;
         var _loc4_:§]$X§ = null;
         for each(_loc2_ in this.list)
         {
            if(_loc2_.getExtraAward())
            {
               _loc3_ = _loc2_.getExtraAward().§2!O§();
               for each(_loc4_ in _loc3_)
               {
                  if(_loc4_.getId() == param1)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      override protected function get minId() : int
      {
         return 101;
      }
      
      override protected function get maxId() : int
      {
         return 120;
      }
      
      override public function §+#q§() : uint
      {
         return 100;
      }
      
      public function §[&!§(param1:Vector.<BossBattleAwardStructure>) : void
      {
         var _loc2_:BossBattleAwardStructure = null;
         var _loc3_:§-$T§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:§1%z§ = null;
         var _loc7_:§1%z§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this.getRecord(_loc2_.id) as §-$T§;
            if(_loc3_)
            {
               _loc4_ = BossBattleWinAwardStructure.getAwardsArray(_loc2_.firstWinBattleAward);
               _loc5_ = BossBattleWinAwardStructure.getAwardsArray(_loc2_.nextWinBattleAward);
               _loc6_ = new §1%z§(_loc4_);
               _loc7_ = new §1%z§(_loc5_);
               _loc3_.§7#K§(_loc6_,_loc7_);
            }
         }
      }
   }
}

