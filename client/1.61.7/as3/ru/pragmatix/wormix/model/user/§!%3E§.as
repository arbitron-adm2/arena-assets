package ru.pragmatix.wormix.model.user
{
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   
   public class §!>§
   {
      
      public static const TODAY_ALREADY_PUMPED:§!>§ = new §!>§(PumpReactionTheHouseResult.TODAY_ALREADY_PUMPED);
      
      public static const OK:§!>§ = new §!>§(PumpReactionTheHouseResult.OK);
      
      public static const ERROR:§!>§ = new §!>§(PumpReactionTheHouseResult.ERROR);
      
      public static const DAY_LIMIT_PUMP:§!>§ = new §!>§(PumpReactionTheHouseResult.DAY_LIMIT_PUMP);
      
      public var type:uint;
      
      public function §!>§(param1:uint)
      {
         super();
         this.type = param1;
      }
      
      public static function valueOf(param1:uint) : §!>§
      {
         switch(param1)
         {
            case TODAY_ALREADY_PUMPED.type:
               return TODAY_ALREADY_PUMPED;
            case DAY_LIMIT_PUMP.type:
               return DAY_LIMIT_PUMP;
            case OK.type:
               return OK;
            case ERROR.type:
               return ERROR;
            default:
               return null;
         }
      }
   }
}

