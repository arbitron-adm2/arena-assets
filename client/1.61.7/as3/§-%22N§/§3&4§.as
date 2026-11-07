package §-"N§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%"Z§.§9"z§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%Q§.§#%9§;
   import §-%B§.*;
   import §0%[§.§%"'§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §4#`§.§+!l§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §8#`§.§#%r§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §=&!§.§3$z§;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §3&4§ extends §@& §
   {
      
      public function §3&4§()
      {
         super(§6#A§.§!&6§(§+"'§.SURRENDER));
         §#7§(§0$N§.EXIT_BATTLE);
         §'%s§("msg").text = §0$N§.EXIT_BATTLE_MSG;
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§7!$§;
         §##b§(§0$N§.BUTTON_YES);
         §'"w§(§0$N§.BUTTON_CANCEL);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
      }
      
      override protected function onOkClick(param1:MouseEvent) : void
      {
         §8"%§.§?!W§.§5$N§(§3$z§.SURRENDER,true);
         hide();
      }
   }
}

