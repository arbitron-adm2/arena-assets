package com.inreflected.forks.spark.effects.animation
{
   import com.inreflected.forks.spark.effects.easing.IEaser;
   import com.inreflected.forks.spark.effects.easing.Linear;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   
   public class Keyframe
   {
      
      private static var linearEaser:IEaser = new Linear();
      
      public var value:Number;
      
      public var time:Number;
      
      internal var timeFraction:Number;
      
      public var easer:IEaser = linearEaser;
      
      public var valueBy:Object;
      
      public function Keyframe(param1:Number = NaN, param2:Number = NaN, param3:Object = null)
      {
         super();
         this.value = param2;
         this.time = param1;
         this.valueBy = param3;
      }
      
      public function clone() : Keyframe
      {
         var _loc1_:Keyframe = new Keyframe(this.time,this.value,this.valueBy);
         _loc1_.easer = this.easer;
         _loc1_.timeFraction = this.timeFraction;
         return _loc1_;
      }
   }
}

