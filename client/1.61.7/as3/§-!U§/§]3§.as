package §-!U§
{
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §6_§.*;
   import §=!p§.§&&0§;
   import §?$L§.§&$9§;
   import §@!i§.*;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.text.Font;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §]3§ extends §&%j§
   {
      
      public function §]3§(param1:DisplayObject = null)
      {
         super(param1);
      }
      
      override public function §9$n§(param1:§-$T§) : void
      {
         super.§9$n§(param1);
         §'%s§("bossName").text = §0$N§.LEVEL_NOT_APPROPRIATE_PANEL_NAME;
         §'%s§("description").text = §0$N§.LEVEL_NOT_APPROPRIATE_PANEL_DESCR;
         §'%s§("requiredLevel").text = §0$N§.BOSS_UNAVAILABLE_REQUIRED_LEVEL;
         §&$9§.§@%O§(§'%s§("requiredLevelValue"),String(param1.§""H§()));
         §&$9§.§@%O§(§'%s§("requiredLevelText"),§0$N§.BOSS_UNAVAILABLE_REQUIRED_LEVEL_TEXT);
      }
   }
}

