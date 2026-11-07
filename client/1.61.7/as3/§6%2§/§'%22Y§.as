package §6%2§
{
   import § %"§.ShurikenSaw;
   import § %f§.§"#J§;
   import § %f§.§6&4§;
   import §!L§.§+"'§;
   import §%$n§.§&!M§;
   import §%&3§.§]"e§;
   import §%&6§.§+%D§;
   import §%&6§.§0%2§;
   import §%&6§.§2"A§;
   import §%&6§.§6%v§;
   import §'T§.§0L§;
   import §+5§.§5%d§;
   import §+5§.§6%#§;
   import §+5§.§7$`§;
   import §+5§.§8$W§;
   import §+5§.§="M§;
   import §,"`§.§;8§;
   import §-8§.§[$!§;
   import §2#i§.§+%z§;
   import §2#i§.§6§;
   import §4'§.§^"p§;
   import §7$1§.§1&0§;
   import §7$1§.§;#&§;
   import §7$1§.§[#m§;
   import §<!^§.§'$e§;
   import §<!^§.§+$B§;
   import §<!^§.§4Y§;
   import §<!^§.§9"A§;
   import §<%k§.§`!v§;
   import §>">§.§@&+§;
   import §?o§.StuffedBouncingGrenade;
   import §[#I§.§2&=§;
   import §]#b§.§["J§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§0#Z§;
   import §^4§.§0#q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §'"Y§
   {
      
      public static const §;9§:int = 300;
      
      private static const §;"f§:Array = [{
         "id":§+%z§.CLUSTER_BOMB_UPG_1,
         "name":"CL_GRENADE.NAME.U1",
         "description":"CL_GRENADE.DESCR.U1",
         "maxdamage":"CL_GRENADE.DAMAGE.U1",
         "note":"",
         "iconClassName":"ClGrenadeUpg1",
         "render":{"clipClass":"ClGrenadeUpg1"},
         "params":{
            "clipClassName":"AmClGrenadeUpg1",
            "damage":new §&$2§(45)
         },
         "property":{
            "explodeOnDemand":new §?"&§(true),
            "shardQuantity":new §&$2§(9),
            "blinkClassName":"ClGrenadeUpg1Blink",
            "trailColor":2233364
         },
         "menuIcon":"IconClGrenadeUpg1"
      },{
         "id":§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,
         "name":"CL_GRENADE.NAME.U2A",
         "description":"CL_GRENADE.DESCR.U2A",
         "maxdamage":"CL_GRENADE.DAMAGE.U2A",
         "hint":"",
         "iconClassName":"HomingClGrenade",
         "render":{"clipClass":"HomingClGrenade"},
         "params":{
            "clipClassName":"AmHomingClGrenade",
            "damage":new §&$2§(10)
         },
         "secondaryParams":{"clipClassName":"HomingClGrenadeSplinter"},
         "property":{
            "ammoClass":§2&=§,
            "shardClass":§9"A§,
            "hasTimer":new §?"&§(false),
            "explodeOnStopMoving":false,
            "blinkClassName":"HomingClGrenadeBlink",
            "trailColor":3290880
         },
         "maxShots":3,
         "menuIcon":"IconHomingClGrenade"
      },{
         "id":§+%z§.CLUSTER_BOMB_UPG_2B,
         "name":"CL_GRENADE.NAME.U2B",
         "description":"CL_GRENADE.DESCR.U2B",
         "maxdamage":"CL_GRENADE.DAMAGE.U2B",
         "hint":"",
         "note":"",
         "iconClassName":"ClGrenadeMine",
         "render":{"clipClass":"ClGrenadeMine"},
         "params":{"clipClassName":"AmClGrenadeMine"},
         "property":{
            "ammoClass":§2&=§,
            "shardClass":§4Y§,
            "hasTimer":new §?"&§(false),
            "blinkClassName":"ClGrenadeMineBlink",
            "trailColor":9312023
         },
         "maxShots":4,
         "menuIcon":"IconClGrenadeMine"
      },{
         "id":§+%z§.§?$w§,
         "name":"MORTAR.NAME.U1",
         "description":"MORTAR.DESCR.U1",
         "maxdamage":"MORTAR.DAMAGE.U1",
         "iconClassName":"MortarUpg1",
         "render":{
            "clipClass":"MortarUpg1",
            "charParams":{"default":{
               "x":-2,
               "y":7,
               "hideHands":"both"
            }}
         },
         "params":{
            "clipClassName":"AmMortarUpg1",
            "damage":new §&$2§(45)
         },
         "property":{
            "trajectoryCrosshair":new §?"&§(true),
            "cleverShards":new §?"&§(true)
         },
         "maxShots":6,
         "menuIcon":"IconMortarUpg1"
      },{
         "id":§+%z§.MORTAR_UPG2A_RADIUS,
         "name":"MORTAR.NAME.U2A",
         "description":"MORTAR.DESCR.U2A",
         "maxdamage":"MORTAR.DAMAGE.U2A",
         "hint":"",
         "iconClassName":"MortarRadius",
         "render":{"clipClass":"MortarRadius"},
         "params":{
            "clipClassName":"AmMortarRadius",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(90),
            "explosionRadius":new §&$2§(65)
         },
         "secondaryParams":{
            "damage":new §&$2§(35),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(30)
         },
         "menuIcon":"IconMortarUpgRadius"
      },{
         "id":§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,
         "name":"MORTAR.NAME.U2B",
         "description":"MORTAR.DESCR.U2B",
         "maxdamage":"MORTAR.DAMAGE.U2B",
         "iconClassName":"MortarDoubleShot",
         "hint":"",
         "render":{"clipClass":"MortarDoubleShot"},
         "params":{
            "clipClassName":"AmMortarDoubleShot",
            "damage":new §&$2§(40)
         },
         "property":{"additionalMissile":1},
         "menuIcon":"IconMortarDoubleShot"
      },{
         "id":§+%z§.§4!r§,
         "name":"SHURIKEN.NAME.U1",
         "description":"SHURIKEN.DESCR.U1",
         "maxdamage":"SHURIKEN.DAMAGE.U1",
         "iconClassName":"ShurikenUpg1",
         "render":{"clipClass":"ShurikenUpg1"},
         "shotsPerTurn":5,
         "params":{"clipClassName":"AmShurikenUpg1"},
         "menuIcon":"IconShurikenUpg1"
      },{
         "id":§+%z§.SHURIKEN_U2A_TRAJECTORY,
         "name":"SHURIKEN.NAME.U2A",
         "description":"SHURIKEN.DESCR.U2A",
         "maxdamage":"SHURIKEN.DAMAGE.U2A",
         "hint":"",
         "iconClassName":"ShurikenTrajectory",
         "render":{"clipClass":"ShurikenTrajectory"},
         "params":{
            "clipClassName":"AmShurikenTrajectory",
            "damage":new §&$2§(22)
         },
         "property":{
            "power":new §&$2§(35),
            "trajectoryCrosshair":new §?"&§(true),
            "noTrail":true
         },
         "menuIcon":"IconShurikenTrajectory"
      },{
         "id":§+%z§.SHURIKEN_U2B_SAW,
         "name":"SHURIKEN.NAME.U2B",
         "description":"SHURIKEN.DESCR.U2B",
         "maxdamage":"SHURIKEN.DAMAGE.U2B",
         "hint":"",
         "iconClassName":"ShurikenSaw",
         "render":{"clipClass":"ShurikenSaw"},
         "params":{
            "clipClassName":"AmShurikenSaw",
            "damage":new §&$2§(12)
         },
         "property":{"classShuriken":ShurikenSaw},
         "maxShots":5,
         "menuIcon":"IconShurikenSaw"
      },{
         "id":§+%z§.STICKY_GRENADE_UPG_1,
         "name":"STICKY_GRENADE.NAME.U1",
         "description":"STICKY_GRENADE.DESCR.U1",
         "maxdamage":"STICKY_GRENADE.DAMAGE.U1",
         "render":{"clipClass":"StickyBombUpg1"},
         "iconClassName":"StickyBombUpg1",
         "params":{"clipClassName":"AmStickyBombUpg1"},
         "property":{
            "quantityShards":new §&$2§(8),
            "blinkClassName":"StickyBombUpg1Blink",
            "trailColor":8603136
         },
         "menuIcon":"IconStickyBombUpg1"
      },{
         "id":§+%z§.STICKY_GRENADE_UPG_2A_POISON,
         "name":"STICKY_GRENADE.NAME.U2A",
         "description":"STICKY_GRENADE.DESCR.U2A",
         "maxdamage":"STICKY_GRENADE.DAMAGE.U2A",
         "hint":"",
         "render":{"clipClass":"PoisonStickyBomb"},
         "iconClassName":"PoisonStickyBomb",
         "params":{"clipClassName":"AmPoisonStickyBomb"},
         "secondaryParams":{"damage":new §&$2§(25)},
         "property":{
            "shardClass":§+$B§,
            "ammoClass":§;8§,
            "blinkClassName":"PoisonStickyBombBlink",
            "trailColor":5611520
         },
         "maxShots":5,
         "menuIcon":"IconPoisonStickyBomb",
         "titleIcon":§+"'§.§ "1§
      },{
         "id":§+%z§.STICKY_GRENADE_UPG_2B,
         "name":"STICKY_GRENADE.NAME.U2B",
         "description":"STICKY_GRENADE.DESCR.U2B",
         "maxdamage":"STICKY_GRENADE.DAMAGE.U2B",
         "hint":"",
         "render":{"clipClass":"StickyBombMine"},
         "iconClassName":"StickyBombMine",
         "params":{"clipClassName":"AmStickyBombMine"},
         "secondaryParams":{
            "clipClassName":"AmStickBombMineSplinter",
            "damage":new §&$2§(25),
            "damageRadius":new §&$2§(50)
         },
         "property":{
            "shardClass":§'$e§,
            "blinkClassName":"StickyBombMineBlink",
            "trailColor":11993088
         },
         "maxShots":4,
         "menuIcon":"IconStickyBombMine"
      },{
         "id":§+%z§.SNIPER_RIFLE_UPG_1,
         "name":"SNIPER_RIFLE.NAME.U1",
         "maxdamage":"SNIPER_RIFLE.DAMAGE.U1",
         "iconClassName":"SniperRifleUpgSight",
         "render":{"clipClass":"SniperRifleUpgSight"},
         "params":{"damage":new §&$2§(110)},
         "property":{
            "rayLength":new §&$2§(600),
            "angleFluct":Math.PI / 288,
            "colorLaser":12009742
         },
         "menuIcon":"IconSniperRifleUpgSight"
      },{
         "id":§+%z§.§^&6§,
         "name":"SHOTGUN.NAME.U1",
         "description":"SHOTGUN.DESCR.U1",
         "maxdamage":"SHOTGUN.DAMAGE.U1",
         "iconClassName":"ShotgunUpg1",
         "render":{"clipClass":"ShotgunUpg1"},
         "params":{"ammosByShot":new §&$2§(9)},
         "property":{
            "quantityBullets":new §&$2§(9),
            "trailColor":16776960
         },
         "maxShots":4,
         "menuIcon":"IconShotgunUpg1"
      },{
         "id":§+%z§.SHOTGUN_U2A_SLOWING,
         "name":"SHOTGUN.NAME.U2A",
         "description":"SHOTGUN.DESCR.U2A",
         "maxdamage":"SHOTGUN.DAMAGE.U2A",
         "hint":"",
         "iconClassName":"SlowingShotgun",
         "render":{"clipClass":"SlowingShotgun"},
         "params":{"damage":new §&$2§(15)},
         "property":{
            "quantityBullets":new §&$2§(10),
            "classBullet":§0#Z§,
            "trailColor":12009742
         },
         "maxShots":4,
         "menuIcon":"IconSlowingShotgun"
      },{
         "id":§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,
         "name":"SHOTGUN.NAME.U2B",
         "description":"SHOTGUN.DESCR.U2B",
         "maxdamage":"SHOTGUN.DAMAGE.U2B",
         "hint":"",
         "iconClassName":"ShotgunDoubleShot",
         "render":{"clipClass":"ShotgunDoubleShot"},
         "params":{
            "damage":new §&$2§(14),
            "ammosByShot":new §&$2§(6)
         },
         "property":{"quantityBullets":new §&$2§(6)},
         "maxShots":4,
         "shotsPerTurn":2,
         "menuIcon":"IconShotgunDoubleShot"
      },{
         "id":§+%z§.§`L§,
         "name":"MINIGUN.NAME.U1",
         "description":"MINIGUN.DESCR.U1",
         "maxdamage":"MINIGUN.DAMAGE.U1",
         "iconClassName":"MinigunUpg1",
         "render":{"clipClass":"MinigunUpg1"},
         "params":{"damage":new §&$2§(8)},
         "property":{
            "trailColor":16776960,
            "straightBullets":5
         },
         "maxShots":4,
         "menuIcon":"IconMinigunUpg1"
      },{
         "id":§+%z§.MINIGUN_U2A_REDUCE_ARMOR,
         "name":"MINIGUN.NAME.U2A",
         "description":"MINIGUN.DESCR.U2A",
         "maxdamage":"MINIGUN.DAMAGE.U2A",
         "hint":"",
         "iconClassName":"MinigunReduceArmor",
         "render":{"clipClass":"MinigunReduceArmor"},
         "property":{
            "classBullet":§0#q§,
            "reduceAmount":new §&$2§(2),
            "trailColor":12009742
         },
         "maxShots":4,
         "menuIcon":"IconMinigunReduceArmor",
         "titleIcon":§+"'§.§[!;§
      },{
         "id":§+%z§.MINIGUN_U2B_ROCKET,
         "name":"MINIGUN.NAME.U2B",
         "description":"MINIGUN.DESCR.U2B",
         "maxdamage":"MINIGUN.DAMAGE.U2B",
         "hint":"",
         "classname":"HomingMinigun",
         "iconClassName":"RocketMinigun",
         "render":{"clipClass":"RocketMinigun"},
         "property":{"quantityBullets":new §&$2§(10)},
         "params":{
            "clipClassName":"AmMortarDoubleShot",
            "damage":new §&$2§(20),
            "explosionRadius":new §&$2§(20)
         },
         "maxShots":4,
         "menuIcon":"IconRocketMinigun"
      },{
         "id":§+%z§.BAZOOKA_UPG_1,
         "name":"BAZOOKA.NAME.U1",
         "description":"BAZOOKA.DESCR.U1",
         "maxdamage":"BAZOOKA.DAMAGE.U1",
         "iconClassName":"BazookaUpg1",
         "render":{"clipClass":"BazookaUpg1"},
         "menuIcon":"IconBazookaUpg1",
         "params":{
            "clipClassName":"AmBazookaUpg1",
            "damage":new §&$2§(70)
         }
      },{
         "id":§+%z§.BAZOOKA_UPG_2_CUMULATIVE,
         "name":"BAZOOKA.NAME.U2",
         "description":"BAZOOKA.DESCR.U2",
         "maxdamage":"BAZOOKA.DAMAGE.U2",
         "iconClassName":"CumulativeBazooka",
         "render":{"clipClass":"CumulativeBazooka"},
         "menuIcon":"IconCumulativeBazooka",
         "property":{"ammoClass":§&!M§},
         "params":{
            "clipClassName":"AmCumulativeBazooka",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(60)
         }
      },{
         "id":§+%z§.GRENADE_UPG_1_STUFFED_BOUNCING,
         "name":"GRENADE.NAME.U1",
         "description":"GRENADE.DESCR.U1",
         "maxdamage":"GRENADE.DAMAGE.U1",
         "iconClassName":"StuffedBouncingGrenade",
         "render":{"clipClass":"StuffedBouncingGrenade"},
         "menuIcon":"IconStuffedBouncingGrenade",
         "params":{"clipClassName":"AmStuffedBouncingGrenade"},
         "property":{
            "ammoClass":StuffedBouncingGrenade,
            "multiBurst":new §&$2§(2),
            "blinkClassName":"StuffedBouncingGrenadeBlink",
            "trailColor":5995327
         }
      },{
         "id":§+%z§.GRENADE_UPG_2_STUN,
         "name":"GRENADE.NAME.U2",
         "description":"GRENADE.DESCR.U2",
         "maxdamage":"GRENADE.DAMAGE.U2",
         "note":"",
         "iconClassName":"GrenadeUpg2",
         "render":{"clipClass":"GrenadeUpg2"},
         "menuIcon":"IconGrenadeUpg2",
         "params":{"clipClassName":"AmGrenadeUpg2"},
         "property":{
            "multiBurst":new §&$2§(3),
            "cripple":true,
            "blinkClassName":"GrenadeUpg2Blink",
            "explodeOnCollide":"true",
            "trailColor":7801097
         }
      },{
         "id":§+%z§.RIFLE_UPG_1,
         "name":"RIFLE.NAME.U1",
         "description":"RIFLE.DESCR.U1",
         "maxdamage":"RIFLE.DAMAGE.U1",
         "iconClassName":"RifleUpg2",
         "render":{
            "clipClass":"RifleUpg2",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconRifleUpg2",
         "params":{"damage":new §&$2§(35)},
         "property":{"trajectoryCrosshair":new §?"&§(true)}
      },{
         "id":§+%z§.HOMING_BAZOOKA_UPG_1,
         "name":"HOMING.NAME.U1",
         "description":"HOMING.DESCR.U1",
         "maxdamage":"HOMING.DAMAGE.U1",
         "iconClassName":"HomingBazookaUpg1",
         "render":{"clipClass":"HomingBazookaUpg1"},
         "menuIcon":"IconHomingBazookaUpg1",
         "property":{
            "ammoClass":§]"e§,
            "damagePerFrame":new §&$2§(2)
         },
         "params":{"clipClassName":"AmHomingBazookaUpg1"}
      },{
         "id":§+%z§.HOMING_BAZOOKA_UPG_2,
         "name":"HOMING.NAME.U2",
         "description":"HOMING.DESCR.U2",
         "maxdamage":"HOMING.DAMAGE.U2",
         "iconClassName":"HomingBazookaUpg2",
         "render":{"clipClass":"HomingBazookaUpg2"},
         "menuIcon":"IconHomingBazookaUpg2",
         "property":{"damagePerFrame":new §&$2§(4)},
         "params":{"clipClassName":"AmHomingBazookaUpg2"}
      },{
         "id":§+%z§.ELECTRIC_HARPOON_UPG_1,
         "name":"HARPOON.NAME.U1",
         "description":"HARPOON.DESCR.U1",
         "maxdamage":"HARPOON.DAMAGE.U1",
         "iconClassName":"MainElectricHarpoonTrajectory",
         "render":{"clipClass":"MainElectricHarpoonTrajectory"},
         "menuIcon":"IconElectricHarpoonTrajectory",
         "property":{"trajectoryCrosshair":new §?"&§(true)},
         "params":{
            "clipClassName":"MainElectricHarpoonTrajectoryTip",
            "damage":new §&$2§(45)
         }
      },{
         "id":§+%z§.ELECTRIC_HARPOON_UPG_2A,
         "name":"HARPOON.NAME.U2A",
         "description":"HARPOON.DESCR.U2A",
         "maxdamage":"HARPOON.DAMAGE.U2A",
         "iconClassName":"ElectricHarpoonUpg2",
         "render":{"clipClass":"ElectricHarpoonUpg2"},
         "menuIcon":"IconElectricHarpoonUpg2",
         "params":{
            "clipClassName":"ElectricHarpoonUpg2Tip",
            "damage":new §&$2§(25)
         },
         "property":{"dragDamage":new §&$2§(16)}
      },{
         "id":§+%z§.ELECTRIC_HARPOON_UPG_2B,
         "name":"HARPOON.NAME.U2B",
         "description":"HARPOON.DESCR.U2B",
         "maxdamage":"HARPOON.DAMAGE.U2B",
         "iconClassName":"ElectricHarpoonUpg2B",
         "render":{"clipClass":"ElectricHarpoonUpg2B"},
         "menuIcon":"IconElectricHarpoonUpg2B",
         "params":{
            "clipClassName":"ElectricHarpoonUpg2BTip",
            "damage":new §&$2§(30)
         },
         "property":{
            "drill":true,
            "dragDamage":new §&$2§(12),
            "lengthCoeff":0.7
         }
      },{
         "id":§+%z§.BLOW_TORCH_UPG_1,
         "name":"BLOW_TORCH.NAME.U1",
         "description":"BLOW_TORCH.DESCR.U1",
         "maxdamage":"BLOW_TORCH.DAMAGE.U1",
         "iconClassName":"BlowTorchUpg1",
         "render":{
            "clipClass":"BlowTorchUpg1",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconBlowTorchUpg1",
         "params":{"clipClassName":"AmBlowTorchUpg1"},
         "property":{"drillDistance":new §&$2§(104)}
      },{
         "id":§+%z§.BLOW_TORCH_UPG_2,
         "name":"BLOW_TORCH.NAME.U2",
         "description":"BLOW_TORCH.DESCR.U2",
         "classname":"BlowTorch",
         "iconClassName":"BlowTorchUpg2",
         "render":{"clipClass":"BlowTorchUpg2"},
         "menuIcon":"IconBlowTorchUpg2",
         "params":{"clipClassName":"AmBlowTorchUpg2"},
         "property":{"setPlug":true}
      },{
         "id":§+%z§.MINE_UPG_1,
         "name":"MINE.NAME.U1",
         "maxdamage":"MINE.DAMAGE.U1",
         "iconClassName":"MineUpg1",
         "render":{"clipClass":"MineUpg1"},
         "menuIcon":"IconMineUpg1",
         "params":{
            "clipClassName":"AmMineUpg1",
            "damage":new §&$2§(50)
         }
      },{
         "id":§+%z§.MINE_UPG_2,
         "name":"MINE.NAME.U2",
         "maxdamage":"MINE.DAMAGE.U2",
         "iconClassName":"MineUpg2",
         "render":{"clipClass":"MineUpg2"},
         "menuIcon":"IconMineUpg2",
         "params":{
            "clipClassName":"AmMineUpg2",
            "damage":new §&$2§(55),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(50)
         }
      },{
         "id":§+%z§.§6!x§,
         "name":"UZI.NAME.U1",
         "description":"UZI.DESCR.U1",
         "maxdamage":"UZI.DAMAGE.U1",
         "iconClassName":"UziUpg1",
         "render":{"clipClass":"UziUpg1"},
         "menuIcon":"IconUziUpg1",
         "params":{"damage":new §&$2§(6)},
         "property":{"trailColor":12009742},
         "maxShots":5
      },{
         "id":§+%z§.LASER_BARRIER_UPG_1,
         "name":"BARRIER.NAME.U1",
         "iconClassName":"LaserBarrierUpg1",
         "render":{"clipClass":"LaserBarrierUpg1"},
         "menuIcon":"IconLaserBarrierUpg1",
         "maxShots":5,
         "params":{"clipClassName":"AmLaserBarrierUpg1"}
      },{
         "id":§+%z§.HOLY_GRENADE_UPG_1,
         "name":"HOLY_GRENADE.NAME.U1",
         "maxdamage":"HOLY_GRENADE.DAMAGE.U1",
         "iconClassName":"HolyGrenadeUpg1",
         "render":{"clipClass":"HolyGrenadeUpg1"},
         "menuIcon":"IconHolyGrenadeUpg1",
         "params":{
            "clipClassName":"AmHolyGrenadeUpg1",
            "damage":new §&$2§(135),
            "damageRadius":new §&$2§(155),
            "explosionRadius":new §&$2§(125)
         }
      },{
         "id":§+%z§.SPIDER_UPG_1A,
         "name":"SPIDER.NAME.U1A",
         "description":"SPIDER.DESCR.U1A",
         "maxdamage":"SPIDER.DAMAGE.U1A",
         "hint":"",
         "iconClassName":"SpiderUpg1",
         "render":{"clipClass":"SpiderUpg1"},
         "menuIcon":"IconSpiderUpg1",
         "params":{"clipClassName":"AmSpiderUpg1"},
         "property":{"classMine":§6%#§}
      },{
         "id":§+%z§.DYNAMITE_U1A_BUNCH,
         "name":"DYNAMITE.NAME.U1A",
         "description":"DYNAMITE.DESCR.U1A",
         "maxdamage":"DYNAMITE.DAMAGE.U1A",
         "menuIcon":"IconDynamiteUpg1",
         "iconClassName":"DynamiteUpg1",
         "render":{
            "type":"clip",
            "clipClass":"DynamiteUpg1",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "property":{"classDynamite":§@&+§},
         "maxShots":5,
         "params":{"clipClassName":"AmDynamiteUpg1"},
         "secondaryParams":{
            "clipClassName":"AmDynamite",
            "damage":new §&$2§(65),
            "damageRadius":new §&$2§(82),
            "explosionRadius":new §&$2§(60),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.DYNAMITE_U1B_KAMIKAZE,
         "name":"DYNAMITE.NAME.U1B",
         "description":"DYNAMITE.DESCR.U1B",
         "maxdamage":"DYNAMITE.DAMAGE.U1B",
         "hint":"",
         "menuIcon":"IconDynamiteUpg2",
         "iconClassName":"DynamiteUpg2",
         "render":{
            "type":"clip",
            "clipClass":"DynamiteUpg2",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "maxShots":4,
         "classname":"KamikazeDynamite",
         "property":{
            "extraCooldownWeapons":[§+%z§.SWAP_TELEPORT],
            "extraCooldownValue":§6#7§.§@"3§.value,
            "unspendingTurn":true
         },
         "params":{
            "damage":new §&$2§(70),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(40),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.CANNON_UPG_1,
         "name":"CANNON.NAME.U1",
         "description":"CANNON.DESCR.U1",
         "maxdamage":"CANNON.DAMAGE.U1",
         "hint":"",
         "menuIcon":"IconCannonUpg1",
         "iconClassName":"CannonUpg1",
         "render":{
            "type":"clip",
            "clipClass":"CannonUpg1",
            "charParams":{"default":{
               "x":0,
               "y":6.5,
               "hideHands":"both"
            }}
         },
         "property":{
            "moveAfterShot":true,
            "trailColor":4408131
         },
         "params":{
            "clipClassName":"AmCannon",
            "damage":new §&$2§(100)
         }
      },{
         "id":§+%z§.CANNON_UPG_2,
         "name":"CANNON.NAME.U2",
         "description":"CANNON.DESCR.U2",
         "maxdamage":"CANNON.DAMAGE.U2",
         "hint":"",
         "menuIcon":"IconCannonUpg2",
         "render":{
            "type":"clip",
            "clipClass":"CannonUpg2",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "property":{
            "trajectoryCrosshair":new §?"&§(true),
            "slowing":true,
            "trailColor":15966208
         },
         "params":{
            "clipClassName":"AmCannonUpg2",
            "damage":new §&$2§(115)
         }
      },{
         "id":§+%z§.SHOCKER_UPG_1,
         "name":"SHOCKER.NAME.U1",
         "description":"SHOCKER.DESCR.U1",
         "maxdamage":"SHOCKER.DAMAGE.U1",
         "menuIcon":"IconShockerUpg1",
         "iconClassName":"ShockerUpg1",
         "render":{"clipClass":"ShockerUpg1"},
         "params":{"damage":new §&$2§(50)},
         "maxShots":5,
         "property":{"slowing":true}
      },{
         "id":§+%z§.CARPET_BAZOOKA_UPG_1,
         "name":"CARPET_BAZOOKA.NAME.U1",
         "description":"CARPET_BAZOOKA.DESCR.U1",
         "maxdamage":"CARPET_BAZOOKA.DAMAGE.U1",
         "menuIcon":"IconCarpetBazookaUpg1",
         "iconClassName":"CarpetBazookaUpg1",
         "render":{
            "type":"clip",
            "clipClass":"CarpetBazookaUpg1",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "maxShots":4,
         "property":{
            "damageForBounce":new §&$2§(0),
            "autoTargeting":true
         },
         "params":{"clipClassName":"AmCarpetUpg1"}
      },{
         "id":§+%z§.CARPET_BAZOOKA_UPG_2A,
         "name":"CARPET_BAZOOKA.NAME.U2A",
         "maxdamage":"CARPET_BAZOOKA.DAMAGE.U2A",
         "menuIcon":"IconCarpetBazookaUpg2A",
         "iconClassName":"CarpetBazookaUpg2A",
         "render":{
            "type":"clip",
            "clipClass":"CarpetBazookaUpg2A",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "maxShots":4,
         "property":{"maxBounce":new §&$2§(4)},
         "params":{"clipClassName":"AmCarpetUpg2A"}
      },{
         "id":§+%z§.CARPET_BAZOOKA_UPG_2B,
         "name":"CARPET_BAZOOKA.NAME.U2B",
         "description":"CARPET_BAZOOKA.DESCR.U2B",
         "maxdamage":"CARPET_BAZOOKA.DAMAGE.U2B",
         "menuIcon":"IconCarpetBazookaUpg2B",
         "titleIcon":§+"'§.§9#f§,
         "iconClassName":"CarpetBazookaUpg2B",
         "render":{
            "type":"clip",
            "clipClass":"CarpetBazookaUpg2B",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "maxShots":4,
         "property":{"classCarpet":§0L§},
         "params":{
            "clipClassName":"AmCarpetUpg2B",
            "damage":new §&$2§(40)
         }
      },{
         "id":§+%z§.GIRDER_U1_ELASTIC,
         "name":"GIRDER.NAME.U1",
         "note":"GIRDER.NOTE.U1",
         "menuIcon":"IconGirderUpg1",
         "iconClassName":"",
         "property":{
            "resizable":new §?"&§(true),
            "clipGirder":"GirderHUpg1"
         }
      },{
         "id":§+%z§.SHEEP_U1A_CONTROLLED,
         "classname":"ControlledSheepWeapon",
         "name":"SHEEP.NAME.U1A",
         "description":"SHEEP.DESCR.U1A",
         "maxdamage":"SHEEP.DAMAGE.U1A",
         "menuIcon":"IconSheepUpgradeA",
         "iconClassName":"SheepUpgradeA",
         "render":{
            "type":"clip",
            "clipClass":"SheepUpgradeA",
            "charParams":{"default":{
               "hideHands":"both",
               "x":0,
               "y":-26
            }}
         },
         "params":{
            "clipClassName":"AmSheepUpgradeA",
            "damage":new §&$2§(140),
            "explosionRadius":new §&$2§(90)
         },
         "property":{"bounceSounds":[§`!v§.§;!?§]}
      },{
         "id":§+%z§.SHEEP_U1B_BURNING,
         "name":"SHEEP.NAME.U1B",
         "description":"SHEEP.DESCR.U1B",
         "maxdamage":"SHEEP.DAMAGE.U1B",
         "menuIcon":"IconSheepUpgradeB",
         "titleIcon":§+"'§.§9#f§,
         "iconClassName":"SheepUpgradeB",
         "render":{
            "type":"clip",
            "clipClass":"SheepUpgradeB",
            "charParams":{"default":{
               "hideHands":"both",
               "x":0,
               "y":-26
            }}
         },
         "firstShotDelay":1,
         "cooldown":1,
         "property":{"classSheep":§="M§},
         "params":{
            "clipClassName":"AmSheepUpgradeB",
            "damage":new §&$2§(30)
         }
      },{
         "id":§+%z§.EMERGENCY_TELEPORT_UPG_1,
         "name":"EMERGENCY_TELEPORT.NAME.U1",
         "menuIcon":"IconEmergencyTeleportUpg1",
         "iconClassName":"",
         "render":{"clipClass":"EmergencyTeleportUpg1"},
         "property":{"teleportRadius":new §&$2§(1000)}
      },{
         "id":§+%z§.EMERGENCY_TELEPORT_UPG_2,
         "name":"EMERGENCY_TELEPORT.NAME.U2",
         "description":"EMERGENCY_TELEPORT.DESCR.U2",
         "menuIcon":"IconEmergencyTeleportUpg2",
         "iconClassName":"",
         "render":{"clipClass":"EmergencyTeleportUpg2"},
         "property":{"mindDangerObj":new §?"&§(true)}
      },{
         "id":§+%z§.BOOMERANG_UPG_1,
         "name":"BOOMERANG.NAME.U1",
         "maxdamage":"BOOMERANG.DAMAGE.U1",
         "menuIcon":"IconBoomerangUpg1",
         "iconClassName":"BoomerangUpg1",
         "render":{"clipClass":"BoomerangUpg1"},
         "params":{"clipClassName":"AmBoomerangUpg1"},
         "property":{"secondHitBonus":new §&$2§(15)}
      },{
         "id":§+%z§.BOOMERANG_UPG_2,
         "name":"BOOMERANG.NAME.U2",
         "description":"BOOMERANG.DESCR.U2",
         "maxdamage":"BOOMERANG.DAMAGE.U2",
         "menuIcon":"IconBoomerangUpg2",
         "iconClassName":"BoomerangUpg2",
         "render":{"clipClass":"BoomerangUpg2"},
         "params":{
            "damage":new §&$2§(75),
            "clipClassName":"AmBoomerangUpg2"
         },
         "property":{"knockHat":new §?"&§(true)}
      },{
         "id":§+%z§.§?"4§,
         "name":"TELE_THROWER.NAME.U1",
         "description":"TELE_THROWER.DESCR.U1",
         "menuIcon":"TeleportThrowerIconUpg1",
         "iconClassName":"TeleportThrowerIconUpg1",
         "render":{"clipClass":"TeleportThrowerUpg1"},
         "params":{"clipClassName":"AmTeleportThrowerUpg1"},
         "property":{
            "blinkClassName":"TeleportThrowerBlinkUpg1",
            "teleportOnButton":new §?"&§(true)
         }
      },{
         "id":§+%z§.ANTIFREEZE_U1_POISON_CURE,
         "name":"ANTIFREEZE.NAME.U1",
         "description":"ANTIFREEZE.DESCR.U1",
         "menuIcon":"AntifreezeIconUpg1",
         "titleIcon":[§+"'§.§-"G§,§+"'§.§?j§,§+"'§.§^%H§,§+"'§.§]M§],
         "iconClassName":"AntifreezeClipUpg1",
         "render":{"clipClass":"AntifreezeClipUpg1"},
         "params":{"damage":new §&$2§(60)},
         "property":{"poisonProtection":new §?"&§(true)}
      },{
         "id":§+%z§.ANTIFREEZE_U2A_ATTACK,
         "name":"ANTIFREEZE.NAME.U2A",
         "description":"ANTIFREEZE.DESCR.U2A",
         "menuIcon":"AntifreezeIconAttackUpg",
         "titleIcon":[§+"'§.§-"G§,§+"'§.§?j§,§+"'§.§^%H§,§+"'§.§]M§,§+"'§.§+!1§],
         "iconClassName":"AntifreezeClipAttackUpg",
         "render":{"clipClass":"AntifreezeClipAttackUpg"},
         "params":{"damage":new §&$2§(70)},
         "property":{"burstAttack":new §&$2§(30)}
      },{
         "id":§+%z§.ANTIFREEZE_U2B_ARMOR,
         "name":"ANTIFREEZE.NAME.U2B",
         "description":"ANTIFREEZE.DESCR.U2B",
         "menuIcon":"AntifreezeIconArmorUpg",
         "titleIcon":[§+"'§.§-"G§,§+"'§.§?j§,§+"'§.§^%H§,§+"'§.§]M§,§+"'§.§,<§],
         "iconClassName":"AntifreezeClipArmorUpg",
         "render":{"clipClass":"AntifreezeClipArmorUpg"},
         "params":{"damage":new §&$2§(70)},
         "property":{"burstArmor":new §&$2§(30)}
      },{
         "id":§+%z§.DRILL_UPG_1,
         "name":"PNEUMATIC_DRILL.NAME.U1",
         "description":"PNEUMATIC_DRILL.DESCR.U1",
         "menuIcon":"IconPneumaticDrillUpg1",
         "iconClassName":"PneumaticDrillUpg1",
         "render":{"clipClass":"PneumaticDrillUpg1"},
         "property":{"setPlug":true},
         "params":{"clipClassName":"AmPneumaticDrillUpg1"}
      },{
         "id":§+%z§.PARASITE_UPG_1,
         "name":"PARASITE.NAME.U1",
         "description":"PARASITE.DESCR.U1",
         "iconClassName":"ParasiteUpg1",
         "menuIcon":"IconParasiteUpg1",
         "titleIcon":§+"'§.§51§,
         "property":{
            "ammoClass":§6&4§,
            "blinkClip":"ParasiteAttachedBlinkUpg1",
            "attachedClip":"ParasiteBlinkUpg1",
            "switchTurnCooldownEnemy":new §?"&§(false)
         },
         "render":{"clipClass":"ParasiteUpg1"},
         "params":{"clipClassName":"AmParasiteUpg1"}
      },{
         "id":§+%z§.RIFLE_UPG_2,
         "name":"RIFLE.NAME.U2",
         "description":"RIFLE.DESCR.U2",
         "iconClassName":"RifleUpg1",
         "render":{
            "clipClass":"RifleUpg1",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconRifleUpg1",
         "titleIcon":§+"'§.§[!;§,
         "property":{
            "classBullet":§0#q§,
            "reduceAmount":new §&$2§(8)
         }
      },{
         "id":§+%z§.SNIPER_RIFLE_UPG_2A,
         "name":"SNIPER_RIFLE.NAME.U2A",
         "description":"SNIPER_RIFLE.DESCR.U2A",
         "maxdamage":"SNIPER_RIFLE.DAMAGE.U2A",
         "iconClassName":"SniperRifleUpg2A",
         "render":{"clipClass":"SniperRifleUpg2A"},
         "params":{"damage":new §&$2§(130)},
         "property":{
            "armorReduction":new §&$2§(40),
            "colorLaser":10957065
         },
         "maxShots":4,
         "menuIcon":"IconSniperRifleUpg2A",
         "titleIcon":§+"'§.§[!;§
      },{
         "id":§+%z§.SNIPER_RIFLE_UPG_2B,
         "name":"SNIPER_RIFLE.NAME.U2B",
         "description":"SNIPER_RIFLE.DESCR.U2B",
         "maxdamage":"SNIPER_RIFLE.DAMAGE.U2B",
         "iconClassName":"SniperRifleUpg2B",
         "render":{"clipClass":"SniperRifleUpg2B"},
         "params":{"damage":new §&$2§(120)},
         "property":{
            "antidodge":new §?"&§(true),
            "alwaysCrit":new §?"&§(true),
            "colorLaser":10957065,
            "angleFluct":Math.PI / 512,
            "damageReduction":new §&$2§(7)
         },
         "maxShots":4,
         "menuIcon":"IconSniperRifleUpg2B",
         "titleIcon":§+"'§.§6%T§
      },{
         "id":§+%z§.§<!J§,
         "name":"AIR_STRIKE.NAME.U1",
         "description":"AIR_STRIKE.DESCR.U1",
         "maxdamage":"AIR_STRIKE.DAMAGE.U1",
         "firstShotDelay":3,
         "params":{
            "damage":new §&$2§(60),
            "clipClassName":"AirBombUpg1"
         },
         "property":{"isHoming":new §?"&§(true)},
         "menuIcon":"IconAirBombUpg1"
      },{
         "id":§+%z§.BLOCKER_UPG_1,
         "name":"NEGATOR.NAME.U1",
         "description":"NEGATOR.DESCR.U1",
         "property":{
            "duration":new §&$2§(8),
            "idleClipName":"HealBlockerIdleUpg1"
         },
         "iconClassName":"BlockerClipUpg1",
         "render":{"clipClass":"BlockerClipUpg1"},
         "params":{"clipClassName":"BlockerClipUpg1"},
         "menuIcon":"BlockerIconUpg1"
      },{
         "id":§+%z§.BLOCKER_UPG_2A_DARK,
         "name":"NEGATOR.NAME.U2A",
         "description":"NEGATOR.DESCR.U2A",
         "maxdamage":"NEGATOR.DAMAGE.U2A",
         "property":{
            "ammoClass":§+%D§,
            "idleClipName":"HealBlockerIdleUpg2A"
         },
         "iconClassName":"BlockerClipUpg2A",
         "render":{"clipClass":"BlockerClipUpg2A"},
         "params":{"clipClassName":"BlockerClipUpg2A"},
         "menuIcon":"BlockerIconUpg2A"
      },{
         "id":§+%z§.BLOCKER_UPG_2B_LIGHT,
         "name":"NEGATOR.NAME.U2B",
         "description":"NEGATOR.DESCR.U2B",
         "property":{
            "ammoClass":§0%2§,
            "idleClipName":"HealBlockerIdleUpg2B"
         },
         "render":{"clipClass":"BlockerClipUpg2B"},
         "params":{"clipClassName":"BlockerClipUpg2B"},
         "iconClassName":"BlockerClipUpg2B",
         "menuIcon":"BlockerIconUpg2B",
         "titleIcon":§+"'§.§]%a§
      },{
         "id":§+%z§.§-%1§,
         "name":"THUNDERBOLT.NAME.U1",
         "description":"THUNDERBOLT.DESCR.U1",
         "maxdamage":"THUNDERBOLT.DAMAGE.U1",
         "cooldown":2,
         "params":{"damage":new §&$2§(105)},
         "property":{"ammoClass":§["J§},
         "render":{"clipClass":"ThunderBoltUpg1"},
         "menuIcon":"IconThunderboltUpg1"
      },{
         "id":§+%z§.GAS_GRENADE_UPG_1A,
         "name":"GAS_GRENADE.NAME.U1A",
         "description":"GAS_GRENADE.DESCR.U1A",
         "maxdamage":"GAS_GRENADE.DAMAGE.U1A",
         "note":"",
         "render":{"clipClass":"GasGrenadeUpg1"},
         "menuIcon":"IconGasGrenadeUpg1",
         "titleIcon":§+"'§.§ "1§,
         "params":{"clipClassName":"AmGasGrenadeUpg1"},
         "property":{
            "cloudClipName":"GasCloudUpg1",
            "explodeOnDemand":new §?"&§(true),
            "maxPoisonDamage":75,
            "cloudRadius":93
         }
      },{
         "id":§+%z§.SHOCKER_UPG_2,
         "name":"SHOCKER.NAME.U2",
         "description":"SHOCKER.DESCR.U2",
         "maxdamage":"SHOCKER.DAMAGE.U2",
         "menuIcon":"IconShockerUpg2",
         "render":{"clipClass":"ShockerUpg2"},
         "property":{"jump":new §?"&§(true)},
         "maxShots":4
      },{
         "id":§+%z§.BUNKER_BUSTER_UPG_1,
         "name":"BUNKER_BUSTER.NAME.U1",
         "description":"BUNKER_BUSTER.DESCR.U1",
         "maxdamage":"BUNKER_BUSTER.DAMAGE.U1",
         "render":{
            "clipClass":"BunkerBusterUpg1Control",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconBunkerBreakerUpg1",
         "titleIcon":[§+"'§.§"%A§,§+"'§.§9#f§,§+"'§.§[!;§],
         "params":{
            "clipClassName":"AmBunkerBreakerUpg1",
            "damage":new §&$2§(45)
         },
         "property":{
            "counter":new §&$2§(23),
            "armorReduction":new §&$2§(30)
         }
      },{
         "id":§+%z§.§<!;§,
         "name":"METEOR.NAME.U1",
         "description":"METEOR.DESCR.U1",
         "maxdamage":"METEOR.DAMAGE.U1",
         "menuIcon":"IconMeteorUpg1",
         "property":{
            "shards":new §&$2§(2),
            "missiles":new §&$2§(3)
         },
         "params":{"damage":new §&$2§(55)},
         "firstShotDelay":3
      },{
         "id":§+%z§.TELEPORT_UPG_1A,
         "name":"TELEPORT.NAME.U1A",
         "description":"TELEPORT.DESCR.U1A",
         "maxdamage":"TELEPORT.DAMAGE.U1A",
         "render":{"clipClass":"TeleportUpg1a"},
         "menuIcon":"IconTeleportUpg1a",
         "params":{"damage":new §&$2§(35)},
         "property":{"sourceLocationDamage":new §?"&§(true)}
      },{
         "id":§+%z§.§ %L§,
         "name":"MOLOTOV.NAME.U1",
         "description":"MOLOTOV.DESCR.U1",
         "property":{
            "explodeOnDemand":new §?"&§(true),
            "fireCount":new §&$2§(50),
            "trailColor":14159360
         },
         "render":{"clipClass":"MolotovUpg1"},
         "params":{"clipClassName":"AmMolotovUpg1"},
         "menuIcon":"IconMolotovUpg1"
      },{
         "id":§+%z§.AK_47_UPG_1A,
         "name":"AK_47.NAME.U1A",
         "maxdamage":"AK_47.DAMAGE.U1A",
         "property":{
            "bullets":new §&$2§(3),
            "armorReduction":new §&$2§(10)
         },
         "shotsPerTurn":3,
         "render":{"clipClass":"KalashUpg1"},
         "menuIcon":"IconKalashUpg1"
      },{
         "id":§+%z§.§5#w§,
         "name":"CARPET_STRIKE.NAME.U1",
         "description":"CARPET_STRIKE.DESCR.U1",
         "maxdamage":"CARPET_STRIKE.DAMAGE.U1",
         "property":{"targets":new §&$2§(2)},
         "render":{
            "type":"clip",
            "clipClass":"CarpetStrikeUpg1Control",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "params":{"clipClassName":"AmCarpetStrikeUpg1"},
         "firstShotDelay":3,
         "menuIcon":"IconCarpetStrikeUpg1"
      },{
         "id":§+%z§.LASER_GUN_UPG_1,
         "name":"LASER_GUN.NAME.U1",
         "description":"LASER_GUN.DESCR.U1",
         "property":{
            "armorReduction":new §&$2§(25),
            "rayColor":"0x0a81ff"
         },
         "render":{
            "clipClass":"LaserGunUpg1",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "params":{"clipClassName":"LaserFireUpg1"},
         "menuIcon":"IconLaserGunUpg1",
         "titleIcon":§+"'§.§[!;§
      },{
         "id":§+%z§.LASER_GUN_UPG_2A,
         "name":"LASER_GUN.NAME.U2A",
         "description":"LASER_GUN.DESCR.U2A",
         "maxdamage":"LASER_GUN.DAMAGE.U2A",
         "property":{
            "armorReduction":new §&$2§(40),
            "bullets":new §&$2§(40),
            "rayColor":"0xff163c"
         },
         "render":{"clipClass":"LaserGunUpg2A"},
         "params":{"clipClassName":"LaserFireUpg2A"},
         "menuIcon":"IconLaserGunUpg2A",
         "titleIcon":§+"'§.§[!;§
      },{
         "id":§+%z§.LASER_GUN_UPG_2B,
         "name":"LASER_GUN.NAME.U2B",
         "description":"LASER_GUN.DESCR.U2B",
         "maxdamage":"LASER_GUN.DAMAGE.U2B",
         "property":{
            "burning":new §?"&§(true),
            "rayLength":new §&$2§(700),
            "rayColor":"0xffeea1"
         },
         "render":{
            "clipClass":"LaserGunUpg2B",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "params":{
            "clipClassName":"LaserFireUpg2B",
            "damage":new §&$2§(4)
         },
         "menuIcon":"IconLaserGunUpg2B",
         "titleIcon":§+"'§.§9#f§
      },{
         "id":§+%z§.§ P§,
         "name":"NAPALM_STRIKE.NAME.U1",
         "maxdamage":"NAPALM_STRIKE.DAMAGE.U1",
         "property":{"missiles":new §&$2§(6)},
         "render":{
            "type":"clip",
            "clipClass":"NapalmStrikeUpg1Control",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "firstShotDelay":3,
         "params":{
            "clipClassName":"AmNapalmBombUpg1",
            "damage":new §&$2§(25)
         },
         "menuIcon":"IconNapalmUpg1"
      },{
         "id":§+%z§.ROPE_UPG_1,
         "name":"ROPE.NAME.U1",
         "property":{
            "extraLength":true,
            "ropeSpeed":new §&$2§(80)
         },
         "render":{
            "clipClass":"RopeUpg1",
            "charParams":{"default":{
               "x":-4.3,
               "y":-3.6,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconRopeUpg1",
         "params":{"clipClassName":"RopeTipUpg1"}
      },{
         "id":§+%z§.GRAVITY_GUN_UPG_1,
         "name":"GRAVITY_GUN.NAME.U1",
         "maxdamage":"GRAVITY_GUN.DAMAGE.U1",
         "render":{
            "clipClass":"GravityGunUpg1",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconGravityGunUpg1",
         "property":{"trajectoryCrosshair":new §?"&§(true)},
         "params":{"damage":new §&$2§(30)}
      },{
         "id":§+%z§.UFO_UPG_1,
         "name":"UFO.NAME.U1",
         "maxdamage":"UFO.DAMAGE.U1",
         "menuIcon":"IconUfoUpg1",
         "params":{
            "clipClassName":"AmFlightUpg1",
            "damage":new §&$2§(85)
         },
         "property":{"maxFuel":new §&$2§(3000)}
      },{
         "id":§+%z§.UFO_UPG_2,
         "name":"UFO.NAME.U2",
         "description":"UFO.DESCR.U2",
         "maxdamage":"UFO.DAMAGE.U2",
         "menuIcon":"IconUfoUpg2",
         "params":{
            "clipClassName":"AmFlightUpg2",
            "damage":new §&$2§(95)
         },
         "property":{"canCarryUnits":true}
      },{
         "id":§+%z§.SUPER_SHEEP_UPG_1,
         "name":"SUPER_SHEEP.NAME.U1",
         "description":"SUPER_SHEEP.DESCR.U1",
         "maxdamage":"SUPER_SHEEP.DAMAGE.U1",
         "menuIcon":"IconSuperSheepUpg1",
         "iconClassName":"SuperSheepUpg1",
         "render":{"clipClass":"SuperSheepUpg1"},
         "params":{"damage":new §&$2§(100)},
         "property":{
            "cripple":true,
            "clips":["AmSuperSheepLeftUpg1","AmSuperSheepRightUpg1","AmSuperSheepUpUpg1"]
         }
      },{
         "id":§+%z§.SUPER_SHEEP_UPG_2,
         "name":"SUPER_SHEEP.NAME.U2",
         "description":"SUPER_SHEEP.DESCR.U2",
         "maxdamage":"SUPER_SHEEP.DAMAGE.U2",
         "menuIcon":"IconSuperSheepUpg2",
         "iconClassName":"SuperSheepUpg2",
         "render":{"clipClass":"SuperSheepUpg2"},
         "params":{"damage":new §&$2§(110)},
         "property":{
            "groundBreaks":new §&$2§(6),
            "clips":["AmSuperSheepLeftUpg2","AmSuperSheepRightUpg2","AmSuperSheepUpUpg2"]
         }
      },{
         "id":§+%z§.AK_47_UPG_2A,
         "name":"AK_47.NAME.U2A",
         "description":"AK_47.DESCR.U2A",
         "maxdamage":"AK_47.DAMAGE.U2A",
         "params":{
            "clipClassName":"AmGunStrong3",
            "damage":new §&$2§(18)
         },
         "property":{"armorReduction":new §&$2§(30)},
         "shotsPerTurn":3,
         "render":{"clipClass":"KalashUpg2"},
         "menuIcon":"IconKalashUpg2",
         "titleIcon":§+"'§.§[!;§
      },{
         "id":§+%z§.DRILL_UPG_2,
         "name":"PNEUMATIC_DRILL.NAME.U2",
         "description":"PNEUMATIC_DRILL.DESCR.U2",
         "menuIcon":"IconPneumaticDrillUpg2",
         "iconClassName":"PneumaticDrillUpg2",
         "render":{"clipClass":"PneumaticDrillUpg2"},
         "property":{"allowTorch":true},
         "params":{"clipClassName":"AmPneumaticDrillUpg2"}
      },{
         "id":§+%z§.LASER_BARRIER_UPG_2,
         "name":"BARRIER.NAME.U2",
         "maxdamage":"BARRIER.DAMAGE.U2",
         "iconClassName":"LaserBarrierUpg2",
         "render":{"clipClass":"LaserBarrierUpg2"},
         "menuIcon":"IconLaserBarrierUpg2",
         "maxShots":6,
         "property":{"radiusIncreasing":50},
         "params":{"clipClassName":"AmLaserBarrierUpg2"}
      },{
         "id":§+%z§.BUNKER_BUSTER_UPG_2,
         "name":"BUNKER_BUSTER.NAME.U2",
         "description":"BUNKER_BUSTER.DESCR.U2",
         "maxdamage":"BUNKER_BUSTER.DAMAGE.U2",
         "menuIcon":"IconBunkerBreakerUpg2",
         "params":{
            "clipClassName":"AmBunkerBreakerUpg2",
            "damage":new §&$2§(60)
         },
         "property":{
            "cripple":true,
            "armorReduction":new §&$2§(50)
         }
      },{
         "id":§+%z§.HOLY_GRENADE_UPG_2A_EYE,
         "name":"HOLY_GRENADE.NAME.U2A",
         "description":"HOLY_GRENADE.DESCR.U2A",
         "maxdamage":"HOLY_GRENADE.DAMAGE.U2A",
         "iconClassName":"HolyGrenadeUpg2",
         "render":{"clipClass":"HolyGrenadeUpg2"},
         "menuIcon":"IconHolyGrenadeUpg2",
         "titleIcon":§+"'§.§-"G§,
         "params":{
            "clipClassName":"AmHolyGrenadeUpg2",
            "damage":new §&$2§(160)
         },
         "property":{
            "canRunAway":new §?"&§(true),
            "healing":true
         }
      },{
         "id":§+%z§.GRAVITY_GUN_UPG_2,
         "name":"GRAVITY_GUN.NAME.U2",
         "note":"GRAVITY_GUN.NOTE.U2",
         "description":"GRAVITY_GUN.DESCR.U2",
         "render":{
            "clipClass":"GravityGunUpg2",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconGravityGunUpg2",
         "property":{"attraction":new §?"&§(true)}
      },{
         "id":§+%z§.FREEZING_BAZOOKA_UPG1A,
         "name":"FREEZER.NAME.U1",
         "description":"FREEZER.DESCR.U1",
         "render":{
            "clipClass":"FreezingBazookaUpg1",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconFreezingBazookaUpg1",
         "property":{
            "bonusOnFrozen":true,
            "bonusDamage":0.5,
            "bonusFreeze":1
         },
         "params":{"clipClassName":"AmFreezingBazookaUpg1"}
      },{
         "id":§+%z§.§6#-§,
         "name":"PUSHING_MINE.NAME.U1",
         "description":"PUSHING_MINE.DESCR.U1",
         "render":{"clipClass":"PushingMineUpg1"},
         "menuIcon":"IconPushingMineUpg1",
         "params":{"clipClassName":"AmPushingMineUpg1"},
         "property":{"groundSetup":true}
      },{
         "id":§+%z§.SLEDGEHAMMER_UPG_1,
         "name":"SLEDGEHAMMER.NAME.U1",
         "note":"DOWNGRADE_ON_SHIFT.NOTE",
         "render":{"clipClass":"SledgeHammerUpg1"},
         "params":{"clipClassName":"AmSledgeHammerUpg1"},
         "menuIcon":"IconSledgehammerUpg1",
         "property":{"holeDepth":18}
      },{
         "id":§+%z§.BAT_UPG_1,
         "name":"BAT.NAME.U1",
         "description":"BAT.DESCR.U1",
         "note":"DOWNGRADE_ON_SHIFT.NOTE",
         "render":{"clipClass":"BatUpg1"},
         "params":{"clipClassName":"AmBatUpg1"},
         "menuIcon":"IconBatUpg1",
         "property":{"groundBreak":true}
      },{
         "id":§+%z§.§5!C§,
         "name":"WATERMELON.NAME.U1",
         "description":"WATERMELON.DESCR.U1",
         "note":"",
         "property":{"explodeOnDemand":new §?"&§(true)},
         "render":{"clipClass":"WatermelonUpg1"},
         "params":{"clipClassName":"AmWatermelonUpg1"},
         "secondaryParams":{"clipClassName":"WatermelonPieceUpg1"},
         "menuIcon":"IconWatermelonUpg1"
      },{
         "id":§+%z§.EMERGENCY_TELEPORT_UPG_3A,
         "name":"EMERGENCY_TELEPORT.NAME.U3",
         "description":"EMERGENCY_TELEPORT.DESCR.U3",
         "note":"DOWNGRADE_ON_SHIFT.NOTE",
         "menuIcon":"IconEmergencyTeleportUpg3",
         "iconClassName":"",
         "render":{"clipClass":"EmergencyTeleportUpg3"},
         "property":{"toMedkit":new §?"&§(true)}
      },{
         "id":§+%z§.GIRDER_U2_TACTIC,
         "name":"GIRDER.NAME.U2",
         "menuIcon":"IconGirderUpg2",
         "property":{
            "reducedAngle":new §?"&§(true),
            "clipGirder":"GirderHUpg2"
         }
      },{
         "id":§+%z§.ROPE_UPG_2,
         "name":"ROPE.NAME.U2",
         "description":"ROPE.DESCR.U2",
         "note":"ROPE.NOTE.U2",
         "property":{
            "supplyPickup":new §?"&§(true),
            "gunClip":"AmRopeUpg2"
         },
         "render":{"clipClass":"RopeUpg2"},
         "menuIcon":"IconRopeUpg2",
         "params":{"clipClassName":"RopeTipUpg2"}
      },{
         "id":§+%z§.SLEDGEHAMMER_UPG_1B,
         "name":"SLEDGEHAMMER.NAME.U1B",
         "description":"SLEDGEHAMMER.DESCR.U1B",
         "render":{"clipClass":"SledgeHammerUpg1B"},
         "params":{"clipClassName":"AmSledgeHammerUpg1B"},
         "menuIcon":"IconSledgehammerUpg1B",
         "titleIcon":§+"'§.§[!;§,
         "property":{"statsReduction":new §&$2§(20)}
      },{
         "id":§+%z§.SUPER_SHEEP_UPG_2B,
         "name":"SUPER_SHEEP.NAME.U2B",
         "description":"SUPER_SHEEP.DESCR.U2B",
         "menuIcon":"IconSuperSheepUpg2B",
         "iconClassName":"SuperSheepUpg2B",
         "render":{"clipClass":"SuperSheepUpg2B"},
         "property":{
            "damagePerSupply":new §&$2§(55),
            "flySpeedPercent":new §&$2§(90),
            "flyTimeBonusSeconds":new §&$2§(5),
            "clips":["AmSuperSheepLeftUpg2B","AmSuperSheepRightUpg2B","AmSuperSheepUpUpg2B"]
         }
      },{
         "id":§+%z§.SNOWFLAKE_STRIKE_UPG_1,
         "name":"SNOWFLAKE_STRIKE.NAME.U1",
         "description":"SNOWFLAKE_STRIKE.DESCR.U1",
         "menuIcon":"IconSnowflakeUpg1",
         "property":{"missiles":new §&$2§(9)}
      },{
         "id":§+%z§.SNOWFLAKE_STRIKE_UPG_2A,
         "name":"SNOWFLAKE_STRIKE.NAME.U2A",
         "description":"SNOWFLAKE_STRIKE.DESCR.U2A",
         "maxdamage":"SNOWFLAKE_STRIKE.DAMAGE.U2A",
         "menuIcon":"IconSnowflakeUpg2A",
         "params":{
            "clipClassName":"AmSnowflakeUpg2A",
            "damage":new §&$2§(35)
         },
         "property":{
            "dontMindWind":new §?"&§(true),
            "trailLength":6,
            "trailWidth":8,
            "trailColor":4381183
         }
      },{
         "id":§+%z§.SNOWFLAKE_STRIKE_UPG_2B_RAIN,
         "name":"SNOWFLAKE_STRIKE.NAME.U2B",
         "description":"SNOWFLAKE_STRIKE.DESCR.U2B",
         "menuIcon":"IconSnowflakeUpg2B",
         "params":{"clipClassName":"AmSnowflakeUpg2B"},
         "property":{
            "freezingDuration":new §&$2§(5),
            "missiles":new §&$2§(11),
            "ignoreMagnet":new §?"&§(true),
            "trailColor":13301247
         }
      },{
         "id":§+%z§.TELEPORT_ANCHOR_UPG_1,
         "name":"TELEPORT_ANCHOR.NAME.U1",
         "description":"TELEPORT_ANCHOR.DESCR.U1",
         "menuIcon":"AnchorTeleportIconUpg1",
         "render":{
            "type":"clip",
            "clipClass":"AnchorTeleportUpg1",
            "charParams":{"default":{
               "x":-8,
               "y":9,
               "hideHands":"right"
            }}
         },
         "params":{"clipClassName":"AnchorTeleportMarkUpg1"},
         "property":{"lifetime":new §&$2§(30 * 10)}
      },{
         "id":§+%z§.TELEPORT_ANCHOR_UPG_2,
         "name":"TELEPORT_ANCHOR.NAME.U2",
         "description":"TELEPORT_ANCHOR.DESCR.U2",
         "menuIcon":"AnchorTeleportIconUpg2",
         "render":{
            "type":"clip",
            "clipClass":"AnchorTeleportUpg2",
            "charParams":{"default":{
               "x":-8,
               "y":9,
               "hideHands":"right"
            }}
         },
         "params":{"clipClassName":"AnchorTeleportMarkUpg2"},
         "property":{"lifetime":new §&$2§(30 * 14)}
      },{
         "id":§+%z§.§+%x§,
         "name":"GIRDER_GUN.NAME.U1",
         "render":{
            "type":"clip",
            "clipClass":"GirderGunUpg1",
            "charParams":{"default":{
               "x":0,
               "y":0,
               "hideHands":"both"
            }}
         },
         "menuIcon":"GirderGunIconUpg1",
         "maxShots":3,
         "params":{"clipClassName":"GirderAmmoUpg1"}
      },{
         "id":§+%z§.§"%P§,
         "name":"FIRE_THROWER.NAME.U1",
         "description":"FIRE_THROWER.DESCR.U1",
         "maxdamage":"FIRE_THROWER.DAMAGE.U1",
         "iconClassName":"FireThrowUpg1",
         "render":{
            "type":"clip",
            "clipClass":"FireThrowUpg1",
            "charParams":{"default":{
               "y":5,
               "hideHands":"both"
            }},
            "secondaryClip":{
               "clipClass":"FireThrowBagUpg1",
               "charParams":{
                  "cat":{"x":-3},
                  "default":{
                     "x":-3,
                     "y":2
                  }
               }
            }
         },
         "menuIcon":"IconFireThrowUpg1",
         "classname":"FireThrower",
         "params":{
            "clipClassName":"FireShot",
            "damage":new §&$2§(4)
         },
         "property":{
            "weaponControlEnabled":new §?"&§(true),
            "bullets":new §&$2§(15)
         }
      },{
         "id":§+%z§.DRILL_GUN_UPG_1,
         "name":"DRILL.NAME.U1",
         "description":"DRILL.DESCR.U1",
         "maxdamage":"DRILL.DAMAGE.U1",
         "iconClassName":"DrillUpg1",
         "render":{
            "type":"clip",
            "clipClass":"DrillUpg1",
            "charParams":{"default":{
               "x":-9.2,
               "y":-0.9,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconDrillUpg1",
         "titleIcon":§+"'§.§[!;§,
         "params":{
            "clipClassName":"AmDrillUpg1",
            "damage":new §&$2§(75)
         },
         "property":{"armorReduction":new §&$2§(20)}
      },{
         "id":§+%z§.DRILL_GUN_UPG_2,
         "name":"DRILL.NAME.U2",
         "description":"DRILL.DESCR.U2",
         "maxdamage":"DRILL.DAMAGE.U2",
         "iconClassName":"DrillUpg2",
         "render":{
            "type":"clip",
            "clipClass":"DrillUpg2",
            "charParams":{"default":{
               "x":-9.2,
               "y":-0.9,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconDrillUpg2",
         "params":{
            "clipClassName":"AmDrillUpg2",
            "damage":new §&$2§(90)
         },
         "property":{"homingEnabled":new §?"&§(true)}
      },{
         "id":§+%z§.PARASITE_UPG_2,
         "name":"PARASITE.NAME.U2",
         "description":"PARASITE.DESCR.U2",
         "hint":"PARASITE.HINT.U2",
         "iconClassName":"ParasiteUpg2",
         "menuIcon":"IconParasiteUpg2",
         "property":{
            "ammoClass":§"#J§,
            "blinkClip":"ParasiteAttachedBlinkUpg2",
            "attachedClip":"ParasiteBlinkUpg2"
         },
         "render":{"clipClass":"ParasiteUpg2"},
         "params":{"clipClassName":"AmParasiteUpg2"}
      },{
         "id":§+%z§.BOULDER_UPG_1,
         "name":"BOULDER.NAME.U1",
         "description":"BOULDER.DESCR.U1",
         "iconClassName":"BoulderShopIconUpg1",
         "menuIcon":"BoulderShopIconUpg1",
         "classname":"BoulderWeapon",
         "render":{"clipClass":"BoulderUpg1"},
         "params":{"clipClassName":"BoulderBallUpg1"},
         "property":{"ammoClass":§7$`§}
      },{
         "id":§+%z§.TELEPORT_UPG_1B,
         "name":"TELEPORT.NAME.U1B",
         "description":"TELEPORT.DESCR.U1B",
         "note":"TELEPORT.NOTE.U1B",
         "hint":"TELEPORT.HINT.U1B",
         "render":{"clipClass":"TeleportUpg1b"},
         "menuIcon":"IconTeleportUpg1b",
         "titleIcon":§+"'§.§-"G§,
         "property":{
            "sourceLocationDamage":new §?"&§(true),
            "placeUndergroundDisabled":new §?"&§(true),
            "allowAntiFreeze":new §?"&§(true),
            "healBonus":new §&$2§(40)
         }
      },{
         "id":§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,
         "name":"GUARDING_BOT.NAME.U1A",
         "description":"GUARDING_BOT.DESCR.U1A",
         "property":{"mineClass":§[#m§},
         "render":{"clipClass":"GuardingBotNinja"},
         "params":{"clipClassName":"AmGuardingBotNinja"},
         "iconClassName":"AmGuardingBotNinja",
         "menuIcon":"IconGuardingBotNinja"
      },{
         "id":§+%z§.GUARDING_BOT_UPG_1B_STICKY,
         "name":"GUARDING_BOT.NAME.U1B",
         "description":"GUARDING_BOT.DESCR.U1B",
         "classname":"ThrowableMineWeapon",
         "property":{
            "mineClass":§1&0§,
            "dontSpendTurn":true,
            "isDefensive":true,
            "trailWidth":8,
            "trailColor":12397593
         },
         "render":{"clipClass":"GuardingBotSticky"},
         "params":{"clipClassName":"AmGuardingBotSticky"},
         "iconClassName":"AmGuardingBotSticky",
         "menuIcon":"IconGuardingBotSticky"
      },{
         "id":§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,
         "name":"AIR_BLOCKER.NAME.U1",
         "description":"AIR_BLOCKER.DESCR.U1",
         "property":{"ammoClass":§2"A§},
         "render":{"clipClass":"AirBlockerClipUpg1"},
         "params":{"clipClassName":"AirBlockerClipUpg1"},
         "iconClassName":"AirBlockerClipUpg1",
         "menuIcon":"AirBlockerIconUpg1"
      },{
         "id":§+%z§.BOULDER_UPG_2,
         "name":"BOULDER.NAME.U2",
         "description":"BOULDER.DESCR.U2",
         "iconClassName":"BoulderShopIconUpg2",
         "menuIcon":"BoulderShopIconUpg2",
         "classname":"BoulderWeapon",
         "property":{"friendlyFire":new §?"&§(true)},
         "render":{"clipClass":"BoulderUpg2"},
         "params":{"clipClassName":"BoulderBallUpg2"}
      },{
         "id":§+%z§.FREEZING_BAZOOKA_UPG2A,
         "name":"FREEZER.NAME.U2A",
         "description":"FREEZER.DESCR.U2A",
         "maxdamage":"FREEZER.DAMAGE.U2A",
         "render":{
            "clipClass":"FreezingBazookaUpg2A",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconFreezingBazookaUpg2A",
         "params":{"damage":new §&$2§(60)},
         "property":{
            "bonusOnSlowed":true,
            "targetSearch":true,
            "bonusDamage":0.8
         }
      },{
         "id":§+%z§.FREEZING_BAZOOKA_UPG1B,
         "name":"FREEZER.NAME.U1B",
         "description":"FREEZER.DESCR.U1B",
         "maxdamage":"FREEZER.DAMAGE.U1B",
         "render":{
            "clipClass":"FreezingBazookaUpg1B",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconFreezingBazookaUpg1B",
         "params":{
            "damage":new §&$2§(20),
            "clipClassName":"AmFreezingBazookaUpg1"
         },
         "property":{"bonusFreezeFirstShot":-1},
         "shotsPerTurn":2
      },{
         "id":§+%z§.FREEZING_BAZOOKA_UPG2B,
         "name":"FREEZER.NAME.U2B",
         "description":"FREEZER.DESCR.U2B",
         "maxdamage":"FREEZER.DAMAGE.U2B",
         "render":{
            "clipClass":"FreezingBazookaUpg2B",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconFreezingBazookaUpg2B",
         "params":{"damage":new §&$2§(30)},
         "property":{"trajectoryCrosshair":true}
      },{
         "id":§+%z§.GAS_GRENADE_UPG_1B,
         "name":"GAS_GRENADE.NAME.U1B",
         "description":"GAS_GRENADE.DESCR.U1B",
         "render":{"clipClass":"GasGrenadeUpg1B"},
         "menuIcon":"IconGasGrenadeUpg1B",
         "titleIcon":§+"'§.§]$[§,
         "params":{"clipClassName":"AmGasGrenadeUpg1B"},
         "property":{
            "cloudClipName":"GasCloudUpg1B",
            "slowing":true,
            "cloudClass":§[$!§
         }
      },{
         "id":§+%z§.SPIDER_UPG_1B_FROST,
         "name":"SPIDER.NAME.U1B",
         "description":"SPIDER.DESCR.U1B",
         "maxdamage":"SPIDER.DAMAGE.U1B",
         "hint":"",
         "note":"",
         "render":{"clipClass":"SpiderUpg1B"},
         "menuIcon":"IconSpiderUpg1B",
         "titleIcon":§+"'§.§]$[§,
         "params":{"clipClassName":"AmSpiderUpg1B"},
         "property":{"classMine":§5%d§}
      },{
         "id":§+%z§.HOLY_GRENADE_UPG_2B_POLAR,
         "name":"HOLY_GRENADE.NAME.U2B",
         "description":"HOLY_GRENADE.DESCR.U2B",
         "maxdamage":"HOLY_GRENADE.DAMAGE.U2B",
         "render":{"clipClass":"HolyGrenadeUpg2B"},
         "menuIcon":"IconHolyGrenadeUpg2B",
         "titleIcon":§+"'§.§]$[§,
         "params":{
            "clipClassName":"AmHolyGrenadeUpg2B",
            "damage":new §&$2§(80),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(50)
         },
         "property":{
            "canRunAway":new §?"&§(true),
            "freezing":true
         }
      },{
         "id":§+%z§.AIR_BLOCKER_UPG_1B_FROST,
         "name":"AIR_BLOCKER.NAME.U1B",
         "description":"AIR_BLOCKER.DESCR.U1B",
         "menuIcon":"AirBlockerIconUpg1B",
         "titleIcon":[§+"'§.§]$[§,§+"'§.§5%Z§],
         "property":{"ammoClass":§6%v§},
         "render":{"clipClass":"AirBlockerClipUpg1B"},
         "params":{"clipClassName":"AirBlockerClipUpg1B"}
      },{
         "id":§+%z§.SOUL_GUN_UPG_1,
         "name":"SOUL_GUN.NAME.U1",
         "maxdamage":"SOUL_GUN.DAMAGE.U1",
         "iconClassName":"SoulGunUpg1",
         "render":{"clipClass":"SoulGunUpg1"},
         "menuIcon":"SoulGunIconUpg1",
         "property":{
            "distanceBonus":0.15,
            "maxDamageBonus":new §&$2§(1),
            "multiplyDamageBonus":new §&$2§(1)
         }
      },{
         "id":§+%z§.SOUL_GUN_UPG_2A_HEAL,
         "name":"SOUL_GUN.NAME.U2A",
         "description":"SOUL_GUN.DESCR.U2A",
         "maxdamage":"SOUL_GUN.DAMAGE.U2A",
         "note":"SOUL_GUN.ON_SHIFT.NOTE",
         "iconClassName":"SoulGunUpg2a",
         "render":{"clipClass":"SoulGunUpg2a"},
         "menuIcon":"SoulGunIconUpg2a",
         "titleIcon":§+"'§.§-"G§,
         "params":{"damage":new §&$2§(5)},
         "property":{
            "maxDamageBonus":new §&$2§(2),
            "allyHealing":new §?"&§(true),
            "firstTargetHealing":new §?"&§(true),
            "firstTargetDamage":new §?"&§(true)
         }
      },{
         "id":§+%z§.SOUL_GUN_UPG_2B_POISON,
         "name":"SOUL_GUN.NAME.U2B",
         "maxdamage":"SOUL_GUN.DAMAGE.U2B",
         "description":"SOUL_GUN.DESCR.U2B",
         "iconClassName":"SoulGunUpg2b",
         "render":{"clipClass":"SoulGunUpg2b"},
         "menuIcon":"SoulGunIconUpg2b",
         "titleIcon":§+"'§.§ "1§,
         "property":{
            "maxDamageBonus":new §&$2§(-2),
            "firstTargetPoison":new §?"&§(true)
         }
      },{
         "id":§+%z§.BAT_UPG_2A,
         "name":"BAT.NAME.U2A",
         "description":"BAT.DESCR.U2A",
         "note":"DOWNGRADE_ON_SHIFT.NOTE",
         "render":{"clipClass":"BatUpg2a"},
         "params":{"clipClassName":"AmBatUpg2a"},
         "menuIcon":"IconBatUpg2a",
         "property":{"changeRace":new §?"&§(true)}
      },{
         "id":§+%z§.BAT_UPG_2B,
         "name":"BAT.NAME.U2B",
         "description":"BAT.DESCR.U2B",
         "note":"DOWNGRADE_ON_SHIFT.NOTE",
         "render":{"clipClass":"BatUpg2b"},
         "params":{"clipClassName":"AmBatUpg2b"},
         "menuIcon":"IconBatUpg2b",
         "property":{"knockHat":new §?"&§(true)}
      },{
         "id":§+%z§.AK_47_UPG_1B_SNOWBALL,
         "name":"AK_47.NAME.U1B",
         "description":"AK_47.DESCR.U1B",
         "maxdamage":"AK_47.DAMAGE.U1B",
         "property":{
            "bullets":new §&$2§(5),
            "notPenetrate":true,
            "trailColor":13694463
         },
         "shotsPerTurn":2,
         "render":{"clipClass":"KalashUpg1B"},
         "params":{
            "clipClassName":"AmSnowball",
            "damage":new §&$2§(12)
         },
         "menuIcon":"IconKalashUpg1B",
         "titleIcon":§+"'§.§]$[§
      },{
         "id":§+%z§.AK_47_UPG_2B_MOROZKO,
         "name":"AK_47.NAME.U2B",
         "description":"AK_47.DESCR.U2B",
         "maxdamage":"AK_47.DAMAGE.U2B",
         "property":{"slowing":true},
         "render":{"clipClass":"KalashUpg2B"},
         "params":{
            "clipClassName":"AmIcicle",
            "damage":new §&$2§(14)
         },
         "menuIcon":"IconKalashUpg2B"
      },{
         "id":§+%z§.GRAVITY_GUN_UPG_3,
         "name":"GRAVITY_GUN.NAME.U3",
         "description":"GRAVITY_GUN.DESCR.U3",
         "maxdamage":"GRAVITY_GUN.DAMAGE.U3",
         "render":{
            "clipClass":"GravityGunUpg3",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconGravityGunUpg3",
         "property":{
            "attraction":new §?"&§(true),
            "attractionDamage":new §&$2§(180),
            "attractionDamageType":§&!E§.§=$-§
         },
         "params":{"damage":new §&$2§(40)}
      },{
         "id":§+%z§.EMERGENCY_TELEPORT_UPG_3B,
         "name":"EMERGENCY_TELEPORT.NAME.U3B",
         "description":"EMERGENCY_TELEPORT.DESCR.U3B",
         "note":"DOWNGRADE_ON_SHIFT.NOTE",
         "menuIcon":"IconEmergencyTeleportUpg3B",
         "iconClassName":"",
         "render":{"clipClass":"EmergencyTeleportUpg3B"},
         "property":{"destroyGuardians":new §?"&§(true)}
      },{
         "id":§+%z§.§'&<§,
         "name":"GROUNDBREAKER.NAME.U1",
         "hint":"GROUNDBREAKER.HINT.U1",
         "render":{
            "type":"clip",
            "clipClass":"FugasRocketBazookaUpg1",
            "charParams":{"default":{
               "x":-6.5,
               "y":12.5,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconFugasRocketUpg1",
         "params":{"clipClassName":"AmFugasRocketUpg1"},
         "property":{"reduceRandom":true}
      },{
         "id":§+%z§.BOULDER_UPG_3_SKY,
         "name":"BOULDER.NAME.U3",
         "description":"BOULDER.DESCR.U3",
         "hint":"BOULDER.HINT.U3",
         "maxdamage":"BOULDER.DAMAGE.U3",
         "iconClassName":"IconSkyBoulder",
         "menuIcon":"IconSkyBoulder",
         "titleIcon":§+"'§.§"%A§,
         "classname":"MeteorStrike",
         "maxShots":2,
         "property":{
            "ammoClass":§8$W§,
            "explosionOnStop":true
         },
         "render":{
            "type":"clip",
            "clipClass":"AirControlBoulder",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "params":{
            "clipClassName":"SkyBoulderBall",
            "explosionRadius":new §&$2§(70)
         }
      },{
         "id":§+%z§.ENERGY_RIFLE_UPG_1,
         "name":"ENERGY_RIFLE.NAME.U1",
         "description":"ENERGY_RIFLE.DESCR.U1",
         "maxdamage":"ENERGY_RIFLE.DAMAGE.U1",
         "iconClassName":"MainEnergyGun1",
         "render":{"clipClass":"MainEnergyGun1"},
         "menuIcon":"IconEnergyGun1",
         "params":{"damage":new §&$2§(70)},
         "property":{
            "bounces":new §&$2§(2),
            "bounceDamage":new §&$2§(20)
         }
      },{
         "id":§+%z§.ENERGY_RIFLE_UPG_2,
         "name":"ENERGY_RIFLE.NAME.U2",
         "maxdamage":"ENERGY_RIFLE.DAMAGE.U2",
         "iconClassName":"MainEnergyGun2",
         "render":{"clipClass":"MainEnergyGun2"},
         "menuIcon":"IconEnergyGun2",
         "params":{"damage":new §&$2§(65)},
         "property":{"bounces":new §&$2§(3)}
      },{
         "id":§+%z§.ENERGY_RIFLE_UPG_3,
         "name":"ENERGY_RIFLE.NAME.U3",
         "maxdamage":"ENERGY_RIFLE.DAMAGE.U3",
         "iconClassName":"MainEnergyGun3",
         "render":{"clipClass":"MainEnergyGun3"},
         "menuIcon":"IconEnergyGun3",
         "params":{"damage":new §&$2§(60)},
         "property":{"bounces":new §&$2§(4)}
      },{
         "id":§+%z§.SNIPER_RIFLE_UPG_3A_DINO,
         "name":"SNIPER_RIFLE.NAME.U3A",
         "description":"SNIPER_RIFLE.DESCR.U3A",
         "maxdamage":"SNIPER_RIFLE.DAMAGE.U3A",
         "iconClassName":"SniperRifleUpg3A",
         "render":{"clipClass":"SniperRifleUpg3A"},
         "params":{
            "clipClassName":"AmGunDino",
            "damage":new §&$2§(140)
         },
         "property":{
            "rayLength":new §&$2§(700),
            "armorReduction":new §&$2§(60),
            "colorLaser":13054325,
            "periodFluct":new §&$2§(15),
            "delayFluct":new §&$2§(15),
            "drillDistance":new §&$2§(25),
            "minDamageDist":200,
            "maxDamageDist":700
         },
         "maxShots":4,
         "menuIcon":"IconSniperRifleUpg3A"
      },{
         "id":§+%z§.SNIPER_RIFLE_UPG_3B_WASP,
         "name":"SNIPER_RIFLE.NAME.U3B",
         "description":"SNIPER_RIFLE.DESCR.U3B",
         "maxdamage":"SNIPER_RIFLE.DAMAGE.U3B",
         "iconClassName":"SniperRifleUpg3B",
         "render":{"clipClass":"SniperRifleUpg3B"},
         "params":{
            "clipClassName":"AmGunWasp",
            "damage":new §&$2§(130)
         },
         "property":{
            "rayLength":new §&$2§(800),
            "colorLaser":13054325,
            "periodFluct":new §&$2§(20),
            "delayFluct":new §&$2§(20),
            "drillDistance":new §&$2§(30),
            "minDamageDist":200,
            "maxDamageDist":700,
            "damageReduction":new §&$2§(4)
         },
         "maxShots":4,
         "menuIcon":"IconSniperRifleUpg3B"
      },{
         "id":§+%z§.GAS_GRENADE_UPG_2A_BIO,
         "name":"GAS_GRENADE.NAME.U2A",
         "description":"GAS_GRENADE.DESCR.U2A",
         "maxdamage":"GAS_GRENADE.DAMAGE.U2A",
         "note":"",
         "render":{"clipClass":"GasGrenadeUpg2"},
         "menuIcon":"IconGasGrenadeUpg2",
         "params":{
            "clipClassName":"AmGasGrenadeUpg2",
            "damageRadius":new §&$2§(70)
         },
         "property":{
            "explodeDamage":new §&$2§(50),
            "explodeDamageType":§&!E§.POISON,
            "onExplodePoisoningReduce":true,
            "cloudRadius":108
         }
      },{
         "id":§+%z§.GAS_GRENADE_UPG_2B_KRIO,
         "name":"GAS_GRENADE.NAME.U2B",
         "description":"GAS_GRENADE.DESCR.U2B",
         "maxdamage":"GAS_GRENADE.DAMAGE.U2B",
         "render":{"clipClass":"GasGrenadeUpg2B"},
         "menuIcon":"IconGasGrenadeUpg2B",
         "params":{
            "clipClassName":"AmGasGrenadeUpg2B",
            "damageRadius":new §&$2§(70)
         },
         "property":{
            "explodeDamage":new §&$2§(50),
            "explodeDamageType":§&!E§.COLD
         }
      },{
         "id":§+%z§.FIREWORK_UPG_1,
         "name":"FIREWORK.NAME.U1",
         "iconClassName":"Firework1",
         "render":{"clipClass":"Firework1"},
         "menuIcon":"IconFirework1",
         "params":{"clipClassName":"AmFirework1"},
         "maxShots":2,
         "property":{
            "clipName":"AniFirework1",
            "extendedCrosshair":true,
            "drillDistance":new §&$2§(100)
         }
      },{
         "id":§+%z§.FIREWORK_UPG_2,
         "name":"FIREWORK.NAME.U2",
         "maxdamage":"FIREWORK.DAMAGE.U2",
         "iconClassName":"Firework2",
         "render":{"clipClass":"Firework2"},
         "menuIcon":"IconFirework2",
         "titleIcon":§+"'§.§`!^§,
         "params":{
            "clipClassName":"AmFirework2",
            "damage":new §&$2§(35)
         },
         "property":{
            "clipName":"AniFirework2",
            "damageType":§&!E§.§=$-§,
            "ignoreMagnet":true
         }
      },{
         "id":§+%z§.PUPPET_U1,
         "name":"PUPPET.NAME.U1",
         "description":"PUPPET.DESCR.U1",
         "iconClassName":"Puppet1",
         "menuIcon":"IconPuppet1",
         "maxShots":2,
         "render":{"clipClass":"Puppet1"},
         "params":{"clipClassName":"AmPuppet1"},
         "property":{
            "attachedClip":"PuppetAttached1",
            "hp":120,
            "trailColor":7487560
         }
      },{
         "id":§+%z§.PUPPET_U2A_CURSED,
         "name":"PUPPET.NAME.U2A",
         "maxdamage":"PUPPET.DAMAGE.U2A",
         "description":"PUPPET.DESCR.U2A",
         "iconClassName":"Puppet2A",
         "menuIcon":"IconPuppet2A",
         "render":{"clipClass":"Puppet2A"},
         "params":{"clipClassName":"AmPuppet2A"},
         "property":{
            "attachedClip":"PuppetAttached2A",
            "allyTrigger":true,
            "trailColor":663356
         }
      },{
         "id":§+%z§.PUPPET_U2B_GHOSTLY,
         "name":"PUPPET.NAME.U2B",
         "description":"PUPPET.DESCR.U2B",
         "iconClassName":"Puppet2B",
         "menuIcon":"IconPuppet2B",
         "render":{"clipClass":"Puppet2B"},
         "params":{"clipClassName":"AmPuppet2B"},
         "property":{
            "attachedClip":"PuppetAttached2B",
            "ignoresTerrain":true,
            "trailLength":12,
            "trailWidth":8,
            "trailColor":13556707
         }
      },{
         "id":§+%z§.THEIF_ATTACK_U1,
         "name":"THEIF_ATTACK.NAME.U1",
         "maxdamage":"THEIF_ATTACK.DAMAGE.U1",
         "description":"THEIF_ATTACK.DESCR.U1",
         "iconClassName":"SpiritGun1",
         "menuIcon":"SpiritGunIcon1",
         "render":{"clipClass":"SpiritGun1"},
         "params":{"clipClassName":"AmSpirit1"},
         "property":{
            "trajectoryCrosshair":new §?"&§(true),
            "extraDamage":true,
            "trailColor":14553104,
            "durationDirect":21,
            "durationArea":13
         }
      },{
         "id":§+%z§.THEIF_ATTACK_U2A_ROCK,
         "name":"THEIF_ATTACK.NAME.U2A",
         "description":"THEIF_ATTACK.DESCR.U2A",
         "iconClassName":"SpiritGun2A",
         "menuIcon":"SpiritGunIcon2A",
         "render":{"clipClass":"SpiritGun2A"},
         "params":{"clipClassName":"AmSpirit2A"},
         "property":{
            "blockIncreaseAttack":true,
            "trailColor":836707,
            "durationDirect":21,
            "durationArea":13
         }
      },{
         "id":§+%z§.THEIF_ATTACK_U2B_INVERSE,
         "name":"THEIF_ATTACK.NAME.U2B",
         "description":"THEIF_ATTACK.DESCR.U2B",
         "note":"DOWNGRADE_ON_SHIFT.NOTE",
         "iconClassName":"SpiritGun2B",
         "menuIcon":"SpiritGunIcon2B",
         "render":{"clipClass":"SpiritGun2B"},
         "params":{"clipClassName":"AmSpirit2B"},
         "property":{
            "inverse":true,
            "trailColor":1037273,
            "durationDirect":21,
            "durationArea":15
         }
      },{
         "id":§+%z§.§=%n§,
         "name":"CIRCUS_CANNON.NAME.U1",
         "description":"CIRCUS_CANNON.DESCR.U1",
         "maxdamage":"CIRCUS_CANNON.DAMAGE.U1",
         "iconClassName":"BigCannonUpg1",
         "menuIcon":"IconBigCannonUpg1",
         "render":{"clipClass":"BigCannonUpg1"},
         "params":{"damage":new §&$2§(180)},
         "property":{
            "trajectoryCrosshair":new §?"&§(true),
            "strickerDamage":new §&$2§(30),
            "upgradeClipNameAppend":"Upg1"
         }
      },{
         "id":§+%z§.§+$I§,
         "name":"DISC_LAUNCHER.NAME.U1",
         "description":"DISC_LAUNCHER.DESCR.U1",
         "maxdamage":"DISC_LAUNCHER.DAMAGE.U1",
         "iconClassName":"HandleDiscgunUpg1",
         "menuIcon":"IconDiscgunUpg1",
         "render":{
            "clipClass":"HandleDiscgunUpg1",
            "charParams":{"default":{
               "x":-3,
               "y":3,
               "hideHands":"both"
            }}
         },
         "classname":"DiscLauncher",
         "params":{
            "clipClassName":"AmDiscgunUpg1",
            "damage":new §&$2§(80)
         },
         "property":{
            "totalBonusDamage":new §&$2§(100),
            "trajectoryCrosshair":new §?"&§(true),
            "ricochetsCrosshair":1
         }
      },{
         "shopState":§^"p§.POWERED,
         "id":§+%z§.HELICOPTER_U1A,
         "name":"HELICOPTER.NAME.U1A",
         "description":"HELICOPTER.DESCR.U1A",
         "menuIcon":"AttackHelicopterIcon",
         "iconClassName":"AirControl",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "params":{"clipClassName":"AttackHelicopter"},
         "property":{
            "pickupOnlyAmmo":new §?"&§(true),
            "maxFuel":new §&$2§(4500),
            "extraMissiles":new §&$2§(2)
         }
      },{
         "id":§+%z§.HELICOPTER_U1B,
         "name":"HELICOPTER.NAME.U1B",
         "description":"HELICOPTER.DESCR.U1B",
         "menuIcon":"ArmoredHelicopterIcon",
         "iconClassName":"AirControl",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "params":{"clipClassName":"ArmoredHelicopter"},
         "property":{
            "maxFuel":new §&$2§(3600),
            "canBeDamaged":new §?"&§(false)
         }
      },{
         "id":§+%z§.§^!4§,
         "name":"VACUUM_GRENADE.NAME.U1",
         "description":"VACUUM_GRENADE.DESCR.U1",
         "iconClassName":"VacuumGrenadeUpg",
         "menuIcon":"VacuumGrenadeUpgIcon",
         "render":{"clipClass":"VacuumGrenadeUpg"},
         "params":{"clipClassName":"AmVacuumGrenadeUpg"},
         "maxShots":1,
         "property":{
            "lifetime":new §&$2§(7),
            "startActivationRadius":new §&$2§(180),
            "maxActivationRadius":new §&$2§(250),
            "activationDuration":new §&$2§(100),
            "trajectoryCrosshair":new §?"&§(true),
            "power":new §&$2§(36),
            "explodeOnDemand":new §?"&§(false),
            "hasTimer":new §?"&§(false),
            "groundBreak":true,
            "releaseOnThreshold":true,
            "ignoreAttackPower":true,
            "ignoreFortitude":true,
            "funnelClip":"VacuumFunnelUpg",
            "funnelFadeClip":"VacuumFunnelUpgFade",
            "trailColor":1052688
         }
      },{
         "id":§+%z§.CANNON_UPG_3A,
         "name":"CANNON.NAME.U3A",
         "description":"CANNON.DESCR.U3A",
         "maxdamage":"CANNON.DAMAGE.U3A",
         "hint":"",
         "menuIcon":"IconCannonUpg3a",
         "iconClassName":"CannonUpg3a",
         "render":{
            "type":"clip",
            "clipClass":"CannonUpg3a",
            "charParams":{"default":{
               "x":0,
               "y":6.5,
               "hideHands":"both"
            }}
         },
         "shotsPerTurn":2,
         "params":{
            "clipClassName":"AmCannon",
            "damage":new §&$2§(90),
            "damageRadius":new §&$2§(100),
            "explosionRadius":new §&$2§(90)
         },
         "property":{
            "ricochetsCrosshair":1,
            "trailColor":4408131
         }
      },{
         "id":§+%z§.CANNON_UPG_3B_STICKY,
         "name":"CANNON.NAME.U3B",
         "description":"CANNON.DESCR.U3B",
         "maxdamage":"CANNON.DAMAGE.U3B",
         "note":"CANNON.DAMAGE.U3B.ON_SHIFT.NOTE",
         "hint":"",
         "menuIcon":"IconCannonUpg3b",
         "render":{
            "type":"clip",
            "clipClass":"CannonUpg3b",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "params":{
            "clipClassName":"AmCannonUpg3b",
            "damage":new §&$2§(115),
            "damageRadius":new §&$2§(125),
            "explosionRadius":new §&$2§(115)
         },
         "property":{
            "stickyAmmo":true,
            "trailColor":4408131
         }
      },{
         "shopState":§^"p§.§9%t§,
         "id":§+%z§.FORCE_FIELD_1_HANDLE,
         "name":"FORCE_FIELD.NAME.U1",
         "description":"FORCE_FIELD.DESCR.U1",
         "iconClassName":"HandleAntimagnetMech",
         "render":{"clipClass":"HandleAntimagnetMech"},
         "menuIcon":"AntimagnetMechIcon",
         "classname":"ThrowableMineWeapon",
         "params":{"clipClassName":"AmAntimagnetMechThrow"},
         "property":{
            "mineClass":§;#&§,
            "staticPlacement":true,
            "trailWidth":8,
            "trailColor":5127202,
            "activatedAmmoClipName":"AmAntimagnetMech",
            "fieldClipName":"AntimagnetMechField"
         }
      },{
         "shopState":§^"p§.§9%t§,
         "id":§+%z§.FORCE_FIELD_2A_MAGNET,
         "name":"FORCE_FIELD.NAME.U2A",
         "description":"FORCE_FIELD.DESCR.U2A",
         "iconClassName":"HandleAntimagnetInverted",
         "render":{"clipClass":"HandleAntimagnetInverted"},
         "menuIcon":"AntimagnetInvertedIcon",
         "params":{"clipClassName":"AmAntimagnetInvertedThrow"},
         "property":{
            "mineClass":§;#&§,
            "invertedForce":true,
            "trailColor":4611229,
            "activatedAmmoClipName":"AmAntimagnetInverted",
            "fieldClipName":"AntimagnetInvertedField",
            "extraCooldownWeapons":[§+%z§.CARPET_STRIKE,§+%z§.§5#w§],
            "extraCooldownValue":§6#7§.§@"3§.value
         }
      },{
         "shopState":§^"p§.§9%t§,
         "id":§+%z§.FORCE_FIELD_2B_POWERED,
         "name":"FORCE_FIELD.NAME.U2B",
         "description":"FORCE_FIELD.DESCR.U2B",
         "iconClassName":"HandleAntimagnetPowered",
         "render":{"clipClass":"HandleAntimagnetPowered"},
         "menuIcon":"AntimagnetPoweredIcon",
         "params":{"clipClassName":"AmAntimagnetPoweredThrow"},
         "property":{
            "mineClass":§;#&§,
            "increasedForce":true,
            "trailColor":13158383,
            "activatedAmmoClipName":"AmAntimagnetPowered",
            "fieldClipName":"AntimagnetPoweredField",
            "extraFieldClipName":"SingularFieldRadius"
         }
      },{"id":§+%z§.§8#f§},{"id":§+%z§.§3"§}];
      
      public function §'"Y§()
      {
         super();
      }
      
      public function §1^§() : Array
      {
         return §;"f§;
      }
   }
}

