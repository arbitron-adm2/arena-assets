package §,$J§
{
   import §"%H§.§'%u§;
   import §#",§.§+!h§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§0m§;
   import §##j§.§7,§;
   import §##j§.§9x§;
   import §#$e§.§!a§;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§6S§;
   import §'$j§.QuestGiftItem;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-"N§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2#H§.§^!J§;
   import §2#i§.§+%z§;
   import §4#2§.*;
   import §6%2§.§!"x§;
   import §6%2§.§+§;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §<%k§.§^#i§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§;%v§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.messages.structures.UnluckyCraftCount;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §,$O§
   {
      
      public static const §&%H§:Vector.<int> = new <int>[ROBINHOOD_HAT];
      
      public static const §=!D§:Vector.<int> = new <int>[MONK_MASTER,MONK_ACE,MONK_ELITE,KNIGHT_MASTER,KNIGHT_ACE,KNIGHT_ELITE,HOCKEY_PLAYER_MASTER,HOCKEY_PLAYER_ACE,HOCKEY_PLAYER_ELITE,ASSASSIN_MASTER,ASSASSIN_ACE,ASSASSIN_ELITE,WOLF_MASTER,WOLF_ACE,WOLF_ELITE];
      
      public static const §9#9§:Vector.<int> = new Vector.<int>(0);
      
      public static const §6%6§:Vector.<int> = new <int>[BOSS_ARCTIC_HELM,§5#U§,§+0§,BOSS_GRAVITY_MASTER_HELM,BOSS_ENCHANTER_MASK,BOSS_JARL_HELM,§`%T§,§,$5§,§%!>§,§?&G§,§6$;§,§="F§,§##z§,§=!]§,BOSS_SOUL_MASTER_HELM,§3!]§,BOSS_SYMBIOTE_HELM,§!&H§,§'#j§,§[&2§,§ #2§,BOSS_ASSASSIN_HOOD,§01§,§9#r§,§;"h§,BOSS_CYBORG,§5"=§,BOSS_TARANTUL_HELMET,MINER_HELM,BLACK_SOMBRERO,GIFT_BAG,ALIEN_SPINES,ASSASSIN_MASTER,§!&#§,BLUE_YETI,ALIEN_AMBER_LENSES,ASSASSIN_ACE,§&%V§,WHITE_YETI,ROBOCHIKEN,ASSASSIN_ELITE,PUMPKIN_ORANGE,BLACK_YETI];
      
      public static const FIRE_FIGHTER_HAT:uint = 1150;
      
      public static const MINER_HELM:uint = 1148;
      
      public static const §=!]§:uint = 1149;
      
      public static const §3!]§:uint = 1146;
      
      public static const BOSS_SOUL_MASTER_HELM:uint = 1147;
      
      public static const §^"h§:uint = 1144;
      
      public static const BLACK_SOMBRERO:uint = 1145;
      
      public static const BOSS_ARCTIC_HELM:uint = 1143;
      
      public static const BOSS_GRAVITY_MASTER_HELM:uint = 1140;
      
      public static const §+0§:uint = 1141;
      
      public static const §5#U§:uint = 1142;
      
      public static const MOOSE_HELM:uint = 1138;
      
      public static const ROBOCHIKEN:uint = 1139;
      
      public static const §'#j§:uint = 1135;
      
      public static const §!&H§:uint = 1136;
      
      public static const BOSS_SYMBIOTE_HELM:uint = 1137;
      
      public static const §5"=§:uint = 1133;
      
      public static const BOSS_ENCHANTER_MASK:uint = 1134;
      
      public static const DOCTOR_MASK:uint = 1130;
      
      public static const ELECTRIC:uint = 1131;
      
      public static const PAN:uint = 1132;
      
      public static const BLUE_YETI:uint = 1111;
      
      public static const WHITE_YETI:uint = 1112;
      
      public static const BLACK_YETI:uint = 1113;
      
      public static const WINTER_HAT:uint = 1114;
      
      public static const COVER_GIFT_BOX:uint = 1115;
      
      public static const §6$;§:uint = 1116;
      
      public static const EAGLE_HAT:uint = 1117;
      
      public static const CHRISTMAS_HELMET:uint = 1118;
      
      public static const GIFT_BOX_WEAPON:uint = 1119;
      
      public static const BOSS_CYBORG:uint = 1120;
      
      public static const §]#c§:uint = 1121;
      
      public static const BOMB:uint = 1122;
      
      public static const § $V§:uint = 1104;
      
      public static const §!&#§:uint = 1105;
      
      public static const PUMPKIN_ORANGE:uint = 1106;
      
      public static const §&%V§:uint = 1107;
      
      public static const PUMPKIN_GREEN_WEAPON:uint = 1108;
      
      public static const NIGHT:uint = 1084;
      
      public static const MONK_MASTER:uint = 1085;
      
      public static const MONK_ACE:uint = 1086;
      
      public static const MONK_ELITE:uint = 1087;
      
      public static const MONK:uint = 1102;
      
      public static const KNIGHT_MASTER:uint = 1088;
      
      public static const KNIGHT_ACE:uint = 1089;
      
      public static const KNIGHT_ELITE:uint = 1090;
      
      public static const ILLUSIONIST_GLASSES:uint = 1091;
      
      public static const HOCKEY_PLAYER_MASTER:uint = 1092;
      
      public static const HOCKEY_PLAYER_ACE:uint = 1093;
      
      public static const HOCKEY_PLAYER_ELITE:uint = 1094;
      
      public static const DARK_CULTIST_HOOD:uint = 1095;
      
      public static const COSMONAUT:uint = 1097;
      
      public static const AVIATOR:uint = 1098;
      
      public static const ASSASSIN_MASTER:uint = 1099;
      
      public static const ASSASSIN_ACE:uint = 1100;
      
      public static const ASSASSIN_ELITE:uint = 1101;
      
      public static const WOLF_MASTER:uint = 1081;
      
      public static const WOLF_ACE:uint = 1082;
      
      public static const WOLF_ELITE:uint = 1083;
      
      public static const PANAMA:uint = 1003;
      
      public static const WIZARD:uint = 1025;
      
      public static const § %!§:uint = 1018;
      
      public static const CYLINDER:uint = 1006;
      
      public static const §-'§:uint = 1022;
      
      public static const §3"U§:uint = 1004;
      
      public static const §,#S§:uint = 1009;
      
      public static const PINK_HAT:uint = 1019;
      
      public static const RED_CAP:uint = 1023;
      
      public static const DARTH_VADER:uint = 1005;
      
      public static const VIKING:uint = 1007;
      
      public static const §0#'§:uint = 1010;
      
      public static const §!%>§:uint = 1016;
      
      public static const §8$x§:uint = 1021;
      
      public static const PIRATE:uint = 1008;
      
      public static const INDIAN:uint = 1031;
      
      public static const SAMURAI:uint = 1011;
      
      public static const §+%[§:uint = 1024;
      
      public static const §0!w§:uint = 1012;
      
      public static const PINK_HELMET:uint = 1020;
      
      public static const GREEN_IROQUOIS:uint = 1077;
      
      public static const COLORED_IROQUOIS:uint = 1078;
      
      public static const SOMBRERO:uint = 1029;
      
      public static const § ![§:uint = 1030;
      
      public static const ELEGANT_SAMURAI:uint = 1013;
      
      public static const CHIEFTAIN:uint = 1033;
      
      public static const LEGIONER:uint = 1014;
      
      public static const ELEGANT_LEGIONER:uint = 1026;
      
      public static const CROWN:uint = 1015;
      
      public static const CROWN_PRINCESS:uint = 1017;
      
      public static const MASK_SHAMAN_RABBITS:uint = 1028;
      
      public static const AQUALUNG:uint = 1034;
      
      public static const BOSS_YAKUZA_STEEL:uint = 1047;
      
      public static const NIGHT_VISION_DEVICE:uint = 1129;
      
      public static const NEO:uint = 1057;
      
      public static const GLADIATOR_HELMET:uint = 1064;
      
      public static const NIMBUS:uint = 1065;
      
      public static const MASK_SCREAM:uint = 1079;
      
      public static const DEMON_HAT:uint = 1080;
      
      public static const ACE:uint = 1000;
      
      public static const MASTER:uint = 1002;
      
      public static const SHERIFF:uint = 1032;
      
      public static const §4$W§:uint = 1027;
      
      public static const ELVIS:uint = 1041;
      
      public static const FIREPROOF_HELMET:uint = 1042;
      
      public static const RUSSIAN:uint = 1051;
      
      public static const OFFICER:uint = 1052;
      
      public static const VAMPIRE:uint = 1055;
      
      public static const §0!o§:uint = 1056;
      
      public static const NINJA_TURTLES:uint = 1058;
      
      public static const SOVIET:uint = 1050;
      
      public static const BLACK_RAVEN:uint = 1061;
      
      public static const §,z§:uint = 1062;
      
      public static const HELMET_STUNT:uint = 1063;
      
      public static const HERO_MASK:uint = 1066;
      
      public static const LAVA_JAW:uint = 1074;
      
      public static const PSI_BIOTIC:uint = 1075;
      
      public static const BOSS_PIRATES:uint = 1035;
      
      public static const BOSS_ILLUSIONIST_CYLINDER:uint = 1036;
      
      public static const BOSS_SHAMAN_VOODOO_MASK:uint = 1037;
      
      public static const BOSS_VIKING:uint = 1038;
      
      public static const BOSS_WIND_MASTER:uint = 1039;
      
      public static const §;"h§:uint = 1040;
      
      public static const BOSS_KING_DEAD:uint = 1043;
      
      public static const BOSS_REVIVED_CAPTAIN:uint = 1044;
      
      public static const BOSS_ROMEO:uint = 1045;
      
      public static const BOSS_JUILET:uint = 1046;
      
      public static const BOSS_YAKUZA_TIGER:uint = 1048;
      
      public static const BOSS_YAKUZA_STORM:uint = 1049;
      
      public static const BOSS_MINER_CAP:uint = 1053;
      
      public static const BOSS_BURNING_ZOMBIES_FLAME:uint = 1054;
      
      public static const BOSS_ENGINEER:uint = 1059;
      
      public static const §9#r§:uint = 1060;
      
      public static const §01§:uint = 1067;
      
      public static const BOSS_PALADIN:uint = 1068;
      
      public static const BOSS_HACKER:uint = 1069;
      
      public static const BOSS_THIEF:uint = 1072;
      
      public static const BOSS_PSI_TELEPATHIST:uint = 1076;
      
      public static const BOSS_PHANTOM:uint = 1073;
      
      public static const BOSS_ASSASSIN_HOOD:uint = 1096;
      
      public static const § #2§:uint = 1103;
      
      public static const BOSS_JARL_HELM:uint = 1123;
      
      public static const §?&G§:uint = 1124;
      
      public static const §`%T§:uint = 1125;
      
      public static const §%!>§:uint = 1126;
      
      public static const §,$5§:uint = 1127;
      
      public static const §[&2§:uint = 1128;
      
      public static const §="F§:uint = 1109;
      
      public static const §##z§:uint = 1110;
      
      public static const ALIEN_SPINES:uint = 1151;
      
      public static const ALIEN_AMBER_LENSES:uint = 1152;
      
      public static const CHROME_HELMET:uint = 1070;
      
      public static const BOSS_TARANTUL_HELMET:uint = 1153;
      
      public static const ROBINHOOD_HAT:uint = 1154;
      
      public static const GIFT_BAG:uint = 1155;
      
      public static const CLOWN_HAIRCUT:uint = 1156;
      
      public static const KAMINA_HAIRSTYLE:uint = 1157;
      
      public static const HURRICANE_HAIRSTYLE:uint = 1158;
      
      public function §,$O§()
      {
         super();
      }
      
      public static function §]$G§(param1:int) : Boolean
      {
         return §6%6§.indexOf(param1) > -1;
      }
      
      public static function §2&0§(param1:int) : Boolean
      {
         return §9#9§.indexOf(param1) > -1;
      }
      
      public static function §&&,§(param1:int) : Boolean
      {
         return int(param1 / 1000) == int(§0%G§.§;9§ / 1000);
      }
      
      public static function §5#x§(param1:int) : Boolean
      {
         return §=!D§.indexOf(param1) > -1;
      }
   }
}

