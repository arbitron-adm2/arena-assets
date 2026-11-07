package com.inreflected.ui.touchScroll
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §+$=§.§6#A§;
   import §+5§.§8$W§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0"L§.§@#n§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §2!-§.SupplyPickedUpEvent;
   import §2"L§.§^$y§;
   import §3#T§.Meteor;
   import §3#a§.*;
   import §4#2§.§,%g§;
   import §4#`§.§+!l§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<"L§.§##-§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.*;
   import §@#K§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[%§.Dragon;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^-§.§ %s§;
   import §^-§.Rope;
   import §`%&§.§8U§;
   import §`%&§.§@&,§;
   import com.greensock.motionPaths.PathFollower;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class TouchScrollModel
   {
      
      public static const MAX_PULL_FACTOR:Number = 0.4;
      
      public static const MAX_OVERSHOOT_FACTOR:Number = 0.4;
      
      private static const PULL_TENSION_FACTOR:Number = 1.5;
      
      private static const MIN_START_VELOCITY:Number = 0.6 * Capabilities.screenDPI / 1000;
      
      private static const DIRECTIONAL_LOCK_THRESHOLD_DISTANCE:Number = Math.round(20 / 252 * Capabilities.screenDPI);
      
      private static const DIRECTIONAL_LOCK_THRESHOLD_ANGLE:Number = 20 * Math.PI / 180;
      
      public var positionUpdateCallback:Function;
      
      public var throwCompleteCallback:Function;
      
      public var bounceEnabled:Boolean = true;
      
      public var allwaysBounceHorizontal:Boolean = true;
      
      public var allwaysBounceVertical:Boolean = true;
      
      public var decelerationRate:Number = 0.998;
      
      public var directionalLock:Boolean;
      
      public var directionalLockThresholdDistance:Number = DIRECTIONAL_LOCK_THRESHOLD_DISTANCE;
      
      public var directionalLockThresholdAngle:Number = 0.3490658503988659;
      
      public var minVelocity:Number = 0;
      
      public var maxVelocity:Number;
      
      public var maxPull:Number;
      
      public var maxBounce:Number;
      
      protected var _viewportWidth:Number = 0;
      
      protected var _viewportHeight:Number = 0;
      
      protected var _positionX:Number = 0;
      
      protected var _positionY:Number = 0;
      
      protected var _touchHSP:Number;
      
      protected var _touchVSP:Number;
      
      protected var _lastDirectionX:int;
      
      protected var _lastDirectionY:int;
      
      protected var _cummulativeOffsetX:Number;
      
      protected var _cummulativeOffsetY:Number;
      
      protected var _directionalLockTimer:Timer = new Timer(600,1);
      
      protected var _directionalLockThresholdAngleCoefficient:Number;
      
      protected var _directionalLockCummulativeOffsetX:Number = 0;
      
      protected var _directionalLockCummulativeOffsetY:Number = 0;
      
      protected var _directionLockTimerStartPoint:Point;
      
      protected var _velocityCalculator:VelocityCalculator = new VelocityCalculator();
      
      protected var _throwEffect:ThrowEffect;
      
      protected var _throwFinalHSP:Number;
      
      protected var _throwFinalVSP:Number;
      
      protected var _currentPageHSP:Number = 0;
      
      protected var _currentPageVSP:Number = 0;
      
      protected var _lockHorizontal:Boolean;
      
      protected var _lockVertical:Boolean;
      
      protected var _throwReachedEdgePosition:Boolean;
      
      protected var _scrollBounds:Rectangle = new Rectangle();
      
      protected var _measuredScrollBounds:Rectangle = new Rectangle();
      
      protected var _explicitScrollBounds:Rectangle;
      
      protected var _contentWidth:Number = 0;
      
      protected var _contentHeight:Number = 0;
      
      protected var _canScrollHorizontally:Boolean;
      
      protected var _canScrollVertically:Boolean;
      
      protected var _inTouchInteraction:Boolean;
      
      protected var _isScrolling:Boolean;
      
      private var _pagingEnabled:Boolean;
      
      public function TouchScrollModel()
      {
         super();
         this._directionalLockTimer.addEventListener(TimerEvent.TIMER,this.directionalLockTimer_timerHandler);
      }
      
      public function get scrollBounds() : Rectangle
      {
         return this._scrollBounds.clone();
      }
      
      public function set scrollBounds(param1:Rectangle) : void
      {
         if(this._explicitScrollBounds == param1 || Boolean(this._explicitScrollBounds && param1) && Boolean(this._explicitScrollBounds.equals(param1)))
         {
            return;
         }
         this._explicitScrollBounds = param1 ? param1.clone() : null;
         this.invalidateScrollBounds();
      }
      
      public function get contentWidth() : Number
      {
         return this._contentWidth;
      }
      
      public function get contentHeight() : Number
      {
         return this._contentHeight;
      }
      
      public function get canScrollHorizontally() : Boolean
      {
         return this._canScrollHorizontally;
      }
      
      public function get canScrollVertically() : Boolean
      {
         return this._canScrollVertically;
      }
      
      public function get inTouchInteraction() : Boolean
      {
         return this._inTouchInteraction;
      }
      
      public function get isScrolling() : Boolean
      {
         return this._isScrolling;
      }
      
      public function get pagingEnabled() : Boolean
      {
         return this._pagingEnabled;
      }
      
      public function set pagingEnabled(param1:Boolean) : void
      {
         if(this._pagingEnabled == param1)
         {
            return;
         }
         this._pagingEnabled = param1;
         this.invalidateScrollBounds();
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this._positionX = param1;
         this._positionY = param2;
      }
      
      public function setContentSize(param1:Number, param2:Number) : void
      {
         if(param1 < 0 || param2 < 0)
         {
            throw new ArgumentError("Content size must be non negative. " + "Passed values: width = " + param1 + ", height = " + param2);
         }
         this._contentWidth = param1;
         this._contentHeight = param2;
         this.invalidateScrollBounds();
      }
      
      public function setViewportSize(param1:Number, param2:Number) : void
      {
         if(param1 < 0 || param2 < 0)
         {
            throw new ArgumentError("Viewport dimentions must be non negative. " + "Passed values: width = " + param1 + ", height = " + param2);
         }
         this._viewportWidth = param1;
         this._viewportHeight = param2;
         this.invalidateScrollBounds();
      }
      
      public function setScrollBounds(param1:Rectangle) : void
      {
         this.scrollBounds = param1;
      }
      
      public function stop() : void
      {
         this._inTouchInteraction = false;
         this._directionalLockTimer.reset();
         this._lockHorizontal = this._lockVertical = false;
         this._isScrolling = false;
         if(Boolean(this._throwEffect) && this._throwEffect.isPlaying)
         {
            this._throwEffect.stop(false);
         }
         this.snapToValidPosition();
      }
      
      public function dispose() : void
      {
         if(this.isScrolling)
         {
            this.stop();
         }
         if(this._directionalLockTimer)
         {
            this._directionalLockTimer.stop();
            this._directionalLockTimer.removeEventListener(TimerEvent.TIMER,this.directionalLockTimer_timerHandler);
            this._directionalLockTimer = null;
         }
         this.positionUpdateCallback = null;
      }
      
      public function onInteractionBegin(param1:Number, param2:Number) : void
      {
         this.stopThrowEffectOnTouch();
         this._inTouchInteraction = true;
         this.setPosition(param1,param2);
         if(this.isScrolling)
         {
            this.clipToScrollBounds();
            if(this.directionalLock)
            {
               this.restartDirectionalLockWatch();
            }
         }
         this._touchHSP = this._positionX;
         this._touchVSP = this._positionY;
         this._lastDirectionX = this._lastDirectionY = 0;
         this._cummulativeOffsetX = this._cummulativeOffsetY = 0;
         this._velocityCalculator.reset();
      }
      
      public function onDragBegin(param1:Number, param2:Number) : void
      {
         this.updateCanScroll();
         this._isScrolling = true;
         if(this.directionalLock)
         {
            this._directionalLockThresholdAngleCoefficient = Math.sin(this.directionalLockThresholdAngle) * 2 / Math.sqrt(2);
         }
         this.onDragUpdate(param1,param2);
      }
      
      public function onDragUpdate(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.directionalLock && this.canScrollHorizontally && this.canScrollVertically)
         {
            this._directionalLockCummulativeOffsetX += param1;
            this._directionalLockCummulativeOffsetY += param2;
            if(!this._directionalLockTimer.running && !this._lockHorizontal && !this._lockVertical)
            {
               _loc3_ = Math.sqrt(this._directionalLockCummulativeOffsetX * this._directionalLockCummulativeOffsetX + this._directionalLockCummulativeOffsetY * this._directionalLockCummulativeOffsetY);
               if(_loc3_ >= this.directionalLockThresholdDistance)
               {
                  _loc4_ = Math.atan2(this._directionalLockCummulativeOffsetY,this._directionalLockCummulativeOffsetX);
                  _loc5_ = Math.sin(this.directionalLockThresholdAngle);
                  if(Math.abs(Math.sin(_loc4_)) < _loc5_)
                  {
                     this._lockHorizontal = true;
                  }
                  else if(Math.abs(Math.cos(_loc4_)) < _loc5_)
                  {
                     this._lockVertical = true;
                  }
                  this.restartDirectionalLockWatch();
               }
            }
            else if(Math.abs(this._directionalLockCummulativeOffsetX) >= this.directionalLockThresholdDistance || Math.abs(this._directionalLockCummulativeOffsetY) >= this.directionalLockThresholdDistance)
            {
               this.restartDirectionalLockWatch();
            }
         }
         if(this._lockVertical || !this.canScrollHorizontally)
         {
            param1 = 0;
         }
         if(this._lockHorizontal || !this.canScrollVertically)
         {
            param2 = 0;
         }
         this._lastDirectionX = this.canScrollHorizontally && param1 != 0 ? (param1 > 0 ? 1 : -1) : 0;
         this._lastDirectionY = this.canScrollVertically && param2 != 0 ? (param2 > 0 ? 1 : -1) : 0;
         this._velocityCalculator.addOffsets(param1,param2);
         this.performDrag(param1,param2);
      }
      
      public function onInteractionEnd() : void
      {
         var _loc1_:Point = null;
         this._inTouchInteraction = false;
         this._directionalLockTimer.reset();
         if(this.isScrolling)
         {
            _loc1_ = this.calculateThrowVelocity();
            this.performThrow(_loc1_.x,_loc1_.y);
         }
         else
         {
            this.performThrow(0,0);
         }
      }
      
      public function performThrow(param1:Number, param2:Number) : void
      {
         if(isNaN(param1) || isNaN(param2))
         {
            throw new ArgumentError("One of the velocities is NaN.");
         }
         if(this.setupThrowEffect(param1,param2))
         {
            this._throwEffect.play();
         }
      }
      
      protected function setEffectiveScrollBounds(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this._scrollBounds.left = param1;
         this._scrollBounds.top = param2;
         this._scrollBounds.right = param3;
         this._scrollBounds.bottom = param4;
         this.updateCanScroll();
         this.validatePosition();
      }
      
      protected function getExplicitOrMeasuredScrollBounds() : Rectangle
      {
         return this._explicitScrollBounds || this._measuredScrollBounds;
      }
      
      protected function updateCanScroll() : void
      {
         var _loc1_:Rectangle = this._scrollBounds;
         this._canScrollHorizontally = this.bounceEnabled && this.allwaysBounceHorizontal || _loc1_.width > 0;
         this._canScrollVertically = this.bounceEnabled && this.allwaysBounceVertical || _loc1_.height > 0;
      }
      
      protected function measureScrollBounds() : void
      {
         this._measuredScrollBounds.left = 0;
         this._measuredScrollBounds.top = 0;
         if(this.pagingEnabled)
         {
            this._measuredScrollBounds.width = Math.max(0,int(this._contentWidth / this._viewportWidth) - 1) * this._viewportWidth;
            this._measuredScrollBounds.height = Math.max(0,int(this._contentHeight / this._viewportHeight) - 1) * this._viewportHeight;
         }
         else
         {
            this._measuredScrollBounds.width = Math.max(0,this._contentWidth - this._viewportWidth);
            this._measuredScrollBounds.height = Math.max(0,this._contentHeight - this._viewportHeight);
         }
      }
      
      protected function invalidateScrollBounds() : void
      {
         this.measureScrollBounds();
         var _loc1_:Rectangle = this.getExplicitOrMeasuredScrollBounds();
         this.setEffectiveScrollBounds(_loc1_.left,_loc1_.top,_loc1_.right,_loc1_.bottom);
      }
      
      protected function clipToScrollBounds() : void
      {
         var _loc1_:Rectangle = this._scrollBounds;
         var _loc2_:Boolean = false;
         if(this._positionX < _loc1_.left)
         {
            this._positionX = _loc1_.left;
            _loc2_ = true;
         }
         else if(this._positionX > _loc1_.right)
         {
            this._positionX = _loc1_.right;
            _loc2_ = true;
         }
         if(this._positionY < _loc1_.top)
         {
            this._positionY = _loc1_.top;
            _loc2_ = true;
         }
         else if(this._positionY > _loc1_.bottom)
         {
            this._positionY = _loc1_.bottom;
            _loc2_ = true;
         }
         if(_loc2_)
         {
            this.positionUpdateCallback(this._positionX,this._positionY);
         }
      }
      
      protected function validatePosition() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Point = null;
         var _loc1_:Rectangle = this._scrollBounds;
         if(Boolean(this._throwEffect) && this._throwEffect.isPlaying)
         {
            _loc2_ = false;
            if(!this.pagingEnabled)
            {
               if(this._throwReachedEdgePosition || this._throwFinalVSP > _loc1_.bottom || this._throwFinalVSP < _loc1_.top || this._throwFinalHSP > _loc1_.right || this._throwFinalHSP < _loc1_.left)
               {
                  _loc2_ = true;
               }
            }
            else if(this.getSnappedPosition(this._throwFinalVSP,this._viewportHeight,_loc1_.top,_loc1_.bottom) != this._throwFinalVSP || this.getSnappedPosition(this._throwFinalHSP,this._viewportWidth,_loc1_.left,_loc1_.right) != this._throwFinalHSP)
            {
               _loc2_ = true;
            }
            if(_loc2_)
            {
               _loc3_ = this._throwEffect.getCurrentVelocity();
               this._throwEffect.stop(false);
               if(this.setupThrowEffect(-_loc3_.x,-_loc3_.y))
               {
                  this._throwEffect.play();
               }
            }
         }
         else if(this._inTouchInteraction)
         {
            if(!(this._positionX < _loc1_.left || this._positionX > _loc1_.right))
            {
               this._touchHSP = this._positionX;
               this._cummulativeOffsetX = 0;
            }
            if(!(this._positionY < _loc1_.top || this._positionY > _loc1_.bottom))
            {
               this._touchVSP = this._positionY;
               this._cummulativeOffsetY = 0;
            }
         }
         else
         {
            this.snapToValidPosition();
         }
      }
      
      protected function snapToValidPosition() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:Rectangle = this._scrollBounds;
         var _loc3_:Boolean = false;
         _loc2_ = this.getSnappedPosition(this._positionX,this._viewportWidth,_loc1_.left,_loc1_.right);
         if(this._positionX != _loc2_)
         {
            this._positionX = _loc2_;
            _loc3_ = true;
         }
         _loc2_ = this.getSnappedPosition(this._positionY,this._viewportHeight,_loc1_.top,_loc1_.bottom);
         if(this._positionY != _loc2_)
         {
            this._positionY = _loc2_;
            _loc3_ = true;
         }
         if(this.pagingEnabled)
         {
            this._currentPageHSP = this._positionX;
            this._currentPageVSP = this._positionY;
         }
         if(_loc3_)
         {
            this.positionUpdateCallback(this._positionX,this._positionY);
         }
      }
      
      protected function performDrag(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         this._cummulativeOffsetX += param1;
         this._cummulativeOffsetY += param2;
         var _loc6_:Rectangle = this._scrollBounds;
         var _loc7_:Boolean = this.maxPull != this.maxPull || this.maxPull > 0;
         if(this.canScrollHorizontally)
         {
            _loc8_ = this._touchHSP - this._cummulativeOffsetX;
            if(_loc8_ < _loc6_.left || _loc8_ > _loc6_.right)
            {
               if(_loc7_)
               {
                  _loc3_ = this._viewportWidth;
                  if(_loc8_ < _loc6_.left)
                  {
                     _loc4_ = _loc6_.left - _loc8_;
                     _loc5_ = _loc4_ < _loc3_ ? _loc4_ / _loc3_ : 1;
                     _loc5_ = Math.min((this.maxPull || MAX_PULL_FACTOR) * (1 - Math.pow(1 - _loc5_,PULL_TENSION_FACTOR)),_loc5_);
                     _loc8_ = _loc6_.left - _loc3_ * _loc5_;
                  }
                  else
                  {
                     _loc4_ = _loc8_ - _loc6_.right;
                     _loc5_ = _loc4_ < _loc3_ ? _loc4_ / _loc3_ : 1;
                     _loc5_ = Math.min((this.maxPull || MAX_PULL_FACTOR) * (1 - Math.pow(1 - _loc5_,PULL_TENSION_FACTOR)),_loc5_);
                     _loc8_ = _loc6_.right + _loc3_ * _loc5_;
                  }
               }
               else
               {
                  _loc8_ = _loc8_ < _loc6_.left ? _loc6_.left : _loc6_.right;
               }
            }
            this._positionX = _loc8_;
         }
         if(this.canScrollVertically)
         {
            _loc9_ = this._touchVSP - this._cummulativeOffsetY;
            if(_loc9_ < _loc6_.top || _loc9_ > _loc6_.bottom)
            {
               if(_loc7_)
               {
                  _loc3_ = this._viewportHeight;
                  if(_loc9_ < _loc6_.top)
                  {
                     _loc4_ = _loc6_.top - _loc9_;
                     _loc5_ = _loc4_ < _loc3_ ? _loc4_ / _loc3_ : 1;
                     _loc5_ = Math.min((this.maxPull || MAX_PULL_FACTOR) * (1 - Math.pow(1 - _loc5_,PULL_TENSION_FACTOR)),_loc5_);
                     _loc9_ = _loc6_.top - _loc3_ * _loc5_;
                  }
                  else
                  {
                     _loc4_ = _loc9_ - _loc6_.bottom;
                     _loc5_ = _loc4_ < _loc3_ ? _loc4_ / _loc3_ : 1;
                     _loc5_ = Math.min((this.maxPull || MAX_PULL_FACTOR) * (1 - Math.pow(1 - _loc5_,PULL_TENSION_FACTOR)),_loc5_);
                     _loc9_ = _loc6_.bottom + _loc3_ * _loc5_;
                  }
               }
               else
               {
                  _loc9_ = _loc9_ < _loc6_.top ? _loc6_.top : _loc6_.bottom;
               }
            }
            this._positionY = _loc9_;
         }
         this.positionUpdateCallback(this._positionX,this._positionY);
      }
      
      protected function restartDirectionalLockWatch() : void
      {
         this._directionalLockCummulativeOffsetX = 0;
         this._directionalLockCummulativeOffsetY = 0;
         this._directionalLockTimer.reset();
         this._directionalLockTimer.start();
      }
      
      protected function calculateThrowVelocity() : Point
      {
         var _loc1_:Point = this._velocityCalculator.calculateVelocity();
         if(_loc1_.length < this.minVelocity)
         {
            _loc1_.x = 0;
            _loc1_.y = 0;
         }
         else if(!isNaN(this.maxVelocity) && this.maxVelocity > this.minVelocity)
         {
            _loc1_.normalize(this.maxVelocity);
         }
         return _loc1_;
      }
      
      protected function setupThrowEffect(param1:Number, param2:Number) : Boolean
      {
         if(!this._throwEffect)
         {
            this._throwEffect = new ThrowEffect();
            this._throwEffect.onUpdateCallback = this.onThrowEffectUpdate;
            this._throwEffect.onCompleteCallback = this.onThrowEffectComplete;
         }
         var _loc3_:Rectangle = this._scrollBounds;
         var _loc4_:Number = _loc3_.left;
         var _loc5_:Number = _loc3_.top;
         var _loc6_:Number = _loc3_.right;
         var _loc7_:Number = _loc3_.bottom;
         var _loc8_:Number = this.decelerationRate;
         if(this.pagingEnabled)
         {
            if(this.canScrollHorizontally)
            {
               this._currentPageHSP = this.determineNewPageScrollPosition(param1,this._positionX,this._currentPageHSP,this._viewportWidth,_loc4_,_loc6_);
               _loc4_ = _loc6_ = this._currentPageHSP;
            }
            if(this.canScrollVertically)
            {
               this._currentPageVSP = this.determineNewPageScrollPosition(param2,this._positionY,this._currentPageVSP,this._viewportHeight,_loc5_,_loc7_);
               _loc5_ = _loc7_ = this._currentPageVSP;
            }
            _loc8_ *= 0.98;
         }
         this._throwEffect.startingVelocityX = param1;
         this._throwEffect.startingVelocityY = param2;
         this._throwEffect.startingPositionX = this._positionX;
         this._throwEffect.startingPositionY = this._positionY;
         this._throwEffect.minPositionX = _loc4_;
         this._throwEffect.minPositionY = _loc5_;
         this._throwEffect.maxPositionX = _loc6_;
         this._throwEffect.maxPositionY = _loc7_;
         this._throwEffect.decelerationRate = _loc8_;
         this._throwEffect.viewportWidth = this._viewportWidth;
         this._throwEffect.viewportHeight = this._viewportHeight;
         this._throwEffect.pull = this.maxPull > 0 || this.maxPull != this.maxPull;
         this._throwEffect.bounce = this.bounceEnabled;
         this._throwEffect.maxBounce = this.maxBounce > 0 ? this.maxBounce : MAX_OVERSHOOT_FACTOR;
         this._throwEffect.finalPositionFilterFunction = null;
         if(!this._throwEffect.setup())
         {
            this.stop();
            return false;
         }
         this._throwFinalHSP = this._throwEffect.finalPosition.x;
         this._throwFinalVSP = this._throwEffect.finalPosition.y;
         this._throwReachedEdgePosition = this._throwFinalVSP == _loc7_ || this._throwFinalVSP == _loc5_ || this._throwFinalHSP == _loc6_ || this._throwFinalHSP == _loc4_;
         return true;
      }
      
      protected function stopThrowEffectOnTouch() : void
      {
         if(Boolean(this._throwEffect) && this._throwEffect.isPlaying)
         {
            this._throwEffect.stop(false);
         }
      }
      
      protected function determineNewPageScrollPosition(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Number
      {
         var _loc8_:Number = NaN;
         var _loc7_:Number = param4 * 0.5;
         if(param1 < -this.minVelocity || param2 >= param3 + _loc7_)
         {
            _loc8_ = Math.min(param3 + param4,param6);
         }
         else if(param1 > this.minVelocity || param2 <= param3 - _loc7_)
         {
            _loc8_ = Math.max(param3 - param4,param5);
         }
         else
         {
            _loc8_ = param3;
         }
         return this.getSnappedPosition(_loc8_,param4,param5,param6);
      }
      
      protected function getSnappedPosition(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = NaN;
         if(this.pagingEnabled)
         {
            if(param2 > 0)
            {
               _loc5_ = param3 * 0 == 0 ? param3 : 0;
               param1 = _loc5_ + Math.round(param1 / param2) * param2;
            }
         }
         if(param1 < param3)
         {
            param1 = param1;
         }
         else if(param1 > param4)
         {
            param1 = param4;
         }
         return param1;
      }
      
      protected function directionalLockTimer_timerHandler(param1:TimerEvent) : void
      {
         this._lockHorizontal = this._lockVertical = false;
      }
      
      protected function onThrowEffectUpdate(param1:Number, param2:Number) : void
      {
         this._positionX = param1;
         this._positionY = param2;
         this.positionUpdateCallback(this._positionX,this._positionY);
      }
      
      protected function onThrowEffectComplete() : void
      {
         this.stop();
         this.throwCompleteCallback && this.throwCompleteCallback();
      }
   }
}

