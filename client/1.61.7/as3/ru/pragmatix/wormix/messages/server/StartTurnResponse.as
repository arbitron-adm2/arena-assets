package ru.pragmatix.wormix.messages.server
{
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §%"Z§.§+$A§;
   import §%$n§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1&-§.§'$y§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §[!`§.§!$^§;
   import §]#[§.*;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class StartTurnResponse
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 1;
      
      public var result:int;
      
      public var battleId:int;
      
      public var turnNum:int;
      
      public var lastTurnNum:int;
      
      public var awards:Array;
      
      public function StartTurnResponse()
      {
         super();
      }
      
      public function toString() : String
      {
         var _loc1_:String = "StartTurnResponse{" + "result=" + this.result;
         return _loc1_ + (",battleId=" + this.battleId + ",turnNum=" + this.turnNum + ",lastTurnNum=" + this.lastTurnNum + ",awards=" + this.awards + "}");
      }
   }
}

