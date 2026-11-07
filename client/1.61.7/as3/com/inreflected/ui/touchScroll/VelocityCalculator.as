package com.inreflected.ui.touchScroll
{
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §2"L§.§^$y§;
   import §7"Q§.§0$L§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   
   public class VelocityCalculator
   {
      
      private static const VELOCITY_WEIGHTS:Vector.<Number> = Vector.<Number>([1,1.33,1.66,2,2.33]);
      
      private static const HISTORY_LENGTH:uint = 5;
      
      protected var _coordinatesHistory:Vector.<Point>;
      
      protected var _historyLength:uint = 0;
      
      protected var _timeHistory:Vector.<int>;
      
      protected var _lastUpdateTime:int;
      
      public function VelocityCalculator()
      {
         super();
         this._coordinatesHistory = new Vector.<Point>(HISTORY_LENGTH);
         this._timeHistory = new Vector.<int>(HISTORY_LENGTH);
      }
      
      public function reset() : void
      {
         this._historyLength = 0;
         this._lastUpdateTime = getTimer();
      }
      
      public function addOffsets(param1:Number, param2:Number, param3:uint = 0) : Point
      {
         var _loc4_:Point = null;
         var _loc5_:int = this._historyLength % HISTORY_LENGTH;
         if(this._coordinatesHistory[_loc5_])
         {
            _loc4_ = this._coordinatesHistory[_loc5_] as Point;
            _loc4_.x = param1;
            _loc4_.y = param2;
         }
         else
         {
            _loc4_ = new Point(param1,param2);
            this._coordinatesHistory[_loc5_] = _loc4_;
         }
         var _loc6_:int = getTimer();
         this._timeHistory[_loc5_] = int(param3) || int(_loc6_ - this._lastUpdateTime);
         this._lastUpdateTime = _loc6_;
         ++this._historyLength;
         return _loc4_;
      }
      
      public function calculateVelocity(param1:uint = 0) : Point
      {
         var _loc8_:Number = NaN;
         var _loc9_:Point = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         if(param1 == 0)
         {
            param1 = getTimer() - this._lastUpdateTime;
         }
         if(param1 > 100)
         {
            return new Point(0,0);
         }
         var _loc2_:int = this._historyLength > HISTORY_LENGTH ? int(HISTORY_LENGTH) : int(this._historyLength);
         var _loc3_:int = (this._historyLength - _loc2_) % HISTORY_LENGTH;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc7_:int = _loc3_;
         var _loc10_:int = 0;
         while(_loc10_ < _loc2_)
         {
            _loc9_ = this._coordinatesHistory[_loc7_] as Point;
            _loc12_ = this._timeHistory[_loc7_];
            _loc13_ = _loc9_.x;
            _loc14_ = _loc9_.y;
            if(_loc12_ < 10)
            {
               _loc12_ = 10;
            }
            _loc8_ = VELOCITY_WEIGHTS[_loc10_];
            _loc4_ += _loc13_ / _loc12_ * _loc8_;
            _loc5_ += _loc14_ / _loc12_ * _loc8_;
            _loc6_ += _loc8_;
            _loc10_++;
            if(++_loc7_ >= HISTORY_LENGTH)
            {
               _loc7_ = 0;
            }
         }
         var _loc11_:Point = new Point(0,0);
         if(_loc6_ > 0)
         {
            _loc11_.x = _loc4_ / _loc6_;
            _loc11_.y = _loc5_ / _loc6_;
         }
         return _loc11_;
      }
   }
}

