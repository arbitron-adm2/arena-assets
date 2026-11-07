package ru.pragmatix.wormix.game.ai
{
   import § #g§.§0!d§;
   import § &5§.§=#P§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §2"L§.§^$y§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §9"-§.§5#-§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §="z§.§9%1§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §0$a§
   {
      
      public static var §;" §:§5%?§ = new §5%?§();
      
      private static const §+%K§:Boolean = false;
      
      public function §0$a§()
      {
         super();
      }
      
      public static function §-&-§(param1:int, param2:int, param3:int, param4:int, param5:uint, param6:Boolean = false, param7:Boolean = true, param8:Number = 10) : Array
      {
         var ANGLE_DELTA:Number = NaN;
         var result:Array = null;
         var vx:Number = NaN;
         var vy:Number = NaN;
         var a:Number = NaN;
         var g:Number = NaN;
         var p:uint = 0;
         var x1:Number = NaN;
         var y1:Number = NaN;
         var x2:Number = NaN;
         var y2:Number = NaN;
         var cx:Number = NaN;
         var cy:Number = NaN;
         var d:Number = NaN;
         var d_:Number = NaN;
         var z1:Number = NaN;
         var z2:Number = NaN;
         var t1:Number = NaN;
         var t2:Number = NaN;
         var sourceX:int = param1;
         var sourceY:int = param2;
         var targetX:int = param3;
         var targetY:int = param4;
         var power:uint = param5;
         var useWind:Boolean = param6;
         var useGravity:Boolean = param7;
         var precision:Number = param8;
         ANGLE_DELTA = §!7§.§'$+§ / precision;
         result = [];
         vx = NaN;
         vy = NaN;
         a = useWind ? §]%G§.§-4§.ax : 0;
         g = useGravity ? §]%G§.§5$r§.ay : 0;
         p = power;
         x1 = sourceX;
         y1 = sourceY;
         x2 = targetX;
         y2 = targetY;
         cx = x2 - x1;
         cy = y2 - y1;
         var checkAndPushAngle:Function = function(param1:Number):void
         {
            var _loc2_:Number = NaN;
            if(param1 > 0)
            {
               vx = (x2 - a * param1 * param1 / 2 - x1) / param1;
               vy = (y2 - g * param1 * param1 / 2 - y1) / param1;
               _loc2_ = Math.round(Math.atan2(vy,vx) / ANGLE_DELTA) * ANGLE_DELTA;
               if(!isNaN(_loc2_))
               {
                  result.push(_loc2_);
               }
            }
         };
         var ca:Number = (g * g + a * a) / 4;
         var cb:Number = a * cx + g * cy + p * p;
         var cc:Number = cy * cy + cx * cx;
         if(Math.abs(ca) > §<H§.§?O§)
         {
            d = cb * cb - 4 * ca * cc;
            if(d >= 0)
            {
               d_ = Math.sqrt(d);
               z1 = (cb + d_) / 2 / ca;
               z2 = (cb - d_) / 2 / ca;
               t1 = 0;
               t2 = 0;
               if(z1 > 0)
               {
                  t1 = Math.sqrt(z1);
               }
               if(z2 > 0)
               {
                  t2 = Math.sqrt(z2);
               }
               checkAndPushAngle(t1);
               checkAndPushAngle(t2);
            }
         }
         else
         {
            checkAndPushAngle(cc / cb);
         }
         return result;
      }
      
      public static function §7&7§(param1:uint, param2:uint, param3:Number, param4:Number) : Point
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(param4 < 1.05 || §8"%§.randomSeed.§5!p§() < 0.05)
         {
            _loc5_ = int(param1);
            _loc6_ = int(param2);
         }
         else
         {
            _loc7_ = Math.max(0,param3 - 100 * (6 - param4));
            _loc8_ = Math.round(1.2 * Math.sqrt(param4 * _loc7_));
            _loc9_ = _loc8_ >> 2;
            _loc5_ = param1 + §^$y§.sign(0.5 - §8"%§.randomSeed.§5!p§()) * (_loc9_ + §8"%§.randomSeed.§5!p§() * _loc8_);
            _loc6_ = param2 + §^$y§.sign(0.5 - §8"%§.randomSeed.§5!p§()) * (_loc9_ + §8"%§.randomSeed.§5!p§() * _loc8_);
         }
         §0$a§.§;" §.§3!?§(_loc5_,_loc6_);
         return new Point(_loc5_,_loc6_);
      }
      
      public static function §<"8§(param1:int, param2:int, param3:int, param4:int, param5:uint, param6:uint, param7:Boolean = false, param8:Boolean = true) : Array
      {
         var _loc16_:uint = 0;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc9_:uint = uint(§!"G§.§+!p§);
         var _loc10_:Number = §!7§.§'$+§;
         var _loc11_:Array = [];
         var _loc12_:Number = param7 ? §]%G§.§-4§.ax : 0;
         var _loc13_:Number = param8 ? §]%G§.§5$r§.ay : 0;
         var _loc14_:int = Math.round((param6 - param5) / _loc9_);
         var _loc15_:int = 1;
         while(_loc15_ <= _loc9_)
         {
            _loc16_ = _loc14_ * _loc15_ + param5;
            _loc17_ = param1;
            _loc18_ = param2;
            _loc19_ = param3;
            _loc20_ = param4;
            _loc21_ = _loc19_ - _loc17_;
            _loc22_ = _loc20_ - _loc18_;
            _loc23_ = (_loc13_ * _loc13_ + _loc12_ * _loc12_) / 4;
            _loc24_ = _loc12_ * _loc21_ + _loc13_ * _loc22_ + _loc16_ * _loc16_;
            _loc25_ = _loc22_ * _loc22_ + _loc21_ * _loc21_;
            _loc26_ = _loc24_ * _loc24_ - 4 * _loc23_ * _loc25_;
            if(_loc26_ >= 0)
            {
               _loc27_ = Math.sqrt(_loc26_);
               _loc28_ = (_loc24_ + _loc27_) / 2 / _loc23_;
               _loc29_ = (_loc24_ - _loc27_) / 2 / _loc23_;
               _loc30_ = 0;
               _loc31_ = 0;
               if(_loc28_ > 0)
               {
                  _loc30_ = Math.sqrt(_loc28_);
               }
               if(_loc29_ > 0)
               {
                  _loc31_ = Math.sqrt(_loc29_);
               }
               for each(_loc32_ in [_loc30_,_loc31_])
               {
                  if(_loc32_ > 0)
                  {
                     _loc33_ = (_loc19_ - _loc12_ * _loc32_ * _loc32_ / 2 - _loc17_) / _loc32_;
                     _loc34_ = (_loc20_ - _loc13_ * _loc32_ * _loc32_ / 2 - _loc18_) / _loc32_;
                     _loc35_ = Math.atan2(_loc34_,_loc33_);
                     _loc36_ = Math.abs(Math.round(_loc35_ / _loc10_) * _loc10_ - _loc35_) / _loc10_ * 100;
                     _loc11_[_loc11_.length] = {
                        "angle":Math.round(_loc35_ / _loc10_) * _loc10_,
                        "power":_loc16_,
                        "dev":_loc36_,
                        "time":_loc32_
                     };
                  }
               }
            }
            _loc15_++;
         }
         return _loc11_;
      }
      
      public static function §[I§(param1:int, param2:int, param3:int, param4:int, param5:uint, param6:Number, param7:Vector.<§+%]§>, param8:uint = 50, param9:Boolean = false, param10:Boolean = true, param11:Boolean = false) : Object
      {
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:int = 0;
         var _loc32_:int = 0;
         var _loc33_:int = 0;
         var _loc34_:int = 0;
         var _loc12_:int = param1;
         var _loc13_:int = param2;
         var _loc14_:Number = param5 * Math.cos(param6);
         var _loc15_:Number = param5 * Math.sin(param6);
         var _loc16_:Number = param9 ? §]%G§.§-4§.ax : 0;
         var _loc17_:Number = param10 ? §]%G§.§5$r§.ay : 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:int = -1;
         var _loc22_:int = 0;
         var _loc23_:int = 10;
         var _loc24_:Number = _loc12_;
         var _loc25_:Number = _loc13_;
         var _loc26_:Number = _loc14_ / _loc23_;
         var _loc27_:Number = _loc15_ / _loc23_;
         var _loc28_:* = 1;
         while(Math.abs(_loc12_ - param3) > param8 || Math.abs(_loc13_ - param4) > param8)
         {
            _loc24_ += _loc26_;
            _loc25_ += _loc27_;
            _loc29_ = _loc24_;
            _loc30_ = _loc25_;
            if(_loc28_++ % _loc23_ == 0)
            {
               _loc26_ += _loc16_ / _loc23_;
               _loc27_ += _loc17_ / _loc23_;
               _loc28_ = 1;
            }
            _loc22_ += Math.round(Math.sqrt(_loc26_ * _loc26_ + _loc27_ * _loc27_));
            if(_loc12_ != Math.round(_loc29_) || _loc13_ != Math.round(_loc30_))
            {
               _loc12_ = Math.round(_loc29_);
               _loc13_ = Math.round(_loc30_);
               _loc19_++;
               if(Application.scene.§?"B§.hitTest(_loc12_,_loc13_))
               {
                  if(_loc18_ == 0)
                  {
                     _loc31_ = _loc12_ - param1;
                     _loc32_ = _loc13_ - param2;
                     _loc18_ = Math.round(Math.sqrt(_loc31_ * _loc31_ + _loc32_ * _loc32_));
                  }
                  if(§+%K§)
                  {
                     §0$a§.§;" §.§3!?§(_loc12_,_loc13_);
                  }
               }
               else if(§&"M§(_loc12_,_loc13_,param8,param7))
               {
                  if(_loc21_ == -1)
                  {
                     _loc33_ = _loc12_ - param1;
                     _loc34_ = _loc13_ - param2;
                     _loc21_ = Math.round(Math.sqrt(_loc33_ * _loc33_ + _loc34_ * _loc34_));
                  }
                  if(§+%K§)
                  {
                     §0$a§.§;" §.§3!?§(_loc12_,_loc13_);
                  }
               }
               else
               {
                  _loc20_++;
                  if(§+%K§)
                  {
                     §0$a§.§;" §.§'%]§(_loc12_,_loc13_);
                  }
               }
               if(_loc18_ != 0 && _loc18_ < 100 && !param11)
               {
                  _loc20_ = 0;
                  break;
               }
               if(_loc12_ < 0 || _loc12_ > Application.scene.width || _loc13_ < -Application.scene.height || _loc13_ > Application.scene.height)
               {
                  return {
                     "explosionDistance":1,
                     "clearPathPc":0,
                     "allyDistance":-1
                  };
               }
            }
         }
         if(§+%K§)
         {
            §0$a§.§;" §.§3!?§(_loc12_,_loc13_);
         }
         return {
            "targetDistance":_loc22_,
            "explosionDistance":_loc18_,
            "clearPathPc":Math.round(_loc20_ * 100 / _loc19_),
            "allyDistance":_loc21_
         };
      }
      
      public static function §;# §(param1:int, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = false, param8:Boolean = true) : Point
      {
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc9_:int = param1;
         var _loc10_:int = param2;
         var _loc11_:Number = param7 ? §]%G§.§-4§.ax : 0;
         var _loc12_:Number = param8 ? §]%G§.§5$r§.ay : 0;
         var _loc13_:int = 10;
         var _loc14_:Number = _loc9_;
         var _loc15_:Number = _loc10_;
         var _loc16_:Number = param5 / _loc13_;
         var _loc17_:Number = param6 / _loc13_;
         var _loc18_:* = 1;
         while(Math.abs(_loc10_ - param4) > 10)
         {
            _loc14_ += _loc16_;
            _loc15_ += _loc17_;
            _loc19_ = _loc14_;
            _loc20_ = _loc15_;
            if(_loc18_++ % _loc13_ == 0)
            {
               _loc16_ += _loc11_ / _loc13_;
               _loc17_ += _loc12_ / _loc13_;
               _loc18_ = 1;
            }
            if(_loc9_ != Math.round(_loc19_) || _loc10_ != Math.round(_loc20_))
            {
               _loc9_ = Math.round(_loc19_);
               _loc10_ = Math.round(_loc20_);
               if(Application.scene.§?"B§.hitTest(_loc9_,_loc10_))
               {
                  return new Point(_loc9_,_loc10_);
               }
            }
         }
         return null;
      }
      
      private static function §&"M§(param1:int, param2:int, param3:int, param4:Vector.<§+%]§>) : Boolean
      {
         var _loc6_:§+%]§ = null;
         var _loc5_:Boolean = false;
         for each(_loc6_ in param4)
         {
            if(Math.abs(_loc6_.x - param1) < param3 && Math.abs(_loc6_.y - param2) < param3)
            {
               return true;
            }
         }
         return _loc5_;
      }
      
      public static function §4+§(param1:§+%]§) : §+%]§
      {
         var _loc4_:§+%]§ = null;
         var _loc5_:§+%]§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc3_:int = int.MAX_VALUE;
         for each(_loc5_ in _loc2_)
         {
            _loc6_ = _loc5_.x - param1.x;
            _loc7_ = _loc5_.y - param1.y;
            _loc8_ = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
            if(_loc8_ < _loc3_)
            {
               _loc3_ = _loc8_;
               _loc4_ = _loc5_;
            }
         }
         return _loc4_;
      }
   }
}

