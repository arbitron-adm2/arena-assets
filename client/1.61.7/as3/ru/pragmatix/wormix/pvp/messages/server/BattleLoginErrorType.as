package ru.pragmatix.wormix.pvp.messages.server
{
   import § &5§.§@N§;
   import §+$=§.§6#A§;
   import §0%z§.*;
   import §6"'§.§9$Z§;
   import §=#g§.*;
   import §=&!§.§ "^§;
   import §?$7§.§6%k§;
   import §]^§.§-$T§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§^t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class BattleLoginErrorType
   {
      
      private static const values:Vector.<BattleLoginErrorType> = new Vector.<BattleLoginErrorType>(0);
      
      public static const PROFILACTIC_WORK:BattleLoginErrorType = new BattleLoginErrorType(0,"PVP_SERVER_PROFILACTIC_WORK");
      
      public static const INCORRECT_KEY:BattleLoginErrorType = new BattleLoginErrorType(1,"ERROR_AUTH_KEY");
      
      public static const ALREADY_IN_GAME:BattleLoginErrorType = new BattleLoginErrorType(2,"BATTLE_REQUEST_BUSY");
      
      public static const INTERNAL_SERVER_ERROR:BattleLoginErrorType = new BattleLoginErrorType(3,"PVP_SERVER_LOGIN_ERROR");
      
      public static const BANNED:BattleLoginErrorType = new BattleLoginErrorType(4,"PVP_SERVER_BANNED");
      
      public static const RECONNECT_TIMEOUT:BattleLoginErrorType = new BattleLoginErrorType(5,"RECONNECT_TIMEOUT");
      
      public static const INCORRECT_PROTOCOL_VERSION:BattleLoginErrorType = new BattleLoginErrorType(6,"INCORRECT_PROTOCOL_VERSION");
      
      private var §?!,§:int;
      
      private var _msg:String;
      
      public function BattleLoginErrorType(param1:int, param2:String)
      {
         super();
         this.§?!,§ = param1;
         this._msg = §0$N§.§%! §(param2);
         values.push(this);
      }
      
      public static function valueOf(param1:uint) : BattleLoginErrorType
      {
         return values[param1];
      }
      
      public function get value() : int
      {
         return this.§?!,§;
      }
      
      public function get message() : String
      {
         return this._msg;
      }
   }
}

