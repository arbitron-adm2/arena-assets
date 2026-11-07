package §=;§
{
   import §!K§.§&#Q§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+u§.§'n§;
   import §,"v§.§9%d§;
   import §-I§.§,$$§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#0§.§;4§;
   import §1#p§.§"Z§;
   import §5#`§.§7%g§;
   import §7$t§.§;#_§;
   import §<%k§.§2§;
   import §<K§.*;
   import §=&6§.*;
   import §?$L§.§&$9§;
   import §?>§.§]!V§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@#K§.§3&2§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §`v§.§2&H§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§^t§;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.RenameClanResponse;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.weapons.BarriersLauncher;
   import ru.pragmatix.wormix.weapons.Bazooka;
   import ru.pragmatix.wormix.weapons.BlowTorch;
   import ru.pragmatix.wormix.weapons.BoomerangWeapon;
   import ru.pragmatix.wormix.weapons.Cannon;
   import ru.pragmatix.wormix.weapons.CarpetBazooka;
   import ru.pragmatix.wormix.weapons.CircusCannon;
   import ru.pragmatix.wormix.weapons.ClusterGrenade;
   import ru.pragmatix.wormix.weapons.Crossbow;
   import ru.pragmatix.wormix.weapons.DiscLauncher;
   import ru.pragmatix.wormix.weapons.DrillGun;
   import ru.pragmatix.wormix.weapons.ElectricHarpoon;
   import ru.pragmatix.wormix.weapons.FireThrower;
   import ru.pragmatix.wormix.weapons.Firework;
   import ru.pragmatix.wormix.weapons.FreezingBazooka;
   import ru.pragmatix.wormix.weapons.Girder;
   import ru.pragmatix.wormix.weapons.Grenade;
   import ru.pragmatix.wormix.weapons.GroundBreaker;
   import ru.pragmatix.wormix.weapons.Helipad;
   import ru.pragmatix.wormix.weapons.HolyGrenade;
   import ru.pragmatix.wormix.weapons.HomingBazooka;
   import ru.pragmatix.wormix.weapons.HoppingWeapon;
   import ru.pragmatix.wormix.weapons.Jetpack;
   import ru.pragmatix.wormix.weapons.Kalash;
   import ru.pragmatix.wormix.weapons.Minigun;
   import ru.pragmatix.wormix.weapons.Molotov;
   import ru.pragmatix.wormix.weapons.Mortar;
   import ru.pragmatix.wormix.weapons.Rifle;
   import ru.pragmatix.wormix.weapons.RopeGun;
   import ru.pragmatix.wormix.weapons.SheepWeapon;
   import ru.pragmatix.wormix.weapons.Shotgun;
   import ru.pragmatix.wormix.weapons.ShurikenToss;
   import ru.pragmatix.wormix.weapons.SniperRifle;
   import ru.pragmatix.wormix.weapons.StickyGrenade;
   import ru.pragmatix.wormix.weapons.SuperSheepWeapon;
   import ru.pragmatix.wormix.weapons.SwitchTurn;
   import ru.pragmatix.wormix.weapons.TeleThrower;
   import ru.pragmatix.wormix.weapons.Teleport;
   import ru.pragmatix.wormix.weapons.UfoPad;
   import ru.pragmatix.wormix.weapons.Uzi;
   import ru.pragmatix.wormix.weapons.WatermelonWeapon;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §@#3§ extends §3&2§
   {
      
      public static const §;%5§:int = 40;
      
      private static const §7#!§:§&$2§ = new §&$2§(14);
      
      private static const §5%h§:String = "WeaponBox";
      
      private static const DAMAGE:uint = 70;
      
      private static const §9!"§:uint = 40;
      
      private var §"N§:§;#_§ = null;
      
      private var quantity:uint;
      
      private var §`#l§:int = -1;
      
      public function §@#3§(param1:Point, param2:§;#_§ = null, param3:int = 1)
      {
         super(param1.x,param1.y,§5%h§,§0$N§.CONTAINS_RANDOM_WEAPON,DAMAGE,§9!"§,§&!E§.§!?§);
         §1"-§.explode(§;n§.§6#B§,param1.x,param1.y,20);
         this.§"N§ = param2;
         this.quantity = param3;
         §-$[§ = §4!<§ = §7#!§.value;
         physParams.§0%m§(0,§4!<§);
      }
      
      public function §6y§(param1:§"Z§) : void
      {
         this.§`#l§ = param1.getNumber();
      }
      
      override protected function §-%+§(param1:§+%]§) : Boolean
      {
         return this.§`#l§ == -1 || this.§`#l§ == param1.squad.getNumber();
      }
      
      override protected function §0$j§(param1:§+%]§) : void
      {
         super.§0$j§(param1);
         if(param1.squad.isAi())
         {
            return;
         }
         if(param1.squad.isLocal())
         {
            §8"%§.§?!W§.§7%@§.increment(§;4§.COLLECTED_CRATES);
            §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§;z§);
         }
         if(this.§"N§ == null)
         {
            this.§"N§ = §,$$§.§5#s§(param1);
            if(Boolean(this.§"N§) && §;#_§(this.§"N§).getDropQuantity() > 0)
            {
               this.quantity = §;#_§(this.§"N§).getDropQuantity();
            }
         }
         if(this.§"N§)
         {
            §7%g§.§?!]§(param1,this.§"N§,this.quantity);
            §1"-§.§3#=§(this.§"N§.getMenuIcon(),x,y,§;%5§);
         }
      }
   }
}

