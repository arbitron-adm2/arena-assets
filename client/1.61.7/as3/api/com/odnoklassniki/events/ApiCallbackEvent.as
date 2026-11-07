package api.com.odnoklassniki.events
{
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §7!B§.§&"T§;
   import §8#a§.ShopMenu;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class ApiCallbackEvent extends Event
   {
      
      public static const CALL_BACK:String = "call_back_event";
      
      protected var _method:String;
      
      protected var _result:String;
      
      protected var _data:String;
      
      public function ApiCallbackEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "null", param5:String = "", param6:String = "")
      {
         super(param1,param2,param3);
         this._method = param4;
         this._result = param5;
         this._data = param6;
      }
      
      public function get method() : String
      {
         return this._method;
      }
      
      public function get result() : String
      {
         return this._result;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      override public function clone() : Event
      {
         return new ApiCallbackEvent(this.type,this.bubbles,this.cancelable,this.method,this.result,this.data);
      }
   }
}

