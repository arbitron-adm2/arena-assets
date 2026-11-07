package §2!-§
{
   import §"!C§.§2v§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §3#T§.§5!M§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class NewUnitEvent extends Event
   {
      
      public var unit:§+%]§;
      
      public function NewUnitEvent(param1:§+%]§, param2:Boolean = false, param3:Boolean = false)
      {
         super(§0%v§.NEW_UNIT_ADDED,param2,param3);
         this.unit = param1;
      }
      
      override public function clone() : Event
      {
         return new NewUnitEvent(this.unit,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("NewUnitEvent","type","bubbles","cancelable","unit");
      }
   }
}

