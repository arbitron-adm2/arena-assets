package com.inreflected.ui.touchScroll
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §'"N§.*;
   import §+%S§.§9"i§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4#`§.BattleInterface;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$V§.*;
   import §@<§.§+%]§;
   import com.inreflected.forks.spark.effects.animation.Keyframe;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import com.inreflected.forks.spark.effects.easing.IEaser;
   import com.inreflected.forks.spark.effects.easing.Power;
   import flash.display.Shape;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class ThrowEffect
   {
      
      private static const TICKER:Shape = new Shape();
      
      protected static const THROW_SETTLE_TIME:int = 600;
      
      protected static const SETTLE_THROW_VELOCITY:Number = 5;
      
      protected static const STOP_VELOCITY:Number = 0.02;
      
      public var startingVelocityX:Number = 0;
      
      public var startingVelocityY:Number = 0;
      
      public var startingPositionX:Number = 0;
      
      public var startingPositionY:Number = 0;
      
      public var minPositionX:Number = 0;
      
      public var minPositionY:Number = 0;
      
      public var maxPositionX:Number = 0;
      
      public var maxPositionY:Number = 0;
      
      public var decelerationRate:Number;
      
      public var pull:Boolean;
      
      public var bounce:Boolean;
      
      public var maxBounce:Number;
      
      public var viewportWidth:Number;
      
      public var viewportHeight:Number;
      
      public var finalPosition:Point;
      
      public var finalPositionFilterFunction:Function;
      
      public var onUpdateCallback:Function;
      
      public var onCompleteCallback:Function;
      
      public var isSnapping:Boolean = false;
      
      protected var horizontalMP:MotionPath = null;
      
      protected var verticalMP:MotionPath = null;
      
      protected var _effectFollower:PathsFollower = new PathsFollower();
      
      protected var _effectStartTime:uint;
      
      protected var _effectTarget:ScrollableObjectModel;
      
      protected var _duration:uint;
      
      private var _isPlaying:Boolean;
      
      public function ThrowEffect()
      {
         super();
         this._effectTarget = new ScrollableObjectModel();
         this._effectFollower.target = this._effectTarget;
      }
      
      public function get duration() : uint
      {
         return this._duration;
      }
      
      public function get isPlaying() : Boolean
      {
         return this._isPlaying;
      }
      
      public function play() : void
      {
         if(!this.isPlaying)
         {
            this._isPlaying = true;
            this._effectStartTime = getTimer();
            TICKER.addEventListener(Event.ENTER_FRAME,this.target_enterFrameHandler);
         }
      }
      
      public function setup() : Boolean
      {
         var _loc2_:uint = 0;
         var _loc1_:Vector.<MotionPath> = new Vector.<MotionPath>();
         this.isSnapping = false;
         this._effectTarget.positionX = this.startingPositionX;
         this._effectTarget.positionY = this.startingPositionY;
         var _loc3_:Number = 0;
         var _loc4_:Number = this.startingPositionX;
         this.horizontalMP = this.createThrowMotionPath("positionX",this.startingVelocityX,this.startingPositionX,this.minPositionX,this.maxPositionX,this.viewportWidth);
         if(this.horizontalMP)
         {
            _loc1_.push(this.horizontalMP);
            _loc2_ = this.horizontalMP.keyframes.length - 1;
            _loc3_ = this.horizontalMP.keyframes[_loc2_].time;
            _loc4_ = Number(this.horizontalMP.keyframes[_loc2_].value);
         }
         var _loc5_:Number = 0;
         var _loc6_:Number = this.startingPositionY;
         this.verticalMP = null;
         this.verticalMP = this.createThrowMotionPath("positionY",this.startingVelocityY,this.startingPositionY,this.minPositionY,this.maxPositionY,this.viewportHeight);
         if(this.verticalMP)
         {
            _loc1_.push(this.verticalMP);
            _loc2_ = this.verticalMP.keyframes.length - 1;
            _loc5_ = this.verticalMP.keyframes[_loc2_].time;
            _loc6_ = Number(this.verticalMP.keyframes[_loc2_].value);
         }
         if(Boolean(this.horizontalMP) || Boolean(this.verticalMP))
         {
            if(Boolean(this.horizontalMP) && Boolean(this.verticalMP))
            {
               if(_loc3_ < _loc5_)
               {
                  this.addKeyframe(this.horizontalMP,_loc5_,_loc4_,new Power());
               }
               else if(_loc5_ < _loc3_)
               {
                  this.addKeyframe(this.verticalMP,_loc3_,_loc6_,new Power());
               }
            }
            this._duration = Math.max(_loc3_,_loc5_);
            this._effectFollower.motionPaths = _loc1_;
            this._effectFollower.progress = 0;
            this.finalPosition = new Point(_loc4_,_loc6_);
            return true;
         }
         return false;
      }
      
      public function stop(param1:Boolean = true) : void
      {
         if(this._isPlaying)
         {
            TICKER.removeEventListener(Event.ENTER_FRAME,this.target_enterFrameHandler);
            this._isPlaying = false;
            if(param1)
            {
               this.onCompleteCallback();
            }
         }
      }
      
      public function getCurrentVelocity() : Point
      {
         var _loc1_:Number = this.duration;
         var _loc2_:Number = Number(this._effectFollower.progress * _loc1_ || 0);
         var _loc3_:Number = this.horizontalMP ? this.getMotionPathCurrentVelocity(this.horizontalMP,_loc2_,_loc1_) : 0;
         var _loc4_:Number = this.verticalMP ? this.getMotionPathCurrentVelocity(this.verticalMP,_loc2_,_loc1_) : 0;
         return new Point(_loc3_,_loc4_);
      }
      
      protected function calculateThrowEffectTime(param1:Number, param2:Number) : int
      {
         var _loc3_:Number = param1 > 0 ? param1 : -param1;
         return _loc3_ <= STOP_VELOCITY ? 0 : int(Math.log(STOP_VELOCITY / _loc3_) / Math.log(param2));
      }
      
      protected function addKeyframe(param1:MotionPath, param2:Number, param3:Number, param4:IEaser) : Number
      {
         var _loc5_:Keyframe = new Keyframe(param2,param3);
         _loc5_.easer = param4;
         param1.keyframes.push(_loc5_);
         return param2;
      }
      
      protected function createThrowMotionPath(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : MotionPath
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Number = NaN;
         var _loc14_:uint = 0;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc7_:MotionPath = new MotionPath(param1);
         _loc7_.keyframes = Vector.<Keyframe>([new Keyframe(0,param3)]);
         var _loc8_:Number = 0;
         var _loc11_:Number = this.decelerationRate;
         if(param2 == 0)
         {
            if(param3 < param4 || param3 > param5)
            {
               param3 = param3 < param4 ? param4 : param5;
               if(this.finalPositionFilterFunction != null)
               {
                  param3 = this.finalPositionFilterFunction(param3,param1);
               }
               _loc8_ = this.addKeyframe(_loc7_,_loc8_ + THROW_SETTLE_TIME,param3,new Expo(SETTLE_THROW_VELOCITY,STOP_VELOCITY));
            }
            else
            {
               _loc10_ = param3;
               if(this.finalPositionFilterFunction != null)
               {
                  _loc10_ = this.finalPositionFilterFunction(param3,param1);
               }
               if(_loc10_ == param3)
               {
                  return null;
               }
               this.isSnapping = true;
               _loc8_ = this.addKeyframe(_loc7_,_loc8_ + THROW_SETTLE_TIME,_loc10_,new Expo(SETTLE_THROW_VELOCITY,STOP_VELOCITY));
            }
         }
         while(param2 != 0)
         {
            if(param3 <= param4 && param2 > 0 || param3 >= param5 && param2 < 0)
            {
               _loc12_ = _loc9_ != _loc9_;
               if(_loc12_)
               {
                  if(!this.pull && (param3 == param4 || param3 == param5))
                  {
                     return null;
                  }
                  _loc11_ *= 0.9;
               }
               if(this.bounce || _loc12_)
               {
                  _loc13_ = param3 < param4 ? param4 : param5;
                  if(this.finalPositionFilterFunction != null)
                  {
                     _loc13_ = this.finalPositionFilterFunction(_loc13_,param1);
                  }
                  if(!_loc12_)
                  {
                     _loc11_ *= 0.98 * Math.pow(0.998,param2 > 0 ? param2 : -param2);
                  }
                  _loc14_ = uint(this.calculateThrowEffectTime(param2,_loc11_));
                  _loc15_ = Math.round(param3 + (param2 - STOP_VELOCITY) / Math.log(_loc11_));
                  if(!_loc12_)
                  {
                     _loc16_ = this.maxBounce * param6;
                     _loc17_ = Math.min(Math.max(param4 - _loc16_,_loc15_),param5 + _loc16_);
                     if(_loc17_ != _loc15_)
                     {
                        _loc15_ = _loc17_;
                        _loc11_ = Math.exp((STOP_VELOCITY - Math.abs(param2)) / _loc16_);
                        _loc14_ = uint(this.calculateThrowEffectTime(param2,_loc11_));
                     }
                  }
                  _loc8_ = this.addKeyframe(_loc7_,_loc8_ + _loc14_,_loc15_,new Expo(param2,STOP_VELOCITY));
                  _loc8_ = this.addKeyframe(_loc7_,_loc8_ + THROW_SETTLE_TIME,_loc13_,new Expo(SETTLE_THROW_VELOCITY,STOP_VELOCITY));
               }
               param2 = 0;
            }
            else
            {
               _loc9_ = this.calculateThrowEffectTime(param2,_loc11_);
               _loc18_ = Math.round(param3 + (param2 - STOP_VELOCITY) / Math.log(_loc11_));
               if(param3 < param4 && _loc18_ < param4 || param3 > param5 && _loc18_ > param5)
               {
                  param2 = 0;
                  return this.createThrowMotionPath(param1,param2,param3,param4,param5,param6);
               }
               if(_loc18_ < param4 || _loc18_ > param5)
               {
                  _loc19_ = _loc18_ < param4 ? param4 : param5;
                  _loc20_ = Math.log((param2 + Math.log(_loc11_) * (param3 - _loc19_)) / param2) / Math.log(_loc11_);
                  if(_loc20_ != _loc20_)
                  {
                     throw new Error("partialTime != partialTime");
                  }
                  _loc8_ = this.addKeyframe(_loc7_,_loc8_ + _loc20_,_loc19_,new PartialExpo(param2,STOP_VELOCITY,_loc20_ / _loc9_));
                  if(_loc18_ < param4)
                  {
                     param3 = param4 - 1;
                  }
                  if(_loc18_ > param5)
                  {
                     param3 = param5 + 1;
                  }
                  param2 *= Math.pow(_loc11_,_loc20_);
               }
               else
               {
                  if(isNaN(_loc18_))
                  {
                     throw new Error("finalPosition is NaN");
                  }
                  if(this.finalPositionFilterFunction != null)
                  {
                     _loc18_ = this.finalPositionFilterFunction(_loc18_,param1);
                  }
                  _loc8_ = this.addKeyframe(_loc7_,_loc8_ + _loc9_,_loc18_,new Expo(param2,STOP_VELOCITY));
                  param2 = 0;
               }
            }
         }
         return _loc7_;
      }
      
      private function getMotionPathCurrentVelocity(param1:MotionPath, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param2 / param3;
         var _loc5_:Number = 0.00001;
         var _loc6_:Number = Number(param1.getValue(_loc4_));
         var _loc7_:Number = Number(param1.getValue(_loc4_ + _loc5_ / param3));
         return (_loc7_ - _loc6_) / _loc5_;
      }
      
      private function target_enterFrameHandler(param1:Event) : void
      {
         var _loc2_:Number = (getTimer() - this._effectStartTime) / this._duration;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
         }
         this._effectFollower.progress = _loc2_;
         this.onUpdateCallback(this._effectTarget.positionX,this._effectTarget.positionY);
         if(_loc2_ == 1)
         {
            this.stop();
         }
      }
   }
}

