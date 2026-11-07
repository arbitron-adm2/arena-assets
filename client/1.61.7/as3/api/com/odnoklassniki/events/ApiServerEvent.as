package api.com.odnoklassniki.events
{
   import §4$b§.§2m§;
   import flash.events.Event;
   
   public class ApiServerEvent extends Event
   {
      
      public static const CONNECTED:String = "odnoklassniki_connected";
      
      public static const CONNECTION_ERROR:String = "odnoklassniki_connection_error";
      
      public static const PROXY_NOT_RESPONDING:String = "odnoklassniki_proxy_not_reponding";
      
      public static const NOT_YET_CONNECTED:String = "odnoklassniki_not_yet_connected";
      
      public var data:Object;
      
      public function ApiServerEvent(param1:String, param2:Object = null)
      {
         this.data = param2;
         super(param1);
      }
   }
}

