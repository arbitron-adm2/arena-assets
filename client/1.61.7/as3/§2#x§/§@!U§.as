package §2#x§
{
   import § !8§.§`!d§;
   import §&"c§.§5$n§;
   import §3#T§.Helicopter;
   import §5!9§.§6$,§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §9"-§.§?!s§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   
   public class §@!U§
   {
      
      public function §@!U§()
      {
         super();
      }
      
      public static function init(param1:Function, param2:Function, param3:String) : void
      {
         ExternalInterface.call("VK.init",param1,param2,param3);
         ExternalInterface.call("registerCallbacks");
      }
      
      public static function api(param1:String, param2:Object, param3:Function) : void
      {
         ExternalInterface.addCallback("onApiCallback",param3);
         ExternalInterface.call("callApi",param1,param2,param3);
      }
      
      public static function pay(param1:Object, param2:Function) : void
      {
         var params:Object = param1;
         var callback:Function = param2;
         ExternalInterface.call("VK.callMethod","showOrderBox",params);
         ExternalInterface.addCallback("onOrderSuccess",function(param1:int):void
         {
            callback("onOrderSuccess");
         });
         ExternalInterface.addCallback("onOrderCancel",function():void
         {
            callback("onOrderCancel");
         });
         ExternalInterface.addCallback("onOrderFail",function(param1:int):void
         {
            callback("onOrderFail");
         });
      }
      
      public static function subscription(param1:String, param2:Object, param3:Function) : void
      {
         var action:String = param1;
         var params:Object = param2;
         var callback:Function = param3;
         ExternalInterface.call("VK.callMethod","showSubscriptionBox",action,params);
         ExternalInterface.addCallback("onSubscriptionSuccess",function(param1:int):void
         {
            callback("onSubscriptionSuccess");
         });
         ExternalInterface.addCallback("onSubscriptionCancel",function():void
         {
            callback("onSubscriptionCancel");
         });
         ExternalInterface.addCallback("onSubscriptionFail",function(param1:int):void
         {
            callback("onSubscriptionFail");
         });
      }
   }
}

