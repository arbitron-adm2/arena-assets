package §[$<§
{
   import §"!C§.§"#T§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §7!B§.§&"T§;
   import §<%c§.*;
   import §=&!§.§]$d§;
   import §?#g§.Race;
   import §@&H§.§`d§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.BlurFilter;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §"#"§ extends Sprite
   {
      
      private static const PI_HALF:Number = Math.PI * 0.5;
      
      private static const §?!h§:BlurFilter = new BlurFilter(2,2,1);
      
      private var length:int;
      
      private var §-$[§:Number;
      
      private var fColor:uint;
      
      private var yCoeff:Number;
      
      private var §0&3§:Number;
      
      private var oldX:int;
      
      private var oldY:int;
      
      private var coos:Array;
      
      private var _enabled:Boolean = true;
      
      public function §"#"§(param1:§&"T§, param2:int, param3:Number, param4:uint, param5:uint, param6:Number = 0.997, param7:Boolean = false, param8:Number = 1)
      {
         var j:int;
         var trail:§"#"§ = null;
         var gobj:§&"T§ = param1;
         var length:int = param2;
         var width:Number = param3;
         var fColor:uint = param4;
         var gColor:uint = param5;
         var yCoeff:Number = param6;
         var useFilters:Boolean = param7;
         var alpha:Number = param8;
         this.coos = [];
         super();
         if(!§8"%§.§&S§.§41§() || §8"%§.§&S§.§5V§)
         {
            useFilters = false;
         }
         if(useFilters)
         {
            this.filters = [§?!h§,new GlowFilter(gColor,1,25,25,3,2)];
         }
         this.length = length;
         this.§-$[§ = width * 0.5;
         this.fColor = fColor;
         this.yCoeff = yCoeff;
         this.§0&3§ = alpha;
         this.oldX = gobj.x;
         this.oldY = gobj.y;
         j = 0;
         while(j < length)
         {
            this.coos.push({
               "x":this.oldX,
               "y":this.oldY,
               "a":0
            });
            j++;
         }
         trail = this;
         Application.scene.addEventListener(Event.ENTER_FRAME,function(param1:Event):void
         {
            var _loc3_:Object = createDotObj(gobj);
            if(_loc3_)
            {
               addDot(_loc3_,length);
            }
            if(coos.length > 0)
            {
               coos.splice(0,1);
            }
            if(coos.length == 0 && (_enabled || gobj.disposed))
            {
               Application.scene.removeEventListener(Event.ENTER_FRAME,arguments.callee);
               if(trail.parent)
               {
                  trail.parent.removeChild(trail);
               }
               trail.graphics.clear();
               return;
            }
            if(coos.length > 0)
            {
               fillCurveData();
               draw(trail);
            }
         });
         Application.scene.§=P§().addChild(trail);
      }
      
      private function createDotObj(param1:§&"T§) : Object
      {
         if(param1.disposed)
         {
            return null;
         }
         if(!this._enabled)
         {
            return null;
         }
         var _loc2_:Object = {};
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.a = Math.atan2(_loc2_.y - this.oldY,_loc2_.x - this.oldX) + PI_HALF;
         return _loc2_;
      }
      
      private function addDot(param1:Object, param2:int) : void
      {
         var _loc3_:int = 0;
         if(!this._enabled)
         {
            return;
         }
         if(!param1)
         {
            return;
         }
         if(this.coos.length == 0)
         {
            _loc3_ = 0;
            while(_loc3_ < param2)
            {
               this.coos.push(param1);
               _loc3_++;
            }
         }
         this.coos.push(param1);
      }
      
      private function fillCurveData() : void
      {
         var _loc1_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:int = int(this.coos.length);
         while(_loc2_ < _loc3_)
         {
            _loc1_ = this.coos[_loc2_];
            _loc4_ = this.§-$[§ * _loc2_ / _loc3_;
            _loc5_ = _loc4_ * Math.cos(_loc1_.a);
            _loc6_ = _loc4_ * Math.sin(_loc1_.a);
            _loc1_.x0 = _loc1_.x + _loc5_;
            _loc1_.y0 = _loc1_.y + _loc6_;
            _loc1_.x1 = _loc1_.x - _loc5_;
            _loc1_.y1 = _loc1_.y - _loc6_;
            _loc1_.y *= this.yCoeff;
            _loc2_++;
         }
      }
      
      private function draw(param1:§"#"§) : void
      {
         var _loc2_:Graphics = param1.graphics;
         _loc2_.clear();
         _loc2_.beginFill(this.fColor,this.§0&3§);
         _loc2_.moveTo(this.coos[0].x,this.coos[0].y);
         var _loc3_:int = 1;
         var _loc4_:int = int(this.coos.length);
         while(_loc3_ < _loc4_ - 1)
         {
            _loc2_.curveTo(this.coos[_loc3_].x0,this.coos[_loc3_].y0,(this.coos[_loc3_].x0 + this.coos[_loc3_ + 1].x0) * 0.5,(this.coos[_loc3_].y0 + this.coos[_loc3_ + 1].y0) * 0.5);
            _loc3_++;
         }
         _loc2_.lineTo(this.coos[_loc4_ - 1].x,this.coos[_loc4_ - 1].y);
         _loc2_.moveTo(this.coos[0].x,this.coos[0].y);
         _loc3_ = 1;
         while(_loc3_ < _loc4_ - 1)
         {
            _loc2_.curveTo(this.coos[_loc3_].x1,this.coos[_loc3_].y1,(this.coos[_loc3_].x1 + this.coos[_loc3_ + 1].x1) * 0.5,(this.coos[_loc3_].y1 + this.coos[_loc3_ + 1].y1) * 0.5);
            _loc3_++;
         }
         _loc2_.lineTo(this.coos[_loc4_ - 1].x,this.coos[_loc4_ - 1].y);
         _loc2_.endFill();
      }
      
      public function on() : void
      {
         this._enabled = true;
      }
      
      public function off() : void
      {
         this._enabled = false;
      }
   }
}

