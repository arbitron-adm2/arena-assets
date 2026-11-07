package ru.pragmatix.flox.logger
{
   import §@<§.§+%]§;
   
   public class TracePublisher extends §?#F§ implements §&%F§
   {
      
      public function TracePublisher()
      {
         super();
      }
      
      public static function publish(param1:§4"P§) : void
      {
         var _loc2_:Object = param1.argument;
         var _loc3_:String = "*" + param1.level.toString();
         if(param1.group != §4"P§.§7#5§)
         {
            _loc3_ += "[" + param1.group + "]";
         }
         _loc3_ += "*";
         if(param1.loggerId)
         {
            _loc3_ += ":" + param1.loggerId;
         }
         _loc3_ += ":";
         _loc3_ += §7%;§(_loc2_);
      }
      
      override public function toString() : String
      {
         return "ru.pragmatix.flox.logger.TracePublisher";
      }
      
      override public function publish(param1:§4"P§) : void
      {
         this.publish(param1);
      }
   }
}

