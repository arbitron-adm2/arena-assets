package §0%[§
{
   import §!$d§.§<$c§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §4!K§.§^%A§;
   import §7$t§.§&!e§;
   import §8#a§.ShopMenu;
   import §?$L§.§ "N§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §0%§
   {
      
      public function §0%§()
      {
         super();
      }
      
      public static function getCount(param1:uint, param2:String, param3:String) : String
      {
         var _loc4_:String = param1.toString() + " ";
         if(param1 > 1)
         {
            _loc4_ += param3;
         }
         else
         {
            _loc4_ += param2;
         }
         return _loc4_;
      }
      
      public static function format(param1:String, param2:Object = null) : String
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(param2)
         {
            for(_loc3_ in param2)
            {
               _loc4_ = param2[_loc3_] != null && param2[_loc3_] != undefined ? param2[_loc3_].toString() : "";
               param1 = param1.replace("{" + _loc3_ + "}",_loc4_);
            }
         }
         return param1;
      }
      
      public static function §=#$§(param1:String) : String
      {
         if(!param1)
         {
            return param1;
         }
         var _loc2_:uint = 0;
         while(param1.charAt(_loc2_) == " ")
         {
            _loc2_++;
         }
         if(_loc2_)
         {
            param1 = param1.substring(_loc2_);
            if(!param1.length)
            {
               return param1;
            }
         }
         var _loc3_:uint = param1.length - 1;
         while(param1.charAt(_loc3_) == " ")
         {
            _loc3_--;
         }
         return param1.substring(0,_loc3_ + 1);
      }
      
      public static function §2]§(param1:String, ... rest) : String
      {
         var _loc3_:String = param1;
         var _loc4_:int = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ = _loc3_.replace("%" + (_loc4_ + 1),rest[_loc4_].toString());
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

