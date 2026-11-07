package ru.pragmatix.wormix.weapons.boss
{
   import § #k§.*;
   import § $q§.*;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#",§.*;
   import §#%!§.§ §;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §%%A§.§&#_§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §'!Z§.§]!&§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §0!§.§9"u§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §4'§.§`"q§;
   import §5#`§.*;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §8$V§.§[#_§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §?$7§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`%&§.§#"U§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.SelectStuffResult;
   import ru.pragmatix.wormix.messages.structures.SelectStuffResultStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.§,%r§;
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
   
   public class ArchbotMeteorVolley extends §,%r§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const PI_ONE_180:Number = Math.PI / 180;
      
      protected var frames:§&$2§ = new §&$2§(0);
      
      public function ArchbotMeteorVolley()
      {
         super();
         §"#z§ = 45;
         §2$"§ = 45;
         §7&§(new §&!P§());
      }
      
      override public function §""2§(param1:Object) : void
      {
         §-g§ = new §#"U§(300);
         super.§""2§(param1);
      }
      
      override protected function §`%V§() : void
      {
         §+# §.§9! §.deactivate();
         startFrameListening();
         this.frames.value = 0;
         §?"'§ = true;
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:§1>§ = null;
         ++this.frames.value;
         if(this.frames.value % 20 == 0)
         {
            _loc2_ = -PI_HALF + §8"%§.randomSeed.§,!q§(-10,10) * PI_ONE_180;
            _loc3_ = new §&#_§(owner,paramSet,_loc2_,§2$"§);
            _loc3_.§+"E§(8,20);
         }
         if(this.frames.value > 100)
         {
            this.§-"%§();
         }
      }
      
      protected function §-"%§() : void
      {
         §?"'§ = false;
         §+# §.§9! §.activate();
         §2#G§();
         §=#P§.§6+§();
         §?!K§();
      }
   }
}

