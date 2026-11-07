package §7!-§
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §0!Y§.§#!Z§;
   import §0"L§.§@#n§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §[%§.Dragon;
   import §]$v§.§5"R§;
   import §`%&§.§`§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class MD5
   {
      
      public function MD5()
      {
         super();
      }
      
      private static function §4!5§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         param1 = §11§(param1,§11§(§11§(H(param2,param3,param4),param5),param7));
         return §11§(§'"h§(param1,param6),param2);
      }
      
      private static function §4%6§(param1:String) : Array
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = param1.length;
         var _loc4_:* = _loc3_ + 8;
         var _loc5_:* = (_loc4_ - _loc4_ % 64) / 64;
         var _loc6_:* = (_loc5_ + 1) * 16;
         var _loc7_:* = new Array(_loc6_ - 1);
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         while(_loc9_ < _loc3_)
         {
            _loc2_ = (_loc9_ - _loc9_ % 4) / 4;
            _loc8_ = _loc9_ % 4 * 8;
            _loc7_[_loc2_] |= param1.charCodeAt(_loc9_) << _loc8_;
            _loc9_ += 1;
         }
         _loc2_ = (_loc9_ - _loc9_ % 4) / 4;
         _loc8_ = _loc9_ % 4 * 8;
         _loc7_[_loc2_] |= 128 << _loc8_;
         _loc7_[_loc6_ - 2] = _loc3_ << 3;
         _loc7_[_loc6_ - 1] = _loc3_ >>> 29;
         return _loc7_;
      }
      
      private static function §'"h§(param1:int, param2:int) : Number
      {
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      public static function §9#v§(param1:String) : String
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = 7;
         var _loc13_:Number = 12;
         var _loc14_:Number = 17;
         var _loc15_:Number = 22;
         var _loc16_:Number = 5;
         var _loc17_:Number = 9;
         var _loc18_:Number = 14;
         var _loc19_:Number = 20;
         var _loc20_:Number = 4;
         var _loc21_:Number = 11;
         var _loc22_:Number = 16;
         var _loc23_:Number = 23;
         var _loc24_:Number = 6;
         var _loc25_:Number = 10;
         var _loc26_:Number = 15;
         var _loc27_:Number = 21;
         param1 = §`!;§(param1);
         _loc2_ = §4%6§(param1);
         _loc8_ = 1732584193;
         _loc9_ = 4023233417;
         _loc10_ = 2562383102;
         _loc11_ = 271733878;
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc8_;
            _loc5_ = _loc9_;
            _loc6_ = _loc10_;
            _loc7_ = _loc11_;
            _loc8_ = §+!#§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 0],_loc12_,3614090360);
            _loc11_ = §+!#§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 1],_loc13_,3905402710);
            _loc10_ = §+!#§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 2],_loc14_,606105819);
            _loc9_ = §+!#§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 3],_loc15_,3250441966);
            _loc8_ = §+!#§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 4],_loc12_,4118548399);
            _loc11_ = §+!#§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 5],_loc13_,1200080426);
            _loc10_ = §+!#§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 6],_loc14_,2821735955);
            _loc9_ = §+!#§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 7],_loc15_,4249261313);
            _loc8_ = §+!#§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 8],_loc12_,1770035416);
            _loc11_ = §+!#§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 9],_loc13_,2336552879);
            _loc10_ = §+!#§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 10],_loc14_,4294925233);
            _loc9_ = §+!#§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 11],_loc15_,2304563134);
            _loc8_ = §+!#§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 12],_loc12_,1804603682);
            _loc11_ = §+!#§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 13],_loc13_,4254626195);
            _loc10_ = §+!#§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 14],_loc14_,2792965006);
            _loc9_ = §+!#§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 15],_loc15_,1236535329);
            _loc8_ = GG(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 1],_loc16_,4129170786);
            _loc11_ = GG(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 6],_loc17_,3225465664);
            _loc10_ = GG(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 11],_loc18_,643717713);
            _loc9_ = GG(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 0],_loc19_,3921069994);
            _loc8_ = GG(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 5],_loc16_,3593408605);
            _loc11_ = GG(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 10],_loc17_,38016083);
            _loc10_ = GG(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 15],_loc18_,3634488961);
            _loc9_ = GG(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 4],_loc19_,3889429448);
            _loc8_ = GG(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 9],_loc16_,568446438);
            _loc11_ = GG(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 14],_loc17_,3275163606);
            _loc10_ = GG(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 3],_loc18_,4107603335);
            _loc9_ = GG(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 8],_loc19_,1163531501);
            _loc8_ = GG(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 13],_loc16_,2850285829);
            _loc11_ = GG(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 2],_loc17_,4243563512);
            _loc10_ = GG(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 7],_loc18_,1735328473);
            _loc9_ = GG(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 12],_loc19_,2368359562);
            _loc8_ = §4!5§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 5],_loc20_,4294588738);
            _loc11_ = §4!5§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 8],_loc21_,2272392833);
            _loc10_ = §4!5§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 11],_loc22_,1839030562);
            _loc9_ = §4!5§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 14],_loc23_,4259657740);
            _loc8_ = §4!5§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 1],_loc20_,2763975236);
            _loc11_ = §4!5§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 4],_loc21_,1272893353);
            _loc10_ = §4!5§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 7],_loc22_,4139469664);
            _loc9_ = §4!5§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 10],_loc23_,3200236656);
            _loc8_ = §4!5§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 13],_loc20_,681279174);
            _loc11_ = §4!5§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 0],_loc21_,3936430074);
            _loc10_ = §4!5§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 3],_loc22_,3572445317);
            _loc9_ = §4!5§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 6],_loc23_,76029189);
            _loc8_ = §4!5§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 9],_loc20_,3654602809);
            _loc11_ = §4!5§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 12],_loc21_,3873151461);
            _loc10_ = §4!5§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 15],_loc22_,530742520);
            _loc9_ = §4!5§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 2],_loc23_,3299628645);
            _loc8_ = §&$8§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 0],_loc24_,4096336452);
            _loc11_ = §&$8§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 7],_loc25_,1126891415);
            _loc10_ = §&$8§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 14],_loc26_,2878612391);
            _loc9_ = §&$8§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 5],_loc27_,4237533241);
            _loc8_ = §&$8§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 12],_loc24_,1700485571);
            _loc11_ = §&$8§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 3],_loc25_,2399980690);
            _loc10_ = §&$8§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 10],_loc26_,4293915773);
            _loc9_ = §&$8§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 1],_loc27_,2240044497);
            _loc8_ = §&$8§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 8],_loc24_,1873313359);
            _loc11_ = §&$8§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 15],_loc25_,4264355552);
            _loc10_ = §&$8§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 6],_loc26_,2734768916);
            _loc9_ = §&$8§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 13],_loc27_,1309151649);
            _loc8_ = §&$8§(_loc8_,_loc9_,_loc10_,_loc11_,_loc2_[_loc3_ + 4],_loc24_,4149444226);
            _loc11_ = §&$8§(_loc11_,_loc8_,_loc9_,_loc10_,_loc2_[_loc3_ + 11],_loc25_,3174756917);
            _loc10_ = §&$8§(_loc10_,_loc11_,_loc8_,_loc9_,_loc2_[_loc3_ + 2],_loc26_,718787259);
            _loc9_ = §&$8§(_loc9_,_loc10_,_loc11_,_loc8_,_loc2_[_loc3_ + 9],_loc27_,3951481745);
            _loc8_ = §11§(_loc8_,_loc4_);
            _loc9_ = §11§(_loc9_,_loc5_);
            _loc10_ = §11§(_loc10_,_loc6_);
            _loc11_ = §11§(_loc11_,_loc7_);
            _loc3_ += 16;
         }
         var _loc28_:* = §7"[§(_loc8_) + §7"[§(_loc9_) + §7"[§(_loc10_) + §7"[§(_loc11_);
         return _loc28_.toLowerCase();
      }
      
      private static function F(param1:int, param2:int, param3:int) : int
      {
         return param1 & param2 | ~param1 & param3;
      }
      
      private static function GG(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         param1 = §11§(param1,§11§(§11§(G(param2,param3,param4),param5),param7));
         return §11§(§'"h§(param1,param6),param2);
      }
      
      private static function H(param1:int, param2:int, param3:int) : int
      {
         return param1 ^ param2 ^ param3;
      }
      
      private static function I(param1:int, param2:int, param3:int) : int
      {
         return param2 ^ (param1 | ~param3);
      }
      
      private static function G(param1:int, param2:int, param3:int) : int
      {
         return param1 & param3 | param2 & ~param3;
      }
      
      private static function §&$8§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : Number
      {
         param1 = §11§(param1,§11§(§11§(I(param2,param3,param4),param5),param7));
         return §11§(§'"h§(param1,param6),param2);
      }
      
      private static function §11§(param1:int, param2:int) : Number
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         _loc5_ = param1 & 0x80000000;
         _loc6_ = param2 & 0x80000000;
         _loc3_ = param1 & 0x40000000;
         _loc4_ = param2 & 0x40000000;
         _loc7_ = (param1 & 0x3FFFFFFF) + (param2 & 0x3FFFFFFF);
         if(_loc3_ & _loc4_)
         {
            return _loc7_ ^ 0x80000000 ^ _loc5_ ^ _loc6_;
         }
         if(_loc3_ | _loc4_)
         {
            if(_loc7_ & 0x40000000)
            {
               return _loc7_ ^ 0xC0000000 ^ _loc5_ ^ _loc6_;
            }
            return _loc7_ ^ 0x40000000 ^ _loc5_ ^ _loc6_;
         }
         return _loc7_ ^ _loc5_ ^ _loc6_;
      }
      
      private static function §+!#§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         param1 = §11§(param1,§11§(§11§(F(param2,param3,param4),param5),param7));
         return §11§(§'"h§(param1,param6),param2);
      }
      
      private static function §7"[§(param1:Number) : String
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:String = "";
         var _loc5_:String = "";
         _loc3_ = 0;
         while(_loc3_ <= 3)
         {
            _loc2_ = param1 >>> _loc3_ * 8 & 0xFF;
            _loc5_ = "0" + _loc2_.toString(16);
            _loc4_ += _loc5_.substr(_loc5_.length - 2,2);
            _loc3_ += 1;
         }
         return _loc4_;
      }
      
      private static function §`!;§(param1:String) : String
      {
         var _loc2_:Number = NaN;
         var _loc3_:String = "";
         var _loc4_:Number = 0;
         while(_loc4_ < param1.length)
         {
            _loc2_ = param1.charCodeAt(_loc4_);
            if(_loc2_ < 128)
            {
               _loc3_ += String.fromCharCode(_loc2_);
            }
            else
            {
               if(_loc2_ > 127)
               {
               }
               if(_loc2_ < 2048)
               {
                  _loc3_ += String.fromCharCode(_loc2_ >> 6 | 0xC0);
                  _loc3_ += String.fromCharCode(_loc2_ & 0x3F | 0x80);
               }
               else
               {
                  _loc3_ += String.fromCharCode(_loc2_ >> 12 | 0xE0);
                  _loc3_ += String.fromCharCode(_loc2_ >> 6 & 0x3F | 0x80);
                  _loc3_ += String.fromCharCode(_loc2_ & 0x3F | 0x80);
               }
            }
            _loc4_ += 1;
         }
         return _loc3_;
      }
   }
}

