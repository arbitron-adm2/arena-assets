package §&!m§
{
   import §0&F§.§0%v§;
   import §4&F§.*;
   import §4'§.§^"p§;
   import §6%2§.§!"x§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §<%k§.*;
   import flash.events.EventPhase;
   import flash.events.MouseEvent;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.wormix.social.Social;
   
   use namespace gestouch_internal;
   
   public class §;#[§
   {
      
      public function §;#[§()
      {
         super();
      }
      
      public static function §-#T§(param1:§&!e§) : String
      {
         return param1.§7%z§();
      }
      
      public static function sort(param1:Array) : void
      {
         param1.sort(itemsComparator);
      }
      
      public static function §+!!§(param1:Array) : void
      {
         if(Social.§^"U§.§##N§())
         {
            param1.sort(§3#g§);
         }
         else
         {
            param1.sort(§[$d§);
         }
      }
      
      public static function §^'§(param1:Array) : void
      {
         param1.sort(§@e§);
      }
      
      public static function §]%D§(param1:Array) : void
      {
         param1.sort(§3?§);
      }
      
      private static function §@e§(param1:§9#x§, param2:§9#x§) : int
      {
         if(param1.§2<§() < param2.§2<§())
         {
            return -1;
         }
         return 1;
      }
      
      private static function §3?§(param1:§&!e§, param2:§&!e§) : int
      {
         if(param1.getId() < param2.getId())
         {
            return -1;
         }
         return 1;
      }
      
      public static function §]%w§(param1:Array) : void
      {
         param1.sort(§>E§);
      }
      
      private static function §>E§(param1:§9#x§, param2:§9#x§) : int
      {
         if(param1.§&V§() < param2.§&V§())
         {
            return -1;
         }
         return 1;
      }
      
      public static function itemsComparator(param1:§&!e§, param2:§&!e§) : int
      {
         var _loc3_:int = §4%,§(param1,param2);
         if(_loc3_ == 0)
         {
            return §<$9§(param1,param2);
         }
         return _loc3_;
      }
      
      private static function §4%,§(param1:§&!e§, param2:§&!e§) : int
      {
         if(param1.§?$+§ > param2.§?$+§)
         {
            return 1;
         }
         if(param1.§?$+§ < param2.§?$+§)
         {
            return -1;
         }
         return 0;
      }
      
      private static function §<$9§(param1:§&!e§, param2:§&!e§) : int
      {
         if(param1.§,X§() > param2.§,X§())
         {
            return 1;
         }
         if(param1.§,X§() < param2.§,X§())
         {
            return -1;
         }
         return 0;
      }
      
      public static function §[$d§(param1:§&!e§, param2:§&!e§) : int
      {
         return itemsComparator(param1,param2);
      }
      
      public static function §3#g§(param1:§&!e§, param2:§&!e§) : int
      {
         if(param1.§##m§().equals(§^"p§.SALE_PRICE) && param2.§##m§().equals(§^"p§.SALE_PRICE))
         {
            return §8$;§(param1.§,!H§(),param2.§,!H§());
         }
         if(param1.§##m§().equals(§^"p§.SALE_PRICE))
         {
            return param2.§##m§().equals(§^"p§.SALE_PRICE) ? itemsComparator(param1,param2) : -1;
         }
         if(param2.§##m§().equals(§^"p§.SALE_PRICE))
         {
            return 1;
         }
         if(param1.§##m§().equals(§^"p§.§9%t§))
         {
            return param2.§##m§().equals(§^"p§.§9%t§) ? itemsComparator(param1,param2) : -1;
         }
         if(param2.§##m§().equals(§^"p§.§9%t§))
         {
            return 1;
         }
         return itemsComparator(param1,param2);
      }
      
      private static function §8$;§(param1:int, param2:int) : int
      {
         if(param1 < param2)
         {
            return 1;
         }
         if(param1 > param2)
         {
            return -1;
         }
         return 0;
      }
   }
}

