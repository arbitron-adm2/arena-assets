package api.com.odnoklassniki.core
{
   import § #m§.§;#^§;
   import §!#g§.MD5;
   import §!$d§.*;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2#H§.§<§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.*;
   import §7$t§.§[!X§;
   import §<!W§.§#&#§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §<%J§.§!!`§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §>1§.§^"&§;
   import §?#g§.Race;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §?>§.§]!V§;
   import §@!i§.§"-§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §[%§.*;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import api.com.odnoklassniki.events.ApiServerEvent;
   import com.adobe.serialization.json.JSON;
   import com.greensock.TweenMax;
   import com.greensock.events.TweenEvent;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.StatusEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class OdnoklassnikiSession
   {
      
      public var uid:String;
      
      public var user:Object;
      
      public var applicationKey:String;
      
      public var secretKey:String;
      
      public var sessionKey:String;
      
      public var sessionSecretKey:String;
      
      private var _is_connected:Boolean = false;
      
      private var _self_connected:Boolean = false;
      
      private var _connection_name:String;
      
      private var _connection:LocalConnection = new LocalConnection();
      
      private var _reconnect_timer:Timer = new Timer(200);
      
      public function OdnoklassnikiSession(param1:String)
      {
         super();
         this._reconnect_timer.addEventListener(TimerEvent.TIMER,this.tryToConnect);
         this._connection.allowDomain("*");
         this._connection.addEventListener(StatusEvent.STATUS,this.handleOutStatus);
         this._connection.client = this;
         this._connection_name = param1;
         this.tryToConnect();
      }
      
      public function get is_connected() : Boolean
      {
         return this._is_connected;
      }
      
      public function get connectionName() : String
      {
         return this._connection_name;
      }
      
      public function get connection() : LocalConnection
      {
         return this._connection;
      }
      
      private function tryToConnect(param1:TimerEvent = null) : void
      {
         var cc2:LocalConnection = null;
         var cc:LocalConnection = null;
         var event:TimerEvent = param1;
         try
         {
            if(!this._self_connected)
            {
               this._connection.connect("_api_" + this._connection_name);
               this._self_connected = true;
            }
         }
         catch(e:Error)
         {
            cc2 = new LocalConnection();
            cc2.addEventListener(StatusEvent.STATUS,this.handleOutStatusConcurrent,false,0,true);
            cc2.send("_api_" + this._connection_name,"closeConnection");
            this._reconnect_timer.start();
            return;
         }
         if(!this._is_connected)
         {
            if(event)
            {
               this._reconnect_timer.reset();
               trace("Telling proxy to make reconnect...");
               cc = new LocalConnection();
               cc.addEventListener(StatusEvent.STATUS,this.handleOutStatusReconnect,false,0,true);
               cc.send("_proxy_" + this._connection_name,"makeReconnect");
            }
            else
            {
               this._reconnect_timer.start();
            }
         }
      }
      
      private function handleOutStatus(param1:StatusEvent) : void
      {
         if(param1.level != StatusEvent.STATUS)
         {
            Odnoklassniki.dispatchEvent(new ApiServerEvent(ApiServerEvent.CONNECTION_ERROR));
         }
      }
      
      private function handleOutStatusReconnect(param1:StatusEvent) : void
      {
         if(param1.level != StatusEvent.STATUS)
         {
            Odnoklassniki.dispatchEvent(new ApiServerEvent(ApiServerEvent.PROXY_NOT_RESPONDING));
         }
      }
      
      private function handleOutStatusConcurrent(param1:StatusEvent) : void
      {
         if(param1.level != StatusEvent.STATUS)
         {
            Odnoklassniki.dispatchEvent(new ApiServerEvent(ApiServerEvent.CONNECTION_ERROR));
         }
      }
      
      public function establishConnection() : void
      {
         this._reconnect_timer.reset();
         if(!this._is_connected)
         {
            this._is_connected = true;
            Odnoklassniki.dispatchEvent(new ApiServerEvent(ApiServerEvent.CONNECTED));
         }
      }
      
      public function apiCallBack(param1:String, param2:String, param3:String) : void
      {
         Odnoklassniki.dispatchEvent(new ApiCallbackEvent(ApiCallbackEvent.CALL_BACK,false,false,param1,param2,param3));
      }
      
      public function closeConnection() : void
      {
         this._connection.close();
      }
      
      public function getSignature(param1:Object, param2:Boolean = false, param3:String = "JSON") : Object
      {
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         param1["format"] = param3;
         param1["application_key"] = this.applicationKey;
         if(param1["uid"] == undefined || param2)
         {
            param1["session_key"] = this.sessionKey;
         }
         var _loc4_:String = "";
         var _loc5_:Array = [];
         for(_loc6_ in param1)
         {
            _loc5_.push(_loc6_);
         }
         _loc5_.sort();
         _loc7_ = 0;
         _loc8_ = int(_loc5_.length);
         while(_loc7_ < _loc8_)
         {
            _loc4_ += _loc5_[_loc7_] + "=" + param1[_loc5_[_loc7_]];
            _loc7_++;
         }
         _loc4_ += param1["uid"] != undefined && !param2 ? this.secretKey : this.sessionSecretKey;
         param1["sig"] = MD5.hash(_loc4_).toLowerCase();
         return param1;
      }
   }
}

