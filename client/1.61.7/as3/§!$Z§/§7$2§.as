package §!$Z§
{
   import § !8§.§`!d§;
   import §!L§.§+"'§;
   import §%"1§.§=#?§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
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
   
   public class §7$2§ extends §,#W§
   {
      
      public function §7$2§(param1:String, param2:String, param3:int, param4:Function = null, param5:§=#?§ = null, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,§+"'§.§^%z§,param6);
      }
      
      public static function show(param1:UserProfile, param2:int, param3:int, param4:Function = null) : void
      {
         var _loc5_:§7$2§ = null;
         _loc5_ = new §7$2§("","",§,#W§.§`$x§,param4);
         var _loc6_:MovieClip = _loc5_.§'$a§("backPanel");
         var _loc7_:TextField = _loc5_.§'%s§("msg");
         var _loc8_:TextField = _loc5_.§'%s§("msgPay");
         var _loc9_:TextField = _loc5_.§'%s§("msgMedals");
         var _loc10_:TextField = _loc5_.§'%s§("countPay");
         var _loc11_:TextField = _loc5_.§'%s§("medalsCost");
         §&$9§.§>&F§(_loc5_.§]"a§,§"-§.§+$m§,§0$N§.§%! §("CONTEXT_MENU_FIRE_FROM_CLAN"));
         §&$9§.§>&F§(_loc7_,§"-§.§+$m§,param1.getSocialData().§#$5§() + " " + param1.getSocialData().§8!_§());
         §&$9§.§>&F§(_loc8_,§"-§.§+$m§,§0$N§.§%! §("CLAN_MATE_FIRE_RETURN_PAY"));
         §&$9§.§>&F§(_loc9_,§"-§.§+$m§,§0$N§.§%! §("CLAN_MATE_FIRE_MADELS_COST"));
         §&$9§.§>&F§(_loc10_,§"-§.§6"j§,(param2 > 0 ? "-" : "") + param2.toString());
         §&$9§.§>&F§(_loc11_,§"-§.§6"j§,(param3 > 0 ? "-" : "") + param3.toString());
         var _loc12_:int = param2 + param3;
         _loc5_.§>!-§.setText(§0$N§.§%! §("CLAN_MATE_FIRE"),§"-§.§+$m§);
         _loc5_.§>!-§.setText((_loc12_ > 0 ? "-" : "") + _loc12_.toString(),§"-§.§+$m§,"price");
         §4"0§.§;#f§(_loc5_.§>!-§);
         _loc5_.§!S§.setText(§0"-§.BUTTON_CANCEL,§"-§.§+$m§);
         _loc5_.show();
      }
   }
}

