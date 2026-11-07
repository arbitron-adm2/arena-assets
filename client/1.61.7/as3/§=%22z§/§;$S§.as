package §="z§
{
   import §"$+§.*;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §;$S§ extends EventDispatcher implements §[$+§
   {
      
      private static const §2"t§:§&$2§ = new §&$2§(10);
      
      public var physParams:§9%1§;
      
      private var §6%0§:Boolean;
      
      private var §9%b§:Boolean = false;
      
      public function §;$S§(param1:§9%1§)
      {
         super();
         this.physParams = param1;
      }
      
      public function §3"#§() : void
      {
         var _loc1_:int = this.§"$§();
         var _loc2_:Number = Application.scene.height;
         var _loc3_:Number = Application.scene.width;
         if(this.y <= _loc1_ && this.physParams.§?$]§ && this.physParams.§`!o§)
         {
            this.physParams.§`!o§ = false;
            this.physParams.§8B§();
            dispatchEvent(new Event(§0%v§.§9%G§));
         }
         if(this.y > _loc1_)
         {
            if(Math.abs(this.y) < _loc2_ * 8 && Math.abs(this.x) < _loc3_ * 8)
            {
               if(!this.physParams.§?$]§ || this.y > this.§1$X§())
               {
                  dispatchEvent(new Event(§0%v§.§^$3§));
               }
               else if(!this.physParams.§`!o§)
               {
                  this.physParams.§7#b§();
                  dispatchEvent(new Event(§0%v§.§&!<§));
               }
            }
         }
         else if(this.y < -1.2 * _loc2_ || this.x < -1 * _loc3_ || this.x > _loc3_ * 2)
         {
            dispatchEvent(new Event(§0%v§.§^$3§));
         }
      }
      
      protected function §"$§() : int
      {
         return this.physParams.§3&I§ ? int(Application.scene.height - (Application.scene.§#%0§() - §2"t§.value)) : int(Application.scene.height);
      }
      
      protected function §1$X§() : int
      {
         return Application.scene.height;
      }
      
      public function §!!>§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:uint = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:CollisionEvent = null;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Array = null;
         var _loc15_:§&"T§ = null;
         var _loc16_:BeforeHitEvent = null;
         if(!this.stable && !this.physParams.disposed)
         {
            this.§3"#§();
            if(this.physParams.disposed)
            {
               return;
            }
            _loc1_ = this.x;
            _loc2_ = this.y;
            if(this.physParams.§5N§ != §9%1§.§>#T§ && (Math.abs(this.physParams.dx) > §<H§.§?O§ || Math.abs(this.physParams.dy) > §<H§.§?O§))
            {
               _loc3_ = Math.max(Math.abs(this.physParams.dx),Math.abs(this.physParams.dy));
               _loc4_ = false;
               _loc5_ = 4;
               _loc6_ = this.physParams.dx / _loc3_;
               _loc7_ = this.physParams.dy / _loc3_;
               this.physParams.§+$8§ = false;
               _loc8_ = 0;
               while(_loc8_ < int(_loc3_))
               {
                  this.physParams.§3#w§ += _loc6_;
                  this.physParams.§4!8§ += _loc7_;
                  if(_loc8_ == 0)
                  {
                     if(Math.abs(_loc6_ - this.physParams.dx / _loc3_) > 0.00001 || Math.abs(_loc7_ - this.physParams.dy / _loc3_) > 0.00001)
                     {
                        Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"phys steps hack"));
                     }
                     if(Math.abs(this.physParams.§=!1§ - this.physParams.§3#w§) > 10 || Math.abs(this.physParams.§8!;§ - this.physParams.§4!8§) > 10)
                     {
                        Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"physical coos hack"));
                     }
                  }
                  _loc9_ = this.x;
                  _loc10_ = this.y;
                  this.physParams.§=!1§ = int(this.physParams.§3#w§);
                  this.physParams.§8!;§ = int(this.physParams.§4!8§);
                  _loc4_ = true;
                  if(this.§2"[§(_loc9_,_loc10_))
                  {
                     _loc11_ = new CollisionEvent(null,new Point(_loc9_,_loc10_));
                     dispatchEvent(_loc11_);
                     if(!this.physParams.§+$8§)
                     {
                        this.§9#O§(null,_loc9_,_loc10_,_loc11_);
                     }
                     if(this.physParams.disposed || this.stable || this.physParams.§+$8§)
                     {
                        break;
                     }
                  }
                  else if(_loc8_ % _loc5_ == 0)
                  {
                     _loc12_ = false;
                     _loc13_ = false;
                     _loc14_ = this.§"$<§();
                     for each(_loc15_ in _loc14_)
                     {
                        if(!_loc13_ && !this.physParams.disposed && !_loc15_.disposed)
                        {
                           _loc16_ = new BeforeHitEvent(_loc15_);
                           dispatchEvent(_loc16_);
                           if(!_loc16_.cancelCollision)
                           {
                              _loc11_ = new CollisionEvent(_loc15_,new Point(this.x,this.y));
                              _loc11_.stopObject = true;
                              dispatchEvent(_loc11_);
                              if(!_loc12_)
                              {
                                 _loc12_ = true;
                                 this.§9#O§(_loc15_,_loc9_,_loc10_,_loc11_);
                              }
                           }
                           else
                           {
                              _loc13_ = true;
                           }
                        }
                     }
                  }
                  if(this.physParams.disposed)
                  {
                     break;
                  }
                  _loc8_++;
               }
               if(int(_loc3_) > 0 && !_loc4_)
               {
                  Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"phys steps hack 2"));
               }
            }
            else
            {
               this.physParams.§3#w§ += this.physParams.dx;
               this.physParams.§4!8§ += this.physParams.dy;
               this.physParams.§=!1§ = int(this.physParams.§3#w§);
               this.physParams.§8!;§ = int(this.physParams.§4!8§);
            }
            this.§3"#§();
            this.§9%b§ = this.x != _loc1_ || this.y != _loc2_;
            this.physParams.rotation += this.physParams.§`#y§;
            this.physParams.§`#y§ *= 0.9;
            if(!this.stable)
            {
               this.physParams.§@f§();
            }
            else if(!this.stable)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"forces hack"));
            }
         }
      }
      
      public function §2"[§(param1:int, param2:int) : Boolean
      {
         return this.physParams.§7!3§ && §>#9§.point(this.x + this.physParams.§`$Y§,this.y + this.physParams.§>"o§);
      }
      
      public function §4!a§(param1:§&"T§) : Boolean
      {
         if(param1.disposed)
         {
            return false;
         }
         var _loc2_:int = this.x - param1.x;
         _loc2_ = _loc2_ < 0 ? int(-_loc2_) : _loc2_;
         var _loc3_:int = this.y - param1.y;
         _loc3_ = _loc3_ < 0 ? int(-_loc3_) : _loc3_;
         return _loc2_ < param1.§4!?§ && _loc3_ < param1.§,#u§;
      }
      
      public function §"$<§() : Array
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§&"T§ = null;
         var _loc1_:Array = [];
         if(this.physParams.§-z§)
         {
            _loc2_ = Application.scene.§@$I§.§;%a§.§1!n§();
            for each(_loc3_ in _loc2_)
            {
               if(this != _loc3_.physicModel && this.§4!a§(_loc3_))
               {
                  _loc1_.push(_loc3_);
               }
            }
         }
         return _loc1_;
      }
      
      public function §9#O§(param1:§&"T§, param2:int, param3:int, param4:CollisionEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         if(param1 == null)
         {
            if(Math.abs(this.physParams.dy) < §<H§.§?O§)
            {
               this.physParams.dy = 0;
            }
            _loc5_ = this.physParams.dy > 0 && !§>#9§.point(this.x + this.physParams.§`$Y§,this.y + this.physParams.§>"o§ - 1);
            _loc6_ = §>#9§.point(param2 + this.physParams.§`$Y§,param3 + this.physParams.§>"o§);
            if(_loc5_ || _loc6_)
            {
               --this.y;
               this.physParams.dx = 0;
               this.physParams.dy = 0;
               if(!this.keepUnstable)
               {
                  this.stable = true;
               }
            }
            else
            {
               if(this.physParams.dy < 0)
               {
                  this.physParams.dy *= -1;
               }
               this.physParams.dx *= -0.6;
               this.x = param2;
               this.y = param3;
            }
            this.physParams.§+$8§ = true;
         }
      }
      
      public function §^"F§(param1:Number, param2:Number) : void
      {
         if(param2 != 0)
         {
            this.stable = false;
         }
         this.physParams.dx = Math.cos(param1) * param2;
         this.physParams.dy = Math.sin(param1) * param2;
      }
      
      public function §6"O§(param1:Number, param2:Number) : void
      {
         if(param2 != 0)
         {
            this.stable = false;
         }
         this.physParams.dx += Math.cos(param1) * param2;
         this.physParams.dy += Math.sin(param1) * param2;
      }
      
      public function setSpeedXY(param1:Number, param2:Number) : void
      {
         if(this.stable && Math.abs(param1) > §<H§.§?O§ || Math.abs(param2) > §<H§.§?O§)
         {
            this.stable = false;
         }
         this.physParams.dx = param1;
         this.physParams.dy = param2;
      }
      
      public function §5!?§(param1:Number, param2:Number) : void
      {
         if(this.stable && Math.abs(param1) > §<H§.§?O§ || Math.abs(param2) > §<H§.§?O§)
         {
            this.stable = false;
         }
         this.physParams.dx += param1;
         this.physParams.dy += param2;
      }
      
      public function clear() : void
      {
      }
      
      public function stop() : void
      {
         this.physParams.§+$8§ = true;
      }
      
      public function unstop() : void
      {
         this.physParams.§+$8§ = false;
      }
      
      public function get movedOnLastFrame() : Boolean
      {
         return this.§9%b§;
      }
      
      public function get speed() : Number
      {
         return §^$y§.distance(this.physParams.dx,this.physParams.dy);
      }
      
      public function get speedX() : Number
      {
         return this.physParams.dx;
      }
      
      public function get speedY() : Number
      {
         return this.physParams.dy;
      }
      
      public function get angle() : Number
      {
         return Math.atan2(this.physParams.dy,this.physParams.dx);
      }
      
      public function get rotation() : Number
      {
         return this.physParams.rotation;
      }
      
      public function get x() : int
      {
         return this.physParams.§=!1§;
      }
      
      public function set x(param1:int) : void
      {
         this.physParams.§=!1§ = param1;
         this.physParams.§3#w§ = param1;
      }
      
      public function get y() : int
      {
         return this.physParams.§8!;§;
      }
      
      public function set y(param1:int) : void
      {
         this.physParams.§8!;§ = param1;
         this.physParams.§4!8§ = param1;
      }
      
      public function get keepUnstable() : Boolean
      {
         return this.§6%0§;
      }
      
      public function set keepUnstable(param1:Boolean) : void
      {
         this.§6%0§ = param1;
         if(this.stable)
         {
            this.stable = false;
         }
      }
      
      public function get stable() : Boolean
      {
         return this.physParams.§##f§.value;
      }
      
      public function set stable(param1:Boolean) : void
      {
         this.physParams.§##f§.value = param1;
         dispatchEvent(new Event(param1 ? §9#1§.STABLE : §9#1§.§3%G§));
      }
   }
}

