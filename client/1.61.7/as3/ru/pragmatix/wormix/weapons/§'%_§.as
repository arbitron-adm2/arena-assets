package ru.pragmatix.wormix.weapons
{
   import § "d§.§,!c§;
   import §!$d§.§<$c§;
   import §&!?§.§@&@§;
   import §-%B§.*;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §@!i§.§<!9§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §'%_§
   {
      
      public static const MORTAR:§,%r§ = new Mortar();
      
      public static const BAZOOKA:§,%r§ = new Bazooka();
      
      public static const GRENADE:§,%r§ = new Grenade();
      
      public static const §2$W§:§,%r§ = new ClusterGrenade();
      
      public static const SHOTGUN:§,%r§ = new Rifle();
      
      public static const UZI:§,%r§ = new Uzi();
      
      public static const DRILL:§,%r§ = new DrillGun();
      
      public static const CARPET_BAZOOKA:§,%r§ = new CarpetBazooka();
      
      public static const §,#C§:§,%r§ = new Shotgun();
      
      public static const WATERMELON:§,%r§ = new WatermelonWeapon();
      
      public static const HOLY_GRENADE:§,%r§ = new HolyGrenade();
      
      public static const STICKY_GRENADE:§,%r§ = new StickyGrenade();
      
      public static const SNIPER_RIFLE:§,%r§ = new SniperRifle();
      
      public static const FIREWORK:§,%r§ = new Firework();
      
      public static const MOLOTOV:§,%r§ = new Molotov();
      
      public static const GUIDING_BAZOOKA:§,%r§ = new HomingBazooka();
      
      public static const SHEEP:§,%r§ = new SheepWeapon();
      
      public static const SUPER_SHEEP:§,%r§ = new SuperSheepWeapon();
      
      public static const SHURIKEN:§,%r§ = new ShurikenToss();
      
      public static const CANNON:§,%r§ = new Cannon();
      
      public static const HARPOON:§,%r§ = new ElectricHarpoon();
      
      public static const KALASH:§,%r§ = new Kalash();
      
      public static const FREEZER:§,%r§ = new FreezingBazooka();
      
      public static const CROSSBOW:§,%r§ = new Crossbow();
      
      public static const GROUNDBREAKER:§,%r§ = new GroundBreaker();
      
      public static const §?Z§:§,%r§ = new Helipad();
      
      public static const §%$7§:§,%r§ = new UfoPad();
      
      public static const §5&B§:§,%r§ = new DiscLauncher();
      
      public static const §-#[§:§,%r§ = new HoppingWeapon();
      
      public static const CIRCUS_CANNON:§,%r§ = new CircusCannon();
      
      public static const BOOMERANG:§,%r§ = new BoomerangWeapon();
      
      public static const §-#_§:§,%r§ = new SwitchTurn();
      
      public static const GIRDER:§,%r§ = new Girder();
      
      public static const §,!7§:§,%r§ = new RopeGun();
      
      public static const §&%n§:§,%r§ = new TeleThrower();
      
      public static const JETPACK:§,%r§ = new Jetpack();
      
      public static const TELEPORT:§,%r§ = new Teleport();
      
      public static const BLOW_TORCH:§,%r§ = new BlowTorch();
      
      public static const FIRE_THROWER:§,%r§ = new FireThrower();
      
      public static const MINIGUN:§,%r§ = new Minigun();
      
      public static const BARRIERS_LAUNCHER:§,%r§ = new BarriersLauncher();
      
      public function §'%_§()
      {
         super();
         throw new IllegalOperationError("Arsenal cannot be instantiated");
      }
      
      public static function getWeapon(param1:int) : §,%r§
      {
         return §<$c§.§ !=§(param1).getWeapon();
      }
      
      public static function §5a§(param1:UserProfile) : §,%r§
      {
         return §^%[§(param1,§+%z§.BAZOOKA);
      }
      
      public static function §^%[§(param1:UserProfile, param2:uint) : §,%r§
      {
         var _loc3_:BackpackItem = §1!S§.§@!&§(param2,param1.§3%^§());
         return _loc3_ ? §;#_§(_loc3_.getRecord()).getWeapon() : getWeapon(param2);
      }
      
      public static function § !a§() : void
      {
         §<$c§.§ !a§();
      }
   }
}

