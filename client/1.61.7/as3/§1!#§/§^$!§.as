package §1!#§
{
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&$Y§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.§""n§;
   import §0%[§.Cookie;
   import §0%j§.§#!U§;
   import §2!-§.DamageEvent;
   import §4!x§.§@& §;
   import §4#`§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=&6§.§&"K§;
   import §?$K§.§=z§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §^$!§ extends §@& §
   {
      
      public function §^$!§(param1:uint)
      {
         var _loc3_:Number = NaN;
         super(§6#A§.§!&6§(§+"'§.§,&C§));
         §>!-§.setText(§0$N§.BUTTON_GO_AT_BANK,§"-§.§+$m§);
         var _loc2_:String = §0$N§.§%! §("ACTION_BONUS_TEXT").replace("{bonus}",param1.toString());
         §7&5§.§>&<§(§'%s§("endsText"),§0$N§.§%! §("ACTION_ENDS_TEXT"));
         §7&5§.§>&<§(§'%s§("bonusText"),_loc2_);
         §7&5§.§>&<§(§'%s§("description"),§0$N§.§%! §("ACTION_BONUS_DESCR"));
         _loc3_ = §&"K§.§3%s§().getTime() / 1000;
         var _loc4_:String = §0#2§.§1" §(_loc3_);
         §7&5§.§>&<§(§'%s§("timeText"),_loc4_);
      }
      
      override protected function okAction() : void
      {
         super.okAction();
         Social.§-%=§.openBank();
      }
   }
}

