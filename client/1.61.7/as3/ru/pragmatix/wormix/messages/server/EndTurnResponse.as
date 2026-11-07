package ru.pragmatix.wormix.messages.server
{
   import § "d§.§,!c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §&&6§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §2!-§.DamageEvent;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §?#g§.Race;
   import §@"x§.*;
   import §@<§.§+%]§;
   import flash.display.SimpleButton;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class EndTurnResponse
   {
      
      public static const SUCCESS:int = 0;
      
      public static const ERROR:int = 1;
      
      public var result:int;
      
      public var battleId:int;
      
      public var turnNum:int;
      
      public var lastTurnNum:int;
      
      public function EndTurnResponse()
      {
         super();
      }
      
      public function toString() : String
      {
         return "EndTurnResponse{" + "result=" + this.result + ",battleId=" + this.battleId + ",turnNum=" + this.turnNum + ",lastTurnNum=" + this.lastTurnNum + "}";
      }
   }
}

