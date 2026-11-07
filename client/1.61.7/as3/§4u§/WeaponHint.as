package §4u§
{
   import § "d§.§,!c§;
   import §!!i§.§@&&§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §&&6§.*;
   import §+#P§.§]!E§;
   import §,$J§.§,$O§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#x§.*;
   import §3#a§.§-!`§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.weapons.BarriersLauncher;
   import ru.pragmatix.wormix.weapons.Bat;
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
   
   public class WeaponHint extends §8#]§
   {
      
      public function WeaponHint(param1:DisplayObjectContainer = null)
      {
         super(param1);
      }
      
      private static function §`!L§(param1:§;#_§, param2:String) : String
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc3_:Date = new Date();
         _loc3_.setMonth(_loc3_.month,1);
         _loc3_.month += 1;
         if(§8"%§.§ $,§.§?#5§(param1.getId()))
         {
            _loc3_.month += 1;
         }
         _loc4_ = "1";
         _loc5_ = §0#2§.§ R§(int(_loc3_.getMonth()));
         var _loc6_:String = §0%§.format(§0$N§.§%! §("WEAPON_EXPIRY"),{
            "day":_loc4_,
            "month":_loc5_
         });
         return param2 + ((param2.length > 0 ? "\n\n" : "") + _loc6_);
      }
      
      override public function initHint(param1:§&!e§) : void
      {
         super.initHint(param1);
         var _loc2_:§;#_§ = param1 as §;#_§;
         §`b§(_loc2_.§]G§() != "",_loc2_.§]G§(),"description");
         §`b§(_loc2_.§-$O§() != null && _loc2_.§-$O§() != "",§0$N§.DAMAGE + ": " + _loc2_.§-$O§(),"damage");
         var _loc3_:String = _loc2_.§#6§();
         if(_loc2_.§-%g§() && !§8"%§.§?!W§.inBattle)
         {
            _loc3_ = §`!L§(_loc2_,_loc3_);
         }
         §`b§(_loc3_ != "",_loc3_,"note");
         §8$Q§();
      }
      
      public function setLevel(param1:uint) : void
      {
         §4&D§.text += §0%§.§2]§(" (%1 %2)",§0$N§.§%! §("LEVEL_BRIEF"),param1);
         if(§!#N§)
         {
            §?"e§();
         }
      }
   }
}