import com.inreflected.forks.spark.effects.animation.MotionPath;
import com.inreflected.forks.spark.effects.easing.EaseInOutBase;
import com.inreflected.forks.spark.effects.easing.IEaser;

class Expo implements IEaser
{
   
   private var k1:Number;
   
   private var k2:Number;
   
   public function Expo(param1:Number, param2:Number = 0.01)
   {
      super();
      param1 = param1 < 0 ? -param1 : param1;
      this.k1 = param2 / param1;
      this.k2 = 1 / (this.k1 - 1);
   }
   
   public function ease(param1:Number) : Number
   {
      return this.k2 * (Math.pow(this.k1,param1) - 1);
   }
}

class ScrollableObjectModel
{
   
   public var positionX:Number;
   
   public var positionY:Number;
   
   public function ScrollableObjectModel()
   {
      super();
   }
}

class PartialExpo extends Expo
{
   
   private var _xscale:Number;
   
   private var _ymult:Number;
   
   public function PartialExpo(param1:Number, param2:Number, param3:Number)
   {
      super(param1,param2);
      this._xscale = param3;
      this._ymult = 1 / super.ease(this._xscale);
   }
   
   override public function ease(param1:Number) : Number
   {
      return this._ymult * super.ease(param1 * this._xscale);
   }
}

