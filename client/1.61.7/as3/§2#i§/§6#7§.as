package §2#i§
{
   import § "L§.FirearmTurret;
   import § "L§.MortarTurret;
   import § "L§.§`#r§;
   import § "d§.§,!c§;
   import § %"§.§"%5§;
   import § %f§.§ "r§;
   import § %f§.§;$y§;
   import § %f§.FieryPumpkin;
   import § %f§.GasGrenade;
   import § %f§.MechPuppet;
   import § %f§.Parasite;
   import § %f§.Puppet;
   import § %f§.VacuumGrenade;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §%$n§.§<%<§;
   import §%$n§.§?,§;
   import §%&3§.§'C§;
   import §%&3§.§[$z§;
   import §%&6§.§2$v§;
   import §%&6§.§=!l§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'T§.§!$C§;
   import §+5§.§7!U§;
   import §+5§.Boulder;
   import §+5§.§^$[§;
   import §,"`§.§9#s§;
   import §-%B§.*;
   import §-8§.§`%[§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §3#T§.§!%J§;
   import §3#T§.§;'§;
   import §3#T§.§^!P§;
   import §3#a§.§-!`§;
   import §4$"§.FoulWatermelon;
   import §4$"§.Watermelon;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6_§.§5#t§;
   import §7"Q§.§0$L§;
   import §7$1§.§+%5§;
   import §7$1§.§8&D§;
   import §7$1§.§;!%§;
   import §7$1§.§;$n§;
   import §7$1§.§=!?§;
   import §7$1§.PushingMine;
   import §7$1§.StickyMine;
   import §9%4§.§'!T§;
   import §9%4§.§2&7§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §<!W§.§4!I§;
   import §<!W§.§;!`§;
   import §<!^§.§["l§;
   import §<!f§.§!"<§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §>">§.§<!p§;
   import §?"q§.§""?§;
   import §?"q§.§>$`§;
   import §?"q§.LullabyElixir;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?o§.§!%I§;
   import §@!N§.§-!Y§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[#I§.NailGrenade;
   import §[#I§.§`"O§;
   import §]#b§.§8!d§;
   import §]$v§.§&"I§;
   import §]$v§.§+x§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§]"8§;
   import config.§`!a§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §6#7§ implements §!$A§
   {
      
      public static const §@"3§:§&$2§ = new §&$2§(1);
      
      private static const §]%0§:Object = {};
      
      private static const §;"f§:Array = [{
         "id":§+%z§.BAZOOKA,
         "hideInShop":true,
         "name":"BAZOOKA.NAME",
         "description":"BAZOOKA.DESCR",
         "hint":"BAZOOKA.HINT",
         "maxdamage":"BAZOOKA.DAMAGE",
         "iconClassName":"MainBazooka",
         "render":{
            "type":"clip",
            "clipClass":"MainBazooka",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconMainBazooka",
         "price":0,
         "realprice":0,
         "classname":"Bazooka",
         "infinite":true,
         "params":{
            "clipClassName":"AmMainBazooka",
            "damage":new §&$2§(60),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(45),
            "pushForce":new §&$2§(0)
         },
         "property":{"ammoClass":§?,§}
      },{
         "id":§+%z§.GRENADE,
         "hideInShop":true,
         "name":"GRENADE.NAME",
         "description":"GRENADE.DESCR",
         "hint":"GRENADE.HINT",
         "note":"EXPLOSION_DELAY.NOTE",
         "maxdamage":"GRENADE.DAMAGE",
         "iconClassName":"MainGrenade",
         "menuIcon":"IconMainGrenade",
         "render":{
            "type":"clip",
            "clipClass":"MainGrenade",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "price":10,
         "realprice":0,
         "classname":"Grenade",
         "infinite":true,
         "params":{
            "clipClassName":"AmMainGrenade",
            "damage":new §&$2§(60),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(45),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "ammoClass":§!%I§,
            "blinkClassName":"MainGrenadeBlink",
            "explodeOnStopMoving":true,
            "hasTimer":new §?"&§(false),
            "trailWidth":8,
            "trailColor":11485706
         }
      },{
         "id":§+%z§.DRILL,
         "name":"PNEUMATIC_DRILL.NAME",
         "description":"PNEUMATIC_DRILL.DESCR",
         "note":"PNEUMATIC_DRILL.NOTE",
         "hint":"PNEUMATIC_DRILL.HINT",
         "maxdamage":"PNEUMATIC_DRILL.DAMAGE",
         "iconClassName":"PneumaticDrill",
         "render":{
            "type":"clip",
            "clipClass":"PneumaticDrill",
            "charParams":{"default":{
               "x":0,
               "y":2.8,
               "hideHands":"both"
            }}
         },
         "params":{"clipClassName":"AmPneumaticDrill"},
         "menuIcon":"IconPneumaticDrill",
         "price":200,
         "realprice":2,
         "requiredLevel":3,
         "classname":"Drill",
         "infinite":true,
         "maxShots":4,
         "isComplex":true
      },{
         "id":§+%z§.BLOW_TORCH,
         "hideInShop":true,
         "name":"BLOW_TORCH.NAME",
         "description":"BLOW_TORCH.DESCR",
         "note":"PNEUMATIC_DRILL.NOTE",
         "hint":"BLOW_TORCH.HINT",
         "maxdamage":"BLOW_TORCH.DAMAGE",
         "iconClassName":"MainBlowTorch",
         "render":{
            "type":"clip",
            "clipClass":"MainBlowTorch",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "price":0,
         "realprice":0,
         "classname":"BlowTorch",
         "menuIcon":"IconMainBlowTorch",
         "infinite":true,
         "params":{"clipClassName":"AmMainBlowTorch"},
         "property":{"drillDistance":new §&$2§(80)}
      },{
         "id":§+%z§.DYNAMITE,
         "name":"DYNAMITE.NAME",
         "description":"DYNAMITE.DESCR",
         "hint":"DYNAMITE.HINT",
         "maxdamage":"DYNAMITE.DAMAGE",
         "iconClassName":"Dynamite",
         "render":{
            "type":"clip",
            "clipClass":"Dynamite",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconDynamite",
         "price":200,
         "realprice":2,
         "requiredLevel":2,
         "classname":"Dynamite",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "cooldown":1,
         "params":{
            "clipClassName":"AmDynamite",
            "damage":new §&$2§(75),
            "damageRadius":new §&$2§(90),
            "explosionRadius":new §&$2§(60),
            "pushForce":new §&$2§(0)
         },
         "property":{"classDynamite":§<!p§}
      },{
         "hideInShop":true,
         "id":§+%z§.MINE,
         "name":"MINE.NAME",
         "description":"MINE.DESCR",
         "hint":"MINE.HINT",
         "maxdamage":"MINE.DAMAGE",
         "iconClassName":"MainMine",
         "render":{
            "type":"clip",
            "clipClass":"MainMine",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconMainMine",
         "price":0,
         "realprice":0,
         "requiredLevel":3,
         "classname":"DefaultMineWeapon",
         "infinite":true,
         "maxShots":4,
         "params":{
            "clipClassName":"AmMainMine",
            "damage":new §&$2§(45),
            "damageRadius":new §&$2§(65),
            "explosionRadius":new §&$2§(45),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "mineClass":§;$n§,
            "unspendingTurn":true
         }
      },{
         "id":§+%z§.RIFLE,
         "hideInShop":true,
         "name":"RIFLE.NAME",
         "description":"RIFLE.DESCR",
         "hint":"RIFLE.HINT",
         "maxdamage":"RIFLE.DAMAGE",
         "iconClassName":"MainRifle",
         "render":{
            "type":"clip",
            "clipClass":"MainRifle",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconMainRifle",
         "price":0,
         "realprice":0,
         "classname":"Rifle",
         "infinite":true,
         "shotsPerTurn":2,
         "params":{
            "clipClassName":"AmGun",
            "damage":new §&$2§(30),
            "damageRadius":new §&$2§(45),
            "explosionRadius":new §&$2§(25),
            "pushForce":new §&$2§(0)
         },
         "property":{"trajectoryCrosshair":new §?"&§(false)}
      },{
         "id":§+%z§.ROPE,
         "name":"ROPE.NAME",
         "description":"ROPE.DESCR",
         "note":"ROPE.NOTE",
         "hint":"ROPE.HINT",
         "iconClassName":"Rope",
         "render":{
            "type":"clip",
            "clipClass":"Rope",
            "charParams":{"default":{
               "x":-4.3,
               "y":-3.6,
               "hideHands":"both"
            }}
         },
         "realprice":20,
         "price":2000,
         "requiredLevel":6,
         "classname":"RopeGun",
         "menuIcon":"IconRope",
         "infinite":true,
         "params":{"clipClassName":"RopeTip"},
         "property":{
            "gunClip":"AmRope",
            "unspendingTurn":true
         },
         "hideInShop":true
      },{
         "id":§+%z§.GIRDER,
         "name":"GIRDER.NAME",
         "description":"GIRDER.DESCR",
         "note":"GIRDER.NOTE",
         "hint":"GIRDER.HINT",
         "iconClassName":"IconGirder",
         "render":{
            "type":"clip",
            "clipClass":"",
            "charParams":{"default":{"hideHands":"none"}}
         },
         "realprice":20,
         "price":2000,
         "requiredLevel":7,
         "classname":"Girder",
         "menuIcon":"IconGirder",
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "property":{
            "indestructible":new §?"&§(false),
            "resizable":new §?"&§(false),
            "clipGirder":"GirderH",
            "unspendingTurn":true
         }
      },{
         "hideInShop":true,
         "id":§+%z§.TITANIUM_GIRDER,
         "name":"TITANIUM_GIRDER.NAME",
         "description":"TITANIUM_GIRDER.DESCR",
         "hint":"TITANIUM_GIRDER.HINT",
         "iconClassName":"IconTitaniumGirder",
         "render":{
            "type":"clip",
            "clipClass":""
         },
         "menuIcon":"IconTitaniumGirder",
         "maxShots":1,
         "bagX":9,
         "bagY":6,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "requiredLevel":15,
         "classname":"Girder",
         "property":{
            "indestructible":new §?"&§(true),
            "resizable":new §?"&§(false),
            "clipGirder":"GirderH",
            "unspendingTurn":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.SHURIKEN,
         "name":"SHURIKEN.NAME",
         "description":"SHURIKEN.DESCR",
         "hint":"SHURIKEN.HINT",
         "maxdamage":"SHURIKEN.DAMAGE",
         "note":"SHURIKEN.NOTE",
         "iconClassName":"MainShuriken",
         "render":{
            "type":"clip",
            "clipClass":"MainShuriken",
            "charParams":{"default":{
               "x":-7.1,
               "y":0.1,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconMainShuriken",
         "price":500,
         "realprice":5,
         "requiredLevel":3,
         "classname":"ShurikenToss",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "shotsPerTurn":4,
         "params":{
            "clipClassName":"AmMainShuriken",
            "damage":new §&$2§(17),
            "damageRadius":new §&$2§(35),
            "explosionRadius":new §&$2§(20),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "classShuriken":§"%5§,
            "power":new §&$2§(35),
            "trajectoryCrosshair":new §?"&§(false)
         }
      },{
         "hideInShop":true,
         "id":§+%z§.§4"k§,
         "name":"CL_GRENADE.NAME",
         "description":"CL_GRENADE.DESCR",
         "hint":"CL_GRENADE.HINT",
         "note":"EXPLOSION_DELAY.NOTE",
         "maxdamage":"CL_GRENADE.DAMAGE",
         "iconClassName":"ClMainGrenade",
         "render":{
            "type":"clip",
            "clipClass":"ClMainGrenade",
            "charParams":{"default":{
               "x":-7.1,
               "y":0.1,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconMainClGrenade",
         "price":0,
         "realprice":0,
         "requiredLevel":4,
         "classname":"ClusterGrenade",
         "infinite":true,
         "params":{
            "clipClassName":"AmClMainGrenade",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(60),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(0)
         },
         "secondaryParams":{
            "damage":new §&$2§(15),
            "damageRadius":new §&$2§(40),
            "explosionRadius":new §&$2§(20)
         },
         "property":{
            "shardQuantity":new §&$2§(8),
            "ammoClass":§`"O§,
            "shardClass":§["l§,
            "blinkClassName":"ClMainGrenadeBlink",
            "explodeOnStopMoving":true,
            "hasTimer":new §?"&§(false),
            "trailWidth":8,
            "trailColor":3827829
         }
      },{
         "id":§+%z§.UZI,
         "name":"UZI.NAME",
         "description":"UZI.DESCR",
         "note":"UZI.NOTE",
         "hint":"UZI.HINT",
         "maxdamage":"UZI.DAMAGE",
         "iconClassName":"MainUzi",
         "render":{
            "type":"clip",
            "clipClass":"MainUzi",
            "charParams":{"default":{
               "x":0.3,
               "y":-1.3,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconMainUzi",
         "price":400,
         "realprice":4,
         "requiredLevel":2,
         "classname":"Uzi",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"",
            "damage":new §&$2§(5),
            "damageRadius":new §&$2§(20),
            "explosionRadius":new §&$2§(10),
            "pushForce":new §&$2§(0)
         }
      },{
         "hideInShop":true,
         "id":§+%z§.MORTAR,
         "name":"MORTAR.NAME",
         "description":"MORTAR.DESCR",
         "hint":"MORTAR.HINT",
         "maxdamage":"MORTAR.DAMAGE",
         "iconClassName":"MainMortar",
         "render":{
            "type":"clip",
            "clipClass":"MainMortar",
            "charParams":{"default":{
               "x":0,
               "y":0,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconMainMortar",
         "price":0,
         "realprice":0,
         "requiredLevel":4,
         "classname":"Mortar",
         "infinite":true,
         "params":{
            "clipClassName":"AmMainMortar",
            "damage":new §&$2§(35),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(50),
            "pushForce":new §&$2§(0)
         },
         "secondaryParams":{
            "damage":new §&$2§(25),
            "damageRadius":new §&$2§(40),
            "explosionRadius":new §&$2§(20)
         },
         "property":{
            "additionalMissile":0,
            "trajectoryCrosshair":new §?"&§(false),
            "cleverShards":new §?"&§(false)
         }
      },{
         "id":§+%z§.STICKY_GRENADE,
         "name":"STICKY_GRENADE.NAME",
         "description":"STICKY_GRENADE.DESCR",
         "hint":"STICKY_GRENADE.HINT",
         "maxdamage":"STICKY_GRENADE.DAMAGE",
         "menuIcon":"IconMainStickyBomb",
         "render":{
            "type":"clip",
            "clipClass":"MainStickyBomb",
            "charParams":{"default":{
               "x":-7.5,
               "y":-1.1,
               "hideHands":"left"
            }}
         },
         "iconClassName":"MainStickyBomb",
         "price":500,
         "realprice":5,
         "requiredLevel":4,
         "classname":"StickyGrenade",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmMainStickyBomb",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(40),
            "pushForce":new §&$2§(0)
         },
         "secondaryParams":{
            "clipClassName":"AmStickBombSplinter",
            "damage":new §&$2§(20),
            "damageRadius":new §&$2§(40),
            "explosionRadius":new §&$2§(20)
         },
         "property":{
            "quantityShards":new §&$2§(7),
            "shardClass":§["l§,
            "ammoClass":§9#s§,
            "blinkClassName":"MainStickyBombBlink",
            "trailColor":5405468
         }
      },{
         "id":§+%z§.SHOTGUN,
         "name":"SHOTGUN.NAME",
         "description":"SHOTGUN.DESCR",
         "hint":"SHOTGUN.HINT",
         "maxdamage":"SHOTGUN.DAMAGE",
         "iconClassName":"MainShotgun",
         "render":{
            "type":"clip",
            "clipClass":"MainShotgun",
            "charParams":{"default":{
               "x":-3,
               "y":-0.3,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconMainShotgun",
         "price":600,
         "realprice":6,
         "requiredLevel":4,
         "classname":"Shotgun",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "damage":new §&$2§(13),
            "damageRadius":new §&$2§(20),
            "explosionRadius":new §&$2§(10),
            "pushForce":new §&$2§(0),
            "ammosByShot":new §&$2§(7)
         },
         "property":{
            "quantityBullets":new §&$2§(7),
            "classBullet":§]"8§
         }
      },{
         "id":§+%z§.SHEEP,
         "name":"SHEEP.NAME",
         "description":"SHEEP.DESCR",
         "note":"SHEEP.NOTE",
         "hint":"SHEEP.HINT",
         "maxdamage":"SHEEP.DAMAGE",
         "menuIcon":"IconSheep",
         "iconClassName":"Sheep",
         "render":{
            "type":"clip",
            "clipClass":"Sheep",
            "charParams":{"default":{
               "hideHands":"both",
               "x":0,
               "y":-22
            }}
         },
         "realprice":6,
         "price":600,
         "requiredLevel":8,
         "infinite":true,
         "maxShots":3,
         "isComplex":true,
         "classname":"SheepWeapon",
         "params":{
            "clipClassName":"AmSheep",
            "damage":new §&$2§(90),
            "damageRadius":new §&$2§(100),
            "explosionRadius":new §&$2§(80),
            "pushForce":new §&$2§(0)
         },
         "property":{"classSheep":§7!U§}
      },{
         "id":§+%z§.SUPER_SHEEP,
         "name":"SUPER_SHEEP.NAME",
         "description":"SUPER_SHEEP.DESCR",
         "note":"SUPER_SHEEP.NOTE",
         "maxdamage":"SUPER_SHEEP.DAMAGE",
         "hint":"SUPER_SHEEP.HINT",
         "menuIcon":"IconSuperSheep",
         "iconClassName":"SuperSheep",
         "render":{
            "type":"clip",
            "clipClass":"SuperSheep",
            "charParams":{"default":{
               "hideHands":"both",
               "x":0,
               "y":-33
            }}
         },
         "realprice":22,
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "classname":"SuperSheepWeapon",
         "params":{
            "damage":new §&$2§(90),
            "damageRadius":new §&$2§(90),
            "explosionRadius":new §&$2§(70),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.MINIGUN,
         "name":"MINIGUN.NAME",
         "description":"MINIGUN.DESCR",
         "maxdamage":"MINIGUN.DAMAGE",
         "hint":"MINIGUN.HINT",
         "iconClassName":"MainMinigun",
         "render":{
            "type":"clip",
            "clipClass":"MainMinigun",
            "charParams":{"default":{
               "x":-4.8,
               "y":-0.1,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconMainMinigun",
         "price":700,
         "realprice":7,
         "requiredLevel":6,
         "classname":"Minigun",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"",
            "damage":new §&$2§(6),
            "damageRadius":new §&$2§(40),
            "explosionRadius":new §&$2§(15),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "quantityBullets":new §&$2§(20),
            "angleFluct":Math.PI / 180,
            "classBullet":§]"8§
         }
      },{
         "id":§+%z§.§8#d§,
         "name":"FREEZER.NAME",
         "description":"FREEZER.DESCR",
         "maxdamage":"FREEZER.DAMAGE",
         "hint":"FREEZER.HINT",
         "iconClassName":"IconFreezingBazooka",
         "render":{
            "type":"clip",
            "clipClass":"FreezingBazooka",
            "charParams":{"default":{
               "x":-5,
               "y":6,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconFreezingBazooka",
         "titleIcon":§+"'§.§]$[§,
         "price":800,
         "realprice":8,
         "requiredLevel":8,
         "classname":"FreezingBazooka",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmFreezingBazooka",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(70),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.CARPET_BAZOOKA,
         "name":"CARPET_BAZOOKA.NAME",
         "description":"CARPET_BAZOOKA.DESCR",
         "maxdamage":"CARPET_BAZOOKA.DAMAGE",
         "hint":"CARPET_BAZOOKA.HINT",
         "iconClassName":"CarpetBazooka",
         "render":{
            "type":"clip",
            "clipClass":"CarpetBazooka",
            "charParams":{"default":{
               "x":-9.1,
               "y":-3.5,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconCarpetBazooka",
         "price":800,
         "realprice":8,
         "requiredLevel":7,
         "classname":"CarpetBazooka",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmCarpetBazooka",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(40),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "damageForBounce":new §&$2§(0),
            "maxBounce":new §&$2§(3),
            "classCarpet":§!$C§
         }
      },{
         "hideInShop":true,
         "id":§+%z§.SUPER_DRILL_MISSILE,
         "name":"SUPER_DRILL_MISSILE.NAME",
         "description":"SUPER_DRILL_MISSILE.DESCR",
         "maxdamage":"SUPER_DRILL_MISSILE.DAMAGE",
         "hint":"DRILL.HINT",
         "iconClassName":"SuperDrill",
         "render":{
            "type":"clip",
            "clipClass":"SuperDrill",
            "charParams":{"default":{
               "x":-9.2,
               "y":-0.9,
               "hideHands":"both"
            }}
         },
         "price":100,
         "realprice":1,
         "maxShots":2,
         "cooldown":1,
         "firstShotDelay":1,
         "shotsPerTurn":1,
         "classname":"DrillGunControlled",
         "menuIcon":"IconSuperDrill",
         "params":{
            "clipClassName":"AmSuperDrill",
            "damage":new §&$2§(80),
            "damageRadius":new §&$2§(75),
            "explosionRadius":new §&$2§(50),
            "pushForce":new §&$2§(10)
         },
         "property":{
            "drillLength":new §&$2§(12),
            "drillRadius":new §&$2§(22),
            "consumable":true
         }
      },{
         "id":§+%z§.§!`§,
         "name":"DRILL.NAME",
         "description":"DRILL.DESCR",
         "maxdamage":"DRILL.DAMAGE",
         "hint":"DRILL.HINT",
         "iconClassName":"Drill",
         "render":{
            "type":"clip",
            "clipClass":"Drill",
            "charParams":{"default":{
               "x":-9.2,
               "y":-0.9,
               "hideHands":"both"
            }}
         },
         "price":600,
         "realprice":6,
         "requiredLevel":5,
         "classname":"DrillGun",
         "menuIcon":"IconDrill",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmDrill",
            "damage":new §&$2§(60),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(20),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.HARPOON,
         "name":"HARPOON.NAME",
         "description":"HARPOON.DESCR",
         "maxdamage":"HARPOON.DAMAGE",
         "hint":"HARPOON.HINT",
         "iconClassName":"MainElectricHarpoon",
         "render":{
            "type":"clip",
            "clipClass":"MainElectricHarpoon",
            "charParams":{"default":{
               "x":-1.8,
               "y":-8.6,
               "hideHands":"both"
            }}
         },
         "realprice":7,
         "price":700,
         "requiredLevel":8,
         "classname":"ElectricHarpoon",
         "menuIcon":"IconElectricHarpoon",
         "titleIcon":§+"'§.§`!^§,
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"MainElectricHarpoonTip",
            "damage":new §&$2§(30),
            "damageRadius":new §&$2§(35),
            "explosionRadius":new §&$2§(20),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "trajectoryCrosshair":new §?"&§(false),
            "dragDamage":new §&$2§(10)
         }
      },{
         "id":§+%z§.SHOCKER,
         "name":"SHOCKER.NAME",
         "description":"SHOCKER.DESCR",
         "note":"SHOCKER.NOTE",
         "maxdamage":"SHOCKER.DAMAGE",
         "hint":"SHOCKER.HINT",
         "iconClassName":"Shocker",
         "render":{
            "type":"clip",
            "clipClass":"Shocker",
            "charParams":{"default":{
               "x":-1.8,
               "y":-0.6,
               "hideHands":"left"
            }}
         },
         "price":700,
         "realprice":7,
         "requiredLevel":4,
         "classname":"Shocker",
         "menuIcon":"IconShocker",
         "titleIcon":§+"'§.§`!^§,
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmShocker",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(25),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{"isSlowdown":new §?"&§(false)}
      },{
         "id":§+%z§.AK_47,
         "name":"KALASH.NAME",
         "description":"KALASH.DESCR",
         "maxdamage":"KALASH.DAMAGE",
         "hint":"KALASH.HINT",
         "iconClassName":"Kalash",
         "render":{
            "type":"clip",
            "clipClass":"Kalash",
            "charParams":{"default":{
               "x":-1.8,
               "y":-0.6,
               "hideHands":"both"
            }}
         },
         "realprice":10,
         "price":1000,
         "requiredLevel":10,
         "classname":"Kalash",
         "menuIcon":"IconKalash",
         "infinite":true,
         "shotsPerTurn":2,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmGunStrong2",
            "damage":new §&$2§(16),
            "damageRadius":new §&$2§(35),
            "explosionRadius":new §&$2§(15),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.CROSSBOW,
         "name":"CROSSBOW.NAME",
         "description":"CROSSBOW.DESCR",
         "maxdamage":"CROSSBOW.DAMAGE",
         "note":"CROSSBOW.NOTE",
         "hint":"CROSSBOW.HINT",
         "iconClassName":"IconCrossbow",
         "render":{
            "type":"clip",
            "clipClass":"Crossbow",
            "charParams":{"default":{
               "x":-1.8,
               "y":-0.6,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconCrossbow",
         "titleIcon":§+"'§.§ "1§,
         "price":1200,
         "realprice":12,
         "requiredLevel":10,
         "classname":"Crossbow",
         "infinite":true,
         "shotsPerTurn":2,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmCrossbow",
            "damage":new §&$2§(7),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "quantityBolt":new §&$2§(5),
            "classBolt":§!"<§
         }
      },{
         "id":§+%z§.§5&,§,
         "name":"GUIDING_BAZOOKA.NAME",
         "description":"GUIDING_BAZOOKA.DESCR",
         "note":"GUIDING_BAZOOKA.NOTE",
         "maxdamage":"GUIDING_BAZOOKA.DAMAGE",
         "hint":"GUIDING_BAZOOKA.HINT",
         "iconClassName":"MainHomingBazooka",
         "render":{
            "type":"clip",
            "clipClass":"MainHomingBazooka",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconMainHomingBazooka",
         "price":700,
         "realprice":7,
         "requiredLevel":7,
         "classname":"HomingBazooka",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmMainHomingBazooka",
            "damage":new §&$2§(60),
            "damageRadius":new §&$2§(60),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(0)
         },
         "property":{"ammoClass":§[$z§}
      },{
         "id":§+%z§.CANNON,
         "name":"CANNON.NAME",
         "description":"CANNON.DESCR",
         "maxdamage":"CANNON.DAMAGE",
         "hint":"CANNON.HINT",
         "iconClassName":"Cannon",
         "render":{
            "type":"clip",
            "clipClass":"Cannon",
            "charParams":{"default":{
               "x":1,
               "y":6,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconCannon",
         "price":1300,
         "realprice":13,
         "requiredLevel":14,
         "classname":"Cannon",
         "infinite":true,
         "maxShots":3,
         "isComplex":true,
         "params":{
            "clipClassName":"AmCannon",
            "damage":new §&$2§(90),
            "damageRadius":new §&$2§(120),
            "explosionRadius":new §&$2§(100),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "isDeactivate":true,
            "trajectoryCrosshair":new §?"&§(false),
            "trailWidth":8,
            "trailColor":4276545
         }
      },{
         "id":§+%z§.§]!]§,
         "name":"TELE_THROWER.NAME",
         "description":"TELE_THROWER.DESCR",
         "note":"TELE_THROWER.NOTE",
         "hint":"TELE_THROWER.HINT",
         "iconClassName":"TeleportThrower",
         "render":{
            "type":"clip",
            "clipClass":"TeleportThrower",
            "charParams":{"default":{
               "x":-9.8,
               "y":-1.8,
               "hideHands":"left"
            }}
         },
         "price":700,
         "realprice":7,
         "requiredLevel":5,
         "classname":"TeleThrower",
         "menuIcon":"IconTeleportThrower",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmTeleportThrower",
            "damage":new §&$2§(10),
            "damageRadius":new §&$2§(35),
            "explosionRadius":new §&$2§(22),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "blinkClassName":"TeleportThrowerBlink",
            "teleportOnButton":new §?"&§(false),
            "unspendingTurn":true
         }
      },{
         "id":§+%z§.SWITCH_TURN,
         "name":"SWITCH_TURN.NAME",
         "description":"SWITCH_TURN.DESCR",
         "note":"SWITCH_TURN.NOTE",
         "hint":"SWITCH_TURN.HINT",
         "iconClassName":"",
         "render":{
            "type":"clip",
            "clipClass":""
         },
         "realprice":15,
         "price":1500,
         "requiredLevel":5,
         "classname":"SwitchTurn",
         "menuIcon":"IconSwitchTurn",
         "infinite":true,
         "maxShots":3,
         "isComplex":true,
         "dropNotForSingleUnit":true,
         "property":{"unspendingTurn":true}
      },{
         "id":§+%z§.SPIDER,
         "name":"SPIDER.NAME",
         "description":"SPIDER.DESCR",
         "note":"SPIDER.NOTE",
         "maxdamage":"SPIDER.DAMAGE",
         "hint":"SPIDER.HINT",
         "render":{
            "type":"clip",
            "clipClass":"MainSpider",
            "charParams":{"default":{
               "x":-5.6,
               "y":0.3,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconMainSpider",
         "titleIcon":§+"'§.§ "1§,
         "realprice":14,
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "cooldown":1,
         "classname":"SpiderWeapon",
         "params":{
            "clipClassName":"AmMainSpider",
            "damage":new §&$2§(65),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(60),
            "pushForce":new §&$2§(0)
         },
         "property":{"classMine":§^$[§}
      },{
         "id":§+%z§.FIREWORK,
         "name":"FIREWORK.NAME",
         "description":"FIREWORK.DESCR",
         "note":"FIREWORK.NOTE",
         "maxdamage":"FIREWORK.DAMAGE",
         "hint":"FIREWORK.HINT",
         "iconClassName":"Firework",
         "render":{
            "type":"clip",
            "clipClass":"Firework",
            "charParams":{"default":{
               "x":-3,
               "y":3,
               "hideHands":"left"
            }}
         },
         "realprice":35,
         "classname":"Firework",
         "menuIcon":"IconFirework",
         "infinite":true,
         "cooldown":1,
         "params":{
            "clipClassName":"AmFirework",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(20),
            "pushForce":new §&$2§(0)
         },
         "property":{"clipName":"AniFirework"}
      },{
         "id":§+%z§.BAT,
         "name":"BAT.NAME",
         "description":"BAT.DESCR",
         "maxdamage":"BAT.DAMAGE",
         "hint":"BAT.HINT",
         "iconClassName":"Bat",
         "render":{
            "type":"clip",
            "clipClass":"Bat",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "realprice":32,
         "price":3200,
         "requiredLevel":15,
         "requiredFriends":5,
         "classname":"Bat",
         "menuIcon":"IconBat",
         "infinite":true,
         "maxShots":1,
         "params":{
            "clipClassName":"AmBat",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(25),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.SNIPER_RIFLE,
         "name":"SNIPER_RIFLE.NAME",
         "description":"SNIPER_RIFLE.DESCR",
         "note":"SNIPER_RIFLE.NOTE",
         "maxdamage":"SNIPER_RIFLE.DAMAGE",
         "hint":"SNIPER_RIFLE.HINT",
         "iconClassName":"MainSniperRifle",
         "render":{
            "type":"clip",
            "clipClass":"MainSniperRifle",
            "charParams":{"default":{
               "x":-5.6,
               "y":2.3,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconMainSniperRifle",
         "price":1200,
         "realprice":12,
         "requiredLevel":8,
         "classname":"SniperRifle",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmGunStrong1",
            "damage":new §&$2§(90),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(3),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "rayLength":new §&$2§(500),
            "angleFluct":Math.PI / 144,
            "colorLaser":15623731
         }
      },{
         "id":§+%z§.MOLOTOV,
         "name":"MOLOTOV.NAME",
         "description":"MOLOTOV.DESCR",
         "maxdamage":"MOLOTOV.DAMAGE",
         "hint":"MOLOTOV.HINT",
         "menuIcon":"IconMolotov",
         "titleIcon":§+"'§.§9#f§,
         "iconClassName":"Molotov",
         "render":{
            "type":"clip",
            "clipClass":"Molotov",
            "charParams":{"default":{
               "x":-7.8,
               "y":-1.3,
               "hideHands":"left"
            }}
         },
         "price":1000,
         "realprice":10,
         "requiredLevel":10,
         "classname":"Molotov",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"AmMolotov",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "ammoClass":§;$y§,
            "fireCount":new §&$2§(36),
            "hasTimer":new §?"&§(false),
            "trailWidth":8,
            "trailColor":4939535
         }
      },{
         "id":§+%z§.§^";§,
         "name":"FIRE_THROWER.NAME",
         "description":"FIRE_THROWER.DESCR",
         "maxdamage":"FIRE_THROWER.DAMAGE",
         "hint":"FIRE_THROWER.HINT",
         "iconClassName":"FireThrow",
         "render":{
            "type":"clip",
            "clipClass":"FireThrow",
            "charParams":{"default":{
               "y":5,
               "hideHands":"both"
            }},
            "secondaryClip":{
               "clipClass":"FireThrowBag",
               "charParams":{
                  "cat":{"x":-3},
                  "default":{
                     "x":-3,
                     "y":2
                  }
               }
            }
         },
         "menuIcon":"IconFireThrow",
         "titleIcon":§+"'§.§9#f§,
         "price":1100,
         "realprice":11,
         "requiredLevel":10,
         "classname":"FireThrower",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "params":{
            "clipClassName":"FireShot",
            "damage":new §&$2§(3),
            "damageRadius":new §&$2§(25),
            "explosionRadius":new §&$2§(5),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "weaponControlEnabled":new §?"&§(false),
            "bullets":new §&$2§(12)
         }
      },{
         "id":§+%z§.NAPALM_STRIKE,
         "name":"NAPALM.NAME",
         "description":"NAPALM.DESCR",
         "note":"AIR_CONTROL.NOTE",
         "maxdamage":"NAPALM.DAMAGE",
         "hint":"NAPALM.HINT",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconNapalm",
         "titleIcon":[§+"'§.§"%A§,§+"'§.§9#f§],
         "realprice":46,
         "price":4600,
         "requiredLevel":13,
         "requiredFriends":1,
         "classname":"NapalmStrike",
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":1,
         "params":{
            "clipClassName":"AmNapalmBomb",
            "damage":new §&$2§(20),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(0)
         },
         "property":{"missiles":new §&$2§(5)}
      },{
         "id":§+%z§.AIR_STRIKE,
         "name":"AIR_STRIKE.NAME",
         "description":"AIR_STRIKE.DESCR",
         "note":"AIR_CONTROL.NOTE",
         "maxdamage":"AIR_STRIKE.DAMAGE",
         "hint":"AIR_STRIKE.HINT",
         "iconClassName":"AirControl",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconAirBomb",
         "titleIcon":§+"'§.§"%A§,
         "realprice":50,
         "price":5000,
         "requiredLevel":11,
         "requiredFriends":3,
         "classname":"AirStrike",
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":1,
         "params":{
            "clipClassName":"AirBomb",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(75),
            "explosionRadius":new §&$2§(45),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "isHoming":new §?"&§(false),
            "missiles":new §&$2§(5)
         }
      },{
         "id":§+%z§.METEOR,
         "name":"METEOR.NAME",
         "description":"METEOR.DESCR",
         "maxdamage":"METEOR.DAMAGE",
         "hint":"METEOR.HINT",
         "menuIcon":"IconMeteor",
         "titleIcon":§+"'§.§"%A§,
         "iconClassName":"AirControl",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "realprice":55,
         "classname":"MeteorStrike",
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":1,
         "params":{
            "clipClassName":"Meteor",
            "damage":new §&$2§(65),
            "damageRadius":new §&$2§(75),
            "explosionRadius":new §&$2§(45),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.CARPET_STRIKE,
         "name":"CARPET_STRIKE.NAME",
         "description":"CARPET_STRIKE.DESCR",
         "note":"AIR_CONTROL.NOTE",
         "maxdamage":"CARPET_STRIKE.DAMAGE",
         "hint":"CARPET_STRIKE.HINT",
         "iconClassName":"AirControl",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconCarpetStrike",
         "titleIcon":§+"'§.§"%A§,
         "realprice":60,
         "classname":"CarpetStrike",
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":1,
         "params":{
            "clipClassName":"AmCarpetStrike",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(40),
            "pushForce":new §&$2§(0)
         },
         "property":{"missiles":new §&$2§(2)}
      },{
         "id":§+%z§.WATERMELON,
         "name":"WATERMELON.NAME",
         "description":"WATERMELON.DESCR",
         "maxdamage":"WATERMELON.DAMAGE",
         "hint":"WATERMELON.HINT",
         "note":"EXPLOSION_DELAY.NOTE",
         "iconClassName":"Watermelon",
         "render":{
            "type":"clip",
            "clipClass":"Watermelon",
            "charParams":{"default":{
               "x":-8.8,
               "y":-2.9,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconWatermelon",
         "realprice":50,
         "price":5000,
         "requiredLevel":16,
         "infinite":true,
         "maxShots":1,
         "classname":"WatermelonWeapon",
         "params":{
            "clipClassName":"AmWatermelon",
            "damage":new §&$2§(80),
            "damageRadius":new §&$2§(130),
            "explosionRadius":new §&$2§(110),
            "pushForce":new §&$2§(0)
         },
         "secondaryParams":{
            "clipClassName":"WatermelonPiece",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(60),
            "pushForce":new §&$2§(0)
         },
         "property":{"ammoClass":Watermelon}
      },{
         "id":§+%z§.HOLY_GRENADE,
         "name":"HOLY_GRENADE.NAME",
         "description":"HOLY_GRENADE.DESCR",
         "maxdamage":"HOLY_GRENADE.DAMAGE",
         "hint":"HOLY_GRENADE.HINT",
         "iconClassName":"MainHolyGrenade",
         "render":{
            "type":"clip",
            "clipClass":"MainHolyGrenade",
            "charParams":{"default":{
               "x":-7.3,
               "y":-1.1,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconMainHolyGrenade",
         "price":5500,
         "realprice":55,
         "requiredLevel":14,
         "infinite":true,
         "maxShots":1,
         "classname":"HolyGrenade",
         "params":{
            "clipClassName":"AmMainHolyGrenade",
            "damage":new §&$2§(115),
            "damageRadius":new §&$2§(150),
            "explosionRadius":new §&$2§(120),
            "pushForce":new §&$2§(0)
         },
         "property":{"ammoClass":§ "r§}
      },{
         "id":§+%z§.SLEDGEHAMMER,
         "name":"SLEDGEHAMMER.NAME",
         "description":"SLEDGEHAMMER.DESCR",
         "maxdamage":"SLEDGEHAMMER.DAMAGE",
         "hint":"SLEDGEHAMMER.HINT",
         "render":{
            "type":"clip",
            "clipClass":"SledgeHammer",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconSledgehammer",
         "price":2000,
         "realprice":20,
         "requiredLevel":15,
         "classname":"Sledgehammer",
         "infinite":true,
         "maxShots":3,
         "isComplex":true,
         "params":{
            "clipClassName":"AmSledgeHammer",
            "damage":new §&$2§(60),
            "damageRadius":new §&$2§(25),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.TELEPORT,
         "name":"TELEPORT.NAME",
         "description":"TELEPORT.DESCR",
         "note":"TELEPORT.NOTE",
         "hint":"TELEPORT.HINT",
         "menuIcon":"IconTeleport",
         "iconClassName":"Teleport",
         "render":{
            "type":"clip",
            "clipClass":"Teleport",
            "charParams":{"default":{
               "x":0.3,
               "y":-3.5,
               "hideHands":"both"
            }}
         },
         "realprice":25,
         "infinite":true,
         "maxShots":3,
         "isComplex":true,
         "firstShotDelay":2,
         "cooldown":1,
         "classname":"Teleport",
         "params":{
            "clipClassName":"Teleport",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(35),
            "explosionRadius":new §&$2§(22),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.JETPACK,
         "name":"JETPACK.NAME",
         "description":"JETPACK.DESCR",
         "note":"JETPACK.NOTE",
         "hint":"JETPACK.HINT",
         "iconClassName":"Jetpack",
         "render":{
            "type":"graphics",
            "action":"jetpackStay"
         },
         "realprice":50,
         "price":5000,
         "requiredLevel":9,
         "classname":"Jetpack",
         "menuIcon":"IconJetpack",
         "infinite":true,
         "maxShots":4,
         "isComplex":true,
         "property":{"unspendingTurn":true}
      },{
         "id":§+%z§.FREEZING_MINE,
         "name":"FREEZING_MINE.NAME",
         "description":"FREEZING_MINE.DESCR",
         "maxdamage":"FREEZING_MINE.DAMAGE",
         "hint":"FREEZING_MINE.HINT",
         "render":{
            "type":"clip",
            "clipClass":"IceMine",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconIceMine",
         "titleIcon":§+"'§.§]$[§,
         "price":2600,
         "realprice":26,
         "requiredLevel":10,
         "requiredFriends":2,
         "classname":"DefaultMineWeapon",
         "infinite":true,
         "maxShots":1,
         "params":{
            "clipClassName":"AmIceMine",
            "damage":new §&$2§(25),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(70),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "mineClass":§+%5§,
            "unspendingTurn":true
         }
      },{
         "id":§+%z§.§'#?§,
         "name":"GROUNDBREAKER.NAME",
         "description":"GROUNDBREAKER.DESCR",
         "maxdamage":"GROUNDBREAKER.DAMAGE",
         "hint":"GROUNDBREAKER.HINT",
         "render":{
            "type":"clip",
            "clipClass":"FugasRocketBazooka",
            "charParams":{"default":{
               "x":-6.5,
               "y":12.5,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconFugasRocket",
         "realprice":40,
         "classname":"GroundBreaker",
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "params":{
            "clipClassName":"AmFugasRocket",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(90),
            "explosionRadius":new §&$2§(70),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.BUNKER_BUSTER,
         "name":"BUNKER_BUSTER.NAME",
         "description":"BUNKER_BUSTER.DESCR",
         "maxdamage":"BUNKER_BUSTER.DAMAGE",
         "hint":"BUNKER_BUSTER.HINT",
         "iconClassName":"AirControl",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconBunkerBreaker",
         "titleIcon":[§+"'§.§"%A§,§+"'§.§9#f§],
         "realprice":44,
         "price":4400,
         "requiredFriends":5,
         "requiredLevel":14,
         "classname":"BunkerBuster",
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":1,
         "params":{
            "clipClassName":"AmBunkerBreaker",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(90),
            "explosionRadius":new §&$2§(70),
            "pushForce":new §&$2§(0)
         },
         "secondaryParams":{
            "clipClassName":"AmDrill",
            "damage":new §&$2§(30),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(50)
         }
      },{
         "hideInShop":true,
         "id":§+%z§.SUPER_BUNKER_BUSTER,
         "name":"SUPER_BUNKER_BUSTER.NAME",
         "description":"SUPER_BUNKER_BUSTER.DESCR",
         "maxdamage":"SUPER_BUNKER_BUSTER.DAMAGE",
         "hint":"SUPER_BUNKER_BUSTER.HINT",
         "iconClassName":"AirControl",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconSuperBunkerBuster",
         "titleIcon":[§+"'§.§"%A§,§+"'§.§9#f§],
         "bagX":9,
         "bagY":6,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "requiredLevel":15,
         "classname":"SuperBunkerBuster",
         "maxShots":1,
         "params":{
            "clipClassName":"AmSuperBunkerBuster",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(100),
            "explosionRadius":new §&$2§(80),
            "pushForce":new §&$2§(0)
         },
         "secondaryParams":{
            "clipClassName":"AmDrill",
            "damage":new §&$2§(30),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(50)
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.GUARDING_BOT,
         "name":"GUARDING_BOT.NAME",
         "description":"GUARDING_BOT.DESCR",
         "maxdamage":"GUARDING_BOT.DAMAGE",
         "hint":"GUARDING_BOT.HINT",
         "iconClassName":"GuardingBotWeapon",
         "render":{
            "type":"clip",
            "clipClass":"GuardingBotWeapon",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconGuardingBotWeapon",
         "titleIcon":§+"'§.§`!^§,
         "realprice":20,
         "price":2000,
         "requiredLevel":16,
         "classname":"DefenseMineWeapon",
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "params":{
            "clipClassName":"AmGuardingBot",
            "damage":new §&$2§(25),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "mineClass":§=!?§,
            "extraCooldownWeapons":[§+%z§.SWAP_TELEPORT],
            "extraCooldownValue":§@"3§.value,
            "unspendingTurn":true
         }
      },{
         "id":§+%z§.UFO,
         "name":"UFO.NAME",
         "description":"UFO.DESCR",
         "hint":"UFO.HINT",
         "maxdamage":"UFO.DAMAGE",
         "menuIcon":"IconUfo",
         "iconClassName":"AirControl",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "realprice":32,
         "infinite":true,
         "maxShots":1,
         "classname":"UfoPad",
         "params":{
            "clipClassName":"AmFlight",
            "damage":new §&$2§(80),
            "damageRadius":new §&$2§(60),
            "explosionRadius":new §&$2§(40),
            "pushForce":new §&$2§(0)
         },
         "property":{"maxFuel":new §&$2§(2500)}
      },{
         "id":§+%z§.ANTIFREEZE,
         "name":"ANTIFREEZE.NAME",
         "description":"ANTIFREEZE.DESCR",
         "hint":"ANTIFREEZE.HINT",
         "iconClassName":"Defrost",
         "render":{
            "type":"clip",
            "clipClass":"Defrost",
            "charParams":{"default":{
               "x":20,
               "y":3,
               "hideHands":"right"
            }}
         },
         "price":2200,
         "realprice":25,
         "requiredLevel":8,
         "classname":"AntifreezePotion",
         "menuIcon":"IconDefrost",
         "titleIcon":[§+"'§.§-"G§,§+"'§.§^%H§,§+"'§.§?j§],
         "infinite":true,
         "maxShots":1,
         "params":{
            "clipClassName":"",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "poisonProtection":new §?"&§(false),
            "burstAttack":new §&$2§(0),
            "burstArmor":new §&$2§(0)
         }
      },{
         "id":§+%z§.BOOMERANG,
         "name":"BOOMERANG.NAME",
         "description":"BOOMERANG.DESCR",
         "maxdamage":"BOOMERANG.DAMAGE",
         "hint":"BOOMERANG.HINT",
         "iconClassName":"Boomerang",
         "render":{
            "type":"clip",
            "clipClass":"Boomerang",
            "charParams":{"default":{
               "x":-9,
               "y":7,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconBoomerang",
         "price":1000,
         "realprice":10,
         "requiredLevel":8,
         "classname":"BoomerangWeapon",
         "infinite":true,
         "maxShots":3,
         "isComplex":true,
         "params":{
            "clipClassName":"AmBoomerang",
            "damage":new §&$2§(65),
            "damageRadius":new §&$2§(45),
            "explosionRadius":new §&$2§(25),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "knockHat":new §?"&§(false),
            "secondHitBonus":new §&$2§(0)
         }
      },{
         "id":§+%z§.ANVIL,
         "hideInShop":true,
         "name":"ANVIL.NAME",
         "description":"ANVIL.DESCR",
         "maxdamage":"ANVIL.DAMAGE",
         "hint":"ANVIL.HINT",
         "iconClassName":"AmAnvil",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconAnvil",
         "titleIcon":§+"'§.§"%A§,
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"AnvilWeapon",
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":4,
         "params":{
            "clipClassName":"AmAnvil",
            "damage":new §&$2§(70)
         },
         "property":{"fixedDirection":new §?"&§(true)}
      },{
         "id":§+%z§.EMERGENCY_TELEPORT,
         "name":"EMERGENCY_TELEPORT.NAME",
         "description":"EMERGENCY_TELEPORT.DESCR",
         "hint":"EMERGENCY_TELEPORT.HINT",
         "iconClassName":"",
         "render":{
            "type":"clip",
            "clipClass":"EmergencyTeleport",
            "charParams":{"default":{
               "x":-7.1,
               "y":0.1,
               "hideHands":"left"
            }}
         },
         "realprice":28,
         "price":2800,
         "requiredLevel":14,
         "classname":"EmergencyTeleport",
         "menuIcon":"IconEmergencyTeleport",
         "infinite":true,
         "maxShots":1,
         "property":{
            "teleportRadius":new §&$2§(600),
            "mindDangerObj":new §?"&§(false),
            "unspendingTurn":true
         }
      },{
         "id":§+%z§.BANDAGE,
         "name":"BANDAGE.NAME",
         "description":"BANDAGE.DESCR",
         "hint":"BANDAGE.HINT",
         "iconClassName":"",
         "render":{
            "type":"clip",
            "clipClass":"Bandage",
            "charParams":{"default":{
               "x":-7.1,
               "y":0.1,
               "hideHands":"left"
            }}
         },
         "property":{
            "unspendingTurn":true,
            "consumable":true
         },
         "realprice":1,
         "cooldown":1,
         "classname":"Bandage",
         "menuIcon":"IconBandage",
         "titleIcon":§+"'§.§-"G§
      },{
         "id":§+%z§.GRAVITY_GUN,
         "name":"GRAVITY_GUN.NAME",
         "description":"GRAVITY_GUN.DESCR",
         "hint":"GRAVITY_GUN.HINT",
         "maxdamage":"GRAVITY_GUN.DAMAGE",
         "iconClassName":"",
         "render":{
            "type":"clip",
            "clipClass":"GravityGun",
            "charParams":{"default":{
               "x":-3,
               "y":-4.5,
               "hideHands":"both"
            }}
         },
         "realprice":13,
         "price":1300,
         "requiredLevel":11,
         "classname":"GravityGun",
         "menuIcon":"IconGravityGun",
         "titleIcon":§+"'§.§`!^§,
         "infinite":true,
         "shotsPerTurn":2,
         "maxShots":2,
         "isComplex":true,
         "params":{
            "clipClassName":"AmThunderBolt",
            "damage":new §&$2§(20),
            "damageRadius":new §&$2§(65),
            "explosionRadius":new §&$2§(0)
         }
      },{
         "id":§+%z§.THUNDERBOLT,
         "name":"THUNDERBOLT.NAME",
         "description":"THUNDERBOLT.DESCR",
         "hint":"THUNDERBOLT.HINT",
         "maxdamage":"THUNDERBOLT.DAMAGE",
         "iconClassName":"",
         "render":{
            "type":"clip",
            "clipClass":"ThunderBolt",
            "charParams":{"default":{
               "x":-6.5,
               "y":2.5,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconThunderbolt",
         "titleIcon":§+"'§.§`!^§,
         "price":3500,
         "realprice":35,
         "requiredLevel":10,
         "classname":"Thunderbolt",
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "firstShotDelay":1,
         "params":{
            "clipClassName":"AmShocker",
            "damage":new §&$2§(95),
            "damageRadius":new §&$2§(60),
            "explosionRadius":new §&$2§(40)
         },
         "secondaryParams":{
            "clipClassName":"AmShocker",
            "damage":new §&$2§(70),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(30)
         },
         "property":{"ammoClass":§8!d§}
      },{
         "id":§+%z§.BLIZZARD,
         "name":"BLIZZARD.NAME",
         "description":"BLIZZARD.DESCR",
         "hint":"BLIZZARD.HINT",
         "maxdamage":"BLIZZARD.DAMAGE",
         "hideInShop":true,
         "iconClassName":"",
         "render":{
            "type":"clip",
            "clipClass":"Blizzard",
            "charParams":{"default":{
               "x":-9.2,
               "y":-0.9,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconBlizzard",
         "titleIcon":§+"'§.§]$[§,
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"Blizzard",
         "maxShots":1,
         "firstShotDelay":1,
         "params":{
            "clipClassName":"AmBlizzard",
            "damage":new §&$2§(45),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0)
         },
         "property":{"consumable":true},
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.§]h§,
         "name":"BARRIER.NAME",
         "description":"BARRIER.DESCR",
         "maxdamage":"BARRIER.DAMAGE",
         "hint":"BARRIER.HINT",
         "iconClassName":"MainLaserBarrier",
         "render":{
            "type":"clip",
            "clipClass":"MainLaserBarrier",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconMainLaserBarrier",
         "price":3500,
         "realprice":35,
         "requiredLevel":14,
         "classname":"LaserBarrier",
         "infinite":true,
         "maxShots":4,
         "params":{
            "clipClassName":"AmMainLaserBarrier",
            "damage":new §&$2§(10),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{"unspendingTurn":true}
      },{
         "id":§+%z§.§7&E§,
         "hideInShop":true,
         "name":"CHROMEORB.NAME",
         "description":"CHROMEORB.DESCR",
         "hint":"CHROMEORB.HINT",
         "maxdamage":"CHROMEORB.DAMAGE",
         "iconClassName":"IconChromeOrb",
         "render":{
            "type":"clip",
            "clipClass":"ChromeOrb",
            "charParams":{"default":{
               "x":-8.8,
               "y":-2.9,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconChromeOrb",
         "titleIcon":§+"'§.§]$[§,
         "price":0,
         "realprice":0,
         "classname":"FrozenOrbWeapon",
         "infinite":true,
         "maxShots":2,
         "firstShotDelay":4,
         "params":{
            "clipClassName":"ChromeOrbBall",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(40),
            "pushForce":new §&$2§(0)
         },
         "secondaryParams":{
            "clipClassName":"ChromeOrbIcePiece",
            "damage":new §&$2§(30),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0)
         }
      },{
         "id":§+%z§.ANTITOXIN,
         "name":"ANTITOXIN.NAME",
         "description":"ANTITOXIN.DESCR",
         "hint":"ANTITOXIN.HINT",
         "iconClassName":"",
         "render":{
            "type":"clip",
            "clipClass":"Antitoxin",
            "charParams":{"default":{
               "x":-7.1,
               "y":0.1,
               "hideHands":"left"
            }}
         },
         "realprice":1,
         "cooldown":1,
         "classname":"Antitoxin",
         "menuIcon":"IconAntitoxin",
         "titleIcon":[§+"'§.§]%a§,§+"'§.§`$P§],
         "params":{
            "damage":new §&$2§(15),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "unspendingTurn":true,
            "consumable":true
         }
      },{
         "id":§+%z§.DISC_LAUNCHER,
         "hideInShop":true,
         "name":"DISC_LAUNCHER.NAME",
         "description":"DISC_LAUNCHER.DESCR",
         "hint":"DISC_LAUNCHER.HINT",
         "maxdamage":"DISC_LAUNCHER.DAMAGE",
         "iconClassName":"Discgun",
         "render":{
            "type":"clip",
            "clipClass":"Discgun",
            "charParams":{"default":{
               "x":-3,
               "y":3,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconDiscgun",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"DiscLauncher",
         "infinite":true,
         "maxShots":3,
         "params":{
            "clipClassName":"AmDiscgun",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(60),
            "explosionRadius":new §&$2§(40),
            "pushForce":new §&$2§(0)
         },
         "property":{"totalBonusDamage":new §&$2§(80)}
      },{
         "id":§+%z§.HOPPING_BAZOOKA,
         "hideInShop":true,
         "name":"HOPPING_BAZOOKA.NAME",
         "description":"HOPPING_BAZOOKA.DESCR",
         "hint":"HOPPING_BAZOOKA.HINT",
         "maxdamage":"HOPPING_BAZOOKA.DAMAGE",
         "iconClassName":"Birdgun",
         "render":{
            "type":"clip",
            "clipClass":"Birdgun",
            "charParams":{"default":{
               "x":-3,
               "y":6,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconBirdgun",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"HoppingWeapon",
         "infinite":true,
         "maxShots":3,
         "params":{
            "clipClassName":"AmBirdgun",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(50),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.HELICOPTER,
         "hideInShop":true,
         "name":"HELICOPTER.NAME",
         "description":"HELICOPTER.DESCR",
         "maxdamage":"HELICOPTER.DAMAGE",
         "hint":"HELICOPTER.HINT",
         "menuIcon":"IconHelicopter",
         "iconClassName":"AirControl",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "infinite":true,
         "maxShots":1,
         "classname":"Helipad",
         "params":{
            "clipClassName":"Helicopter",
            "damage":new §&$2§(30),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(0)
         },
         "secondaryParams":{
            "clipClassName":"AmMainBazooka",
            "damage":new §&$2§(25),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(30)
         }
      },{
         "id":§+%z§.FORCE_FIELD,
         "hideInShop":true,
         "name":"FORCE_FIELD.NAME",
         "description":"FORCE_FIELD.DESCR",
         "hint":"FORCE_FIELD.HINT",
         "iconClassName":"Antimagnit",
         "render":{
            "type":"clip",
            "clipClass":"Antimagnit",
            "charParams":{"default":{
               "x":-8,
               "y":9,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconAntimagnit",
         "price":§5&4§.§9!b§,
         "classname":"SafeMineWeapon",
         "infinite":true,
         "maxShots":1,
         "params":{
            "clipClassName":"AmAntimagnit",
            "damageRadius":new §&$2§(400)
         },
         "property":{
            "mineClass":§8&D§,
            "unspendingTurn":true,
            "fieldClipName":"PulsatingWave"
         }
      },{
         "id":§+%z§.CIRCUS_CANNON,
         "hideInShop":true,
         "name":"CIRCUS_CANNON.NAME",
         "description":"CIRCUS_CANNON.DESCR",
         "maxdamage":"CIRCUS_CANNON.DAMAGE",
         "hint":"CIRCUS_CANNON.HINT",
         "iconClassName":"BigCannon",
         "render":{
            "type":"clip",
            "clipClass":"BigCannon",
            "charParams":{"default":{
               "x":1,
               "y":1,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconBigCannon",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"CircusCannon",
         "infinite":true,
         "maxShots":2,
         "params":{
            "clipClassName":"",
            "damage":new §&$2§(120),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(60),
            "pushForce":new §&$2§(0)
         },
         "property":{"strickerDamage":new §&$2§(40)}
      },{
         "id":§+%z§.§5-§,
         "hideInShop":true,
         "name":"ATOMIC_BOMB.NAME",
         "description":"ATOMIC_BOMB.DESCR",
         "note":"AIR_CONTROL.NOTE",
         "maxdamage":"ATOMIC_BOMB.DAMAGE",
         "hint":"ATOMIC_BOMB.HINT",
         "iconClassName":"IconAtomBomb",
         "render":{
            "type":"clip",
            "clipClass":"AtomBomb",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconAtomBomb",
         "titleIcon":[§+"'§.§"%A§,§+"'§.§ "1§],
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"AtomBombWeapon",
         "infinite":true,
         "maxShots":1,
         "params":{
            "clipClassName":"AmAtomBomb",
            "damage":new §&$2§(80),
            "damageRadius":new §&$2§(110),
            "explosionRadius":new §&$2§(90),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "extraCooldownWeapons":[§+%z§.§5-§,§+%z§.§!%D§],
            "extraCooldownValue":§@"3§.value,
            "unspendingTurn":true
         }
      },{
         "id":§+%z§.GAS_GRENADE,
         "name":"GAS_GRENADE.NAME",
         "description":"GAS_GRENADE.DESCR",
         "maxdamage":"GAS_GRENADE.DAMAGE",
         "hint":"GAS_GRENADE.HINT",
         "note":"EXPLOSION_DELAY.NOTE",
         "iconClassName":"GasGrenade",
         "menuIcon":"IconGasGrenade",
         "titleIcon":§+"'§.§ "1§,
         "render":{
            "type":"clip",
            "clipClass":"GasGrenade",
            "charParams":{"default":{
               "x":-9,
               "y":2,
               "hideHands":"left"
            }}
         },
         "price":1200,
         "realprice":12,
         "requiredLevel":13,
         "classname":"GasGrenadeWeapon",
         "infinite":true,
         "maxShots":3,
         "isComplex":true,
         "params":{
            "clipClassName":"AmGasGrenade",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0)
         },
         "property":{
            "ammoClass":GasGrenade,
            "cloudClipName":"GasCloud",
            "explodeOnStopMoving":false
         }
      },{
         "id":§+%z§.§"!S§,
         "name":"NEGATOR.NAME",
         "description":"NEGATOR.DESCR",
         "maxdamage":"NEGATOR.DAMAGE",
         "hint":"NEGATOR.HINT",
         "iconClassName":"BlockerClip",
         "menuIcon":"BlockerIcon",
         "render":{
            "type":"clip",
            "clipClass":"BlockerClip",
            "charParams":{"default":{
               "x":-9,
               "y":2,
               "hideHands":"left"
            }}
         },
         "price":1800,
         "realprice":18,
         "requiredLevel":14,
         "classname":"HealBlockerWeapon",
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "params":{
            "clipClassName":"BlockerClip",
            "damage":new §&$2§(75),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(30)
         },
         "property":{
            "ammoClass":§2$v§,
            "duration":new §&$2§(6),
            "idleClipName":"HealBlockerIdle"
         }
      },{
         "id":§+%z§.PARASITE,
         "name":"PARASITE.NAME",
         "description":"PARASITE.DESCR",
         "hint":"PARASITE.HINT",
         "maxdamage":"PARASITE.DAMAGE",
         "iconClassName":"Parasite",
         "menuIcon":"IconParasite",
         "render":{
            "type":"clip",
            "clipClass":"Parasite",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "price":1100,
         "realprice":11,
         "requiredLevel":12,
         "classname":"ParasiteWeapon",
         "infinite":true,
         "maxShots":3,
         "isComplex":true,
         "firstShotDelay":1,
         "cooldown":1,
         "params":{
            "clipClassName":"AmParasite",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(60),
            "explosionRadius":new §&$2§(35),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "ammoClass":Parasite,
            "blinkClip":"ParasiteBlink",
            "attachedClip":"ParasiteAttachedBlink"
         }
      },{
         "id":§+%z§.§,!_§,
         "hideInShop":true,
         "name":"ASSASSIN_KNIFE.NAME",
         "description":"ASSASSIN_KNIFE.DESCR",
         "maxdamage":"ASSASSIN_KNIFE.DAMAGE",
         "menuIcon":"IconHeavyKnife",
         "titleIcon":§+"'§.§ "1§,
         "iconClassName":"HeavyKnifeClip",
         "render":{
            "type":"clip",
            "clipClass":"HeavyKnifeClip",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "classname":"AssassinHeavyKnifeWeapon",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "maxShots":2,
         "params":{
            "clipClassName":"AmHeavyKnife",
            "damage":new §&$2§(90),
            "damageRadius":new §&$2§(30),
            "explosionRadius":new §&$2§(20),
            "pushForce":new §&$2§(0)
         },
         "bossWeapon":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.§@%-§,
         "hideInShop":true,
         "name":"FAN_OF_KNIVES.NAME",
         "description":"FAN_OF_KNIVES.DESCR",
         "maxdamage":"FAN_OF_KNIVES.DAMAGE",
         "menuIcon":"IconFanOfKnives",
         "titleIcon":§+"'§.§ "1§,
         "iconClassName":"FanOfKnivesClip",
         "render":{
            "type":"clip",
            "clipClass":"FanOfKnivesClip",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "classname":"AssassinFanOfKnives",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "maxShots":1,
         "params":{
            "clipClassName":"AmFanOfKnives",
            "damage":new §&$2§(25),
            "damageRadius":new §&$2§(30),
            "explosionRadius":new §&$2§(20),
            "pushForce":new §&$2§(0)
         },
         "bossWeapon":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.VILE_PUMPKIN,
         "name":"VILE_PUMPKIN.NAME",
         "description":"VILE_PUMPKIN.DESCR",
         "hint":"VILE_PUMPKIN.HINT",
         "maxdamage":"VILE_PUMPKIN.DAMAGE",
         "iconClassName":"Pumpkin",
         "menuIcon":"IconPumpkin",
         "titleIcon":§+"'§.§ "1§,
         "render":{
            "type":"clip",
            "clipClass":"Pumpkin",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "realprice":1,
         "classname":"PumpkinWeapon",
         "maxShots":2,
         "firstShotDelay":4,
         "params":{
            "clipClassName":"AmPumpkin",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(60),
            "explosionRadius":new §&$2§(35),
            "pushForce":new §&$2§(0)
         },
         "property":{"consumable":true}
      },{
         "id":§+%z§.§"A§,
         "name":"DARK_PACT.NAME",
         "description":"DARK_PACT.DESCR",
         "hint":"DARK_PACT.HINT",
         "iconClassName":"DarkPact",
         "menuIcon":"IconDarkPact",
         "titleIcon":[§+"'§.§,<§,§+"'§.§]"v§],
         "render":{
            "type":"clip",
            "clipClass":"DarkPact",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"DarkElixir",
         "maxShots":1,
         "params":{"clipClassName":""},
         "property":{
            "unspendingTurn":true,
            "seasonal":true
         },
         "hideInShop":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.SOUL_GUN,
         "name":"SOUL_GUN.NAME",
         "description":"SOUL_GUN.DESCR",
         "maxdamage":"SOUL_GUN.DAMAGE",
         "hint":"SOUL_GUN.HINT",
         "iconClassName":"SoulGun",
         "render":{
            "type":"clip",
            "clipClass":"SoulGun",
            "charParams":{"default":{
               "x":-4.8,
               "y":-0.1,
               "hideHands":"left"
            }}
         },
         "menuIcon":"SoulGunIcon",
         "price":3600,
         "realprice":36,
         "requiredLevel":16,
         "classname":"SoulMinigun",
         "infinite":true,
         "maxShots":1,
         "params":{
            "clipClassName":"",
            "damage":new §&$2§(4),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "quantityBullets":new §&$2§(16),
            "angleFluct":Math.PI / 180,
            "classBullet":§]"8§
         }
      },{
         "hideInShop":true,
         "id":§+%z§.SOUL_GUN_FREEZE,
         "name":"SOUL_GUN_FREEZE.NAME",
         "description":"SOUL_GUN_FREEZE.DESCR",
         "maxdamage":"SOUL_GUN.DAMAGE",
         "hint":"SOUL_GUN.HINT",
         "iconClassName":"SoulGunFrost",
         "render":{
            "type":"clip",
            "clipClass":"SoulGunFrost",
            "charParams":{"default":{
               "x":-4.8,
               "y":-0.1,
               "hideHands":"left"
            }}
         },
         "menuIcon":"SoulGunFrostIcon",
         "titleIcon":§+"'§.§]$[§,
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "requiredLevel":15,
         "classname":"SoulMinigun",
         "maxShots":2,
         "params":{
            "clipClassName":"",
            "damage":new §&$2§(4),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "firstTargetFreeze":new §?"&§(true),
            "quantityBullets":new §&$2§(16),
            "angleFluct":Math.PI / 180,
            "classBullet":§]"8§,
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.SNOWBALL,
         "hideInShop":true,
         "name":"SNOWBALL.NAME",
         "description":"SNOWBALL.DESCR",
         "hint":"SNOWBALL.HINT",
         "maxdamage":"SNOWBALL.DAMAGE",
         "menuIcon":"ShopBallIcon",
         "iconClassName":"ShopBallIcon",
         "render":{
            "type":"clip",
            "clipClass":"ShopBallClip",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "maxShots":2,
         "classname":"SnowballWeapon",
         "params":{
            "clipClassName":"AmShopBallClip",
            "damage":new §&$2§(60),
            "damageRadius":new §&$2§(90),
            "explosionRadius":new §&$2§(70),
            "pushForce":new §&$2§(0)
         },
         "property":{"seasonal":true},
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.DEEP_FREEZE,
         "hideInShop":true,
         "name":"DEEP_FREEZE.NAME",
         "description":"DEEP_FREEZE.DESCR",
         "maxdamage":"DEEP_FREEZE.DAMAGE",
         "hint":"DEEP_FREEZE.HINT",
         "iconClassName":"DeepFreezeIcon",
         "menuIcon":"DeepFreezeIcon",
         "titleIcon":§+"'§.§]$[§,
         "render":{
            "type":"clip",
            "clipClass":"DeepFreezeClip",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"DeepFreezeTome",
         "maxShots":1,
         "firstShotDelay":3,
         "params":{
            "clipClassName":"AmDeepFreeze",
            "damage":new §&$2§(15),
            "damageRadius":new §&$2§(60),
            "explosionRadius":new §&$2§(18),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "isSlowdown":new §?"&§(false),
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.FIREWORK_BARREL,
         "name":"FIREWORK_BARREL.NAME",
         "description":"FIREWORK_BARREL.DESCR",
         "maxdamage":"FIREWORK_BARREL.DAMAGE",
         "hint":"FIREWORK_BARREL.HINT",
         "iconClassName":"FireworkBarrelIcon",
         "menuIcon":"FireworkBarrelIcon",
         "render":{
            "type":"clip",
            "clipClass":"FireworkBarrelClip",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "price":2500,
         "realprice":25,
         "requiredLevel":5,
         "firstShotDelay":1,
         "classname":"FireworkBarrelWeapon",
         "infinite":true,
         "maxShots":1,
         "params":{
            "clipClassName":"AmFirework",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(40),
            "explosionRadius":new §&$2§(20),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.GIFT_BOX,
         "hideInShop":true,
         "name":"GIFT_BOX.NAME",
         "description":"GIFT_BOX.DESCR",
         "hint":"GIFT_BOX.HINT",
         "iconClassName":"BoxHatIcon",
         "menuIcon":"BoxHatIcon",
         "render":{
            "type":"clip",
            "clipClass":"BoxHatClip",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"DefaultMineWeapon",
         "maxShots":1,
         "firstShotDelay":4,
         "params":{
            "clipClassName":"AmBoxHatClip",
            "damage":new §&$2§(25),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(70),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "mineClass":§;!%§,
            "unspendingTurn":true,
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.§[$X§,
         "hideInShop":true,
         "name":"CHAIN_GUN.NAME",
         "description":"CHAIN_GUN.DESCR",
         "maxdamage":"CHAIN_GUN.DAMAGE",
         "menuIcon":"IconChainGun",
         "titleIcon":§+"'§.§`!^§,
         "render":{
            "type":"clip",
            "clipClass":"ChainGun",
            "charParams":{"default":{
               "x":-3,
               "y":-4.5,
               "hideHands":"both"
            }}
         },
         "classname":"ChainGun",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "maxShots":2,
         "params":{
            "clipClassName":"AmThunderbolt",
            "damage":new §&$2§(60),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{"seasonal":true},
         "bossWeapon":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.§?$2§,
         "hideInShop":true,
         "name":"TRANSLOCATOR.NAME",
         "description":"TRANSLOCATOR.DESCR",
         "maxdamage":"TRANSLOCATOR.DAMAGE",
         "menuIcon":"IconSacrifice",
         "render":{
            "type":"clip",
            "clipClass":"SacrificeClip",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "maxShots":2,
         "classname":"ArchbotSacrifice",
         "params":{
            "clipClassName":"AmDeepFreeze",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(35),
            "explosionRadius":new §&$2§(22),
            "pushForce":new §&$2§(0)
         },
         "property":{"seasonal":true},
         "bossWeapon":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.BOSS_FIRE_MINIGUN,
         "name":"BOSS_FIRE_MINIGUN.NAME",
         "description":"BOSS_FIRE_MINIGUN.DESCR",
         "maxdamage":"BOSS_FIRE_MINIGUN.DAMAGE",
         "hint":"BOSS_FIRE_MINIGUN.HINT",
         "hideInShop":true,
         "iconClassName":"FireMinigun",
         "render":{
            "type":"clip",
            "clipClass":"FireMinigun",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "maxShots":2,
         "classname":"FireMinigun",
         "menuIcon":"FireMinigunIcon",
         "titleIcon":§+"'§.§9#f§,
         "params":{
            "clipClassName":"",
            "damage":new §&$2§(12)
         },
         "property":{
            "quantityBullets":new §&$2§(12),
            "angleFluct":Math.PI / 180,
            "classBullet":§]"8§,
            "seasonal":true
         },
         "bossWeapon":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.§[$A§,
         "hideInShop":true,
         "name":"METEOR_VOLLEY.NAME",
         "description":"METEOR_VOLLEY.DESCR",
         "maxdamage":"METEOR_VOLLEY.DAMAGE",
         "menuIcon":"IconMeteorVolley",
         "render":{
            "type":"clip",
            "clipClass":"MeteorVolleyClip",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"both"
            }}
         },
         "classname":"ArchbotMeteorVolley",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "maxShots":1,
         "params":{
            "clipClassName":"Meteor",
            "damage":new §&$2§(65),
            "damageRadius":new §&$2§(75),
            "explosionRadius":new §&$2§(45),
            "pushForce":new §&$2§(0)
         },
         "bossWeapon":true,
         "temporal":true,
         "sellPrice":5
      },{
         "hideInShop":true,
         "id":§+%z§.ARTILLERY,
         "name":"ARTILLERY.NAME",
         "description":"ARTILLERY.DESCR",
         "maxdamage":"ARTILLERY.DAMAGE",
         "hint":"ARTILLERY.HINT",
         "iconClassName":"IconArtilleryStrike",
         "menuIcon":"IconArtilleryStrike",
         "render":{
            "type":"clip",
            "clipClass":"ArtilleryStrike",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "price":100,
         "realprice":1,
         "classname":"ArtilleryWeapon",
         "maxShots":2,
         "firstShotDelay":4,
         "cooldown":4,
         "params":{
            "clipClassName":"AmArtilleryStrike",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(90),
            "explosionRadius":new §&$2§(70),
            "pushForce":new §&$2§(0)
         },
         "property":{"consumable":true}
      },{
         "hideInShop":true,
         "id":§+%z§.STICKY_MINE,
         "name":"STICKY_MINE.NAME",
         "description":"STICKY_MINE.DESCR",
         "maxdamage":"STICKY_MINE.DAMAGE",
         "hint":"STICKY_MINE.HINT",
         "iconClassName":"IconStickyMine",
         "render":{
            "type":"clip",
            "clipClass":"StickyMine",
            "charParams":{"default":{
               "hideHands":"left",
               "x":-12.15,
               "y":0
            }}
         },
         "menuIcon":"IconStickyMine",
         "price":100,
         "realprice":1,
         "classname":"ThrowableMineWeapon",
         "maxShots":2,
         "cooldown":1,
         "params":{
            "clipClassName":"AmStickyMine",
            "damage":new §&$2§(45),
            "damageRadius":new §&$2§(65),
            "explosionRadius":new §&$2§(45),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "mineClass":StickyMine,
            "dontSpendTurn":true,
            "unspendingTurn":true,
            "consumable":true,
            "trailWidth":8,
            "trailColor":15309060
         }
      },{
         "id":§+%z§.NAIL_GRENADE,
         "hideInShop":true,
         "name":"NAIL_GRENADE.NAME",
         "description":"NAIL_GRENADE.DESCR",
         "hint":"NAIL_GRENADE.HINT",
         "maxdamage":"NAIL_GRENADE.DAMAGE",
         "iconClassName":"IconNailGrenade",
         "render":{
            "type":"clip",
            "clipClass":"NailGrenade",
            "charParams":{"default":{
               "x":-7.1,
               "y":0.1,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconNailGrenade",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"ClusterGrenade",
         "maxShots":3,
         "params":{
            "clipClassName":"AmNailGrenade",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(0)
         },
         "secondaryParams":{
            "damage":new §&$2§(16),
            "damageRadius":new §&$2§(30),
            "explosionRadius":new §&$2§(10),
            "ammoClassName":"NailGrenadeFragment"
         },
         "property":{
            "shardQuantity":new §&$2§(12),
            "ammoClass":NailGrenade,
            "shardClass":§["l§,
            "blinkClassName":"NailGrenadeBlink",
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.LASER_GUN,
         "name":"LASER_GUN.NAME",
         "description":"LASER_GUN.DESCR",
         "hint":"LASER_GUN.HINT",
         "maxdamage":"LASER_GUN.DAMAGE",
         "iconClassName":"LaserGun",
         "menuIcon":"IconLaserGun",
         "render":{
            "type":"clip",
            "clipClass":"LaserGun",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "price":2100,
         "realprice":21,
         "requiredLevel":20,
         "classname":"LaserGun",
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "cooldown":2,
         "property":{"rayColor":"0xBB3A3A"},
         "params":{
            "clipClassName":"LaserFire",
            "damage":new §&$2§(3),
            "damageRadius":new §&$2§(15),
            "explosionRadius":new §&$2§(5),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.BOULDER,
         "name":"BOULDER.NAME",
         "description":"BOULDER.DESCR",
         "hint":"BOULDER.HINT",
         "maxdamage":"BOULDER.DAMAGE",
         "iconClassName":"BoulderShopIcon",
         "menuIcon":"BoulderShopIcon",
         "render":{
            "type":"clip",
            "clipClass":"Boulder",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "price":1100,
         "realprice":11,
         "requiredLevel":14,
         "classname":"BoulderWeapon",
         "infinite":true,
         "maxShots":3,
         "isComplex":true,
         "firstShotDelay":1,
         "cooldown":1,
         "params":{
            "clipClassName":"BoulderBall",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{"ammoClass":Boulder}
      },{
         "id":§+%z§.VACUUM_GRENADE,
         "name":"VACUUM_GRENADE.NAME",
         "description":"VACUUM_GRENADE.DESCR",
         "hint":"VACUUM_GRENADE.HINT",
         "maxdamage":"VACUUM_GRENADE.DAMAGE",
         "iconClassName":"VacuumGrenade",
         "menuIcon":"VacuumGrenadeIcon",
         "render":{
            "type":"clip",
            "clipClass":"VacuumGrenade"
         },
         "price":4600,
         "realprice":46,
         "requiredLevel":20,
         "firstShotDelay":3,
         "cooldown":3,
         "classname":"VacuumGrenadeWeapon",
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "params":{
            "clipClassName":"AmVacuumGrenade",
            "damage":new §&$2§(30),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(50),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "ammoClass":VacuumGrenade,
            "explodeOnDemand":new §?"&§(true),
            "blinkClassName":"MainGrenadeBlink",
            "explodeOnStopMoving":true,
            "trailLength":10,
            "trailWidth":8,
            "trailColor":16282
         }
      },{
         "id":§+%z§.DOCTOR_BAG,
         "name":"DOCTOR_BAG.NAME",
         "description":"DOCTOR_BAG.DESCR",
         "hint":"DOCTOR_BAG.HINT",
         "render":{
            "type":"clip",
            "clipClass":"DoctorBag",
            "charParams":{"default":{
               "x":0,
               "y":2,
               "hideHands":"both"
            }}
         },
         "maxShots":2,
         "cooldown":1,
         "realprice":1,
         "classname":"DoctorBag",
         "menuIcon":"IconDoctorBag",
         "titleIcon":§+"'§.§-"G§,
         "dropNotForSingleUnit":true,
         "property":{
            "unspendingTurn":true,
            "consumable":true
         },
         "hideInShop":true
      },{
         "id":§+%z§.§&$x§,
         "name":"UNDERWATER_BREATH_POTION.NAME",
         "description":"UNDERWATER_BREATH_POTION.DESCR",
         "hint":"UNDERWATER_BREATH_POTION.HINT",
         "render":{
            "type":"clip",
            "clipClass":"UnderwaterBreathPotion",
            "charParams":{"default":{
               "x":10,
               "y":-1,
               "hideHands":"both"
            }}
         },
         "firstShotDelay":1,
         "maxShots":2,
         "realprice":1,
         "classname":"UnderwaterBreathPotion",
         "menuIcon":"IconUnderwaterBreathPotion",
         "titleIcon":§+"'§.§-!Q§,
         "property":{
            "unspendingTurn":true,
            "consumable":true
         },
         "hideInShop":true
      },{
         "id":§+%z§.ALCHEMIST_FLASK,
         "name":"ALCHEMIST_FLASK.NAME",
         "description":"ALCHEMIST_FLASK.DESCR",
         "hint":"ALCHEMIST_FLASK.HINT",
         "menuIcon":"IconAlchemistPotion",
         "render":{
            "type":"clip",
            "clipClass":"AlchemistPotion",
            "charParams":{"default":{
               "x":0,
               "y":0,
               "hideHands":"left"
            }}
         },
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"ClearPathBazooka",
         "maxShots":2,
         "cooldown":1,
         "params":{
            "clipClassName":"AmAlchemistPotion",
            "damage":new §&$2§(0),
            "damageRadius":new §&$2§(30),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "dontSpendTurn":true,
            "unspendingTurn":true,
            "ammoClass":§>$`§,
            "seasonal":true
         },
         "hideInShop":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.FIERY_PUMPKIN,
         "name":"FIERY_PUMPKIN.NAME",
         "description":"FIERY_PUMPKIN.DESCR",
         "maxdamage":"FIERY_PUMPKIN.DAMAGE",
         "hint":"FIERY_PUMPKIN.HINT",
         "render":{
            "type":"clip",
            "clipClass":"FieryPumpkin",
            "charParams":{"default":{
               "x":-10,
               "y":-2,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconFieryPumpkin",
         "titleIcon":§+"'§.§9#f§,
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"Dynamite",
         "maxShots":2,
         "cooldown":1,
         "params":{
            "clipClassName":"AmFieryPumpkin",
            "damage":new §&$2§(35),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(35),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "classDynamite":FieryPumpkin,
            "seasonal":true
         },
         "hideInShop":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.FOUL_WATERMELON,
         "name":"FOUL_WATERMELON.NAME",
         "description":"FOUL_WATERMELON.DESCR",
         "maxdamage":"FOUL_WATERMELON.DAMAGE",
         "hint":"FOUL_WATERMELON.HINT",
         "render":{
            "type":"clip",
            "clipClass":"FoulWatermelon",
            "charParams":{"default":{
               "x":-8.8,
               "y":-2.9,
               "hideHands":"left"
            }}
         },
         "menuIcon":"IconFoulWatermelon",
         "titleIcon":§+"'§.§ "1§,
         "realprice":1,
         "price":100,
         "maxShots":2,
         "firstShotDelay":2,
         "cooldown":1,
         "classname":"WatermelonWeapon",
         "params":{
            "clipClassName":"AmFoulWatermelon",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(115),
            "explosionRadius":new §&$2§(95),
            "pushForce":new §&$2§(0)
         },
         "secondaryParams":{
            "clipClassName":"FoulWatermelonPiece",
            "damage":new §&$2§(35),
            "damageRadius":new §&$2§(65),
            "explosionRadius":new §&$2§(50),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "ammoClass":FoulWatermelon,
            "consumable":true
         },
         "hideInShop":true
      },{
         "id":§+%z§.ZOMBIE_MARCH,
         "name":"ZOMBIE_MARCH.NAME",
         "description":"ZOMBIE_MARCH.DESCR",
         "maxdamage":"ZOMBIE_MARCH.DAMAGE",
         "hint":"ZOMBIE_MARCH.HINT",
         "render":{
            "type":"clip",
            "clipClass":"NecroBook",
            "charParams":{"default":{
               "x":"10",
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconNecroBook",
         "titleIcon":§+"'§.§"%A§,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"ZombieMarch",
         "maxShots":1,
         "firstShotDelay":5,
         "params":{
            "clipClassName":"",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(55),
            "explosionRadius":new §&$2§(35),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "fixedDirection":new §?"&§(true),
            "seasonal":true
         },
         "hideInShop":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.SNOWFLAKE_STRIKE,
         "name":"SNOWFLAKE_STRIKE.NAME",
         "description":"SNOWFLAKE_STRIKE.DESCR",
         "maxdamage":"SNOWFLAKE_STRIKE.DAMAGE",
         "hint":"SNOWFLAKE_STRIKE.HINT",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconSnowflake",
         "titleIcon":§+"'§.§]$[§,
         "realprice":48,
         "price":4800,
         "requiredLevel":15,
         "classname":"SnowflakeStrike",
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":2,
         "params":{
            "clipClassName":"AmSnowflake",
            "damage":new §&$2§(45),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(40),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "fixedDirection":new §?"&§(true),
            "missiles":new §&$2§(7),
            "freezingDuration":new §&$2§(4)
         }
      },{
         "id":§+%z§.REINFORCEMENT_CALL,
         "name":"REINFORCEMENT_CALL.NAME",
         "description":"REINFORCEMENT_CALL.DESCR",
         "hint":"REINFORCEMENT_CALL.HINT",
         "render":{
            "type":"clip",
            "clipClass":"AirControl",
            "charParams":{"default":{
               "x":"10",
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconCallReinforcements",
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"CallReinforcements",
         "maxShots":1,
         "firstShotDelay":8,
         "params":{"clipClassName":""},
         "property":{
            "fixedDirection":new §?"&§(true),
            "seasonal":true
         },
         "hideInShop":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.AIR_BLOCKER,
         "name":"AIR_BLOCKER.NAME",
         "description":"AIR_BLOCKER.DESCR",
         "maxdamage":"AIR_BLOCKER.DAMAGE",
         "hint":"AIR_BLOCKER.HINT",
         "iconClassName":"AirBlockerClip",
         "menuIcon":"AirBlockerIcon",
         "titleIcon":§+"'§.§`!^§,
         "render":{
            "type":"clip",
            "clipClass":"AirBlockerClip",
            "charParams":{"default":{
               "x":-9,
               "y":2,
               "hideHands":"left"
            }}
         },
         "price":3700,
         "realprice":37,
         "requiredLevel":16,
         "classname":"AirBlockerWeapon",
         "shotPower":{
            "min":15,
            "max":35
         },
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":1,
         "params":{
            "clipClassName":"AirBlockerClip",
            "damage":new §&$2§(40),
            "explosionRadius":new §&$2§(30)
         },
         "property":{
            "ammoClass":§=!l§,
            "dontSpendTurn":true,
            "unspendingTurn":true
         }
      },{
         "id":§+%z§.GLAZED_DONUT,
         "name":"GLAZED_DONUT.NAME",
         "description":"GLAZED_DONUT.DESCR",
         "maxdamage":"GLAZED_DONUT.DAMAGE",
         "hint":"GLAZED_DONUT.HINT",
         "menuIcon":"IconGlazeDonut",
         "render":{
            "type":"clip",
            "clipClass":"GlazeDonut",
            "charParams":{"default":{
               "x":-6,
               "y":0,
               "hideHands":"left"
            }}
         },
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"ClearPathBazooka",
         "maxShots":2,
         "params":{
            "clipClassName":"AmGlazeDonut",
            "damage":new §&$2§(70),
            "damageRadius":new §&$2§(30),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "ammoClass":§!%J§,
            "seasonal":true
         },
         "hideInShop":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.PUSHING_MINE,
         "name":"PUSHING_MINE.NAME",
         "description":"PUSHING_MINE.DESCR",
         "hint":"PUSHING_MINE.HINT",
         "render":{
            "type":"clip",
            "clipClass":"PushingMine",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconPushingMine",
         "price":1400,
         "realprice":14,
         "requiredLevel":11,
         "classname":"PushingMineWeapon",
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "firstShotDelay":2,
         "cooldown":1,
         "params":{
            "clipClassName":"AmPushingMine",
            "damage":new §&$2§(0),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(15),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "mineClass":PushingMine,
            "extraCooldownWeapons":[§+%z§.GIRDER_GUN,§+%z§.§+%x§],
            "extraCooldownValue":§@"3§.value,
            "unspendingTurn":true
         }
      },{
         "id":§+%z§.§^%l§,
         "hideInShop":true,
         "name":"REVERSE_GRAVITY_BAZOOKA.NAME",
         "description":"REVERSE_GRAVITY_BAZOOKA.DESCR",
         "maxdamage":"REVERSE_GRAVITY_BAZOOKA.DAMAGE",
         "iconClassName":"ReverseGravityBazooka",
         "render":{
            "type":"clip",
            "clipClass":"ReverseGravityBazooka",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconReverseGravityBazooka",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"ReverseGravityBazooka",
         "maxShots":1,
         "params":{
            "clipClassName":"AmReverseGravityBazooka",
            "damage":new §&$2§(60),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(45),
            "pushForce":new §&$2§(0)
         },
         "property":{"ammoClass":§&"I§},
         "bossWeapon":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.RESURRECTION_SEAL,
         "name":"RESURRECTION_SEAL.NAME",
         "description":"RESURRECTION_SEAL.DESCR",
         "hint":"RESURRECTION_SEAL.HINT",
         "render":{
            "type":"clip",
            "clipClass":"NecroSeal",
            "charParams":{"default":{
               "x":0,
               "y":2,
               "hideHands":"both"
            }}
         },
         "maxShots":1,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"ResurrectionSeal",
         "menuIcon":"NecroSealIcon",
         "titleIcon":§+"'§.§"&6§,
         "hideInShop":true,
         "temporal":true,
         "sellPrice":5,
         "property":{
            "unspendingTurn":true,
            "seasonal":true
         }
      },{
         "id":§+%z§.RADIO_MAST,
         "name":"RADIO_MAST.NAME",
         "description":"RADIO_MAST.DESCR",
         "hint":"RADIO_MAST.HINT",
         "render":{
            "type":"clip",
            "clipClass":"Radar",
            "charParams":{"default":{
               "x":0,
               "y":2,
               "hideHands":"both"
            }}
         },
         "maxShots":1,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"OpenSpaceDevicePlacer",
         "menuIcon":"RadarIcon",
         "titleIcon":§+"'§.§"%A§,
         "hideInShop":true,
         "temporal":true,
         "sellPrice":5,
         "property":{
            "ammoClass":§;'§,
            "unspendingTurn":true,
            "seasonal":true
         }
      },{
         "id":§+%z§.ANTIDOTE,
         "name":"ANTIDOTE.NAME",
         "description":"ANTIDOTE.DESCR",
         "hint":"ANTIDOTE.HINT",
         "render":{
            "type":"clip",
            "clipClass":"AntiPoison",
            "charParams":{"default":{
               "x":0,
               "y":2,
               "hideHands":"both"
            }}
         },
         "property":{
            "unspendingTurn":true,
            "consumable":true
         },
         "maxShots":2,
         "cooldown":1,
         "realprice":1,
         "classname":"AntidoteInjection",
         "menuIcon":"AntiPoisonIcon",
         "titleIcon":[§+"'§.§]M§],
         "dropNotForSingleUnit":true
      },{
         "id":§+%z§.ADRENALINE,
         "name":"ADRENALINE.NAME",
         "description":"ADRENALINE.DESCR",
         "hint":"ADRENALINE.HINT",
         "render":{
            "type":"clip",
            "clipClass":"FireInjection",
            "charParams":{"default":{
               "x":0,
               "y":2,
               "hideHands":"both"
            }}
         },
         "property":{
            "duration":12,
            "radius":75,
            "unspendingTurn":true,
            "consumable":true
         },
         "maxShots":2,
         "cooldown":1,
         "price":100,
         "realprice":1,
         "classname":"AdrenalineInjection",
         "menuIcon":"FireInjectionIcon",
         "titleIcon":[§+"'§.§?j§,§+"'§.§^%H§],
         "dropNotForSingleUnit":true
      },{
         "id":§+%z§.§0!m§,
         "hideInShop":true,
         "name":"ARCTIC_TORCH.NAME",
         "description":"ARCTIC_TORCH.DESCR",
         "iconClassName":"ArcticTorchIcon",
         "render":{
            "type":"clip",
            "clipClass":"ArcticTorch",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"ArcticTorchIcon",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"ArcticTorchWeapon",
         "params":{"clipClassName":"ArcticTorchAm"},
         "property":{"unspendingTurn":true},
         "bossWeapon":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.§7#L§,
         "hideInShop":true,
         "name":"ELECTROMAGNETIC_GUN.NAME",
         "description":"ELECTROMAGNETIC_GUN.DESCR",
         "maxdamage":"ELECTROMAGNETIC_GUN.DAMAGE",
         "iconClassName":"MainElectromagneticWeapon",
         "render":{
            "type":"clip",
            "clipClass":"MainElectromagneticWeapon",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconElectromagneticWeapon",
         "titleIcon":§+"'§.§`!^§,
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"ElectromagneticWeapon",
         "maxShots":1,
         "firstShotDelay":4,
         "params":{
            "clipClassName":"AmElectromagneticWeapon",
            "damage":new §&$2§(100)
         },
         "bossWeapon":true,
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.§!%D§,
         "hideInShop":true,
         "name":"FAKE_ATOMIC_BOMB.NAME",
         "description":"FAKE_ATOMIC_BOMB.DESCR",
         "note":"AIR_CONTROL.NOTE",
         "maxdamage":"FAKE_ATOMIC_BOMB.DAMAGE",
         "hint":"FAKE_ATOMIC_BOMB.HINT",
         "iconClassName":"IconAtomBomb",
         "render":{
            "type":"clip",
            "clipClass":"AtomBomb",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconFakeAtomBomb",
         "titleIcon":[§+"'§.§"%A§,§+"'§.§ "1§],
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"AtomBombWeapon",
         "infinite":true,
         "maxShots":1,
         "params":{
            "clipClassName":"AmFakeAtomBomb",
            "damage":new §&$2§(60),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(60),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "extraCooldownWeapons":[§+%z§.§5-§,§+%z§.§!%D§],
            "extraCooldownValue":§@"3§.value,
            "fakeExplosion":new §?"&§(true),
            "unspendingTurn":true
         }
      },{
         "id":§+%z§.TELEPORT_ANCHOR,
         "name":"TELEPORT_ANCHOR.NAME",
         "description":"TELEPORT_ANCHOR.DESCR",
         "hint":"TELEPORT_ANCHOR.HINT",
         "render":{
            "type":"clip",
            "clipClass":"AnchorTeleport",
            "charParams":{"default":{
               "x":-8,
               "y":9,
               "hideHands":"right"
            }}
         },
         "menuIcon":"AnchorTeleportIcon",
         "price":4000,
         "realprice":40,
         "requiredLevel":18,
         "classname":"AnchorTeleportWeapon",
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":3,
         "params":{"clipClassName":"AnchorTeleportMark"},
         "property":{
            "lifetime":new §&$2§(30 * 8),
            "extraCooldownWeapons":[§+%z§.SWAP_TELEPORT],
            "extraCooldownValue":§@"3§.value,
            "unspendingTurn":true
         }
      },{
         "id":§+%z§.GIRDER_GUN,
         "name":"GIRDER_GUN.NAME",
         "description":"GIRDER_GUN.DESCR",
         "hint":"GIRDER_GUN.HINT",
         "render":{
            "type":"clip",
            "clipClass":"GirderGun",
            "charParams":{"default":{
               "x":0,
               "y":0,
               "hideHands":"both"
            }}
         },
         "menuIcon":"GirderGunIcon",
         "realprice":17,
         "classname":"Bazooka",
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "firstShotDelay":1,
         "cooldown":1,
         "params":{
            "clipClassName":"GirderAmmo",
            "damage":new §&$2§(30),
            "damageRadius":new §&$2§(80),
            "explosionRadius":new §&$2§(50),
            "pushForce":new §&$2§(15)
         },
         "property":{
            "dontSpendTurn":true,
            "unspendingTurn":true,
            "extraCooldownWeapons":[§+%z§.SWAP_TELEPORT,§+%z§.PUSHING_MINE,§+%z§.§6#-§],
            "extraCooldownValue":§@"3§.value,
            "ammoClass":§+x§
         }
      },{
         "hideInShop":true,
         "id":§+%z§.FROST_STASIS,
         "name":"FROST_STASIS.NAME",
         "description":"FROST_STASIS.DESCR",
         "hint":"FROST_STASIS.HINT",
         "iconClassName":"InvulnerabilityBuff",
         "render":{
            "type":"clip",
            "clipClass":"IceBlockAm",
            "charParams":{"default":{
               "x":-8,
               "y":9,
               "hideHands":"right"
            }}
         },
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"FrostStasisBuffPlacer",
         "menuIcon":"IceBlockIcon",
         "titleIcon":[§+"'§.§]%a§,§+"'§.§^%H§],
         "infinite":{"maxShots":1},
         "params":{"clipClassName":""}
      },{
         "id":§+%z§.§6&8§,
         "hideInShop":true,
         "name":"ELECTROMAGNETIC_BAZOOKA.NAME",
         "description":"ELECTROMAGNETIC_BAZOOKA.DESCR",
         "hint":"ELECTROMAGNETIC_BAZOOKA.HINT",
         "maxdamage":"ELECTROMAGNETIC_BAZOOKA.DAMAGE",
         "iconClassName":"MainElectromagneticBazooka",
         "render":{
            "type":"clip",
            "clipClass":"MainElectromagneticBazooka",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconElectromagneticBazooka",
         "titleIcon":§+"'§.§`!^§,
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"Bazooka",
         "maxShots":3,
         "params":{
            "clipClassName":"AmElectromagneticBazooka",
            "damage":new §&$2§(70),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(15),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "ammoClass":§<%<§,
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.§[#Y§,
         "hideInShop":true,
         "name":"COOLDOWN_RESET_DEVICE.NAME",
         "description":"COOLDOWN_RESET_DEVICE.DESCR",
         "hint":"COOLDOWN_RESET_DEVICE.HINT",
         "render":{
            "type":"clip",
            "clipClass":"CooldownRemover",
            "charParams":{"default":{
               "x":-8,
               "y":9,
               "hideHands":"right"
            }}
         },
         "menuIcon":"CooldownRemoverIcon",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "requiredLevel":18,
         "firstShotDelay":2,
         "cooldown":1,
         "maxShots":2,
         "classname":"CooldownResetWeapon",
         "temporal":true,
         "sellPrice":5,
         "property":{
            "unspendingTurn":true,
            "seasonal":true
         }
      },{
         "id":§+%z§.§5k§,
         "name":"INTERFERENCE_GENERATOR.NAME",
         "description":"INTERFERENCE_GENERATOR.DESCR",
         "hint":"INTERFERENCE_GENERATOR.HINT",
         "render":{
            "type":"clip",
            "clipClass":"InterferenceGeneratorMain",
            "charParams":{"default":{
               "x":0,
               "y":2,
               "hideHands":"both"
            }}
         },
         "maxShots":1,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"DevicePlacer",
         "menuIcon":"InterferenceGeneratorIcon",
         "titleIcon":§+"'§.§8#Q§,
         "hideInShop":true,
         "firstShotDelay":6,
         "property":{
            "ammoClass":§^!P§,
            "dontSpendTurn":true,
            "unspendingTurn":true,
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.GRENADE_BUNCH,
         "hideInShop":true,
         "name":"GRENADE_BUNCH.NAME",
         "description":"GRENADE_BUNCH.DESCR",
         "hint":"GRENADE_BUNCH.HINT",
         "iconClassName":"GrenadeBunch",
         "menuIcon":"GrenadeBunchIcon",
         "render":{
            "type":"clip",
            "clipClass":"GrenadeBunch",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"GrenadeBunch",
         "firstShotDelay":3,
         "maxShots":1,
         "property":{
            "grenadesAmount":4,
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.§9A§,
         "hideInShop":true,
         "name":"RANDOM_ROCKET_BAZOOKA.NAME",
         "description":"RANDOM_ROCKET_BAZOOKA.DESCR",
         "hint":"RANDOM_ROCKET_BAZOOKA.HINT",
         "iconClassName":"DoubleBazookaMain",
         "render":{
            "type":"clip",
            "clipClass":"DoubleBazookaMain",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"DoubleBazookaIcon",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"RandomRocketBazooka",
         "maxShots":2,
         "params":{"clipClassName":"AmMainBazooka"},
         "property":{"seasonal":true},
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.§!#b§,
         "hideInShop":true,
         "name":"BAG_HACK_DEVICE.NAME",
         "description":"BAG_HACK_DEVICE.DESCR",
         "hint":"BAG_HACK_DEVICE.HINT",
         "render":{
            "type":"clip",
            "clipClass":"BoneKey",
            "charParams":{"default":{
               "x":-8,
               "y":9,
               "hideHands":"right"
            }}
         },
         "menuIcon":"BoneKeyIcon",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "requiredLevel":18,
         "firstShotDelay":2,
         "cooldown":1,
         "maxShots":2,
         "classname":"BagHackWeapon",
         "temporal":true,
         "sellPrice":5,
         "property":{
            "unspendingTurn":true,
            "seasonal":true
         }
      },{
         "id":§+%z§.MOLE,
         "hideInShop":true,
         "name":"MOLE.NAME",
         "description":"MOLE.DESCR",
         "maxdamage":"MOLE.DAMAGE",
         "hint":"MOLE.HINT",
         "render":{
            "type":"clip",
            "clipClass":"Mole",
            "charParams":{"default":{
               "x":-8,
               "y":9,
               "hideHands":"both"
            }}
         },
         "menuIcon":"MoleIcon",
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "requiredLevel":18,
         "firstShotDelay":2,
         "cooldown":1,
         "maxShots":2,
         "classname":"MoleWeapon",
         "params":{
            "clipClassName":"MoleAm",
            "damage":new §&$2§(10),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(40),
            "pushForce":new §&$2§(0)
         },
         "property":{"seasonal":true},
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.MESSY_BOMBARDMENT,
         "name":"MESSY_BOMBARDMENT.NAME",
         "description":"MESSY_BOMBARDMENT.DESCR",
         "hint":"MESSY_BOMBARDMENT.HINT",
         "iconClassName":"MessyBombardmentControl",
         "render":{
            "type":"clip",
            "clipClass":"MessyBombardmentControl",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"MessyBombardmentIcon",
         "titleIcon":§+"'§.§"%A§,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"MessyBombardment",
         "hideInShop":true,
         "maxShots":1
      },{
         "id":§+%z§.MORTAR_TURRET,
         "name":"MORTAR_TURRET.NAME",
         "description":"MORTAR_TURRET.DESCR",
         "hint":"MORTAR_TURRET.HINT",
         "render":{
            "type":"clip",
            "clipClass":"MortarTurretMain",
            "charParams":{"default":{
               "x":0,
               "y":2,
               "hideHands":"both"
            }}
         },
         "maxShots":1,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"TurretPlacer",
         "menuIcon":"MortarTurretIcon",
         "hideInShop":true,
         "property":{
            "dontSpendTurn":true,
            "unspendingTurn":true,
            "ammoClass":MortarTurret,
            "usingWeapons":[§+%z§.MORTAR],
            "maximumShots":4,
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.FIREARM_TURRET,
         "name":"FIREARM_TURRET.NAME",
         "description":"FIREARM_TURRET.DESCR",
         "hint":"FIREARM_TURRET.HINT",
         "render":{
            "type":"clip",
            "clipClass":"FirearmTurretMain",
            "charParams":{"default":{
               "x":0,
               "y":2,
               "hideHands":"both"
            }}
         },
         "maxShots":1,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"TurretPlacer",
         "menuIcon":"FirearmTurretIcon",
         "hideInShop":true,
         "property":{
            "dontSpendTurn":true,
            "unspendingTurn":true,
            "ammoClass":FirearmTurret,
            "usingWeapons":[§+%z§.MINIGUN,§+%z§.AK_47,§+%z§.UZI,§+%z§.RIFLE,§+%z§.SNIPER_RIFLE],
            "excludedWeapons":[§+%z§.AK_47_UPG_1B_SNOWBALL,§+%z§.AK_47_UPG_2B_MOROZKO],
            "maximumShots":4,
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "hideInShop":true,
         "id":§+%z§.PLASMAGUN,
         "name":"PLASMAGUN.NAME",
         "description":"PLASMAGUN.DESCR",
         "hint":"PLASMAGUN.HINT",
         "maxdamage":"PLASMAGUN.DAMAGE",
         "iconClassName":"MainMortar",
         "render":{
            "type":"clip",
            "clipClass":"PlasmoGun",
            "charParams":{"default":{
               "x":-3,
               "y":-4.5,
               "hideHands":"both"
            }}
         },
         "menuIcon":"PlasmoGunIcon",
         "titleIcon":§+"'§.§9#f§,
         "price":§5&4§.§9!b§,
         "realprice":§5&4§.§0#E§,
         "classname":"FireballWeapon",
         "infinite":true,
         "maxShots":2,
         "firstShotDelay":2,
         "cooldown":1,
         "params":{
            "clipClassName":"PlasmoGunAmmo",
            "damage":new §&$2§(40),
            "damageRadius":new §&$2§(40),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(0)
         }
      },{
         "id":§+%z§.§;%Z§,
         "name":"POISONOUS_HEAL_FLASK.NAME",
         "description":"POISONOUS_HEAL_FLASK.DESCR",
         "hint":"POISONOUS_HEAL_FLASK.HINT",
         "menuIcon":"IconPoisonousHealPotion",
         "titleIcon":§+"'§.§ "1§,
         "render":{
            "type":"clip",
            "clipClass":"PoisonousHealPotion",
            "charParams":{"default":{
               "x":0,
               "y":0,
               "hideHands":"left"
            }}
         },
         "realprice":1,
         "classname":"ClearPathBazooka",
         "maxShots":2,
         "cooldown":1,
         "params":{
            "clipClassName":"AmPoisonousHealPotion",
            "damage":new §&$2§(0),
            "damageRadius":new §&$2§(30),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "dontSpendTurn":true,
            "unspendingTurn":true,
            "ammoClass":§""?§,
            "consumable":true
         }
      },{
         "id":§+%z§.PUPPET,
         "name":"PUPPET.NAME",
         "description":"PUPPET.DESCR",
         "hint":"PUPPET.HINT",
         "maxdamage":"PUPPET.DAMAGE",
         "iconClassName":"Puppet",
         "menuIcon":"IconPuppet",
         "render":{
            "type":"clip",
            "clipClass":"Puppet",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "price":4200,
         "realprice":42,
         "requiredLevel":21,
         "classname":"PuppetWeapon",
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":5,
         "params":{
            "clipClassName":"AmPuppet",
            "damage":new §&$2§(10),
            "damageRadius":new §&$2§(45),
            "explosionRadius":new §&$2§(25),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "ammoClass":Puppet,
            "attachedClip":"PuppetAttached",
            "trailColor":2565927
         }
      },{
         "id":§+%z§.LULLABY_ELIXIR,
         "name":"LULLABY_ELIXIR.NAME",
         "description":"LULLABY_ELIXIR.DESCR",
         "hint":"LULLABY_ELIXIR.HINT",
         "menuIcon":"IconLullabyElixir",
         "titleIcon":[§+"'§.§0"E§,§+"'§.§@!t§],
         "render":{
            "type":"clip",
            "clipClass":"LullabyElixir",
            "charParams":{"default":{
               "x":0,
               "y":0,
               "hideHands":"left"
            }}
         },
         "price":150,
         "realprice":1,
         "classname":"Bazooka",
         "maxShots":2,
         "cooldown":1,
         "params":{
            "clipClassName":"AmLullabyElixir",
            "damage":new §&$2§(0),
            "damageRadius":new §&$2§(30),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "dontSpendTurn":true,
            "unspendingTurn":true,
            "ammoClass":LullabyElixir,
            "consumable":true
         }
      },{
         "id":§+%z§.HUNGRY_GARY,
         "name":"HUNGRY_GARY.NAME",
         "description":"HUNGRY_GARY.DESCR",
         "hint":"HUNGRY_GARY.HINT",
         "render":{
            "type":"clip",
            "clipClass":"GaryIdle",
            "charParams":{"default":{
               "x":0,
               "y":2,
               "hideHands":"both"
            }}
         },
         "maxShots":1,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "requiredLevel":15,
         "classname":"TurretPlacer",
         "menuIcon":"GaryIcon",
         "hideInShop":true,
         "property":{
            "ammoClass":§`#r§,
            "maximumShots":3,
            "barrierHeight":150,
            "minUnits":2,
            "canRunAway":new §?"&§(false),
            "dropNotForSingleUnit":true,
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.SWAP_TELEPORT,
         "hideInShop":true,
         "name":"SWAP_TELEPORT.NAME",
         "description":"SWAP_TELEPORT.DESCR",
         "note":"SWAP_TELEPORT.NOTE",
         "hint":"SWAP_TELEPORT.HINT",
         "iconClassName":"SwapTeleport",
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"SwapTeleport",
         "menuIcon":"SwapTeleportIcon",
         "titleIcon":[§+"'§.§ "0§],
         "maxShots":1,
         "firstShotDelay":3,
         "render":{
            "type":"clip",
            "clipClass":"SwapTeleport",
            "charParams":{"default":{
               "x":0.3,
               "y":-3.5,
               "hideHands":"right"
            }}
         },
         "params":{
            "clipClassName":"SwapTeleport",
            "damage":new §&$2§(0),
            "damageRadius":new §&$2§(35),
            "explosionRadius":new §&$2§(22),
            "pushForce":new §&$2§(0)
         },
         "property":{"seasonal":true},
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.ROBO_PIRANHA,
         "hideInShop":true,
         "name":"ROBO_PIRANHA.NAME",
         "description":"ROBO_PIRANHA.DESCR",
         "note":"ROBO_PIRANHA.NOTE",
         "maxdamage":"ROBO_PIRANHA.DAMAGE",
         "hint":"ROBO_PIRANHA.HINT",
         "iconClassName":"RoboPiranhaIcon",
         "render":{
            "type":"clip",
            "clipClass":"RoboPiranhaControl",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"RoboPiranhaIcon",
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"RoboPiranhaWeapon",
         "maxShots":1,
         "firstShotDelay":3,
         "params":{
            "clipClassName":"RoboPiranhaAm",
            "damage":new §&$2§(30),
            "damageRadius":new §&$2§(40),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(20)
         },
         "property":{"seasonal":true},
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.THEIF_ATTACK,
         "name":"THEIF_ATTACK_WEAPON.NAME",
         "description":"THEIF_ATTACK_WEAPON.DESCR",
         "maxdamage":"THEIF_ATTACK_WEAPON.DAMAGE",
         "hint":"THEIF_ATTACK_WEAPON.HINT",
         "price":2100,
         "realprice":21,
         "requiredLevel":21,
         "classname":"TheifAttackWeapon",
         "infinite":true,
         "isComplex":true,
         "maxShots":2,
         "cooldown":1,
         "firstShotDelay":1,
         "shotsPerTurn":1,
         "iconClassName":"SpiritGun",
         "render":{
            "type":"clip",
            "clipClass":"SpiritGun",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"SpiritGunIcon",
         "params":{
            "clipClassName":"AmSpirit",
            "damage":new §&$2§(10),
            "damageRadius":new §&$2§(10),
            "explosionRadius":new §&$2§(5),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "unspendingTurn":true,
            "durationDirect":17,
            "durationArea":11
         }
      },{
         "id":§+%z§.THUNDER_HAMMER,
         "name":"THUNDER_HAMMER.NAME",
         "description":"THUNDER_HAMMER.DESCR",
         "maxdamage":"THUNDER_HAMMER.DAMAGE",
         "hint":"THUNDER_HAMMER.HINT",
         "iconClassName":"BatHammer",
         "render":{
            "type":"clip",
            "clipClass":"BatHammer",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "requiredLevel":15,
         "classname":"Bat",
         "menuIcon":"IconBatHammer",
         "titleIcon":§+"'§.§`!^§,
         "hideInShop":true,
         "maxShots":1,
         "params":{
            "clipClassName":"AmBatHammer",
            "damage":new §&$2§(60),
            "damageRadius":new §&$2§(25),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "groundHitDamage":new §&$2§(100),
            "groundHitDamageRadius":new §&$2§(50),
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.RED_HOT_HAMMER,
         "name":"RED_HOT_HAMMER.NAME",
         "description":"RED_HOT_HAMMER.DESCR",
         "maxdamage":"RED_HOT_HAMMER.DAMAGE",
         "hint":"RED_HOT_HAMMER.HINT",
         "render":{
            "type":"clip",
            "clipClass":"SledgeHammerRed",
            "charParams":{"default":{"hideHands":"left"}}
         },
         "menuIcon":"IconSledgehammerRed",
         "titleIcon":§+"'§.§9#f§,
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "requiredLevel":15,
         "classname":"Sledgehammer",
         "hideInShop":true,
         "maxShots":1,
         "params":{
            "clipClassName":"AmSledgeHammerRed",
            "damage":new §&$2§(160),
            "damageRadius":new §&$2§(25),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "holeDepth":24,
            "burningHole":new §?"&§(true),
            "fixedDamage":new §?"&§(true),
            "canCrit":new §?"&§(false),
            "seasonal":true
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.ENERGY_RIFLE,
         "name":"ENERGY_RIFLE.NAME",
         "description":"ENERGY_RIFLE.DESCR",
         "maxdamage":"ENERGY_RIFLE.DAMAGE",
         "hint":"",
         "classname":"EnergyGun",
         "iconClassName":"MainEnergyGun",
         "render":{
            "type":"clip",
            "clipClass":"MainEnergyGun",
            "charParams":{"default":{
               "x":-1.8,
               "y":-8.6,
               "hideHands":"both"
            }}
         },
         "menuIcon":"IconEnergyGun",
         "titleIcon":§+"'§.§`!^§,
         "realprice":11,
         "price":1100,
         "requiredLevel":20,
         "infinite":true,
         "isComplex":true,
         "maxShots":4,
         "params":{
            "clipClassName":"AmEnergyGun",
            "damage":new §&$2§(75),
            "damageRadius":new §&$2§(35),
            "explosionRadius":new §&$2§(20),
            "pushForce":new §&$2§(0)
         },
         "property":{"trajectoryCrosshair":new §?"&§(true)}
      },{
         "id":§+%z§.HANDICRAFTED_RIFLE,
         "name":"HANDICRAFTED_RIFLE.NAME",
         "description":"HANDICRAFTED_RIFLE.DESCR",
         "hint":"HANDICRAFTED_RIFLE.HINT",
         "maxdamage":"HANDICRAFTED_RIFLE.DAMAGE",
         "iconClassName":"MainHandicraftedSniperRifle",
         "render":{
            "type":"clip",
            "clipClass":"MainHandicraftedSniperRifle",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IconHandicraftedSniperRifle",
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"HandicraftedSniperRifle",
         "hideInShop":true,
         "maxShots":2,
         "params":{
            "clipClassName":"AmFugasRocket",
            "damage":new §&$2§(10),
            "damageRadius":new §&$2§(75),
            "explosionRadius":new §&$2§(55),
            "pushForce":new §&$2§(0)
         },
         "property":{"seasonal":true},
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.GAS_GRENADE_SHOCK,
         "name":"GAS_GRENADE_SHOCK.NAME",
         "description":"GAS_GRENADE_SHOCK.DESCR",
         "maxdamage":"GAS_GRENADE_SHOCK.DAMAGE",
         "hint":"GAS_GRENADE_SHOCK.HINT",
         "note":"EXPLOSION_DELAY.NOTE",
         "iconClassName":"GasGrenadeShock",
         "menuIcon":"IconGasGrenadeShock",
         "titleIcon":§+"'§.§`!^§,
         "render":{
            "type":"clip",
            "clipClass":"GasGrenadeShock",
            "charParams":{"default":{
               "x":-9,
               "y":2,
               "hideHands":"left"
            }}
         },
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"GasGrenadeWeapon",
         "maxShots":2,
         "hideInShop":true,
         "params":{
            "clipClassName":"AmGasGrenadeShock",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0)
         },
         "property":{
            "ammoClass":GasGrenade,
            "cloudClipName":"GasCloudShock",
            "explodeOnStopMoving":false,
            "explodeDamageType":§&!E§.§=$-§,
            "cloudClass":§`%[§
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.BARRIERS_LAUNCHER,
         "name":"BARRIERS_LAUNCHER.NAME",
         "description":"BARRIERS_LAUNCHER.DESCR",
         "maxdamage":"BARRIERS_LAUNCHER.DAMAGE",
         "iconClassName":"BarrierLauncherMain",
         "render":{
            "type":"clip",
            "clipClass":"BarrierLauncherMain",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"BarrierLauncherIcon",
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"BarriersLauncher",
         "hideInShop":true,
         "maxShots":1,
         "params":{
            "damage":new §&$2§(0),
            "damageRadius":new §&$2§(0),
            "explosionRadius":new §&$2§(0),
            "pushForce":new §&$2§(0)
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.ION_CANNON,
         "name":"ION_CANNON.NAME",
         "description":"ION_CANNON.DESCR",
         "maxdamage":"ION_CANNON.DAMAGE",
         "iconClassName":"IonCannonMain",
         "render":{
            "type":"clip",
            "clipClass":"IonCannonMain",
            "charParams":{"default":{"hideHands":"both"}}
         },
         "menuIcon":"IonCannonIcon",
         "titleIcon":§+"'§.§`!^§,
         "realprice":70,
         "classname":"IonCannon",
         "infinite":true,
         "maxShots":1,
         "firstShotDelay":5,
         "params":{
            "damage":new §&$2§(10),
            "damageRadius":new §&$2§(50),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(0)
         }
      },{
         "hideInShop":true,
         "id":§+%z§.PUPPET_MECH,
         "name":"PUPPET_MECH.NAME",
         "description":"PUPPET_MECH.DESCR",
         "maxdamage":"PUPPET_MECH.DAMAGE",
         "iconClassName":"MechPuppet",
         "menuIcon":"IconMechPuppet",
         "titleIcon":§+"'§.§`!^§,
         "render":{
            "type":"clip",
            "clipClass":"MechPuppet",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"PuppetWeapon",
         "maxShots":1,
         "firstShotDelay":2,
         "params":{
            "clipClassName":"AmMechPuppet",
            "damage":new §&$2§(20),
            "damageRadius":new §&$2§(45),
            "explosionRadius":new §&$2§(25),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "hp":500,
            "ammoClass":MechPuppet,
            "attachedClip":"MechPuppetAttached",
            "bounceSounds":[§`!v§.§;!?§],
            "attackSound":§`!v§.§3"Q§,
            "trailWidth":8,
            "trailColor":6108949
         },
         "temporal":true,
         "sellPrice":5
      },{
         "id":§+%z§.ELECTRO_BUOY,
         "hideInShop":true,
         "name":"ELECTRO_BUOY.NAME",
         "description":"ELECTRO_BUOY.DESCR",
         "hint":"ELECTRO_BUOY.HINT",
         "maxdamage":"ELECTRO_BUOY.DAMAGE",
         "iconClassName":"HandleBuoy",
         "menuIcon":"IconBuoy",
         "titleIcon":§+"'§.§`!^§,
         "render":{
            "type":"clip",
            "clipClass":"HandleBuoy",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"BobberThrow",
         "maxShots":2,
         "cooldown":5,
         "params":{
            "clipClassName":"AmBuoy",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(45),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "consumable":true,
            "ammoClass":§'!T§
         }
      },{
         "id":§+%z§.POISON_BOBBER,
         "hideInShop":true,
         "name":"POISON_BOBBER.NAME",
         "description":"POISON_BOBBER.DESCR",
         "hint":"POISON_BOBBER.HINT",
         "maxdamage":"POISON_BOBBER.DAMAGE",
         "iconClassName":"HandleBobber",
         "menuIcon":"IconBobber",
         "titleIcon":§+"'§.§ "1§,
         "render":{
            "type":"clip",
            "clipClass":"HandleBobber",
            "charParams":{"default":{
               "x":-6.5,
               "y":0.6,
               "hideHands":"left"
            }}
         },
         "realprice":§5&4§.§0#E§,
         "price":§5&4§.§9!b§,
         "classname":"BobberThrow",
         "maxShots":2,
         "cooldown":5,
         "params":{
            "clipClassName":"AmBobber",
            "damage":new §&$2§(50),
            "damageRadius":new §&$2§(70),
            "explosionRadius":new §&$2§(45),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "consumable":true,
            "ammoClass":§2&7§
         }
      },{
         "shopState":§^"p§.§9%t§,
         "id":§+%z§.PAPER_SQUADRON,
         "name":"PAPER_SQUADRON.NAME",
         "description":"PAPER_SQUADRON.DESCR",
         "maxdamage":"PAPER_SQUADRON.DAMAGE",
         "hint":"PAPER_SQUADRON.HINT",
         "iconClassName":"PaperPlaneHand",
         "render":{
            "type":"clip",
            "clipClass":"PaperPlaneHand",
            "charParams":{"default":{
               "x":-3,
               "y":3,
               "hideHands":"both"
            }}
         },
         "menuIcon":"PaperPlaneIcon",
         "titleIcon":§+"'§.§"%A§,
         "price":4000,
         "realprice":40,
         "requiredLevel":20,
         "classname":"PaperSquadron",
         "infinite":true,
         "maxShots":2,
         "isComplex":true,
         "firstShotDelay":2,
         "cooldown":2,
         "params":{
            "clipClassName":"PaperPlaneAmmo",
            "damage":new §&$2§(10),
            "damageRadius":new §&$2§(60),
            "explosionRadius":new §&$2§(30),
            "pushForce":new §&$2§(0)
         },
         "property":{
            "ammoClass":§'C§,
            "damagePerFrame":new §&$2§(1)
         }
      }];
      
      public function §6#7§()
      {
         super();
      }
      
      public static function §1^§() : Array
      {
         return §;"f§;
      }
      
      public function get renderDefaults() : Object
      {
         return §]%0§;
      }
      
      public function get config() : Array
      {
         return §1^§();
      }
      
      public function get customConfigs() : Object
      {
         return null;
      }
   }
}

