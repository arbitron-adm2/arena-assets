package ru.pragmatix.flox.logger
{
   import §0"L§.§+# §;
   import flash.events.Event;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   
   public class ConsolePublisher extends §?#F§
   {
      
      public static const connectionName:String = "_pragmatix_log_console";
      
      private static var §1",§:Boolean = true;
      
      private var §9k§:Number = 1;
      
      private var lc:LocalConnection = null;
      
      public function ConsolePublisher()
      {
         super();
         this.lc = new LocalConnection();
         this.lc.addEventListener(StatusEvent.STATUS,this.§&!7§);
      }
      
      override public function publish(param1:§4"P§) : void
      {
         var _loc2_:Object = null;
         if(this.lc != null && §1",§)
         {
            _loc2_ = §4"P§.§@%e§(param1);
            _loc2_.argument = _loc2_.argument.toString();
            this.lc.send(connectionName,"log",_loc2_);
         }
      }
      
      private function §&!7§(param1:StatusEvent) : void
      {
         if(param1.level == "error")
         {
            §1",§ = false;
         }
      }
      
      override public function toString() : String
      {
         return "ru.pragmatix.flox.logger.ConsolePublisher";
      }
   }
}

