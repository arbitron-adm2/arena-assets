package ru.pragmatix.wormix.model.user
{
   import ru.pragmatix.wormix.messages.server.SearchTheHouseResult;
   
   public class §<%6§
   {
      
      public static const EMPTY:§<%6§ = new §<%6§(SearchTheHouseResult.EMPTY);
      
      public static const MONEY:§<%6§ = new §<%6§(SearchTheHouseResult.MONEY);
      
      public static const REAL_MONEY:§<%6§ = new §<%6§(SearchTheHouseResult.REAL_MONEY);
      
      public static const NO_FIVE_DAY:§<%6§ = new §<%6§(SearchTheHouseResult.NO_FIVE_DAY);
      
      public static const KEY_LIMIT_EXCEED:§<%6§ = new §<%6§(SearchTheHouseResult.KEY_LIMIT_EXCEED);
      
      public static const REAGENT:§<%6§ = new §<%6§(SearchTheHouseResult.REAGENT);
      
      public var type:uint;
      
      public var value:uint;
      
      public function §<%6§(param1:uint)
      {
         super();
         this.type = param1;
      }
      
      public static function valueOf(param1:uint) : §<%6§
      {
         switch(param1)
         {
            case EMPTY.type:
               return EMPTY;
            case MONEY.type:
               return MONEY;
            case REAL_MONEY.type:
               return REAL_MONEY;
            case NO_FIVE_DAY.type:
               return NO_FIVE_DAY;
            case KEY_LIMIT_EXCEED.type:
               return KEY_LIMIT_EXCEED;
            case REAGENT.type:
               return REAGENT;
            default:
               return null;
         }
      }
   }
}

