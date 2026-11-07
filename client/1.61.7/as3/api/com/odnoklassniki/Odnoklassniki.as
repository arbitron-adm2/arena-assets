package api.com.odnoklassniki
{
   import § !8§.§`!d§;
   import § !P§.§<#q§;
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §#"V§.§<"4§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'T§.§!$C§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%z§.StatCell;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §2"v§.*;
   import §2#8§.§6"a§;
   import §2#V§.§-#U§;
   import §2#i§.§9##§;
   import §3#a§.*;
   import §6#Z§.§&!Z§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§`"y§;
   import §=&!§.§4$z§;
   import §@!i§.§!m§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §]$v§.§1>§;
   import §]$v§.§5"R§;
   import §]$v§.§]%_§;
   import §]$v§.§`0§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import api.com.adobe.json.JSON;
   import api.com.odnoklassniki.core.OdnoklassnikiSession;
   import api.com.odnoklassniki.events.ApiServerEvent;
   import api.com.odnoklassniki.net.OdnoklassnikiRequest;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.response.ExpelFromClanResponse;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§'"<§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class Odnoklassniki extends EventDispatcher
   {
      
      protected static var _instance:Odnoklassniki;
      
      public static var API_SERVER:String;
      
      protected static var _can_initiate:Boolean = false;
      
      public var session:OdnoklassnikiSession;
      
      protected var openRequests:Dictionary;
      
      public function Odnoklassniki()
      {
         super();
         if(_can_initiate == false)
         {
            throw new Error("Odnoklassniki is an singleton! Call Odnoklassniki.getInstace() instead.");
         }
         this.openRequests = new Dictionary();
      }
      
      public static function initialize(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Object = getFlashVars(param1);
         getInstance().session = new OdnoklassnikiSession(_loc3_.apiconnection);
         getInstance().session.sessionKey = _loc3_.session_key;
         getInstance().session.sessionSecretKey = _loc3_.session_secret_key;
         getInstance().session.uid = _loc3_.logged_user_id;
         getInstance().session.applicationKey = _loc3_.application_key;
         getInstance().session.secretKey = param2;
         API_SERVER = _loc3_.api_server;
      }
      
      public static function getInstance() : Odnoklassniki
      {
         if(_instance == null)
         {
            _can_initiate = true;
            _instance = new Odnoklassniki();
            _can_initiate = false;
         }
         return _instance;
      }
      
      public static function dispatchEvent(param1:*) : void
      {
         getInstance().dispatchEvent(param1);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         getInstance().addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return getInstance().hasEventListener(param1);
      }
      
      public static function call(param1:String, param2:Array = null) : void
      {
         getInstance().send(param1,param2);
      }
      
      public static function callRestApi(param1:String, param2:Function, param3:Object = null, param4:String = "JSON", param5:String = "GET", param6:String = null) : void
      {
         getInstance().doCallRestApi(param1,param2,param3,param4,param5,param6);
      }
      
      public static function getSignature(param1:Object, param2:Boolean = false, param3:String = "JSON") : Object
      {
         return getInstance().session.getSignature(param1,param2,param3);
      }
      
      public static function get session() : OdnoklassnikiSession
      {
         return getInstance().session;
      }
      
      public static function showPermissions(... rest) : void
      {
         getInstance().send("showPermissions",[api.com.adobe.json.JSON.encode(rest)]);
      }
      
      public static function showInvite(param1:String = null, param2:String = null) : void
      {
         getInstance().send("showInvite",[param1,param2]);
      }
      
      public static function showNotification(param1:String, param2:String = null) : void
      {
         getInstance().send("showNotification",[param1,param2]);
      }
      
      public static function showPayment(param1:String, param2:String, param3:String, param4:int = -1, param5:String = null, param6:String = null, param7:String = null, param8:String = "false") : void
      {
         getInstance().send("showPayment",[param1,param2,param3,param4,param5,param6,param7,param8]);
      }
      
      public static function showConfirmation(param1:String, param2:String, param3:String) : void
      {
         getInstance().send("showConfirmation",[param1,param2,param3]);
      }
      
      public static function setWindowSize(param1:int, param2:int) : void
      {
         getInstance().send("setWindowSize",[param1.toString(),param2.toString()]);
      }
      
      private static function getFlashVars(param1:DisplayObject) : Object
      {
         return Object(LoaderInfo(param1.loaderInfo).parameters);
      }
      
      public static function getSendObject(param1:Object) : Object
      {
         var _loc3_:String = null;
         var _loc2_:Object = {};
         for(_loc3_ in param1)
         {
            if(param1[_loc3_])
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function send(param1:String, param2:Array) : void
      {
         if(getInstance().session.is_connected)
         {
            getInstance().session.connection.send.apply(getInstance().session.connection,["_proxy_" + getInstance().session.connectionName,param1].concat(param2));
         }
         else
         {
            dispatchEvent(new ApiServerEvent(ApiServerEvent.NOT_YET_CONNECTED));
         }
      }
      
      private function doCallRestApi(param1:String, param2:Function, param3:Object = null, param4:String = "JSON", param5:String = "GET", param6:String = null) : void
      {
         var _loc7_:OdnoklassnikiRequest = new OdnoklassnikiRequest(API_SERVER,param5);
         _loc7_.call(param1,param3,this.handleRequestLoad,param4,param6);
         this.openRequests[_loc7_] = param2;
      }
      
      private function handleRequestLoad(param1:OdnoklassnikiRequest) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Function = this.openRequests[param1];
         if(_loc2_ === null)
         {
            delete this.openRequests[param1];
         }
         if(param1.success)
         {
            _loc3_ = param1.data;
            _loc2_(_loc3_);
         }
         delete this.openRequests[param1];
      }
   }
}

