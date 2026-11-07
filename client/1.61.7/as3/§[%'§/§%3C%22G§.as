package §[%'§
{
   import §%"Z§.§2"B§;
   import §+$=§.§!w§;
   import flash.errors.IllegalOperationError;
   import ru.pragmatix.flox.logger.§&`§;
   
   public class §<"G§ extends §!w§
   {
      
      private static var instance:§<"G§;
      
      private static const §]!^§:§&`§ = new §&`§(§<"G§);
      
      public function §<"G§(param1:§2"B§, param2:String, param3:String, param4:Vector.<String>, param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
         if(instance != null)
         {
            throw new IllegalOperationError();
         }
         §<"G§.instance = this;
      }
      
      public static function §3$e§() : §<"G§
      {
         return §<"G§.instance;
      }
      
      public static function §%! §(param1:String, param2:Boolean = true) : String
      {
         if(param1)
         {
            return instance.§%! §(param1,param2);
         }
         return "";
      }
      
      public function §%! §(param1:String, param2:Boolean = true) : String
      {
         if(messages[param1])
         {
            return messages[param1];
         }
         if(param2)
         {
            this.log.§3"l§("Message not found by key \'" + param1 + "\'");
            throw new IllegalOperationError("Message not found by key \'" + param1 + "\'");
         }
         return "";
      }
      
      override protected function get log() : §&`§
      {
         return §]!^§;
      }
   }
}

