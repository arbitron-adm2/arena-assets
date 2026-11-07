package §!$Z§
{
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%§.Boar;
   import §^"y§.§]#i§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
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
   
   public class §6=§ extends §,#W§
   {
      
      public function §6=§(param1:String, param2:String, param3:int, param4:Function = null, param5:§=#?§ = null, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,§+"'§.§]"I§,param6);
      }
      
      public static function show(param1:uint, param2:Function = null) : void
      {
         var _loc3_:§6=§ = null;
         var _loc8_:int = 0;
         _loc3_ = new §6=§("","",§,#W§.§`$x§,param2);
         var _loc4_:MovieClip = _loc3_.§'$a§("backPanel");
         var _loc5_:TextField = _loc3_.§'%s§("cost");
         var _loc6_:TextField = _loc3_.§'%s§("msg");
         var _loc7_:TextField = _loc3_.§'%s§("submsg");
         _loc8_ = param1 * §@C§.§3$U§;
         var _loc9_:Boolean = §]#i§.userClan.treasury >= _loc8_;
         §&$9§.§>&F§(_loc3_.§]"a§,§"-§.§+$m§,§0$N§.MEDAL_COST_LABEL);
         §&$9§.§>&F§(_loc5_,§"-§.§6"j§,param1.toString());
         §&$9§.§>&F§(_loc6_,§"-§.§+$m§,§0$N§.§%! §("CLAN_MEDAL_COST_CONFIRM_WARNING"));
         var _loc10_:String = Social.§-%c§.§4!]§(_loc8_,§0$N§.RUBY_PLURALS);
         §&$9§.§>&F§(_loc7_,§"-§.§+$m§,§0%§.format(§0$N§.§%! §("CLAN_MEDAL_COST_CONFIRM_COUNT"),{
            "count":_loc8_,
            "rubies":_loc10_
         }));
         _loc7_.visible = !_loc9_;
         _loc3_.§>!-§.setDisabled(!_loc9_);
         _loc3_.§>!-§.setText(§0"-§.BUTTON_YES,§"-§.§+$m§);
         _loc3_.§!S§.setText(§0"-§.BUTTON_CANCEL,§"-§.§+$m§);
         _loc3_.show();
      }
   }
}

