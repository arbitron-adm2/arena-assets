package ru.pragmatix.wormix.pvp.messages.client
{
   import §#k§.§9$v§;
   import §=#g§.*;
   import §@<§.§+%]§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.model.user.§!>§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpLogin;
   
   public class ReconnectToBattle extends PvpLogin
   {
      
      public static const ID:uint = 1015;
      
      public var battleId:uint;
      
      public var turnNum:uint;
      
      public var playerNum:uint;
      
      public var lastCommandNum:uint;
      
      public function ReconnectToBattle()
      {
         super();
      }
      
      override public function toString() : String
      {
         return "ReconnectToBattle{" + super.toString() + ",battleId=" + this.battleId + ",turnNum=" + this.turnNum + ",playerNum=" + this.playerNum + ",lastCommandNum=" + this.lastCommandNum + "}";
      }
   }
}

