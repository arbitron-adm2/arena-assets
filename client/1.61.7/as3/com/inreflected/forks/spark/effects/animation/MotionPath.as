package com.inreflected.forks.spark.effects.animation
{
   import §"$+§.*;
   import §^4§.§]"8§;
   import com.inreflected.forks.spark.effects.interpolation.NumberInterpolator;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class MotionPath
   {
      
      public var property:String;
      
      public var interpolator:NumberInterpolator = NumberInterpolator.getInstance();
      
      public var keyframes:Vector.<Keyframe>;
      
      public function MotionPath(param1:String = null)
      {
         super();
         this.property = param1;
      }
      
      public function clone() : MotionPath
      {
         var _loc2_:int = 0;
         var _loc1_:MotionPath = new MotionPath(this.property);
         _loc1_.interpolator = this.interpolator;
         if(this.keyframes !== null)
         {
            _loc1_.keyframes = new Vector.<Keyframe>();
            _loc2_ = 0;
            while(_loc2_ < this.keyframes.length)
            {
               _loc1_.keyframes[_loc2_] = this.keyframes[_loc2_].clone();
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      internal function scaleKeyframes(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Keyframe = null;
         var _loc2_:int = int(this.keyframes.length);
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.keyframes[_loc3_];
            _loc4_.timeFraction = _loc4_.time / param1;
            _loc3_++;
         }
      }
      
      public function getValue(param1:Number) : Object
      {
         var _loc8_:Number = NaN;
         var _loc9_:Keyframe = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(!this.keyframes)
         {
            return null;
         }
         var _loc2_:int = int(this.keyframes.length);
         var _loc3_:Keyframe = this.keyframes[0];
         var _loc4_:Keyframe = this.keyframes[1];
         if(_loc2_ == 2 && _loc4_.timeFraction == 1)
         {
            _loc8_ = _loc4_.easer ? _loc4_.easer.ease(param1) : param1;
            return this.interpolator.interpolate(_loc8_,_loc3_.value,_loc4_.value);
         }
         if(_loc3_.timeFraction != _loc3_.timeFraction)
         {
            this.scaleKeyframes(this.keyframes[this.keyframes.length - 1].time);
         }
         var _loc5_:Number = 0;
         var _loc6_:Number = _loc3_.value;
         var _loc7_:int = 1;
         while(_loc7_ < _loc2_)
         {
            _loc9_ = this.keyframes[_loc7_];
            if(param1 >= _loc5_ && param1 < _loc9_.timeFraction)
            {
               _loc10_ = (param1 - _loc5_) / (_loc9_.timeFraction - _loc5_);
               _loc11_ = _loc9_.easer ? _loc9_.easer.ease(_loc10_) : _loc10_;
               return this.interpolator.interpolate(_loc11_,_loc6_,_loc9_.value);
            }
            _loc5_ = _loc9_.timeFraction;
            _loc6_ = _loc9_.value;
            _loc7_++;
         }
         return this.keyframes[_loc2_ - 1].value;
      }
   }
}

