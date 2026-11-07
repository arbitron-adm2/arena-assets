package ru.pragmatix.wormix.messages.server
{
   import §-&5§.*;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.text.Font;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   
   public class PrivateChatMessage
   {
      
      public static const CHALLENGE_PLAYERS_TO_FIGHT:int = 1;
      
      public var fromProfileId:uint;
      
      public var msg:String;
      
      public var predefinedMsgType:int;
      
      public function PrivateChatMessage()
      {
         super();
      }
      
      public function toString() : String
      {
         return "PrivateChatMessage{" + " fromProfileId=" + this.fromProfileId + " predefinedMsgType=" + this.predefinedMsgType + " msg=" + this.msg + " }";
      }
   }
}

