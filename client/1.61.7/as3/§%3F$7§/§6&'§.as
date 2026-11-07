package §?$7§
{
   import § #m§.§;#^§;
   import § #m§.§[&H§;
   import §!$Z§.§"$I§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§'"%§;
   import §##j§.§7%R§;
   import §##j§.§<!P§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&!@§.§ "'§;
   import §&!@§.§ %&§;
   import §&!@§.§!6§;
   import §&!@§.§%V§;
   import §&!@§.§1"7§;
   import §&!@§.§4"_§;
   import §&!@§.§5"`§;
   import §&!@§.§>"B§;
   import §&!@§.AncientGhost;
   import §&!@§.Assassin;
   import §&!@§.Blacksmith;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Devotee;
   import §&!@§.Emperor;
   import §&!@§.Engineer;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Illusionist;
   import §&!@§.Maniacs;
   import §&!@§.Miner;
   import §&!@§.RebelRobot;
   import §&!@§.Samurai;
   import §&!@§.Scientist;
   import §&!@§.Sergeant;
   import §&!@§.SoulMaster;
   import §&!@§.Symbiote;
   import §&!@§.Vikings;
   import §&!@§.VoodooShaman;
   import §&!@§.WindMaster;
   import §&!@§.Yakuza;
   import §'$j§.QuestGiftItem;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2"L§.§^$y§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §4!K§.§4%E§;
   import §4!K§.§>#_§;
   import §4!K§.§^%A§;
   import §4!x§.§8#u§;
   import §4u§.§[%u§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$1§.*;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8#<§.§!#^§;
   import §<!W§.§!"+§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§1e§;
   import §?!E§.§&!5§;
   import §?!E§.§1&4§;
   import §?!E§.§6!S§;
   import §?!E§.§>"e§;
   import §?!E§.§^"u§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§&#Z§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§5%8§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import com.inreflected.ui.touchScroll.*;
   import config.§#!"§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.social.controller.§8"'§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §6&'§ extends §+l§
   {
      
      private static var §0"s§:uint;
      
      private static var instance:§6&'§;
      
      private var list:Vector.<§8%6§>;
      
      public function §6&'§()
      {
         §§push(this);
         var _temp_20:* = new <§8%6§>[new §8%6§(-1,§0$N§.LEARNING_MISSION_1_NAME,§&!5§,§0$N§.LEARNING_MISSION_1_DESCR,new §1%z§([new §7%R§(100),new §'"%§(100)])),new §8%6§(-2,§0$N§.LEARNING_MISSION_2_NAME,§6!S§,§0$N§.LEARNING_MISSION_2_DESCR,new §1%z§([new §7%R§(250),new §'"%§(105)])),new §8%6§(-3,§0$N§.LEARNING_MISSION_4_NAME,§^"u§,§0$N§.LEARNING_MISSION_4_DESCR,new §1%z§([new §7%R§(450),new §'"%§(110)])),new §8%6§(-4,§0$N§.LEARNING_MISSION_3_NAME,§>"e§,§0$N§.LEARNING_MISSION_3_DESCR,new §1%z§([new §7%R§(700),new §'"%§(115)])),new §8%6§(-5,§0$N§.LEARNING_MISSION_5_NAME,§1&4§,§0$N§.LEARNING_MISSION_5_DESCR,new §1%z§([new §7%R§(1000),new §'"%§(120)])),new §-$T§(§+#N§.§`%b§,Farmer,§0$N§.BOSS_FARMER_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.HOPPING_BAZOOKA,2),new §`%g§(§+%z§.FREEZING_MINE,1),new §`%g§(§+%z§.EMERGENCY_TELEPORT,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.ANTIFREEZE,4),new §`%g§(§+%z§.FREEZING_MINE,2),new §`%g§(§+%z§
         .EMERGENCY_TELEPORT,2)]),6),new §-$T§(§+#N§.§[$]§,Hunter,§0$N§.BOSS_HUNTER_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.CIRCUS_CANNON,2),new §`%g§(§+%z§.ANTIFREEZE,1),new §`%g§(§+%z§.FIREWORK,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.CIRCUS_CANNON,4),new §`%g§(§+%z§.ANTIFREEZE,2),new §`%g§(§+%z§.FIREWORK,2)]),6),new §-$T§(§+#N§.§<"7§,Maniacs,§0$N§.BOSS_MANIACS_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.AIR_BLOCKER,1),new §`%g§(§+%z§.DISC_LAUNCHER,2),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.AIR_BLOCKER,2),new §`%g§(§+%z§.DISC_LAUNCHER,4),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,2)]),6),new §-$T§(§+#N§.MINER,Miner,§0$N§.BOSS_MINER_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.§7&E§,1),new §`%g§(§+%z§.BAT,1),new §`%g§(§+%z§.UFO,1)]),new §1%z§([new §7%R§(90),new §'"%§(50)
         ,new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.§7&E§,2),new §`%g§(§+%z§.BAT,2),new §`%g§(§+%z§.UFO,2)]),7),new §-$T§(§+#N§.SAMURAI,Samurai,§0$N§.BOSS_SAMURAI_CAT_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.TELEPORT_ANCHOR,1),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.HOLY_GRENADE,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.TELEPORT_ANCHOR,2),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.HOLY_GRENADE,2)]),8),new §-$T§(§+#N§.§]"T§,Sergeant,§0$N§.BOSS_SERGEANT_DESCR,new §1%z§([new §7%R§(70),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.§]h§,2),new §`%g§(§+%z§.AIR_STRIKE,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.§]h§,4),new §`%g§(§+%z§.AIR_STRIKE,2)]),9),new §-$T§(§+#N§.§9&0§,BurningZombies,§0$N§.BOSS_BURNING_ZOMBIES_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§
         .ANTIFREEZE,1),new §`%g§(§+%z§.METEOR,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTIFREEZE,2),new §`%g§(§+%z§.METEOR,2)]),10),new §-$T§(§+#N§.§1"m§,§4"_§,§0$N§.BOSS_SOUL_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.FREEZING_MINE,2),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.SOUL_GUN,2)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.FREEZING_MINE,4),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.SOUL_GUN,4)]),11),new §-$T§(§+#N§.§>%§,VoodooShaman,§0$N§.BOSS_SHAMAN_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_SHAMAN_VOODOO_MASK),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.HELICOPTER,2)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_SHAMAN_VOODOO_MASK),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.HELICOPTER,4)]),12),new §-$T§(§+#N§.§9$6§,Illusionist,§0$N§.BOSS_ILLUSIONIST_DESCR
         ,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_ILLUSIONIST_CYLINDER),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.PUPPET,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_ILLUSIONIST_CYLINDER),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.PUPPET,2)]),12),new §-$T§(§+#N§.§5#I§,Vikings,§0$N§.BOSS_VIKING_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_VIKING),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.WATERMELON,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_VIKING),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.WATERMELON,2)]),12),new §-$T§(§+#N§.§ #z§,§ %&§,§0$N§.BOSS_PIRATE_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_PIRATES),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.BUNKER_BUSTER,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_PIRATES),new §`%g§(§+%z§.BANDAGE
         ,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.BUNKER_BUSTER,2)]),12),new §-$T§(§+#N§.§@#5§,WindMaster,§0$N§.BOSS_WIND_MASTER_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_WIND_MASTER),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.NAPALM_STRIKE,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_WIND_MASTER),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.NAPALM_STRIKE,2)]),12),new §-$T§(§+#N§.§1!+§,Yakuza,§0$N§.BOSS_YAKUZA_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_YAKUZA_STORM),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.FORCE_FIELD,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_YAKUZA_STORM),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.FORCE_FIELD,2)]),12),new §-$T§(§+#N§.§,&7§,§%V§,§0$N§.BOSS_REVIVED_CAPTAIN_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_REVIVED_CAPTAIN),new §`%g§(§+%z§.BANDAGE
         ,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.METEOR,2)]),new §1%z§([new §<!P§(2),new §'"%§(80),new §]$X§(§,$O§.BOSS_REVIVED_CAPTAIN),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.METEOR,4)]),15),new §-$T§(§+#N§.§7$c§,§ "'§,§0$N§.BOSS_ROMEO_JULIET_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_ROMEO),new §]$X§(§,$O§.BOSS_JUILET),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.AIR_STRIKE,3)]),new §1%z§([new §<!P§(3),new §'"%§(80),new §]$X§(§,$O§.BOSS_ROMEO),new §]$X§(§,$O§.BOSS_JUILET),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.AIR_STRIKE,6)]),15),new §-$T§(§+#N§.§]!j§,§1"7§,§0$N§.BOSS_KING_DEAD_DESCR,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§,$O§.BOSS_KING_DEAD),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.HOLY_GRENADE,2)]),new §1%z§([new §<!P§(5),new §'"%§(100),new §]$X§(§,$O§.BOSS_KING_DEAD),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.HOLY_GRENADE,4)]),18),new §-$T§(§+#N§.GHOST
         ,AncientGhost,§0$N§.BOSS_GHOST_DESCR,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§,$O§.§;"h§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.PLASMAGUN,1)]),new §1%z§([new §<!P§(5),new §'"%§(100),new §]$X§(§,$O§.§;"h§),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.PLASMAGUN,2)]),18),new §-$T§(§+#N§.§'#L§,Engineer,§0$N§.BOSS_ENGINEER_DESCR,new §1%z§([new §7%R§(120),new §'"%§(60),new §]$X§(§,$O§.BOSS_ENGINEER),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.FROST_STASIS,1)]),new §1%z§([new §<!P§(5),new §'"%§(120),new §]$X§(§,$O§.BOSS_ENGINEER),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.FROST_STASIS,2)]),18),new §-$T§(§+#N§.§]%v§,§5"`§,§0$N§.BOSS_GUARDIANS_DEPTHS_DESCR,new §1%z§([new §7%R§(130),new §'"%§(65),new §]$X§(§,$O§.§9#r§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.CARPET_STRIKE,2)]),new §1%z§([new §<!P§(5),new §'"%§(130),new §]$X§(§,$O§.§9#r§),new §`%g§(§+%z§
         .BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.CARPET_STRIKE,4)]),18),new §-$T§(§+#N§.§<$N§,DarkKnight,§0$N§.BOSS_DARK_KNIGHT_DESCR,new §1%z§([new §7%R§(130),new §'"%§(70),new §]$X§(§,$O§.§01§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.ANVIL,2)]),new §1%z§([new §<!P§(7),new §'"%§(140),new §]$X§(§,$O§.§01§),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.ANVIL,4)]),20),new §-$T§(§+#N§.§[#J§,Assassin,§0$N§.BOSS_ASSASSIN_DESCR,new §1%z§([new §7%R§(140),new §'"%§(75),new §]$X§(§,$O§.BOSS_ASSASSIN_HOOD),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.FORCE_FIELD,2)]),new §1%z§([new §<!P§(7),new §'"%§(150),new §]$X§(§,$O§.BOSS_ASSASSIN_HOOD),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.FORCE_FIELD,4)]),20),new §-$T§(§+#N§.§[<§,§!6§,§0$N§.BOSS_ALCHEMIST_DESCR,new §1%z§([new §7%R§(140),new §'"%§(75),new §]$X§(§,$O§.§ #2§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§
         .PUPPET,2)]),new §1%z§([new §<!P§(7),new §'"%§(150),new §]$X§(§,$O§.§ #2§),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.PUPPET,4)]),20),new §-$T§(§+#N§.§@"f§,§>"B§,§0$N§.BOSS_ARCHBOT_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§]!E§.BOSS_ARCHBOT_STUFF),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.ADRENALINE,2)]),new §1%z§([new §<!P§(7),new §'"%§(150),new §]$X§(§]!E§.BOSS_ARCHBOT_STUFF),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.ADRENALINE,4)]),20,new §1%z§([new §]$X§(§,$O§.§[&2§,8)])),new §-$T§(§+#N§.EMPEROR,Emperor,§0$N§.BOSS_EMPEROR_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§,$O§.§'#j§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.PLASMAGUN,2)]),new §1%z§([new §<!P§(8),new §'"%§(160),new §]$X§(§,$O§.§'#j§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.PLASMAGUN,4)]),24),new §-$T§(§+#N§.SCIENTIST,Scientist,§0$N§.BOSS_SCIENTIST_DESCR
         ,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.§%$F§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§!%D§,1)]),new §1%z§([new §<!P§(8),new §'"%§(160),new §]$X§(§]!E§.§%$F§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§!%D§,2)]),24),new §-$T§(§+#N§.§9!E§,Symbiote,§0$N§.BOSS_SYMBIOTE_DESCR,new §1%z§([new §7%R§(170),new §'"%§(85),new §]$X§(§]!E§.BOSS_SYMBIOTE_BIOBLADE),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.ANTIDOTE,2)]),new §1%z§([new §<!P§(8),new §'"%§(170),new §]$X§(§]!E§.BOSS_SYMBIOTE_BIOBLADE),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.ANTIDOTE,4)]),24),new §-$T§(§+#N§.§>& §,Blacksmith,§0$N§.BOSS_BLACKSMITH_DESCR,new §1%z§([new §7%R§(170),new §'"%§(85),new §]$X§(§,$O§.§3!]§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.FROST_STASIS,2)]),new §1%z§([new §<!P§(8),new §'"%§(170),new §]$X§(§,$O§.§3!]§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§
         .ANTITOXIN,6),new §`%g§(§+%z§.FROST_STASIS,4)]),24,new §1%z§([new §]$X§(§]!E§.§^T§,8)])),new §-$T§(§+#N§.§]"f§,SoulMaster,§0$N§.BOSS_SOUL_MASTER_DESCR,new §1%z§([new §7%R§(180),new §'"%§(90),new §]$X§(§]!E§.BOSS_SOUL_MASTER_STAFF),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.VILE_PUMPKIN,2)]),new §1%z§([new §<!P§(9),new §'"%§(180),new §]$X§(§]!E§.BOSS_SOUL_MASTER_STAFF),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.VILE_PUMPKIN,4)]),24,new §1%z§([new §]$X§(§,$O§.BOSS_SOUL_MASTER_HELM,8)])),new §-$T§(§+#N§.§!"p§,RebelRobot,§0$N§.BOSS_REBEL_ROBOT_DESCR,new §1%z§([new §7%R§(180),new §'"%§(90),new §]$X§(§,$O§.§=!]§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§5-§,2)]),new §1%z§([new §<!P§(9),new §'"%§(180),new §]$X§(§,$O§.§=!]§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§5-§,4)]),24),new §-$T§(§+#N§.§8"7§,Devotee,§0$N§.BOSS_DEVOTEE_DESCR,new §1%z§([new §7%R§(190),new §'"%§(95),new §]$X§(§,$O§
         .§="F§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§;%Z§,2)]),new §1%z§([new §<!P§(10),new §'"%§(190),new §]$X§(§,$O§.§="F§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§;%Z§,4)]),26)];
         var _temp_36:* = new <§8%6§>[new §8%6§(-1,§0$N§.LEARNING_MISSION_1_NAME,§&!5§,§0$N§.LEARNING_MISSION_1_DESCR,new §1%z§([new §7%R§(100),new §'"%§(100)])),new §8%6§(-2,§0$N§.LEARNING_MISSION_2_NAME,§6!S§,§0$N§.LEARNING_MISSION_2_DESCR,new §1%z§([new §7%R§(250),new §'"%§(105)])),new §8%6§(-3,§0$N§.LEARNING_MISSION_4_NAME,§^"u§,§0$N§.LEARNING_MISSION_4_DESCR,new §1%z§([new §7%R§(450),new §'"%§(110)])),new §8%6§(-4,§0$N§.LEARNING_MISSION_3_NAME,§>"e§,§0$N§.LEARNING_MISSION_3_DESCR,new §1%z§([new §7%R§(700),new §'"%§(115)])),new §8%6§(-5,§0$N§.LEARNING_MISSION_5_NAME,§1&4§,§0$N§.LEARNING_MISSION_5_DESCR,new §1%z§([new §7%R§(1000),new §'"%§(120)])),new §-$T§(§+#N§.§`%b§,Farmer,§0$N§.BOSS_FARMER_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.HOPPING_BAZOOKA,2),new §`%g§(§+%z§.FREEZING_MINE,1),new §`%g§(§+%z§.EMERGENCY_TELEPORT,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.ANTIFREEZE,4),new §`%g§(§+%z§.FREEZING_MINE,2),new §`%g§(§+%z§
         .EMERGENCY_TELEPORT,2)]),6),new §-$T§(§+#N§.§[$]§,Hunter,§0$N§.BOSS_HUNTER_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.CIRCUS_CANNON,2),new §`%g§(§+%z§.ANTIFREEZE,1),new §`%g§(§+%z§.FIREWORK,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.CIRCUS_CANNON,4),new §`%g§(§+%z§.ANTIFREEZE,2),new §`%g§(§+%z§.FIREWORK,2)]),6),new §-$T§(§+#N§.§<"7§,Maniacs,§0$N§.BOSS_MANIACS_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.AIR_BLOCKER,1),new §`%g§(§+%z§.DISC_LAUNCHER,2),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.AIR_BLOCKER,2),new §`%g§(§+%z§.DISC_LAUNCHER,4),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,2)]),6),new §-$T§(§+#N§.MINER,Miner,§0$N§.BOSS_MINER_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.§7&E§,1),new §`%g§(§+%z§.BAT,1),new §`%g§(§+%z§.UFO,1)]),new §1%z§([new §7%R§(90),new §'"%§(50)
         ,new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.§7&E§,2),new §`%g§(§+%z§.BAT,2),new §`%g§(§+%z§.UFO,2)]),7),new §-$T§(§+#N§.SAMURAI,Samurai,§0$N§.BOSS_SAMURAI_CAT_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.TELEPORT_ANCHOR,1),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.HOLY_GRENADE,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.TELEPORT_ANCHOR,2),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.HOLY_GRENADE,2)]),8),new §-$T§(§+#N§.§]"T§,Sergeant,§0$N§.BOSS_SERGEANT_DESCR,new §1%z§([new §7%R§(70),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.§]h§,2),new §`%g§(§+%z§.AIR_STRIKE,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.§]h§,4),new §`%g§(§+%z§.AIR_STRIKE,2)]),9),new §-$T§(§+#N§.§9&0§,BurningZombies,§0$N§.BOSS_BURNING_ZOMBIES_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§
         .ANTIFREEZE,1),new §`%g§(§+%z§.METEOR,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTIFREEZE,2),new §`%g§(§+%z§.METEOR,2)]),10),new §-$T§(§+#N§.§1"m§,§4"_§,§0$N§.BOSS_SOUL_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.FREEZING_MINE,2),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.SOUL_GUN,2)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.FREEZING_MINE,4),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.SOUL_GUN,4)]),11),new §-$T§(§+#N§.§>%§,VoodooShaman,§0$N§.BOSS_SHAMAN_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_SHAMAN_VOODOO_MASK),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.HELICOPTER,2)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_SHAMAN_VOODOO_MASK),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.HELICOPTER,4)]),12),new §-$T§(§+#N§.§9$6§,Illusionist,§0$N§.BOSS_ILLUSIONIST_DESCR
         ,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_ILLUSIONIST_CYLINDER),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.PUPPET,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_ILLUSIONIST_CYLINDER),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.PUPPET,2)]),12),new §-$T§(§+#N§.§5#I§,Vikings,§0$N§.BOSS_VIKING_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_VIKING),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.WATERMELON,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_VIKING),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.WATERMELON,2)]),12),new §-$T§(§+#N§.§ #z§,§ %&§,§0$N§.BOSS_PIRATE_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_PIRATES),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.BUNKER_BUSTER,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_PIRATES),new §`%g§(§+%z§.BANDAGE
         ,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.BUNKER_BUSTER,2)]),12),new §-$T§(§+#N§.§@#5§,WindMaster,§0$N§.BOSS_WIND_MASTER_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_WIND_MASTER),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.NAPALM_STRIKE,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_WIND_MASTER),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.NAPALM_STRIKE,2)]),12),new §-$T§(§+#N§.§1!+§,Yakuza,§0$N§.BOSS_YAKUZA_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_YAKUZA_STORM),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.FORCE_FIELD,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_YAKUZA_STORM),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.FORCE_FIELD,2)]),12),new §-$T§(§+#N§.§,&7§,§%V§,§0$N§.BOSS_REVIVED_CAPTAIN_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_REVIVED_CAPTAIN),new §`%g§(§+%z§.BANDAGE
         ,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.METEOR,2)]),new §1%z§([new §<!P§(2),new §'"%§(80),new §]$X§(§,$O§.BOSS_REVIVED_CAPTAIN),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.METEOR,4)]),15),new §-$T§(§+#N§.§7$c§,§ "'§,§0$N§.BOSS_ROMEO_JULIET_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_ROMEO),new §]$X§(§,$O§.BOSS_JUILET),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.AIR_STRIKE,3)]),new §1%z§([new §<!P§(3),new §'"%§(80),new §]$X§(§,$O§.BOSS_ROMEO),new §]$X§(§,$O§.BOSS_JUILET),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.AIR_STRIKE,6)]),15),new §-$T§(§+#N§.§]!j§,§1"7§,§0$N§.BOSS_KING_DEAD_DESCR,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§,$O§.BOSS_KING_DEAD),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.HOLY_GRENADE,2)]),new §1%z§([new §<!P§(5),new §'"%§(100),new §]$X§(§,$O§.BOSS_KING_DEAD),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.HOLY_GRENADE,4)]),18),new §-$T§(§+#N§.GHOST
         ,AncientGhost,§0$N§.BOSS_GHOST_DESCR,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§,$O§.§;"h§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.PLASMAGUN,1)]),new §1%z§([new §<!P§(5),new §'"%§(100),new §]$X§(§,$O§.§;"h§),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.PLASMAGUN,2)]),18),new §-$T§(§+#N§.§'#L§,Engineer,§0$N§.BOSS_ENGINEER_DESCR,new §1%z§([new §7%R§(120),new §'"%§(60),new §]$X§(§,$O§.BOSS_ENGINEER),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.FROST_STASIS,1)]),new §1%z§([new §<!P§(5),new §'"%§(120),new §]$X§(§,$O§.BOSS_ENGINEER),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.FROST_STASIS,2)]),18),new §-$T§(§+#N§.§]%v§,§5"`§,§0$N§.BOSS_GUARDIANS_DEPTHS_DESCR,new §1%z§([new §7%R§(130),new §'"%§(65),new §]$X§(§,$O§.§9#r§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.CARPET_STRIKE,2)]),new §1%z§([new §<!P§(5),new §'"%§(130),new §]$X§(§,$O§.§9#r§),new §`%g§(§+%z§
         .BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.CARPET_STRIKE,4)]),18),new §-$T§(§+#N§.§<$N§,DarkKnight,§0$N§.BOSS_DARK_KNIGHT_DESCR,new §1%z§([new §7%R§(130),new §'"%§(70),new §]$X§(§,$O§.§01§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.ANVIL,2)]),new §1%z§([new §<!P§(7),new §'"%§(140),new §]$X§(§,$O§.§01§),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.ANVIL,4)]),20),new §-$T§(§+#N§.§[#J§,Assassin,§0$N§.BOSS_ASSASSIN_DESCR,new §1%z§([new §7%R§(140),new §'"%§(75),new §]$X§(§,$O§.BOSS_ASSASSIN_HOOD),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.FORCE_FIELD,2)]),new §1%z§([new §<!P§(7),new §'"%§(150),new §]$X§(§,$O§.BOSS_ASSASSIN_HOOD),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.FORCE_FIELD,4)]),20),new §-$T§(§+#N§.§[<§,§!6§,§0$N§.BOSS_ALCHEMIST_DESCR,new §1%z§([new §7%R§(140),new §'"%§(75),new §]$X§(§,$O§.§ #2§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§
         .PUPPET,2)]),new §1%z§([new §<!P§(7),new §'"%§(150),new §]$X§(§,$O§.§ #2§),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.PUPPET,4)]),20),new §-$T§(§+#N§.§@"f§,§>"B§,§0$N§.BOSS_ARCHBOT_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§]!E§.BOSS_ARCHBOT_STUFF),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.ADRENALINE,2)]),new §1%z§([new §<!P§(7),new §'"%§(150),new §]$X§(§]!E§.BOSS_ARCHBOT_STUFF),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.ADRENALINE,4)]),20,new §1%z§([new §]$X§(§,$O§.§[&2§,8)])),new §-$T§(§+#N§.EMPEROR,Emperor,§0$N§.BOSS_EMPEROR_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§,$O§.§'#j§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.PLASMAGUN,2)]),new §1%z§([new §<!P§(8),new §'"%§(160),new §]$X§(§,$O§.§'#j§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.PLASMAGUN,4)]),24),new §-$T§(§+#N§.SCIENTIST,Scientist,§0$N§.BOSS_SCIENTIST_DESCR
         ,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.§%$F§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§!%D§,1)]),new §1%z§([new §<!P§(8),new §'"%§(160),new §]$X§(§]!E§.§%$F§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§!%D§,2)]),24),new §-$T§(§+#N§.§9!E§,Symbiote,§0$N§.BOSS_SYMBIOTE_DESCR,new §1%z§([new §7%R§(170),new §'"%§(85),new §]$X§(§]!E§.BOSS_SYMBIOTE_BIOBLADE),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.ANTIDOTE,2)]),new §1%z§([new §<!P§(8),new §'"%§(170),new §]$X§(§]!E§.BOSS_SYMBIOTE_BIOBLADE),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.ANTIDOTE,4)]),24),new §-$T§(§+#N§.§>& §,Blacksmith,§0$N§.BOSS_BLACKSMITH_DESCR,new §1%z§([new §7%R§(170),new §'"%§(85),new §]$X§(§,$O§.§3!]§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.FROST_STASIS,2)]),new §1%z§([new §<!P§(8),new §'"%§(170),new §]$X§(§,$O§.§3!]§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§
         .ANTITOXIN,6),new §`%g§(§+%z§.FROST_STASIS,4)]),24,new §1%z§([new §]$X§(§]!E§.§^T§,8)])),new §-$T§(§+#N§.§]"f§,SoulMaster,§0$N§.BOSS_SOUL_MASTER_DESCR,new §1%z§([new §7%R§(180),new §'"%§(90),new §]$X§(§]!E§.BOSS_SOUL_MASTER_STAFF),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.VILE_PUMPKIN,2)]),new §1%z§([new §<!P§(9),new §'"%§(180),new §]$X§(§]!E§.BOSS_SOUL_MASTER_STAFF),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.VILE_PUMPKIN,4)]),24,new §1%z§([new §]$X§(§,$O§.BOSS_SOUL_MASTER_HELM,8)])),new §-$T§(§+#N§.§!"p§,RebelRobot,§0$N§.BOSS_REBEL_ROBOT_DESCR,new §1%z§([new §7%R§(180),new §'"%§(90),new §]$X§(§,$O§.§=!]§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§5-§,2)]),new §1%z§([new §<!P§(9),new §'"%§(180),new §]$X§(§,$O§.§=!]§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§5-§,4)]),24),new §-$T§(§+#N§.§8"7§,Devotee,§0$N§.BOSS_DEVOTEE_DESCR,new §1%z§([new §7%R§(190),new §'"%§(95),new §]$X§(§,$O§
         .§="F§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§;%Z§,2)]),new §1%z§([new §<!P§(10),new §'"%§(190),new §]$X§(§,$O§.§="F§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§;%Z§,4)]),26)];
         §§pop().list = new <§8%6§>[new §8%6§(-1,§0$N§.LEARNING_MISSION_1_NAME,§&!5§,§0$N§.LEARNING_MISSION_1_DESCR,new §1%z§([new §7%R§(100),new §'"%§(100)])),new §8%6§(-2,§0$N§.LEARNING_MISSION_2_NAME,§6!S§,§0$N§.LEARNING_MISSION_2_DESCR,new §1%z§([new §7%R§(250),new §'"%§(105)])),new §8%6§(-3,§0$N§.LEARNING_MISSION_4_NAME,§^"u§,§0$N§.LEARNING_MISSION_4_DESCR,new §1%z§([new §7%R§(450),new §'"%§(110)])),new §8%6§(-4,§0$N§.LEARNING_MISSION_3_NAME,§>"e§,§0$N§.LEARNING_MISSION_3_DESCR,new §1%z§([new §7%R§(700),new §'"%§(115)])),new §8%6§(-5,§0$N§.LEARNING_MISSION_5_NAME,§1&4§,§0$N§.LEARNING_MISSION_5_DESCR,new §1%z§([new §7%R§(1000),new §'"%§(120)])),new §-$T§(§+#N§.§`%b§,Farmer,§0$N§.BOSS_FARMER_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.HOPPING_BAZOOKA,2),new §`%g§(§+%z§.FREEZING_MINE,1),new §`%g§(§+%z§.EMERGENCY_TELEPORT,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.ANTIFREEZE,4),new §`%g§(§+%z§.FREEZING_MINE,2),new §`%g§(§+%z§
         .EMERGENCY_TELEPORT,2)]),6),new §-$T§(§+#N§.§[$]§,Hunter,§0$N§.BOSS_HUNTER_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.CIRCUS_CANNON,2),new §`%g§(§+%z§.ANTIFREEZE,1),new §`%g§(§+%z§.FIREWORK,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.CIRCUS_CANNON,4),new §`%g§(§+%z§.ANTIFREEZE,2),new §`%g§(§+%z§.FIREWORK,2)]),6),new §-$T§(§+#N§.§<"7§,Maniacs,§0$N§.BOSS_MANIACS_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.AIR_BLOCKER,1),new §`%g§(§+%z§.DISC_LAUNCHER,2),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.AIR_BLOCKER,2),new §`%g§(§+%z§.DISC_LAUNCHER,4),new §`%g§(§+%z§.SNOWFLAKE_STRIKE,2)]),6),new §-$T§(§+#N§.MINER,Miner,§0$N§.BOSS_MINER_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.§7&E§,1),new §`%g§(§+%z§.BAT,1),new §`%g§(§+%z§.UFO,1)]),new §1%z§([new §7%R§(90),new §'"%§(50)
         ,new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.§7&E§,2),new §`%g§(§+%z§.BAT,2),new §`%g§(§+%z§.UFO,2)]),7),new §-$T§(§+#N§.SAMURAI,Samurai,§0$N§.BOSS_SAMURAI_CAT_DESCR,new §1%z§([new §7%R§(60),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.TELEPORT_ANCHOR,1),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.HOLY_GRENADE,1)]),new §1%z§([new §7%R§(90),new §'"%§(50),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.TELEPORT_ANCHOR,2),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.HOLY_GRENADE,2)]),8),new §-$T§(§+#N§.§]"T§,Sergeant,§0$N§.BOSS_SERGEANT_DESCR,new §1%z§([new §7%R§(70),new §'"%§(25),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.§]h§,2),new §`%g§(§+%z§.AIR_STRIKE,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.§]h§,4),new §`%g§(§+%z§.AIR_STRIKE,2)]),9),new §-$T§(§+#N§.§9&0§,BurningZombies,§0$N§.BOSS_BURNING_ZOMBIES_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§
         .ANTIFREEZE,1),new §`%g§(§+%z§.METEOR,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTIFREEZE,2),new §`%g§(§+%z§.METEOR,2)]),10),new §-$T§(§+#N§.§1"m§,§4"_§,§0$N§.BOSS_SOUL_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.FREEZING_MINE,2),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.SOUL_GUN,2)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.PANAMA),new §`%g§(§+%z§.FREEZING_MINE,4),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.SOUL_GUN,4)]),11),new §-$T§(§+#N§.§>%§,VoodooShaman,§0$N§.BOSS_SHAMAN_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_SHAMAN_VOODOO_MASK),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.HELICOPTER,2)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_SHAMAN_VOODOO_MASK),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.HELICOPTER,4)]),12),new §-$T§(§+#N§.§9$6§,Illusionist,§0$N§.BOSS_ILLUSIONIST_DESCR
         ,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_ILLUSIONIST_CYLINDER),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.PUPPET,1)]),new §1%z§([new §<!P§(1),new §'"%§(60),new §]$X§(§,$O§.BOSS_ILLUSIONIST_CYLINDER),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.PUPPET,2)]),12),new §-$T§(§+#N§.§5#I§,Vikings,§0$N§.BOSS_VIKING_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_VIKING),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.WATERMELON,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_VIKING),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.WATERMELON,2)]),12),new §-$T§(§+#N§.§ #z§,§ %&§,§0$N§.BOSS_PIRATE_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_PIRATES),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.BUNKER_BUSTER,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_PIRATES),new §`%g§(§+%z§.BANDAGE
         ,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.BUNKER_BUSTER,2)]),12),new §-$T§(§+#N§.§@#5§,WindMaster,§0$N§.BOSS_WIND_MASTER_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_WIND_MASTER),new §`%g§(§+%z§.BANDAGE,1),new §`%g§(§+%z§.ANTITOXIN,1),new §`%g§(§+%z§.NAPALM_STRIKE,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_WIND_MASTER),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.NAPALM_STRIKE,2)]),12),new §-$T§(§+#N§.§1!+§,Yakuza,§0$N§.BOSS_YAKUZA_DESCR,new §1%z§([new §7%R§(80),new §'"%§(30),new §]$X§(§,$O§.BOSS_YAKUZA_STORM),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.FORCE_FIELD,1)]),new §1%z§([new §<!P§(2),new §'"%§(60),new §]$X§(§,$O§.BOSS_YAKUZA_STORM),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.FORCE_FIELD,2)]),12),new §-$T§(§+#N§.§,&7§,§%V§,§0$N§.BOSS_REVIVED_CAPTAIN_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_REVIVED_CAPTAIN),new §`%g§(§+%z§.BANDAGE
         ,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.METEOR,2)]),new §1%z§([new §<!P§(2),new §'"%§(80),new §]$X§(§,$O§.BOSS_REVIVED_CAPTAIN),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.METEOR,4)]),15),new §-$T§(§+#N§.§7$c§,§ "'§,§0$N§.BOSS_ROMEO_JULIET_DESCR,new §1%z§([new §7%R§(90),new §'"%§(40),new §]$X§(§,$O§.BOSS_ROMEO),new §]$X§(§,$O§.BOSS_JUILET),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.AIR_STRIKE,3)]),new §1%z§([new §<!P§(3),new §'"%§(80),new §]$X§(§,$O§.BOSS_ROMEO),new §]$X§(§,$O§.BOSS_JUILET),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.AIR_STRIKE,6)]),15),new §-$T§(§+#N§.§]!j§,§1"7§,§0$N§.BOSS_KING_DEAD_DESCR,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§,$O§.BOSS_KING_DEAD),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.HOLY_GRENADE,2)]),new §1%z§([new §<!P§(5),new §'"%§(100),new §]$X§(§,$O§.BOSS_KING_DEAD),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.HOLY_GRENADE,4)]),18),new §-$T§(§+#N§.GHOST
         ,AncientGhost,§0$N§.BOSS_GHOST_DESCR,new §1%z§([new §7%R§(100),new §'"%§(50),new §]$X§(§,$O§.§;"h§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.PLASMAGUN,1)]),new §1%z§([new §<!P§(5),new §'"%§(100),new §]$X§(§,$O§.§;"h§),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.PLASMAGUN,2)]),18),new §-$T§(§+#N§.§'#L§,Engineer,§0$N§.BOSS_ENGINEER_DESCR,new §1%z§([new §7%R§(120),new §'"%§(60),new §]$X§(§,$O§.BOSS_ENGINEER),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.FROST_STASIS,1)]),new §1%z§([new §<!P§(5),new §'"%§(120),new §]$X§(§,$O§.BOSS_ENGINEER),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.FROST_STASIS,2)]),18),new §-$T§(§+#N§.§]%v§,§5"`§,§0$N§.BOSS_GUARDIANS_DEPTHS_DESCR,new §1%z§([new §7%R§(130),new §'"%§(65),new §]$X§(§,$O§.§9#r§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.CARPET_STRIKE,2)]),new §1%z§([new §<!P§(5),new §'"%§(130),new §]$X§(§,$O§.§9#r§),new §`%g§(§+%z§
         .BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.CARPET_STRIKE,4)]),18),new §-$T§(§+#N§.§<$N§,DarkKnight,§0$N§.BOSS_DARK_KNIGHT_DESCR,new §1%z§([new §7%R§(130),new §'"%§(70),new §]$X§(§,$O§.§01§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.ANVIL,2)]),new §1%z§([new §<!P§(7),new §'"%§(140),new §]$X§(§,$O§.§01§),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.ANVIL,4)]),20),new §-$T§(§+#N§.§[#J§,Assassin,§0$N§.BOSS_ASSASSIN_DESCR,new §1%z§([new §7%R§(140),new §'"%§(75),new §]$X§(§,$O§.BOSS_ASSASSIN_HOOD),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.FORCE_FIELD,2)]),new §1%z§([new §<!P§(7),new §'"%§(150),new §]$X§(§,$O§.BOSS_ASSASSIN_HOOD),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.FORCE_FIELD,4)]),20),new §-$T§(§+#N§.§[<§,§!6§,§0$N§.BOSS_ALCHEMIST_DESCR,new §1%z§([new §7%R§(140),new §'"%§(75),new §]$X§(§,$O§.§ #2§),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§
         .PUPPET,2)]),new §1%z§([new §<!P§(7),new §'"%§(150),new §]$X§(§,$O§.§ #2§),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.PUPPET,4)]),20),new §-$T§(§+#N§.§@"f§,§>"B§,§0$N§.BOSS_ARCHBOT_DESCR,new §1%z§([new §7%R§(150),new §'"%§(75),new §]$X§(§]!E§.BOSS_ARCHBOT_STUFF),new §`%g§(§+%z§.BANDAGE,2),new §`%g§(§+%z§.ANTITOXIN,2),new §`%g§(§+%z§.ADRENALINE,2)]),new §1%z§([new §<!P§(7),new §'"%§(150),new §]$X§(§]!E§.BOSS_ARCHBOT_STUFF),new §`%g§(§+%z§.BANDAGE,4),new §`%g§(§+%z§.ANTITOXIN,4),new §`%g§(§+%z§.ADRENALINE,4)]),20,new §1%z§([new §]$X§(§,$O§.§[&2§,8)])),new §-$T§(§+#N§.EMPEROR,Emperor,§0$N§.BOSS_EMPEROR_DESCR,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§,$O§.§'#j§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.PLASMAGUN,2)]),new §1%z§([new §<!P§(8),new §'"%§(160),new §]$X§(§,$O§.§'#j§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.PLASMAGUN,4)]),24),new §-$T§(§+#N§.SCIENTIST,Scientist,§0$N§.BOSS_SCIENTIST_DESCR
         ,new §1%z§([new §7%R§(160),new §'"%§(80),new §]$X§(§]!E§.§%$F§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§!%D§,1)]),new §1%z§([new §<!P§(8),new §'"%§(160),new §]$X§(§]!E§.§%$F§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§!%D§,2)]),24),new §-$T§(§+#N§.§9!E§,Symbiote,§0$N§.BOSS_SYMBIOTE_DESCR,new §1%z§([new §7%R§(170),new §'"%§(85),new §]$X§(§]!E§.BOSS_SYMBIOTE_BIOBLADE),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.ANTIDOTE,2)]),new §1%z§([new §<!P§(8),new §'"%§(170),new §]$X§(§]!E§.BOSS_SYMBIOTE_BIOBLADE),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.ANTIDOTE,4)]),24),new §-$T§(§+#N§.§>& §,Blacksmith,§0$N§.BOSS_BLACKSMITH_DESCR,new §1%z§([new §7%R§(170),new §'"%§(85),new §]$X§(§,$O§.§3!]§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.FROST_STASIS,2)]),new §1%z§([new §<!P§(8),new §'"%§(170),new §]$X§(§,$O§.§3!]§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§
         .ANTITOXIN,6),new §`%g§(§+%z§.FROST_STASIS,4)]),24,new §1%z§([new §]$X§(§]!E§.§^T§,8)])),new §-$T§(§+#N§.§]"f§,SoulMaster,§0$N§.BOSS_SOUL_MASTER_DESCR,new §1%z§([new §7%R§(180),new §'"%§(90),new §]$X§(§]!E§.BOSS_SOUL_MASTER_STAFF),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.VILE_PUMPKIN,2)]),new §1%z§([new §<!P§(9),new §'"%§(180),new §]$X§(§]!E§.BOSS_SOUL_MASTER_STAFF),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.VILE_PUMPKIN,4)]),24,new §1%z§([new §]$X§(§,$O§.BOSS_SOUL_MASTER_HELM,8)])),new §-$T§(§+#N§.§!"p§,RebelRobot,§0$N§.BOSS_REBEL_ROBOT_DESCR,new §1%z§([new §7%R§(180),new §'"%§(90),new §]$X§(§,$O§.§=!]§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§5-§,2)]),new §1%z§([new §<!P§(9),new §'"%§(180),new §]$X§(§,$O§.§=!]§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§5-§,4)]),24),new §-$T§(§+#N§.§8"7§,Devotee,§0$N§.BOSS_DEVOTEE_DESCR,new §1%z§([new §7%R§(190),new §'"%§(95),new §]$X§(§,$O§
         .§="F§),new §`%g§(§+%z§.BANDAGE,3),new §`%g§(§+%z§.ANTITOXIN,3),new §`%g§(§+%z§.§;%Z§,2)]),new §1%z§([new §<!P§(10),new §'"%§(190),new §]$X§(§,$O§.§="F§),new §`%g§(§+%z§.BANDAGE,6),new §`%g§(§+%z§.ANTITOXIN,6),new §`%g§(§+%z§.§;%Z§,4)]),26)];
         super();
      }
      
      public static function getInstance() : §6&'§
      {
         var _loc1_:Vector.<§8%6§> = null;
         var _loc2_:int = 0;
         if(!instance)
         {
            instance = new §6&'§();
            _loc1_ = instance.§!!e§();
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               if(_loc1_[_loc2_].getId() > 0)
               {
                  break;
               }
               _loc2_++;
            }
            §0"s§ = _loc2_;
         }
         return instance;
      }
      
      public static function get §-$7§() : Vector.<§8%6§>
      {
         return instance.§!!e§().slice(0,§0"s§) as Vector.<§8%6§>;
      }
      
      override public function §%#y§() : uint
      {
         return Math.ceil((this.list.length - §0"s§) / §+l§.§4!b§);
      }
      
      override public function §!!e§() : Vector.<§8%6§>
      {
         return this.list;
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
      
      override public function §##H§(param1:int) : Vector.<§-$T§>
      {
         var _loc5_:§-$T§ = null;
         var _loc2_:int = param1 > 0 ? int(§0"s§ + §+l§.§4!b§ * param1) : int(§0"s§);
         var _loc3_:Vector.<§-$T§> = new Vector.<§-$T§>(0);
         var _loc4_:Vector.<§8%6§> = this.list.slice(_loc2_,_loc2_ + §+l§.§4!b§);
         for each(_loc5_ in _loc4_)
         {
            _loc3_.push(_loc5_);
         }
         return _loc3_;
      }
      
      public function §^u§(param1:int) : §-$T§
      {
         var _loc2_:§8%6§ = null;
         var _loc3_:§-$T§ = null;
         var _loc4_:Vector.<§]$X§> = null;
         var _loc5_:§]$X§ = null;
         for each(_loc2_ in this.list)
         {
            if(_loc2_ is §-$T§)
            {
               _loc3_ = §-$T§(_loc2_);
               _loc4_ = _loc3_.§3"c§().§2!O§();
               for each(_loc5_ in _loc4_)
               {
                  if(_loc5_.getId() == param1)
                  {
                     return _loc3_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §[&5§(param1:int) : §-$T§
      {
         var _loc2_:§8%6§ = null;
         var _loc3_:§-$T§ = null;
         var _loc4_:Vector.<§]$X§> = null;
         var _loc5_:§]$X§ = null;
         for each(_loc2_ in this.list)
         {
            if(_loc2_ is §-$T§)
            {
               _loc3_ = §-$T§(_loc2_);
               if(_loc3_.getExtraAward())
               {
                  _loc4_ = _loc3_.getExtraAward().§2!O§();
                  for each(_loc5_ in _loc4_)
                  {
                     if(_loc5_.getId() == param1)
                     {
                        return _loc3_;
                     }
                  }
               }
            }
         }
         return null;
      }
      
      override protected function get minId() : int
      {
         return -5;
      }
      
      override protected function get maxId() : int
      {
         return 99;
      }
      
      override public function §+#q§() : uint
      {
         return 0;
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

