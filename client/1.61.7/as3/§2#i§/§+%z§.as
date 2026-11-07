package §2#i§
{
   import §2o§.§]#;§;
   import §5"J§.*;
   import §7$t§.§^$E§;
   import §9%W§.§!"G§;
   import §<$q§.§6%b§;
   import §=$#§.*;
   import §>%S§.§^!V§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.client.GetColiseumReward;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   
   public class §+%z§
   {
      
      public static const §]4§:Array = [BAZOOKA,GRENADE,RIFLE,MINE,DRILL,BLOW_TORCH,UZI,SHURIKEN,ROPE,BANDAGE,DYNAMITE,§4"k§,SHEEP,SHOTGUN,STICKY_GRENADE,§]!]§,SHOCKER,JETPACK,§5&,§,ANTITOXIN,GAS_GRENADE,MINIGUN,AK_47,GRAVITY_GUN,SWITCH_TURN,§!`§,HARPOON,GIRDER,CROSSBOW,DOCTOR_BAG,SNIPER_RIFLE,§8#d§,ANTIFREEZE,EMERGENCY_TELEPORT,SPIDER,§]h§,GUARDING_BOT,FIREWORK,SLEDGEHAMMER,ANTIDOTE,TELEPORT,UFO,§'#?§,FREEZING_MINE,BAT,§^";§,MOLOTOV,SUPER_SHEEP,AIR_BLOCKER,ADRENALINE,GIRDER_GUN,TELEPORT_ANCHOR,LASER_GUN,WATERMELON,BUNKER_BUSTER,THUNDERBOLT,§"!S§,PUPPET,PUSHING_MINE,§&$x§,ENERGY_RIFLE,THEIF_ATTACK,NAPALM_STRIKE,AIR_STRIKE,SNOWFLAKE_STRIKE,METEOR,CARPET_STRIKE,PARASITE,HOLY_GRENADE,§;%Z§,VACUUM_GRENADE,HELICOPTER,CIRCUS_CANNON,ION_CANNON,BOULDER,ROBO_PIRANHA,SOUL_GUN,PLASMAGUN,VILE_PUMPKIN,LULLABY_ELIXIR];
      
      public static const §'!2§:Array = [SUPER_DRILL_MISSILE,STICKY_MINE,ARTILLERY,DOCTOR_BAG,§&$x§,FOUL_WATERMELON];
      
      public static const §8%E§:Array = [BANDAGE,ANTITOXIN,VILE_PUMPKIN,LULLABY_ELIXIR,ADRENALINE,ANTIDOTE,§;%Z§];
      
      public static const §^#H§:Array = [ELECTRO_BUOY,§8#f§,POISON_BOBBER,§3"§];
      
      public static const §=#O§:Array = §8%E§.concat(§'!2§).concat(§^#H§);
      
      public static const §,!F§:Array = [§"A§,ALCHEMIST_FLASK];
      
      public static const §5#a§:Array = [REINFORCEMENT_CALL,ZOMBIE_MARCH,GRENADE_BUNCH,SWAP_TELEPORT,FIREARM_TURRET,BLIZZARD,MORTAR_TURRET,§!#b§,SNOWBALL,§5k§,§6&8§,FIERY_PUMPKIN,RESURRECTION_SEAL,§9A§,ROBO_PIRANHA,NAIL_GRENADE,RADIO_MAST,MOLE,DEEP_FREEZE,GIFT_BOX,GLAZED_DONUT,§[#Y§];
      
      public static const §5&$§:Array = §5#a§.concat(§,!F§);
      
      public static const §9"p§:Array = [SUPER_BUNKER_BUSTER,TITANIUM_GIRDER,SOUL_GUN_FREEZE,GAS_GRENADE_SHOCK,HANDICRAFTED_RIFLE,RED_HOT_HAMMER,THUNDER_HAMMER,MESSY_BOMBARDMENT,HUNGRY_GARY,BARRIERS_LAUNCHER];
      
      public static const §8!O§:Array = [§^%l§,BOSS_FIRE_MINIGUN,§7#L§,§[$A§,§?$2§,§[$X§,§@%-§,§,!_§,§0!m§];
      
      public static const §+#l§:Array = [DISC_LAUNCHER,HOPPING_BAZOOKA,CIRCUS_CANNON,HELICOPTER,FORCE_FIELD,§7&E§,§!%D§,PLASMAGUN,ANVIL,§5-§,FROST_STASIS];
      
      public static const §!#d§:Array = [PUPPET_MECH];
      
      public static const §?$%§:Array = [ROPE,ROPE_UPG_1,ROPE_UPG_2];
      
      public static const §^"_§:uint = 8;
      
      public static const §^"$§:uint = 13;
      
      public static const §]&E§:uint = 15;
      
      public static const §`$r§:uint = 18;
      
      public static const §>#m§:uint = 20;
      
      public static const §+"l§:uint = 10000;
      
      public static const §1#'§:uint = 10001;
      
      public static const §2%l§:uint = 10002;
      
      public static const §;$6§:uint = 10003;
      
      public static const §0%n§:uint = 10004;
      
      public static const SUPER_BUNKER_BUSTER:int = 59;
      
      public static const TITANIUM_GIRDER:int = 61;
      
      public static const SOUL_GUN_FREEZE:int = 98;
      
      public static const MESSY_BOMBARDMENT:uint = 124;
      
      public static const HUNGRY_GARY:int = 133;
      
      public static const THUNDER_HAMMER:int = 138;
      
      public static const RED_HOT_HAMMER:int = 139;
      
      public static const BAZOOKA:uint = 1;
      
      public static const BAZOOKA_UPG_1:uint = 320;
      
      public static const BAZOOKA_UPG_2_CUMULATIVE:uint = 321;
      
      public static const GRENADE:uint = 2;
      
      public static const GRENADE_UPG_1_STUFFED_BOUNCING:uint = 322;
      
      public static const GRENADE_UPG_2_STUN:uint = 323;
      
      public static const RIFLE:uint = 4;
      
      public static const RIFLE_UPG_1:uint = 324;
      
      public static const §4"k§:uint = 5;
      
      public static const CLUSTER_BOMB_UPG_1:uint = 301;
      
      public static const CLUSTER_BOMB_UPG_2A_PIRANHA:uint = 302;
      
      public static const CLUSTER_BOMB_UPG_2B:uint = 303;
      
      public static const MORTAR:uint = 9;
      
      public static const §?$w§:uint = 304;
      
      public static const MORTAR_UPG2A_RADIUS:uint = 305;
      
      public static const MORTAR_UPG2B_DOUBLE_SHOT:uint = 306;
      
      public static const SHURIKEN:uint = 45;
      
      public static const §4!r§:uint = 307;
      
      public static const SHURIKEN_U2A_TRAJECTORY:uint = 308;
      
      public static const SHURIKEN_U2B_SAW:uint = 309;
      
      public static const STICKY_GRENADE:uint = 29;
      
      public static const STICKY_GRENADE_UPG_1:uint = 310;
      
      public static const STICKY_GRENADE_UPG_2A_POISON:uint = 311;
      
      public static const STICKY_GRENADE_UPG_2B:uint = 312;
      
      public static const SNIPER_RIFLE:uint = 23;
      
      public static const SNIPER_RIFLE_UPG_1:uint = 313;
      
      public static const SHOTGUN:uint = 14;
      
      public static const §^&6§:uint = 314;
      
      public static const SHOTGUN_U2A_SLOWING:uint = 315;
      
      public static const SHOTGUN_U2B_DOUBLE_SHOT:uint = 316;
      
      public static const MINIGUN:uint = 10;
      
      public static const §`L§:uint = 317;
      
      public static const MINIGUN_U2A_REDUCE_ARMOR:uint = 318;
      
      public static const MINIGUN_U2B_ROCKET:uint = 319;
      
      public static const CANNON:uint = 46;
      
      public static const CANNON_UPG_1:uint = 340;
      
      public static const CANNON_UPG_2:uint = 341;
      
      public static const CARPET_BAZOOKA:uint = 44;
      
      public static const CARPET_BAZOOKA_UPG_1:uint = 343;
      
      public static const CARPET_BAZOOKA_UPG_2A:uint = 344;
      
      public static const CARPET_BAZOOKA_UPG_2B:uint = 345;
      
      public static const HOLY_GRENADE:uint = 25;
      
      public static const HOLY_GRENADE_UPG_1:uint = 336;
      
      public static const HOLY_GRENADE_UPG_2A_EYE:uint = 389;
      
      public static const HOLY_GRENADE_UPG_2B_POLAR:uint = 422;
      
      public static const AIR_STRIKE:uint = 27;
      
      public static const §<!J§:uint = 362;
      
      public static const THUNDERBOLT:uint = 74;
      
      public static const §-%1§:uint = 366;
      
      public static const §!`§:uint = 12;
      
      public static const WATERMELON:uint = 24;
      
      public static const §^";§:uint = 30;
      
      public static const MOLOTOV:uint = 37;
      
      public static const AK_47:uint = 52;
      
      public static const §8#d§:uint = 54;
      
      public static const CROSSBOW:uint = 55;
      
      public static const ANTITOXIN:uint = 80;
      
      public static const BANDAGE:uint = 72;
      
      public static const METEOR:uint = 28;
      
      public static const §'#?§:uint = 57;
      
      public static const BLIZZARD:uint = 75;
      
      public static const DRILL:uint = 16;
      
      public static const ROPE:uint = 49;
      
      public static const SUPER_SHEEP:uint = 41;
      
      public static const §]!]§:uint = 34;
      
      public static const SWITCH_TURN:uint = 42;
      
      public static const FIREWORK:uint = 32;
      
      public static const BAT:uint = 51;
      
      public static const NAPALM_STRIKE:uint = 43;
      
      public static const SLEDGEHAMMER:uint = 47;
      
      public static const TELEPORT:uint = 26;
      
      public static const JETPACK:uint = 35;
      
      public static const FREEZING_MINE:uint = 56;
      
      public static const BUNKER_BUSTER:uint = 58;
      
      public static const GUARDING_BOT:uint = 60;
      
      public static const DISC_LAUNCHER:uint = 62;
      
      public static const HOPPING_BAZOOKA:uint = 63;
      
      public static const HELICOPTER:uint = 64;
      
      public static const UFO:uint = 65;
      
      public static const ANTIFREEZE:uint = 66;
      
      public static const FORCE_FIELD:uint = 67;
      
      public static const CIRCUS_CANNON:uint = 68;
      
      public static const BOOMERANG:uint = 69;
      
      public static const ANVIL:uint = 70;
      
      public static const EMERGENCY_TELEPORT:uint = 71;
      
      public static const GRAVITY_GUN:uint = 73;
      
      public static const §5-§:uint = 77;
      
      public static const §7&E§:int = 78;
      
      public static const GAS_GRENADE:int = 81;
      
      public static const GAS_GRENADE_UPG_1A:int = 367;
      
      public static const GAS_GRENADE_UPG_1B:int = 420;
      
      public static const GAS_GRENADE_UPG_2A_BIO:uint = 440;
      
      public static const GAS_GRENADE_UPG_2B_KRIO:uint = 441;
      
      public static const GAS_GRENADE_SHOCK:uint = 141;
      
      public static const SUPER_DRILL_MISSILE:uint = 11;
      
      public static const CARPET_STRIKE:uint = 36;
      
      public static const §5&,§:uint = 38;
      
      public static const HOMING_BAZOOKA_UPG_1:uint = 325;
      
      public static const HOMING_BAZOOKA_UPG_2:uint = 326;
      
      public static const HARPOON:uint = 50;
      
      public static const ELECTRIC_HARPOON_UPG_1:uint = 327;
      
      public static const ELECTRIC_HARPOON_UPG_2A:uint = 328;
      
      public static const ELECTRIC_HARPOON_UPG_2B:uint = 329;
      
      public static const BLOW_TORCH:uint = 17;
      
      public static const BLOW_TORCH_UPG_1:uint = 330;
      
      public static const BLOW_TORCH_UPG_2:uint = 331;
      
      public static const MINE:uint = 39;
      
      public static const MINE_UPG_1:uint = 332;
      
      public static const MINE_UPG_2:uint = 333;
      
      public static const UZI:uint = 7;
      
      public static const §6!x§:uint = 334;
      
      public static const §]h§:uint = 76;
      
      public static const LASER_BARRIER_UPG_1:uint = 335;
      
      public static const SPIDER:uint = 48;
      
      public static const SPIDER_UPG_1A:uint = 337;
      
      public static const DYNAMITE:uint = 19;
      
      public static const DYNAMITE_U1A_BUNCH:uint = 338;
      
      public static const DYNAMITE_U1B_KAMIKAZE:uint = 339;
      
      public static const SHOCKER:uint = 33;
      
      public static const SHOCKER_UPG_1:uint = 342;
      
      public static const SHEEP:uint = 40;
      
      public static const SHEEP_U1A_CONTROLLED:uint = 347;
      
      public static const SHEEP_U1B_BURNING:uint = 348;
      
      public static const GIRDER:uint = 53;
      
      public static const GIRDER_U1_ELASTIC:uint = 346;
      
      public static const EMERGENCY_TELEPORT_UPG_1:int = 349;
      
      public static const EMERGENCY_TELEPORT_UPG_2:int = 350;
      
      public static const BOOMERANG_UPG_1:uint = 351;
      
      public static const BOOMERANG_UPG_2:uint = 352;
      
      public static const §?"4§:uint = 353;
      
      public static const ANTIFREEZE_U1_POISON_CURE:uint = 354;
      
      public static const ANTIFREEZE_U2A_ATTACK:uint = 355;
      
      public static const ANTIFREEZE_U2B_ARMOR:uint = 356;
      
      public static const §"!S§:int = 82;
      
      public static const BLOCKER_UPG_1:int = 363;
      
      public static const BLOCKER_UPG_2A_DARK:int = 364;
      
      public static const BLOCKER_UPG_2B_LIGHT:int = 365;
      
      public static const PARASITE:int = 83;
      
      public static const DRILL_UPG_1:uint = 357;
      
      public static const PARASITE_UPG_1:uint = 358;
      
      public static const RIFLE_UPG_2:uint = 359;
      
      public static const SNIPER_RIFLE_UPG_2A:uint = 360;
      
      public static const SNIPER_RIFLE_UPG_2B:uint = 361;
      
      public static const §,!_§:uint = 147;
      
      public static const §@%-§:uint = 146;
      
      public static const VILE_PUMPKIN:int = 84;
      
      public static const §"A§:int = 85;
      
      public static const SOUL_GUN:int = 86;
      
      public static const SNOWBALL:int = 87;
      
      public static const DEEP_FREEZE:int = 88;
      
      public static const FIREWORK_BARREL:int = 89;
      
      public static const GIFT_BOX:int = 90;
      
      public static const §[$X§:int = 145;
      
      public static const ARTILLERY:uint = 91;
      
      public static const STICKY_MINE:uint = 92;
      
      public static const NAIL_GRENADE:uint = 93;
      
      public static const §?$2§:int = 144;
      
      public static const BOSS_FIRE_MINIGUN:int = 137;
      
      public static const §[$A§:int = 143;
      
      public static const SHOCKER_UPG_2:int = 368;
      
      public static const BUNKER_BUSTER_UPG_1:int = 369;
      
      public static const §<!;§:int = 370;
      
      public static const TELEPORT_UPG_1A:int = 371;
      
      public static const LASER_GUN:uint = 94;
      
      public static const BOULDER:uint = 95;
      
      public static const VACUUM_GRENADE:uint = 96;
      
      public static const §^!4§:uint = 454;
      
      public static const § %L§:int = 372;
      
      public static const AK_47_UPG_1A:int = 373;
      
      public static const §5#w§:int = 374;
      
      public static const LASER_GUN_UPG_1:int = 375;
      
      public static const LASER_GUN_UPG_2A:int = 376;
      
      public static const LASER_GUN_UPG_2B:int = 377;
      
      public static const § P§:int = 378;
      
      public static const ROPE_UPG_1:int = 379;
      
      public static const §8#j§:uint = 98;
      
      public static const GRAVITY_GUN_UPG_1:int = 380;
      
      public static const DOCTOR_BAG:uint = 99;
      
      public static const §&$x§:uint = 100;
      
      public static const UFO_UPG_1:uint = 381;
      
      public static const UFO_UPG_2:uint = 382;
      
      public static const SUPER_SHEEP_UPG_1:uint = 383;
      
      public static const SUPER_SHEEP_UPG_2:uint = 384;
      
      public static const AK_47_UPG_2A:int = 385;
      
      public static const ALCHEMIST_FLASK:int = 101;
      
      public static const FIERY_PUMPKIN:int = 102;
      
      public static const FOUL_WATERMELON:int = 103;
      
      public static const ZOMBIE_MARCH:int = 104;
      
      public static const DRILL_UPG_2:uint = 386;
      
      public static const LASER_BARRIER_UPG_2:uint = 387;
      
      public static const BUNKER_BUSTER_UPG_2:int = 388;
      
      public static const SNOWFLAKE_STRIKE:int = 105;
      
      public static const REINFORCEMENT_CALL:int = 106;
      
      public static const GRAVITY_GUN_UPG_2:int = 390;
      
      public static const FREEZING_BAZOOKA_UPG1A:int = 391;
      
      public static const AIR_BLOCKER:int = 107;
      
      public static const GLAZED_DONUT:int = 108;
      
      public static const PUSHING_MINE:int = 109;
      
      public static const §^%l§:int = 110;
      
      public static const §6#-§:int = 392;
      
      public static const SLEDGEHAMMER_UPG_1:int = 393;
      
      public static const BAT_UPG_1:uint = 394;
      
      public static const §5!C§:int = 395;
      
      public static const EMERGENCY_TELEPORT_UPG_3A:int = 396;
      
      public static const RESURRECTION_SEAL:int = 111;
      
      public static const RADIO_MAST:int = 112;
      
      public static const ANTIDOTE:int = 113;
      
      public static const ADRENALINE:int = 114;
      
      public static const §0!m§:int = 148;
      
      public static const §7#L§:int = 142;
      
      public static const §!%D§:int = 115;
      
      public static const TELEPORT_ANCHOR:int = 116;
      
      public static const GIRDER_GUN:int = 117;
      
      public static const GIRDER_U2_TACTIC:int = 397;
      
      public static const ROPE_UPG_2:int = 398;
      
      public static const SLEDGEHAMMER_UPG_1B:int = 399;
      
      public static const SUPER_SHEEP_UPG_2B:uint = 400;
      
      public static const SNOWFLAKE_STRIKE_UPG_1:int = 401;
      
      public static const SNOWFLAKE_STRIKE_UPG_2A:int = 402;
      
      public static const SNOWFLAKE_STRIKE_UPG_2B_RAIN:int = 403;
      
      public static const FROST_STASIS:uint = 118;
      
      public static const §6&8§:uint = 119;
      
      public static const §[#Y§:uint = 120;
      
      public static const §5k§:uint = 121;
      
      public static const GRENADE_BUNCH:uint = 122;
      
      public static const TELEPORT_ANCHOR_UPG_1:int = 404;
      
      public static const TELEPORT_ANCHOR_UPG_2:int = 405;
      
      public static const §+%x§:int = 406;
      
      public static const §"%P§:int = 407;
      
      public static const DRILL_GUN_UPG_1:int = 408;
      
      public static const DRILL_GUN_UPG_2:int = 409;
      
      public static const PARASITE_UPG_2:uint = 410;
      
      public static const BOULDER_UPG_1:uint = 411;
      
      public static const TELEPORT_UPG_1B:int = 412;
      
      public static const §9A§:uint = 123;
      
      public static const MORTAR_TURRET:uint = 125;
      
      public static const FIREARM_TURRET:uint = 126;
      
      public static const MOLE:uint = 127;
      
      public static const §!#b§:uint = 128;
      
      public static const PLASMAGUN:uint = 129;
      
      public static const §;%Z§:uint = 130;
      
      public static const GUARDING_BOT_UPG_1A_HIDDEN:int = 413;
      
      public static const AIR_BLOCKER_UPG_1A_MAGNET:int = 414;
      
      public static const GUARDING_BOT_UPG_1B_STICKY:int = 415;
      
      public static const BOULDER_UPG_2:uint = 416;
      
      public static const FREEZING_BAZOOKA_UPG2A:int = 417;
      
      public static const FREEZING_BAZOOKA_UPG1B:int = 418;
      
      public static const FREEZING_BAZOOKA_UPG2B:int = 419;
      
      public static const SPIDER_UPG_1B_FROST:uint = 421;
      
      public static const AIR_BLOCKER_UPG_1B_FROST:uint = 423;
      
      public static const SOUL_GUN_UPG_1:int = 424;
      
      public static const SOUL_GUN_UPG_2A_HEAL:int = 425;
      
      public static const SOUL_GUN_UPG_2B_POISON:int = 426;
      
      public static const BAT_UPG_2A:uint = 427;
      
      public static const BAT_UPG_2B:uint = 428;
      
      public static const PUPPET:uint = 131;
      
      public static const LULLABY_ELIXIR:int = 132;
      
      public static const SWAP_TELEPORT:int = 134;
      
      public static const ROBO_PIRANHA:int = 135;
      
      public static const THEIF_ATTACK:int = 136;
      
      public static const AK_47_UPG_1B_SNOWBALL:int = 429;
      
      public static const AK_47_UPG_2B_MOROZKO:int = 430;
      
      public static const GRAVITY_GUN_UPG_3:int = 431;
      
      public static const EMERGENCY_TELEPORT_UPG_3B:int = 432;
      
      public static const §'&<§:int = 433;
      
      public static const BOULDER_UPG_3_SKY:int = 434;
      
      public static const ENERGY_RIFLE:uint = 31;
      
      public static const ENERGY_RIFLE_UPG_1:uint = 435;
      
      public static const ENERGY_RIFLE_UPG_2:uint = 436;
      
      public static const ENERGY_RIFLE_UPG_3:uint = 437;
      
      public static const SNIPER_RIFLE_UPG_3A_DINO:uint = 438;
      
      public static const SNIPER_RIFLE_UPG_3B_WASP:uint = 439;
      
      public static const HANDICRAFTED_RIFLE:uint = 140;
      
      public static const FIREWORK_UPG_1:uint = 442;
      
      public static const FIREWORK_UPG_2:uint = 443;
      
      public static const BARRIERS_LAUNCHER:uint = 149;
      
      public static const PUPPET_U1:uint = 444;
      
      public static const PUPPET_U2A_CURSED:uint = 445;
      
      public static const PUPPET_U2B_GHOSTLY:uint = 446;
      
      public static const THEIF_ATTACK_U1:uint = 447;
      
      public static const THEIF_ATTACK_U2A_ROCK:uint = 448;
      
      public static const THEIF_ATTACK_U2B_INVERSE:uint = 449;
      
      public static const ION_CANNON:uint = 22;
      
      public static const PUPPET_MECH:uint = 21;
      
      public static const §=%n§:uint = 450;
      
      public static const §+$I§:uint = 451;
      
      public static const ELECTRO_BUOY:uint = 3;
      
      public static const POISON_BOBBER:uint = 6;
      
      public static const §8#f§:uint = 901;
      
      public static const §3"§:uint = 902;
      
      public static const HELICOPTER_U1A:uint = 452;
      
      public static const HELICOPTER_U1B:uint = 453;
      
      public static const CANNON_UPG_3A:uint = 455;
      
      public static const CANNON_UPG_3B_STICKY:uint = 456;
      
      public static const PAPER_SQUADRON:uint = 150;
      
      public static const FORCE_FIELD_1_HANDLE:uint = 457;
      
      public static const FORCE_FIELD_2A_MAGNET:uint = 458;
      
      public static const FORCE_FIELD_2B_POWERED:uint = 459;
      
      public function §+%z§()
      {
         super();
      }
      
      public static function §2$_§(param1:int) : Boolean
      {
         return param1 < 1000;
      }
   }
}

