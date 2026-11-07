package §="z§
{
   import § &5§.§@N§;
   import §%"1§.§@%;§;
   import §2"L§.§^$y§;
   import §<%k§.§`!v§;
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.geom.Point;
   import ru.pragmatix.wormix.physics.§3!=§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §<$t§ extends §;$S§
   {
      
      public static const §+$?§:uint = 10;
      
      public static const §-3§:uint = 380;
      
      private static const §?k§:int = 5;
      
      private static const §9$H§:Array = [new BlurFilter(2,2,1)];
      
      private static const §[8§:Number = 2 * Math.PI;
      
      private var §'$$§:Array = [];
      
      private var §2%j§:uint = 0;
      
      private var §^H§:int;
      
      private var rope:Shape;
      
      private var length:int;
      
      public var dLength:int = 0;
      
      public function §<$t§(param1:§9%1§)
      {
         super(param1);
         keepUnstable = true;
      }
      
      override public function clear() : void
      {
         if(this.rope != null)
         {
            Application.scene.§=P§(§@N§.§[!i§).removeChild(this.rope);
            this.rope = null;
         }
         this.dLength = 0;
         this.§'$$§ = [];
         this.§2%j§ = 0;
      }
      
      override public function §!!>§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:uint = 0;
         var _loc11_:Boolean = false;
         var _loc12_:uint = 0;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:uint = 0;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:uint = 0;
         var _loc19_:§]%G§ = null;
         var _loc20_:Number = NaN;
         var _loc21_:int = 0;
         var _loc22_:Number = NaN;
         var _loc23_:§3!=§ = null;
         §3"#§();
         if(physParams.disposed || this.§'$$§.length == 0)
         {
            return;
         }
         physParams.§9#H§();
         var _loc1_:Number = Math.atan2(physParams.§4!8§ - this.§'$$§[this.§2%j§].y,physParams.§3#w§ - this.§'$$§[this.§2%j§].x);
         if(this.dLength != 0 && (this.dLength < 0 && this.length + this.dLength >= §+$?§ || this.dLength > 0 && this.§,!k§() + this.dLength <= §-3§))
         {
            _loc5_ = physParams.§3#w§ + Math.cos(_loc1_) * this.dLength;
            _loc6_ = physParams.§4!8§ + Math.sin(_loc1_) * this.dLength;
            if(!§>#9§.unit(_loc5_,_loc6_))
            {
               physParams.§3#w§ = _loc5_;
               physParams.§4!8§ = _loc6_;
               physParams.§=!1§ = int(_loc5_);
               physParams.§8!;§ = int(_loc6_);
               this.length += this.dLength;
            }
         }
         var _loc2_:Number = physParams.§3#w§;
         var _loc3_:Number = physParams.§4!8§;
         var _loc4_:uint = this.§9!w§();
         if(_loc4_ != 0)
         {
            _loc7_ = Math.atan2(y - this.§'$$§[this.§2%j§].y,x - this.§'$$§[this.§2%j§].x);
            if(Math.abs(_loc7_ - _loc1_) > Math.PI)
            {
               if(_loc1_ < 0)
               {
                  _loc7_ -= §[8§;
               }
               else
               {
                  _loc7_ += §[8§;
               }
            }
            _loc8_ = §^$y§.sign(_loc7_ - _loc1_);
            _loc9_ = (_loc7_ - _loc1_) / _loc4_;
            _loc10_ = 0;
            _loc11_ = false;
            _loc12_ = 0;
            while(_loc12_ < _loc4_)
            {
               _loc1_ += _loc9_;
               _loc13_ = §?k§ * Math.cos(_loc1_);
               _loc14_ = §?k§ * Math.sin(_loc1_);
               _loc15_ = uint(this.length / §?k§);
               _loc16_ = this.§'$$§[this.§2%j§].x + _loc13_ * _loc15_;
               _loc17_ = this.§'$$§[this.§2%j§].y + _loc14_ * _loc15_;
               if(§>#9§.unit(int(_loc16_),int(_loc17_)))
               {
                  for each(_loc19_ in physParams.§4%I§)
                  {
                     physParams.dx -= _loc19_.ax;
                     physParams.dy -= _loc19_.ay;
                  }
                  physParams.dx *= -0.9;
                  physParams.dy *= -0.5;
                  if(this.§,!k§() < 100)
                  {
                     physParams.dx *= 100 / this.§,!k§();
                     physParams.dy *= 100 / this.§,!k§();
                  }
                  §@%;§.play(§`!v§.§"d§);
                  break;
               }
               _loc2_ = _loc16_;
               _loc3_ = _loc17_;
               _loc18_ = 0;
               while(_loc18_ < _loc15_ - 1)
               {
                  _loc16_ -= _loc13_;
                  _loc17_ -= _loc14_;
                  if(§>#9§.point(_loc16_,_loc17_))
                  {
                     _loc1_ -= _loc9_;
                     _loc16_ = this.§'$$§[this.§2%j§].x + §?k§ * Math.cos(_loc1_) * (_loc15_ - _loc18_);
                     _loc17_ = this.§'$$§[this.§2%j§].y + §?k§ * Math.sin(_loc1_) * (_loc15_ - _loc18_);
                     ++this.§2%j§;
                     _loc20_ = §^$y§.distance(int(_loc16_) - this.§'$$§[this.§2%j§ - 1].x,int(_loc17_) - this.§'$$§[this.§2%j§ - 1].y);
                     this.§'$$§[this.§2%j§] = new §3!=§(int(_loc16_),int(_loc17_),_loc8_,§-q§.§2!Y§(_loc1_),_loc20_);
                     this.length -= _loc20_;
                     _loc2_ = this.§'$$§[this.§2%j§].x + Math.cos(_loc1_) * this.length;
                     _loc3_ = this.§'$$§[this.§2%j§].y + Math.sin(_loc1_) * this.length;
                     _loc11_ = true;
                     break;
                  }
                  _loc18_++;
               }
               if(!_loc11_ && _loc8_ != this.§'$$§[this.§2%j§].dir)
               {
                  _loc21_ = this.§2%j§ - 1;
                  _loc22_ = NaN;
                  while(_loc21_ >= 0)
                  {
                     _loc23_ = this.§'$$§[_loc21_];
                     if(this.§6$p§(this.§'$$§[this.§2%j§].angle,_loc1_,_loc1_ - _loc9_,0.0001))
                     {
                        _loc22_ = Number(this.§'$$§[this.§2%j§].angle);
                        this.length = Math.min(this.length + this.§'$$§[this.§2%j§].length,§-3§);
                        this.§2%j§ = _loc21_;
                     }
                     else
                     {
                        _loc21_ = 0;
                     }
                     _loc21_--;
                  }
                  if(!isNaN(_loc22_))
                  {
                     _loc2_ = this.§'$$§[this.§2%j§].x + this.length * Math.cos(_loc22_);
                     _loc3_ = this.§'$$§[this.§2%j§].y + this.length * Math.sin(_loc22_);
                     _loc11_ = true;
                  }
               }
               _loc10_++;
               if(_loc11_)
               {
                  break;
               }
               _loc12_++;
            }
         }
         physParams.§3#w§ = _loc2_;
         physParams.§4!8§ = _loc3_;
         physParams.§=!1§ = int(_loc2_);
         physParams.§8!;§ = int(_loc3_);
         this.§`I§();
      }
      
      public function reset(param1:Point) : void
      {
         this.§'$$§ = [new §3!=§(param1.x,param1.y,0,0,0)];
         this.§2%j§ = 0;
         this.length = §^$y§.distance(x - param1.x,y - param1.y);
      }
      
      public function §`I§() : void
      {
         if(this.rope != null)
         {
            this.rope.graphics.clear();
         }
         else
         {
            this.rope = new Shape();
         }
         this.rope.graphics.lineStyle(4,16448250);
         this.rope.graphics.moveTo(this.§'$$§[0].x,this.§'$$§[0].y);
         var _loc1_:uint = 0;
         while(_loc1_ < this.§2%j§)
         {
            this.rope.graphics.lineTo(this.§'$$§[_loc1_ + 1].x,this.§'$$§[_loc1_ + 1].y);
            _loc1_++;
         }
         var _loc2_:Number = Math.atan2(this.§'$$§[_loc1_].y - y,this.§'$$§[_loc1_].x - x);
         var _loc3_:int = x + Math.cos(_loc2_) * 15;
         var _loc4_:int = y + Math.sin(_loc2_) * 15;
         this.rope.graphics.lineTo(_loc3_,_loc4_);
         this.rope.filters = §9$H§;
         Application.scene.§=P§(§@N§.§[!i§).addChild(this.rope);
      }
      
      private function §9!w§() : uint
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:§]%G§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = x - this.§'$$§[this.§2%j§].x + physParams.dx;
         _loc2_ = y - this.§'$$§[this.§2%j§].y + physParams.dy;
         _loc3_ = §^$y§.distance(_loc1_,_loc2_) / this.length;
         var _loc4_:Number = this.§'$$§[this.§2%j§].x + _loc1_ / _loc3_;
         var _loc5_:Number = this.§'$$§[this.§2%j§].y + _loc2_ / _loc3_;
         physParams.dx = _loc4_ - x;
         physParams.dy = _loc5_ - y;
         for each(_loc6_ in physParams.§4%I§)
         {
            physParams.dx += _loc6_.ax;
            physParams.dy += _loc6_.ay;
         }
         _loc7_ = Math.abs(_loc4_ - x);
         _loc8_ = Math.abs(_loc5_ - y);
         physParams.§3#w§ = _loc4_;
         physParams.§4!8§ = _loc5_;
         physParams.§=!1§ = int(_loc4_);
         physParams.§8!;§ = int(_loc5_);
         return Math.max(_loc7_,_loc8_);
      }
      
      private function §6$p§(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(Math.abs(param3 - param2) < param4)
         {
            return Math.abs(param1 - param3) < param4 * 2;
         }
         _loc5_ = Math.min(param2,param3);
         _loc6_ = Math.max(param2,param3);
         _loc7_ = _loc5_;
         while(_loc7_ < _loc6_)
         {
            if(Math.abs(§-q§.§2!Y§(_loc7_) - §-q§.§2!Y§(param1)) < param4)
            {
               return true;
            }
            _loc7_ += param4;
         }
         return false;
      }
      
      public function §,!k§() : Number
      {
         var _loc2_:int = 0;
         var _loc1_:Number = this.length;
         if(this.§2%j§ != 0)
         {
            _loc2_ = 1;
            while(_loc2_ <= this.§2%j§)
            {
               _loc1_ += this.§'$$§[_loc2_].length;
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      override public function get angle() : Number
      {
         return Math.atan2(y - this.§'$$§[this.§2%j§].y,x - this.§'$$§[this.§2%j§].x);
      }
      
      public function getJoints() : Array
      {
         return this.§'$$§;
      }
   }
}

