package §2"L§
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2#H§.§#$A§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!i§.§<#&§;
   import §@!i§.§<,§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §`"p§.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §^$y§
   {
      
      public function §^$y§()
      {
         super();
      }
      
      public static function sign(param1:Number) : int
      {
         return param1 < 0 ? -1 : 1;
      }
      
      public static function §[$K§(param1:Number) : int
      {
         return Math.round(param1 / (Math.PI / 144));
      }
      
      public static function §0%r§(param1:int) : Number
      {
         return param1 * (Math.PI / 144);
      }
      
      public static function distance(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public static function § !Q§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = NaN;
         var _loc7_:* = undefined;
         var _loc5_:Number = Math.abs(Math.max(param1,param2) - Math.min(param1,param2));
         var _loc6_:Number = 2 * Math.PI - _loc5_;
         if(param1 < param2)
         {
            _loc7_ = _loc5_;
            _loc5_ = _loc6_;
            _loc6_ = _loc7_;
         }
         if(_loc5_ < _loc6_)
         {
            _loc4_ = _loc5_ < param3 ? param2 : param1 - param3;
         }
         else
         {
            _loc4_ = _loc6_ < param3 ? param2 : param1 + param3;
         }
         return _loc4_;
      }
      
      public static function drawCircle(param1:BitmapData, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         _loc5_ = _loc6_ = _loc7_ = 0;
         _loc5_ = 0;
         _loc6_ = param4;
         _loc9_ = 2 * (1 - param4);
         do
         {
            _loc11_ = param2 - _loc5_;
            while(_loc11_ <= param2 + _loc5_)
            {
               param1.setPixel(_loc11_,param3 - _loc6_,16777215);
               param1.setPixel(_loc11_,param3 + _loc6_,16777215);
               _loc11_++;
            }
            _loc10_ = 0;
            if(_loc6_ < _loc7_)
            {
               break;
            }
            if(_loc9_ < 0)
            {
               _loc8_ = 2 * (_loc9_ + _loc6_) - 1;
               if(_loc8_ <= 0)
               {
                  _loc5_++;
                  _loc9_ += 2 * _loc5_ + 1;
                  _loc10_ = 1;
               }
            }
            else if(_loc9_ > 0)
            {
               _loc8_ = 2 * (_loc9_ - _loc5_) - 1;
               if(_loc8_ > 0)
               {
                  _loc6_--;
                  _loc9_ += 1 - 2 * _loc6_;
                  _loc10_ = 1;
               }
            }
            if(!_loc10_)
            {
               _loc5_++;
               _loc6_--;
               _loc9_ += 2 * (_loc5_ - _loc6_ - 1);
            }
         }
         while(1);
      }
      
      public static function §`"F§(param1:int, param2:int, param3:int, param4:int, param5:Function) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc6_:int = param3 - param1;
         var _loc7_:int = param4 - param2;
         var _loc8_:int = int(§^$y§.sign(_loc6_));
         var _loc9_:int = int(§^$y§.sign(_loc7_));
         if(_loc6_ < 0)
         {
            _loc6_ = -_loc6_;
         }
         if(_loc7_ < 0)
         {
            _loc7_ = -_loc7_;
         }
         if(_loc6_ > _loc7_)
         {
            _loc10_ = _loc8_;
            _loc11_ = 0;
            _loc12_ = _loc8_;
            _loc13_ = _loc9_;
            _loc14_ = _loc7_;
            _loc15_ = _loc6_;
         }
         else
         {
            _loc10_ = 0;
            _loc11_ = _loc9_;
            _loc12_ = _loc8_;
            _loc13_ = _loc9_;
            _loc14_ = _loc6_;
            _loc15_ = _loc7_;
         }
         var _loc16_:int = param1;
         var _loc17_:int = param2;
         var _loc18_:Number = _loc15_ / 2;
         param5(_loc16_,_loc17_);
         var _loc19_:int = 0;
         while(_loc19_ < _loc15_)
         {
            _loc18_ -= _loc14_;
            if(_loc18_ < 0)
            {
               _loc18_ += _loc15_;
               _loc16_ += _loc12_;
               _loc17_ += _loc13_;
            }
            else
            {
               _loc16_ += _loc10_;
               _loc17_ += _loc11_;
            }
            param5(_loc16_,_loc17_);
            _loc19_++;
         }
      }
      
      public static function §<&H§(param1:BitmapData, param2:int, param3:int, param4:int, param5:int) : void
      {
         var g:BitmapData = param1;
         var x1:int = param2;
         var y1:int = param3;
         var x2:int = param4;
         var y2:int = param5;
         §`"F§(x1,y1,x2,y2,function(param1:int, param2:int):void
         {
            g.setPixel(param1,param2,0);
         });
      }
   }
}

