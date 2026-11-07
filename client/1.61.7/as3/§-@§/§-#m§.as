package §-@§
{
   import § "d§.§,!c§;
   import § &5§.§0&$§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!?§.§+" §;
   import §&#E§.MsgBoxSocialSelect;
   import §&#W§.§?#]§;
   import §&#h§.§5f§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!§.§6#z§;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2"L§.§^$y§;
   import §2#W§.PvpChestBox;
   import §2#i§.§9##§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §4#2§.*;
   import §4$b§.§2m§;
   import §4%_§.§%%D§;
   import §4%_§.§3§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%W§.§&!P§;
   import §<!W§.§;#A§;
   import §<$q§.*;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[$<§.§;"E§;
   import §[$<§.§>!u§;
   import §[%§.*;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import config.§5%T§;
   import config.achievements.§"!&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.SyncInvestedAwardPoints;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
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
   
   public class §-#m§
   {
      
      public static const §%&E§:uint = 5;
      
      private var §!"e§:Number = new Date().time;
      
      private var §+!e§:Number = 0;
      
      private var §-%,§:uint = 0;
      
      private var battlesCount:uint = 0;
      
      public function §-#m§()
      {
         super();
      }
      
      public function §`t§() : uint
      {
         return this.battlesCount;
      }
      
      public function §-"r§(param1:uint) : void
      {
         this.battlesCount = param1;
      }
      
      public function §8!M§() : void
      {
         if(this.battlesCount)
         {
            --this.battlesCount;
         }
      }
      
      public function §9?§() : void
      {
         this.battlesCount = 0;
         this.§!"e§ = new Date().time;
      }
      
      public function §&">§() : Number
      {
         var _loc1_:Number = new Date().time;
         return this.§!"e§ - _loc1_;
      }
      
      public function §9!O§(param1:Number) : void
      {
         this.§!"e§ = param1;
      }
      
      public function §7$J§() : Boolean
      {
         var _loc1_:Number = this.§&">§();
         return this.battlesCount > 0 || _loc1_ <= 0;
      }
      
      public function §&H§() : Number
      {
         var _loc1_:Number = new Date().time;
         return this.§+!e§ - _loc1_;
      }
      
      public function §-!"§(param1:Number) : void
      {
         this.§+!e§ = param1;
      }
      
      public function §]",§() : uint
      {
         return this.§-%,§;
      }
      
      public function §@!l§(param1:uint) : void
      {
         this.§-%,§ = param1;
      }
   }
}

