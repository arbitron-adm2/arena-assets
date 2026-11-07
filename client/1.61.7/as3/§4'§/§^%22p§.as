package §4'§
{
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §^"p§
   {
      
      public static const §-!O§:§^"p§ = new §^"p§(-1);
      
      public static const NONE:§^"p§ = new §^"p§(0);
      
      public static const §9%t§:§^"p§ = new §^"p§(1);
      
      public static const SALE_PRICE:§^"p§ = new §^"p§(2);
      
      public static const SPECIAL_PRICE:§^"p§ = new §^"p§(3);
      
      public static const POWERED:§^"p§ = new §^"p§(4);
      
      public static const §;#'§:§^"p§ = new §^"p§(5);
      
      public var id:uint;
      
      public function §^"p§(param1:int = 0)
      {
         super();
         this.id = param1;
      }
      
      public static function getText(param1:§^"p§, param2:Boolean = false) : String
      {
         switch(param1)
         {
            case §^"p§.§-!O§:
               return "*Тестовый";
            case §^"p§.§9%t§:
               return §0$N§.NOVELTY;
            case §^"p§.SALE_PRICE:
               return §0$N§.SALE_PRICE;
            case §^"p§.SPECIAL_PRICE:
               return §0$N§.SPECIAL_PRICE;
            case §^"p§.POWERED:
               return param2 ? §0$N§.POWERED_MALE : §0$N§.POWERED;
            case §^"p§.§;#'§:
               return §0$N§.HOLIDAY_POWERED;
            default:
               return "";
         }
      }
      
      public function equals(param1:§^"p§) : Boolean
      {
         return this.id == param1.id;
      }
   }
}

