package ru.pragmatix.wormix.controller
{
   import §%L§.§%%w§;
   import §+#P§.§8"j§;
   import §,$J§.§0%G§;
   import §2#i§.§6§;
   import §2#i§.§9##§;
   import §6%2§.§'"Y§;
   import §7!-§.MD5;
   import §8#<§.§&§;
   import §8#<§.§1"k§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.§9+§;
   import config.§^"2§;
   import flash.utils.setTimeout;
   
   public class §,!T§
   {
      
      public static var weapons:String = "";
      
      public function §,!T§()
      {
         super();
      }
      
      public static function § #l§() : int
      {
         if(!weapons)
         {
            weapons = §&$v§(§6#7§.§1^§());
         }
         var _loc1_:String = §&$v§(new §'"Y§().§1^§());
         var _loc2_:String = §&$v§(§9+§.list);
         var _loc3_:String = §&$v§(§0%G§.§1^§());
         var _loc4_:String = §&$v§(§8"j§.§1^§());
         var _loc5_:String = §&$v§(§1"k§.§1^§());
         var _loc6_:String = §&$v§(new §&#1§().§1^§());
         var _loc7_:String = §&$v§(§9##§.§1^§());
         var _loc8_:String = §&$v§(§^"2§.list);
         if(Application.instance.§#&7§())
         {
            return 0;
         }
         return (weapons == "c4ff46d9265ab5bb77c9a4689a539b1d" ? 0 : 1) + (_loc1_ == "75d4819d9a739a543d438030478a0c9a" ? 0 : 3) + (_loc3_ == "c7600df5526b15cec36ae80fee33be7d" ? 0 : 9) + (_loc4_ == "f56b9886faec31a9835bb5c6fbca190f" ? 0 : 17) + (_loc5_ == "27a3190a1716bfc3679e12c33ac6cafd" ? 0 : 33) + (_loc6_ == "b4639896fbb3eaa7bd9930b20587dea0" ? 0 : 65) + (_loc2_ == "c89b67d933acdfdfd7820bcbbdfe25e5" ? 0 : 129) + (_loc7_ == "7b63f57f09091fe849abf04033fc9108" ? 0 : 257) + (_loc8_ == "878a5e3b5001c54f1050b0b8f93874ba" ? 0 : 513) + (§&$v§(§6#7§.§1^§()) == "c4ff46d9265ab5bb77c9a4689a539b1d" ? 0 : 1025);
      }
      
      public static function descr() : String
      {
         var _loc1_:String = weapons.substr(0,4);
         var _loc2_:String = §&$v§(§6#7§.§1^§()).substr(0,4);
         var _loc3_:String = §&$v§(new §'"Y§().§1^§()).substr(0,4);
         var _loc4_:String = §&$v§(§9+§.list).substr(0,4);
         var _loc5_:String = §&$v§(§0%G§.§1^§()).substr(0,4);
         var _loc6_:String = §&$v§(§8"j§.§1^§()).substr(0,4);
         var _loc7_:String = §&$v§(§1"k§.§1^§()).substr(0,4);
         var _loc8_:String = §&$v§(new §&#1§().§1^§()).substr(0,4);
         var _loc9_:String = §&$v§(§9##§.§1^§()).substr(0,4);
         var _loc10_:String = §&$v§(§^"2§.list).substr(0,4);
         return [_loc1_,_loc2_,_loc3_,_loc5_,_loc6_,_loc7_,_loc8_,_loc4_,_loc9_,_loc10_].join(" ");
      }
      
      public static function §&$v§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "01011986";
         for each(_loc3_ in param1)
         {
            _loc2_ += §'%4§(_loc3_);
         }
         return MD5.§9#v§(_loc2_);
      }
      
      private static function §'%4§(param1:Object) : String
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:String = "";
         if(!(param1 is Class))
         {
            if(param1 is §?"&§ || param1 is §&$2§)
            {
               _loc2_ += "protected(" + param1.value + ")";
            }
            else if(typeof param1 == "object")
            {
               _loc3_ = [];
               for(_loc4_ in param1)
               {
                  _loc3_.push(_loc4_);
               }
               _loc3_.sort();
               _loc2_ = "{";
               for each(_loc4_ in _loc3_)
               {
                  _loc2_ += _loc4_ + ":" + §'%4§(param1[_loc4_]) + ",";
               }
               _loc2_ += "}";
            }
            else
            {
               _loc2_ += param1;
            }
         }
         else
         {
            _loc2_ += "Class";
         }
         return _loc2_;
      }
      
      public static function §-$o§(param1:Array) : Array
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            param1[param1.indexOf(_loc2_)] = MD5.§9#v§(_loc2_);
         }
         return param1;
      }
      
      public static function §8!=§() : Boolean
      {
         var dot:String = null;
         var value:String = null;
         dot = ".";
         var array:Array = §-$o§(§%%w§.§&![§().replace("-",dot).replace("_",dot).split(dot));
         for each(value in array)
         {
            if(value == "6cb6b334117f7902778798bf0654c733" || value == "773b2a57610616bd0427953fa5998420")
            {
               setTimeout(function():void
               {
                  §%%w§.§7F§.§]">§();
               },Math.random() * 2000);
               return false;
            }
         }
         return true;
      }
   }
}

