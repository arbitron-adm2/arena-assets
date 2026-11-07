package ru.pragmatix.wormix.game.ai
{
   import § !P§.*;
   import §!$d§.§<$c§;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §&!m§.§-$6§;
   import §+#U§.§'#w§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §2!-§.HpChangeEvent;
   import §2#i§.§+%z§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §=&!§.§<$!§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^"y§.§]#i§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§5$1§;
   import §`%&§.§@&,§;
   import flash.events.Event;
   import flash.filters.BlurFilter;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §,%8§
   {
      
      private var recs:Vector.<§>%Q§> = new Vector.<§>%Q§>(0);
      
      private var §;"[§:uint;
      
      public function §,%8§(param1:Vector.<§>%Q§> = null, param2:uint = 4294967295, param3:Boolean = true, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false)
      {
         super();
         this.§;"[§ = param2;
         var _loc9_:Vector.<§>%Q§> = new Vector.<§>%Q§>(0);
         if(param3)
         {
            _loc9_ = §5#B§();
         }
         if(param4)
         {
            _loc9_ = _loc9_.concat(§3!d§());
         }
         if(param5)
         {
            _loc9_ = _loc9_.concat(§;J§());
         }
         if(param6)
         {
            _loc9_ = _loc9_.concat(§4#<§());
         }
         if(param7)
         {
            _loc9_ = _loc9_.concat(§@"B§());
         }
         if(param8)
         {
            _loc9_ = _loc9_.concat(§?#2§());
         }
         param1 ||= new Vector.<§>%Q§>();
         if(_loc9_.length)
         {
            param1 = param1.concat(_loc9_);
         }
         this.addWeapons(param1,param2);
      }
      
      private static function §5#B§() : Vector.<§>%Q§>
      {
         var _temp_6:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.5,-1,8,18),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,0.5,-1,19,29),new §>%Q§(§+%z§.DRILL_GUN_UPG_2,0.5,-1,30),new §>%Q§(§+%z§.BAZOOKA,1,-1,1,9),new §>%Q§(§+%z§.BAZOOKA_UPG_1,1,-1,10,20),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,1,-1,21),new §>%Q§(§+%z§.GRENADE,1,-1,1,7),new §>%Q§(§+%z§.GRENADE_UPG_1_STUFFED_BOUNCING,1,-1,8,18),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,1,-1,19),new §>%Q§(§+%z§.RIFLE,1,-1,1,12),new §>%Q§(§+%z§.RIFLE_UPG_1,1,-1,13,21),new §>%Q§(§+%z§.RIFLE_UPG_2,1,-1,22)];
         var _temp_11:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.5,-1,8,18),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,0.5,-1,19,29),new §>%Q§(§+%z§.DRILL_GUN_UPG_2,0.5,-1,30),new §>%Q§(§+%z§.BAZOOKA,1,-1,1,9),new §>%Q§(§+%z§.BAZOOKA_UPG_1,1,-1,10,20),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,1,-1,21),new §>%Q§(§+%z§.GRENADE,1,-1,1,7),new §>%Q§(§+%z§.GRENADE_UPG_1_STUFFED_BOUNCING,1,-1,8,18),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,1,-1,19),new §>%Q§(§+%z§.RIFLE,1,-1,1,12),new §>%Q§(§+%z§.RIFLE_UPG_1,1,-1,13,21),new §>%Q§(§+%z§.RIFLE_UPG_2,1,-1,22)];
         return new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.5,-1,8,18),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,0.5,-1,19,29),new §>%Q§(§+%z§.DRILL_GUN_UPG_2,0.5,-1,30),new §>%Q§(§+%z§.BAZOOKA,1,-1,1,9),new §>%Q§(§+%z§.BAZOOKA_UPG_1,1,-1,10,20),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,1,-1,21),new §>%Q§(§+%z§.GRENADE,1,-1,1,7),new §>%Q§(§+%z§.GRENADE_UPG_1_STUFFED_BOUNCING,1,-1,8,18),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,1,-1,19),new §>%Q§(§+%z§.RIFLE,1,-1,1,12),new §>%Q§(§+%z§.RIFLE_UPG_1,1,-1,13,21),new §>%Q§(§+%z§.RIFLE_UPG_2,1,-1,22)];
      }
      
      private static function §3!d§() : Vector.<§>%Q§>
      {
         var _temp_10:* = new <§>%Q§>[new §>%Q§(§+%z§.§7#L§,0.1,1,20),new §>%Q§(§+%z§.ANTITOXIN,0.2,1,30),new §>%Q§(§+%z§.BANDAGE,0.2,1,30),new §>%Q§(§+%z§.SHOTGUN,1,-1,1,12),new §>%Q§(§+%z§.§^&6§,1,-1,13,21),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.8,-1,22),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,0.8,-1,22),new §>%Q§(§+%z§.§"!S§,0.1,2,18,23),new §>%Q§(§+%z§.BLOCKER_UPG_1,0.1,2,24,29),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.1,1,30),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.1,1,30),new §>%Q§(§+%z§.SLEDGEHAMMER,0.5,2,20,25),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1,0.5,1,26),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1B,0.5,1,26),new §>%Q§(§+%z§.BAT,0.5,1,21,25),new §>%Q§(§+%z§.BAT_UPG_1,0.5,1,26,29),new §>%Q§(§+%z§.BAT_UPG_2A,0.25,1,30),new §>%Q§(§+%z§.BAT_UPG_2B,0.25,1,30),new §>%Q§(§+%z§.SHOCKER,0.5,2,20,25),new §>%Q§(§+%z§.SHOCKER_UPG_1,0.5,1,26,29),new §>%Q§(§+%z§.SHOCKER_UPG_2,0.5,1,30)];
         var _temp_20:* = new <§>%Q§>[new §>%Q§(§+%z§.§7#L§,0.1,1,20),new §>%Q§(§+%z§.ANTITOXIN,0.2,1,30),new §>%Q§(§+%z§.BANDAGE,0.2,1,30),new §>%Q§(§+%z§.SHOTGUN,1,-1,1,12),new §>%Q§(§+%z§.§^&6§,1,-1,13,21),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.8,-1,22),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,0.8,-1,22),new §>%Q§(§+%z§.§"!S§,0.1,2,18,23),new §>%Q§(§+%z§.BLOCKER_UPG_1,0.1,2,24,29),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.1,1,30),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.1,1,30),new §>%Q§(§+%z§.SLEDGEHAMMER,0.5,2,20,25),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1,0.5,1,26),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1B,0.5,1,26),new §>%Q§(§+%z§.BAT,0.5,1,21,25),new §>%Q§(§+%z§.BAT_UPG_1,0.5,1,26,29),new §>%Q§(§+%z§.BAT_UPG_2A,0.25,1,30),new §>%Q§(§+%z§.BAT_UPG_2B,0.25,1,30),new §>%Q§(§+%z§.SHOCKER,0.5,2,20,25),new §>%Q§(§+%z§.SHOCKER_UPG_1,0.5,1,26,29),new §>%Q§(§+%z§.SHOCKER_UPG_2,0.5,1,30)];
         return new <§>%Q§>[new §>%Q§(§+%z§.§7#L§,0.1,1,20),new §>%Q§(§+%z§.ANTITOXIN,0.2,1,30),new §>%Q§(§+%z§.BANDAGE,0.2,1,30),new §>%Q§(§+%z§.SHOTGUN,1,-1,1,12),new §>%Q§(§+%z§.§^&6§,1,-1,13,21),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,0.8,-1,22),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,0.8,-1,22),new §>%Q§(§+%z§.§"!S§,0.1,2,18,23),new §>%Q§(§+%z§.BLOCKER_UPG_1,0.1,2,24,29),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.1,1,30),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.1,1,30),new §>%Q§(§+%z§.SLEDGEHAMMER,0.5,2,20,25),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1,0.5,1,26),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1B,0.5,1,26),new §>%Q§(§+%z§.BAT,0.5,1,21,25),new §>%Q§(§+%z§.BAT_UPG_1,0.5,1,26,29),new §>%Q§(§+%z§.BAT_UPG_2A,0.25,1,30),new §>%Q§(§+%z§.BAT_UPG_2B,0.25,1,30),new §>%Q§(§+%z§.SHOCKER,0.5,2,20,25),new §>%Q§(§+%z§.SHOCKER_UPG_1,0.5,1,26,29),new §>%Q§(§+%z§.SHOCKER_UPG_2,0.5,1,30)];
      }
      
      private static function §;J§() : Vector.<§>%Q§>
      {
         var _temp_6:* = new <§>%Q§>[new §>%Q§(§+%z§.DYNAMITE_U1B_KAMIKAZE,0.3,1,30),new §>%Q§(§+%z§.TELEPORT,1,1,30),new §>%Q§(§+%z§.VACUUM_GRENADE,0.5,1,30),new §>%Q§(§+%z§.UZI,0.3,-1,15,21),new §>%Q§(§+%z§.§6!x§,0.3,-1,22),new §>%Q§(§+%z§.§4"k§,0.7,2,16,20),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_1,0.7,2,21,25),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.7,1,26),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.7,1,26),new §>%Q§(§+%z§.SHURIKEN,0.05,1,16,20),new §>%Q§(§+%z§.§4!r§,0.05,1,21,25),new §>%Q§(§+%z§.SHURIKEN_U2B_SAW,0.05,1,26),new §>%Q§(§+%z§.SHURIKEN_U2A_TRAJECTORY,0.05,1,26)];
         var _temp_12:* = new <§>%Q§>[new §>%Q§(§+%z§.DYNAMITE_U1B_KAMIKAZE,0.3,1,30),new §>%Q§(§+%z§.TELEPORT,1,1,30),new §>%Q§(§+%z§.VACUUM_GRENADE,0.5,1,30),new §>%Q§(§+%z§.UZI,0.3,-1,15,21),new §>%Q§(§+%z§.§6!x§,0.3,-1,22),new §>%Q§(§+%z§.§4"k§,0.7,2,16,20),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_1,0.7,2,21,25),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.7,1,26),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.7,1,26),new §>%Q§(§+%z§.SHURIKEN,0.05,1,16,20),new §>%Q§(§+%z§.§4!r§,0.05,1,21,25),new §>%Q§(§+%z§.SHURIKEN_U2B_SAW,0.05,1,26),new §>%Q§(§+%z§.SHURIKEN_U2A_TRAJECTORY,0.05,1,26)];
         return new <§>%Q§>[new §>%Q§(§+%z§.DYNAMITE_U1B_KAMIKAZE,0.3,1,30),new §>%Q§(§+%z§.TELEPORT,1,1,30),new §>%Q§(§+%z§.VACUUM_GRENADE,0.5,1,30),new §>%Q§(§+%z§.UZI,0.3,-1,15,21),new §>%Q§(§+%z§.§6!x§,0.3,-1,22),new §>%Q§(§+%z§.§4"k§,0.7,2,16,20),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_1,0.7,2,21,25),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.7,1,26),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.7,1,26),new §>%Q§(§+%z§.SHURIKEN,0.05,1,16,20),new §>%Q§(§+%z§.§4!r§,0.05,1,21,25),new §>%Q§(§+%z§.SHURIKEN_U2B_SAW,0.05,1,26),new §>%Q§(§+%z§.SHURIKEN_U2A_TRAJECTORY,0.05,1,26)];
      }
      
      private static function §4#<§() : Vector.<§>%Q§>
      {
         var _temp_2:* = new <§>%Q§>[new §>%Q§(§+%z§.BUNKER_BUSTER,0.1,1,20,24),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_1,0.1,1,25,29),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_2,0.1,1,30),new §>%Q§(§+%z§.METEOR,0.08,1,24),new §>%Q§(§+%z§.§<!;§,0.04,1,30)];
         var _temp_4:* = new <§>%Q§>[new §>%Q§(§+%z§.BUNKER_BUSTER,0.1,1,20,24),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_1,0.1,1,25,29),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_2,0.1,1,30),new §>%Q§(§+%z§.METEOR,0.08,1,24),new §>%Q§(§+%z§.§<!;§,0.04,1,30)];
         return new <§>%Q§>[new §>%Q§(§+%z§.BUNKER_BUSTER,0.1,1,20,24),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_1,0.1,1,25,29),new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_2,0.1,1,30),new §>%Q§(§+%z§.METEOR,0.08,1,24),new §>%Q§(§+%z§.§<!;§,0.04,1,30)];
      }
      
      private static function §@"B§() : Vector.<§>%Q§>
      {
         var _temp_22:* = new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.5,25),new §>%Q§(§+%z§.FOUL_WATERMELON,0.3,1,25),new §>%Q§(§+%z§.§7&E§,0.3,1,25),new §>%Q§(§+%z§.VILE_PUMPKIN,0.3,1,28),new §>%Q§(§+%z§.FROST_STASIS,0.05,1,30),new §>%Q§(§+%z§.DEEP_FREEZE,0.05,1,30),new §>%Q§(§+%z§.GAS_GRENADE,0.2,1,18,24),new §>%Q§(§+%z§.GAS_GRENADE_UPG_1A,0.2,1,25,28),new §>%Q§(§+%z§.GAS_GRENADE_UPG_1B,0.2,1,25,28),new §>%Q§(§+%z§.GAS_GRENADE_UPG_2A_BIO,0.2,1,29),new §>%Q§(§+%z§.GAS_GRENADE_UPG_2B_KRIO,0.2,1,29),new §>%Q§(§+%z§.STICKY_GRENADE,0.7,-1,18,20),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_1,0.7,-1,21,25),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.7,-1,26),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.7,-1,26),new §>%Q§(§+%z§.ANTIFREEZE,0.2,1,18,23),new §>%Q§(§+%z§.ANTIFREEZE_U1_POISON_CURE,0.2,1,24,29),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.2,1,30),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.2,1,30),new §>%Q§(§+%z§.AK_47,0.8,-1,12,18),new §>%Q§(§+%z§.AK_47_UPG_1A,0.8,-1,19,24),new §>%Q§(§+%z§.AK_47_UPG_1B_SNOWBALL,0.8
         ,-1,19,24),new §>%Q§(§+%z§.AK_47_UPG_2A,0.8,-1,25),new §>%Q§(§+%z§.AK_47_UPG_2B_MOROZKO,0.8,-1,25),new §>%Q§(§+%z§.CANNON,0.6,-1,12,18),new §>%Q§(§+%z§.CANNON_UPG_1,0.6,-1,19,24),new §>%Q§(§+%z§.CANNON_UPG_2,0.6,-1,25),new §>%Q§(§+%z§.ENERGY_RIFLE,0.6,-1,11,15),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,0.6,-1,16,20),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_2,0.6,-1,21,25),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.6,-1,26),new §>%Q§(§+%z§.PARASITE,0.5,1,12,18),new §>%Q§(§+%z§.PARASITE_UPG_1,0.5,1,19,24),new §>%Q§(§+%z§.PARASITE_UPG_2,0.5,1,25),new §>%Q§(§+%z§.SNIPER_RIFLE,0.8,-1,19,22),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.8,-1,23,26),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.6,-1,27,29),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2B,0.6,-1,27,29),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.6,-1,30),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3B_WASP,0.6,-1,30),new §>%Q§(§+%z§.CARPET_BAZOOKA,0.8,-1,18,23),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.8,-1,24,29),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.6,-1,30),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A
         ,0.6,-1,30)];
         var _temp_43:* = new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.5,25),new §>%Q§(§+%z§.FOUL_WATERMELON,0.3,1,25),new §>%Q§(§+%z§.§7&E§,0.3,1,25),new §>%Q§(§+%z§.VILE_PUMPKIN,0.3,1,28),new §>%Q§(§+%z§.FROST_STASIS,0.05,1,30),new §>%Q§(§+%z§.DEEP_FREEZE,0.05,1,30),new §>%Q§(§+%z§.GAS_GRENADE,0.2,1,18,24),new §>%Q§(§+%z§.GAS_GRENADE_UPG_1A,0.2,1,25,28),new §>%Q§(§+%z§.GAS_GRENADE_UPG_1B,0.2,1,25,28),new §>%Q§(§+%z§.GAS_GRENADE_UPG_2A_BIO,0.2,1,29),new §>%Q§(§+%z§.GAS_GRENADE_UPG_2B_KRIO,0.2,1,29),new §>%Q§(§+%z§.STICKY_GRENADE,0.7,-1,18,20),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_1,0.7,-1,21,25),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.7,-1,26),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.7,-1,26),new §>%Q§(§+%z§.ANTIFREEZE,0.2,1,18,23),new §>%Q§(§+%z§.ANTIFREEZE_U1_POISON_CURE,0.2,1,24,29),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.2,1,30),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.2,1,30),new §>%Q§(§+%z§.AK_47,0.8,-1,12,18),new §>%Q§(§+%z§.AK_47_UPG_1A,0.8,-1,19,24),new §>%Q§(§+%z§.AK_47_UPG_1B_SNOWBALL,0.8
         ,-1,19,24),new §>%Q§(§+%z§.AK_47_UPG_2A,0.8,-1,25),new §>%Q§(§+%z§.AK_47_UPG_2B_MOROZKO,0.8,-1,25),new §>%Q§(§+%z§.CANNON,0.6,-1,12,18),new §>%Q§(§+%z§.CANNON_UPG_1,0.6,-1,19,24),new §>%Q§(§+%z§.CANNON_UPG_2,0.6,-1,25),new §>%Q§(§+%z§.ENERGY_RIFLE,0.6,-1,11,15),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,0.6,-1,16,20),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_2,0.6,-1,21,25),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.6,-1,26),new §>%Q§(§+%z§.PARASITE,0.5,1,12,18),new §>%Q§(§+%z§.PARASITE_UPG_1,0.5,1,19,24),new §>%Q§(§+%z§.PARASITE_UPG_2,0.5,1,25),new §>%Q§(§+%z§.SNIPER_RIFLE,0.8,-1,19,22),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.8,-1,23,26),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.6,-1,27,29),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2B,0.6,-1,27,29),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.6,-1,30),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3B_WASP,0.6,-1,30),new §>%Q§(§+%z§.CARPET_BAZOOKA,0.8,-1,18,23),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.8,-1,24,29),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.6,-1,30),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A
         ,0.6,-1,30)];
         return new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,0.5,25),new §>%Q§(§+%z§.FOUL_WATERMELON,0.3,1,25),new §>%Q§(§+%z§.§7&E§,0.3,1,25),new §>%Q§(§+%z§.VILE_PUMPKIN,0.3,1,28),new §>%Q§(§+%z§.FROST_STASIS,0.05,1,30),new §>%Q§(§+%z§.DEEP_FREEZE,0.05,1,30),new §>%Q§(§+%z§.GAS_GRENADE,0.2,1,18,24),new §>%Q§(§+%z§.GAS_GRENADE_UPG_1A,0.2,1,25,28),new §>%Q§(§+%z§.GAS_GRENADE_UPG_1B,0.2,1,25,28),new §>%Q§(§+%z§.GAS_GRENADE_UPG_2A_BIO,0.2,1,29),new §>%Q§(§+%z§.GAS_GRENADE_UPG_2B_KRIO,0.2,1,29),new §>%Q§(§+%z§.STICKY_GRENADE,0.7,-1,18,20),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_1,0.7,-1,21,25),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.7,-1,26),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.7,-1,26),new §>%Q§(§+%z§.ANTIFREEZE,0.2,1,18,23),new §>%Q§(§+%z§.ANTIFREEZE_U1_POISON_CURE,0.2,1,24,29),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.2,1,30),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.2,1,30),new §>%Q§(§+%z§.AK_47,0.8,-1,12,18),new §>%Q§(§+%z§.AK_47_UPG_1A,0.8,-1,19,24),new §>%Q§(§+%z§.AK_47_UPG_1B_SNOWBALL,0.8,-1,19,24),new §>%Q§(§+%z§
         .AK_47_UPG_2A,0.8,-1,25),new §>%Q§(§+%z§.AK_47_UPG_2B_MOROZKO,0.8,-1,25),new §>%Q§(§+%z§.CANNON,0.6,-1,12,18),new §>%Q§(§+%z§.CANNON_UPG_1,0.6,-1,19,24),new §>%Q§(§+%z§.CANNON_UPG_2,0.6,-1,25),new §>%Q§(§+%z§.ENERGY_RIFLE,0.6,-1,11,15),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_1,0.6,-1,16,20),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_2,0.6,-1,21,25),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.6,-1,26),new §>%Q§(§+%z§.PARASITE,0.5,1,12,18),new §>%Q§(§+%z§.PARASITE_UPG_1,0.5,1,19,24),new §>%Q§(§+%z§.PARASITE_UPG_2,0.5,1,25),new §>%Q§(§+%z§.SNIPER_RIFLE,0.8,-1,19,22),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.8,-1,23,26),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.6,-1,27,29),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2B,0.6,-1,27,29),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.6,-1,30),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3B_WASP,0.6,-1,30),new §>%Q§(§+%z§.CARPET_BAZOOKA,0.8,-1,18,23),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.8,-1,24,29),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.6,-1,30),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.6,-1,30)];
      }
      
      private static function §?#2§() : Vector.<§>%Q§>
      {
         var _temp_27:* = new <§>%Q§>[new §>%Q§(§+%z§.DOCTOR_BAG,0.1,1,20),new §>%Q§(§+%z§.ANTIDOTE,0.1,1,20),new §>%Q§(§+%z§.ADRENALINE,0.1,1,20),new §>%Q§(§+%z§.NAIL_GRENADE,0.1,1,25),new §>%Q§(§+%z§.BLIZZARD,0.1,1,21),new §>%Q§(§+%z§.PLASMAGUN,0.1,1,28),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1,30),new §>%Q§(§+%z§.§'#?§,0.1,1,30),new §>%Q§(§+%z§.ROBO_PIRANHA,0.1,1,25),new §>%Q§(§+%z§.§;%Z§,0.1,1,20),new §>%Q§(§+%z§.ALCHEMIST_FLASK,0.1,1,20),new §>%Q§(§+%z§.STICKY_MINE,0.1,1,20),new §>%Q§(§+%z§.PUPPET,0.05,1,20,24),new §>%Q§(§+%z§.PUPPET_U1,0.05,1,25,29),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.05,1,30),new §>%Q§(§+%z§.PUPPET_U2B_GHOSTLY,0.05,1,30),new §>%Q§(§+%z§.BOULDER,0.1,1,20,24),new §>%Q§(§+%z§.BOULDER_UPG_1,0.1,1,25,27),new §>%Q§(§+%z§.BOULDER_UPG_2,0.1,1,28),new §>%Q§(§+%z§.GUARDING_BOT,0.1,2,20,29),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,1,0.1,30),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,1,0.1,30),new §>%Q§(§+%z§.AIR_BLOCKER,0.1,2,20,27),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.1,1,28),new §>%Q§(§+%z§
         .AIR_BLOCKER_UPG_1B_FROST,0.1,1,28),new §>%Q§(§+%z§.MOLOTOV,0.3,1,15,21),new §>%Q§(§+%z§.§ %L§,0.3,1,22),new §>%Q§(§+%z§.WATERMELON,0.3,1,20,25),new §>%Q§(§+%z§.§5!C§,0.3,1,26),new §>%Q§(§+%z§.§^";§,0.5,-1,25,28),new §>%Q§(§+%z§.§"%P§,0.5,-1,29),new §>%Q§(§+%z§.MORTAR,0.2,-1,15,21),new §>%Q§(§+%z§.§?$w§,0.2,-1,22,29),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,0.1,-1,30),new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,0.1,-1,30),new §>%Q§(§+%z§.SOUL_GUN,0.2,2,15,21),new §>%Q§(§+%z§.SOUL_GUN_UPG_1,0.2,2,22,29),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.1,1,30),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.1,1,30),new §>%Q§(§+%z§.HOLY_GRENADE,0.2,2,15,21),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_1,0.2,2,22,29),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2A_EYE,0.1,1,30),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.1,1,30),new §>%Q§(§+%z§.§8#d§,0.5,1,22,24),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG1A,0.5,1,25,27),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.5,1,28),new §>%Q§(§+%z§.MINIGUN,0.8,-1,16,20),new §>%Q§(§+%z§.§`L§,0.8,-1,21,25),new §>%Q§(§+%z§
         .MINIGUN_U2B_ROCKET,0.6,-1,12,26),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.6,-1,26),new §>%Q§(§+%z§.EMERGENCY_TELEPORT,0.5,1,14,15),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_1,0.6,2,16,17),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_2,0.7,3,18,23),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8,4,24)];
         var _temp_53:* = new <§>%Q§>[new §>%Q§(§+%z§.DOCTOR_BAG,0.1,1,20),new §>%Q§(§+%z§.ANTIDOTE,0.1,1,20),new §>%Q§(§+%z§.ADRENALINE,0.1,1,20),new §>%Q§(§+%z§.NAIL_GRENADE,0.1,1,25),new §>%Q§(§+%z§.BLIZZARD,0.1,1,21),new §>%Q§(§+%z§.PLASMAGUN,0.1,1,28),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1,30),new §>%Q§(§+%z§.§'#?§,0.1,1,30),new §>%Q§(§+%z§.ROBO_PIRANHA,0.1,1,25),new §>%Q§(§+%z§.§;%Z§,0.1,1,20),new §>%Q§(§+%z§.ALCHEMIST_FLASK,0.1,1,20),new §>%Q§(§+%z§.STICKY_MINE,0.1,1,20),new §>%Q§(§+%z§.PUPPET,0.05,1,20,24),new §>%Q§(§+%z§.PUPPET_U1,0.05,1,25,29),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.05,1,30),new §>%Q§(§+%z§.PUPPET_U2B_GHOSTLY,0.05,1,30),new §>%Q§(§+%z§.BOULDER,0.1,1,20,24),new §>%Q§(§+%z§.BOULDER_UPG_1,0.1,1,25,27),new §>%Q§(§+%z§.BOULDER_UPG_2,0.1,1,28),new §>%Q§(§+%z§.GUARDING_BOT,0.1,2,20,29),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,1,0.1,30),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,1,0.1,30),new §>%Q§(§+%z§.AIR_BLOCKER,0.1,2,20,27),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.1,1,28),new §>%Q§(§+%z§
         .AIR_BLOCKER_UPG_1B_FROST,0.1,1,28),new §>%Q§(§+%z§.MOLOTOV,0.3,1,15,21),new §>%Q§(§+%z§.§ %L§,0.3,1,22),new §>%Q§(§+%z§.WATERMELON,0.3,1,20,25),new §>%Q§(§+%z§.§5!C§,0.3,1,26),new §>%Q§(§+%z§.§^";§,0.5,-1,25,28),new §>%Q§(§+%z§.§"%P§,0.5,-1,29),new §>%Q§(§+%z§.MORTAR,0.2,-1,15,21),new §>%Q§(§+%z§.§?$w§,0.2,-1,22,29),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,0.1,-1,30),new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,0.1,-1,30),new §>%Q§(§+%z§.SOUL_GUN,0.2,2,15,21),new §>%Q§(§+%z§.SOUL_GUN_UPG_1,0.2,2,22,29),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.1,1,30),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.1,1,30),new §>%Q§(§+%z§.HOLY_GRENADE,0.2,2,15,21),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_1,0.2,2,22,29),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2A_EYE,0.1,1,30),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.1,1,30),new §>%Q§(§+%z§.§8#d§,0.5,1,22,24),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG1A,0.5,1,25,27),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.5,1,28),new §>%Q§(§+%z§.MINIGUN,0.8,-1,16,20),new §>%Q§(§+%z§.§`L§,0.8,-1,21,25),new §>%Q§(§+%z§
         .MINIGUN_U2B_ROCKET,0.6,-1,12,26),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.6,-1,26),new §>%Q§(§+%z§.EMERGENCY_TELEPORT,0.5,1,14,15),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_1,0.6,2,16,17),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_2,0.7,3,18,23),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8,4,24)];
         return new <§>%Q§>[new §>%Q§(§+%z§.DOCTOR_BAG,0.1,1,20),new §>%Q§(§+%z§.ANTIDOTE,0.1,1,20),new §>%Q§(§+%z§.ADRENALINE,0.1,1,20),new §>%Q§(§+%z§.NAIL_GRENADE,0.1,1,25),new §>%Q§(§+%z§.BLIZZARD,0.1,1,21),new §>%Q§(§+%z§.PLASMAGUN,0.1,1,28),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1,30),new §>%Q§(§+%z§.§'#?§,0.1,1,30),new §>%Q§(§+%z§.ROBO_PIRANHA,0.1,1,25),new §>%Q§(§+%z§.§;%Z§,0.1,1,20),new §>%Q§(§+%z§.ALCHEMIST_FLASK,0.1,1,20),new §>%Q§(§+%z§.STICKY_MINE,0.1,1,20),new §>%Q§(§+%z§.PUPPET,0.05,1,20,24),new §>%Q§(§+%z§.PUPPET_U1,0.05,1,25,29),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.05,1,30),new §>%Q§(§+%z§.PUPPET_U2B_GHOSTLY,0.05,1,30),new §>%Q§(§+%z§.BOULDER,0.1,1,20,24),new §>%Q§(§+%z§.BOULDER_UPG_1,0.1,1,25,27),new §>%Q§(§+%z§.BOULDER_UPG_2,0.1,1,28),new §>%Q§(§+%z§.GUARDING_BOT,0.1,2,20,29),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,1,0.1,30),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,1,0.1,30),new §>%Q§(§+%z§.AIR_BLOCKER,0.1,2,20,27),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.1,1,28),new §>%Q§(§+%z§
         .AIR_BLOCKER_UPG_1B_FROST,0.1,1,28),new §>%Q§(§+%z§.MOLOTOV,0.3,1,15,21),new §>%Q§(§+%z§.§ %L§,0.3,1,22),new §>%Q§(§+%z§.WATERMELON,0.3,1,20,25),new §>%Q§(§+%z§.§5!C§,0.3,1,26),new §>%Q§(§+%z§.§^";§,0.5,-1,25,28),new §>%Q§(§+%z§.§"%P§,0.5,-1,29),new §>%Q§(§+%z§.MORTAR,0.2,-1,15,21),new §>%Q§(§+%z§.§?$w§,0.2,-1,22,29),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,0.1,-1,30),new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,0.1,-1,30),new §>%Q§(§+%z§.SOUL_GUN,0.2,2,15,21),new §>%Q§(§+%z§.SOUL_GUN_UPG_1,0.2,2,22,29),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.1,1,30),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.1,1,30),new §>%Q§(§+%z§.HOLY_GRENADE,0.2,2,15,21),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_1,0.2,2,22,29),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2A_EYE,0.1,1,30),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.1,1,30),new §>%Q§(§+%z§.§8#d§,0.5,1,22,24),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG1A,0.5,1,25,27),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.5,1,28),new §>%Q§(§+%z§.MINIGUN,0.8,-1,16,20),new §>%Q§(§+%z§.§`L§,0.8,-1,21,25),new §>%Q§(§+%z§
         .MINIGUN_U2B_ROCKET,0.6,-1,12,26),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.6,-1,26),new §>%Q§(§+%z§.EMERGENCY_TELEPORT,0.5,1,14,15),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_1,0.6,2,16,17),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_2,0.7,3,18,23),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8,4,24)];
      }
      
      public function addWeapons(param1:Vector.<§>%Q§>, param2:uint) : void
      {
         var _loc3_:§>%Q§ = null;
         for each(_loc3_ in param1)
         {
            this.§>$&§(_loc3_,param2);
         }
      }
      
      public function §>$&§(param1:§>%Q§, param2:uint = 4294967295) : void
      {
         var _loc3_:§>%Q§ = null;
         if(param2 < param1.minLevel)
         {
            return;
         }
         if(param2 > param1.maxLevel)
         {
            return;
         }
         for each(_loc3_ in this.recs)
         {
            if(_loc3_.weaponId == param1.weaponId)
            {
               if(param1.maxShots == -1 || _loc3_.maxShots == -1)
               {
                  _loc3_.maxShots = -1;
                  _loc3_.shots = 0;
               }
               else
               {
                  _loc3_.maxShots += param1.maxShots;
                  _loc3_.shots = _loc3_.maxShots;
               }
               _loc3_.§`;§ = Math.max(param1.§`;§,_loc3_.§`;§);
               return;
            }
         }
         this.recs[this.recs.length] = param1;
      }
      
      public function §-!n§(param1:uint) : void
      {
         var _loc3_:§>%Q§ = null;
         var _loc2_:Vector.<§>%Q§> = new Vector.<§>%Q§>();
         _loc2_ = _loc2_.concat(this.recs);
         this.recs.length = 0;
         for each(_loc3_ in _loc2_)
         {
            this.§>$&§(_loc3_,param1);
         }
      }
      
      public function §,&,§(param1:int) : Vector.<int>
      {
         var _loc3_:§>%Q§ = null;
         var _loc2_:Vector.<int> = new Vector.<int>();
         for each(_loc3_ in this.recs)
         {
            if(_loc3_.maxShots == -1 || _loc3_.shots > 0)
            {
               _loc2_[_loc2_.length] = _loc3_.weaponId;
            }
         }
         return _loc2_;
      }
      
      public function §[!e§(param1:uint) : void
      {
         var _loc2_:§>%Q§ = null;
         for each(_loc2_ in this.recs)
         {
            if(_loc2_.weaponId == param1 && _loc2_.maxShots != -1)
            {
               --_loc2_.shots;
               return;
            }
         }
      }
      
      public function subtractWeapons(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc3_ = 0;
            _loc4_ = int(this.recs.length);
            while(_loc3_ < _loc4_)
            {
               if(this.recs[_loc3_].weaponId == _loc2_)
               {
                  this.recs.splice(_loc3_,1);
                  break;
               }
               _loc3_++;
            }
         }
      }
      
      public function §1%N§(param1:uint) : Number
      {
         var _loc2_:§>%Q§ = null;
         for each(_loc2_ in this.recs)
         {
            if(_loc2_.weaponId == param1)
            {
               return _loc2_.§`;§ ? _loc2_.§`;§ : 1;
            }
         }
         return 1;
      }
      
      public function §0!]§(param1:uint, param2:Number = 1) : void
      {
         var _loc3_:§>%Q§ = null;
         for each(_loc3_ in this.recs)
         {
            if(_loc3_.weaponId == param1)
            {
               _loc3_.§`;§ = param2;
               break;
            }
         }
      }
      
      public function §`!-§(param1:§<$!§) : void
      {
         switch(param1)
         {
            case §<$!§.HARD:
               this.addWeapons(§4#<§(),this.§;"[§);
            case §<$!§.MEDIUM:
               this.addWeapons(§3!d§(),this.§;"[§);
            case §<$!§.EASY:
               this.addWeapons(§;J§(),this.§;"[§);
         }
      }
      
      public function §;$"§() : void
      {
         var _loc2_:§>%Q§ = null;
         var _loc3_:§;#_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.recs)
         {
            _loc3_ = §<$c§.§ !=§(_loc2_.weaponId);
            if(_loc3_)
            {
               _loc1_++;
            }
         }
      }
   }
}

