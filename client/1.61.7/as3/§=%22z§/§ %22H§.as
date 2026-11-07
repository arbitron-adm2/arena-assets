package §="z§
{
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import flash.events.Event;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class § "H§ extends §7%[§
   {
      
      private static const §;&3§:uint = 0;
      
      private static const §<$X§:uint = 1;
      
      private static const §7%5§:uint = 2;
      
      private static const §?!;§:uint = 4;
      
      private static const §[=§:uint = 8;
      
      private static const halfWidth:uint = 2;
      
      private static const halfHeight:uint = 2;
      
      private var §%![§:uint = 0;
      
      private var §5O§:Number;
      
      private var §=s§:int;
      
      private var §+%1§:int = Application.scene.§@$I§.§<#[§();
      
      public function § "H§(param1:§9%1§, param2:Number, param3:int)
      {
         super(param1);
         this.§5O§ = param2;
         this.§=s§ = param3;
      }
      
      override public function §2"[§(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = 0;
         this.§%![§ = §;&3§;
         if(physParams.§7!3§)
         {
            _loc3_ = y - halfHeight;
            while(_loc3_ <= y + halfHeight)
            {
               if(§>#9§.point(x - halfWidth,_loc3_))
               {
                  this.§%![§ |= §<$X§;
               }
               if(§>#9§.point(x + halfWidth,_loc3_))
               {
                  this.§%![§ |= §?!;§;
               }
               _loc3_++;
            }
            _loc3_ = x - halfWidth;
            while(_loc3_ <= x + halfWidth)
            {
               if(§>#9§.point(_loc3_,y - halfHeight))
               {
                  this.§%![§ |= §7%5§;
               }
               if(§>#9§.point(_loc3_,y + halfHeight))
               {
                  this.§%![§ |= §[=§;
               }
               _loc3_++;
            }
         }
         return this.§%![§ != §;&3§;
      }
      
      override public function §9#O§(param1:§&"T§, param2:int, param3:int, param4:CollisionEvent) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         if(param1 == null)
         {
            physParams.§9#H§();
            if(this.§>#v§())
            {
               x = param2;
               y = param3;
               return;
            }
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = this.§%![§ != §;&3§;
            if(_loc7_)
            {
               if(this.§%![§ & §7%5§)
               {
                  _loc6_++;
               }
               if(this.§%![§ & §[=§)
               {
                  _loc6_--;
               }
               if(this.§%![§ & §<$X§)
               {
                  _loc5_++;
               }
               if(this.§%![§ & §?!;§)
               {
                  _loc5_--;
               }
               if(_loc5_ != 0)
               {
                  physParams.dx = Math.abs(physParams.dx) * §^$y§.sign(_loc5_);
               }
               physParams.dx *= this.§5O§;
               if(_loc6_ != 0)
               {
                  physParams.dy = Math.abs(physParams.dy) * §^$y§.sign(_loc6_);
               }
               physParams.dy *= this.§5O§;
               x = param2;
               y = param3;
               stop();
            }
         }
         dispatchEvent(new Event(§9#1§.§##n§));
      }
      
      protected function §>#v§() : Boolean
      {
         if(this.§9g§() || Boolean(Math.abs(speedX) < 0.2 && speed < 3) && Boolean(this.§%![§ & §[=§))
         {
            this.stabilize();
            return true;
         }
         return false;
      }
      
      protected function stabilize() : void
      {
         if(keepUnstable)
         {
            setSpeedXY(0,0);
            stop();
            dispatchEvent(new Event(§9#1§.§@"-§));
         }
         else
         {
            stable = true;
            dispatchEvent(new Event(§9#1§.STABLE));
         }
      }
      
      protected function §9g§() : Boolean
      {
         if(this.§=s§ == 0)
         {
            return false;
         }
         return Application.scene.§@$I§.§<#[§() - this.§+%1§ > this.§=s§;
      }
      
      public function set bounceCoeff(param1:Number) : void
      {
         this.§5O§ = param1;
      }
   }
}

