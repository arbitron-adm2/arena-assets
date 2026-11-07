package ru.pragmatix.wormix.pvp.messages.ex
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class CallToBattleResultType
   {
      
      private static const values:Vector.<CallToBattleResultType> = new Vector.<CallToBattleResultType>(0);
      
      public static const SERVER_ERROR:CallToBattleResultType = new CallToBattleResultType(0,"PVP_SERVER_CONNECTION_ERROR");
      
      public static const ACCEPTED:CallToBattleResultType = new CallToBattleResultType(1,"BATTLE_REQUEST_ACCEPTED");
      
      public static const REJECTED:CallToBattleResultType = new CallToBattleResultType(2,"BATTLE_REQUEST_DECLINE");
      
      public static const OFFLINE:CallToBattleResultType = new CallToBattleResultType(3,"BATTLE_REQUEST_NOT_ONLINE");
      
      public static const BUSY:CallToBattleResultType = new CallToBattleResultType(4,"BATTLE_REQUEST_BUSY","CURRENT_USER_ALREADY_IN_BATTLE");
      
      public static const BANNED:CallToBattleResultType = new CallToBattleResultType(5,"BATTLE_REQUEST_BANNED");
      
      public static const CANCELED:CallToBattleResultType = new CallToBattleResultType(6,"BATTLE_CANCEL_TITLE");
      
      public static const TIMEOUT:CallToBattleResultType = new CallToBattleResultType(7,"BATTLE_REQUEST_TIMEOUT");
      
      public static const CLIENT_ERROR:CallToBattleResultType = new CallToBattleResultType(8,"BATTLE_REQUEST_CLIENT_ERROR");
      
      public static const DISCONNECTED:CallToBattleResultType = new CallToBattleResultType(9,"BATTLE_REQUEST_DISCONNECTED");
      
      public static const NO_ENOUGH_MONEY:CallToBattleResultType = new CallToBattleResultType(10,"BATTLE_REQUEST_FRIEND_LACKS_MONEY","BATTLE_REQUEST_PLAYER_LACKS_MONEY");
      
      public static const INSUFFICIENT_LEVEL:CallToBattleResultType = new CallToBattleResultType(11,"BATTLE_REQUEST_FRIEND_LACKS_LEVEL","BATTLE_REQUEST_PLAYER_LACKS_LEVEL");
      
      public static const EXCEED_BATTLES:CallToBattleResultType = new CallToBattleResultType(12,"BATTLE_REQUEST_EXCEED_BATTLES","BATTLE_REQUEST_PLAYER_EXCEED_BATTLES");
      
      public static const UNDEFINED:CallToBattleResultType = new CallToBattleResultType(999,"BATTLE_REQUEST_UNDEFINED_RESULT");
      
      public static const MISSION_LOCKED:CallToBattleResultType = new CallToBattleResultType(14,"BATTLE_REQUEST_MISSION_LOCKED");
      
      public static const ARENA_IS_LOCKED:CallToBattleResultType = new CallToBattleResultType(15,"BATTLE_REQUEST_CALLEE_ARENA_IS_LOCKED","BATTLE_REQUEST_ARENA_IS_LOCKED");
      
      public static const TEAM_IS_SMALL:CallToBattleResultType = new CallToBattleResultType(16,"BATTLE_REQUEST_CALLEE_TEAM_IS_SMALL","BATTLE_REQUEST_TEAM_IS_SMALL");
      
      private var §?!,§:int;
      
      private var §?"6§:String;
      
      private var §3%t§:String;
      
      public function CallToBattleResultType(param1:int, param2:String, param3:String = null)
      {
         super();
         this.§?!,§ = param1;
         this.§?"6§ = §0$N§.§%! §(param2);
         this.§3%t§ = param3 ? §0$N§.§%! §(param3) : this.§?"6§;
         values.push(this);
      }
      
      public static function valueOf(param1:uint) : CallToBattleResultType
      {
         return param1 < values.length ? values[param1] : UNDEFINED;
      }
      
      public function get value() : int
      {
         return this.§?!,§;
      }
      
      public function get remoteFailureReason() : String
      {
         return this.§?"6§;
      }
      
      public function get localFailureReason() : String
      {
         return this.§3%t§;
      }
      
      public function toString() : String
      {
         return "CallToBattleResultType{" + "value=" + this.§?!,§ + ",remoteMsg=" + this.§?"6§ + ",localMsg=" + this.§3%t§ + "}";
      }
   }
}