class PartialExponentialCurve extends EaseInOutBase
{
   
   private var _xscale:Number;
   
   private var _ymult:Number;
   
   private var _exponent:Number;
   
   public function PartialExponentialCurve(param1:Number, param2:Number)
   {
      super(0);
      this._exponent = param1;
      this._xscale = param2;
      this._ymult = 1 / (1 - Math.pow(1 - this._xscale,this._exponent));
   }
   
   override protected function easeOut(param1:Number) : Number
   {
      return this._ymult * (1 - Math.pow(1 - param1 * this._xscale,this._exponent));
   }
}

class PathsFollower
{
   
   public var target:Object;
   
   public var cachedProgress:Number;
   
   public var cachedRawProgress:Number;
   
   public var motionPaths:Vector.<MotionPath>;
   
   public function PathsFollower(param1:Object = null)
   {
      super();
      this.target = param1;
      this.cachedProgress = this.cachedRawProgress = 0;
   }
   
   public function get rawProgress() : Number
   {
      return this.cachedRawProgress;
   }
   
   public function set rawProgress(param1:Number) : void
   {
      this.progress = param1;
   }
   
   public function get progress() : Number
   {
      return this.cachedProgress;
   }
   
   public function set progress(param1:Number) : void
   {
      var _loc2_:MotionPath = null;
      if(param1 > 1)
      {
         this.cachedRawProgress = param1;
         this.cachedProgress = param1 - int(param1);
         if(this.cachedProgress == 0)
         {
            this.cachedProgress = 1;
         }
      }
      else if(param1 < 0)
      {
         this.cachedRawProgress = param1;
         this.cachedProgress = param1 - (int(param1) - 1);
      }
      else
      {
         this.cachedRawProgress = int(this.cachedRawProgress) + param1;
         this.cachedProgress = param1;
      }
      for each(_loc2_ in this.motionPaths)
      {
         this.target[_loc2_.property] = _loc2_.getValue(this.cachedProgress);
      }
   }
}
