package §="z§
{
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §2"L§.§^$y§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §<$q§.*;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §6a§ extends §;$S§
   {
      
      private static const §9#j§:int = 15;
      
      private static const §;T§:uint = 15;
      
      public var crawling:int = 0;
      
      protected var §@$3§:int;
      
      protected var halfHeight:uint;
      
      public function §6a§(param1:§9%1§, param2:int = 15, param3:uint = 15)
      {
         super(param1);
         this.§@$3§ = param2;
         this.halfHeight = param3;
      }
      
      override public function §2"[§(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = x - param1;
         var _loc4_:int = y - param2;
         if(Math.abs(_loc3_) <= 1 && Math.abs(_loc4_) <= 1)
         {
            return _loc3_ != 0 && §>#9§.§@,§(x,y,this.halfHeight,false,_loc3_ < 0) || _loc4_ != 0 && §>#9§.§ #B§(x,y,this.halfHeight,false,_loc4_ < 0);
         }
         return §>#9§.§+%Y§(x,y,this.halfHeight);
      }
      
      override public function §9#O§(param1:§&"T§, param2:int, param3:int, param4:CollisionEvent) : void
      {
         var _loc5_:int = 0;
         if(param1 == null)
         {
            if(§>#9§.§+%Y§(param2,param3,this.halfHeight))
            {
               §'"$§.§]#I§(null,param2,param3,null,0,0,this.halfHeight + 1,false);
            }
            if(speedY > 0 && (Math.abs(speedX / speedY) < 0.2 || speedX + speedY < 20) && §>#9§.§+%Y§(x,y + 1,this.halfHeight))
            {
               _loc5_ = 1;
               while(_loc5_ <= 6)
               {
                  if(!§>#9§.§+%Y§(x,y - _loc5_,this.halfHeight))
                  {
                     break;
                  }
                  _loc5_++;
               }
               if(_loc5_ != 0 && _loc5_ < 6)
               {
                  y -= _loc5_;
                  setSpeedXY(0,0);
                  stop();
                  if(keepUnstable)
                  {
                     dispatchEvent(new Event(§9#1§.§@"-§));
                  }
                  else
                  {
                     stable = true;
                  }
               }
               else
               {
                  x = param2;
                  y = param3;
                  physParams.dx *= -0.3;
                  if(physParams.dy < 0)
                  {
                     physParams.dy *= -0.8;
                  }
               }
            }
            else
            {
               x = param2;
               y = param3;
               physParams.dx *= -0.6;
               if(physParams.dy < 0)
               {
                  physParams.dy *= -0.8;
               }
            }
            physParams.§9#H§(0.001);
            stop();
         }
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:int = 0;
         if(this.crawling != 0)
         {
            _loc1_ = 1;
            while(_loc1_ <= Math.abs(this.crawling))
            {
               if(!this.§!#O§(x + §^$y§.sign(this.crawling)))
               {
                  break;
               }
               _loc1_++;
            }
         }
         else
         {
            super.§!!>§();
         }
      }
      
      protected function §,I§(param1:int, param2:int, param3:Boolean, param4:Boolean) : Boolean
      {
         var _loc5_:int = 0;
         if(!§>#9§.§ #B§(param1,param2,this.halfHeight,false,param3,false))
         {
            _loc5_ = 1;
            while(_loc5_ <= this.§@$3§)
            {
               param2 += param3 ? -1 : 1;
               if(§>#9§.§ #B§(param1,param2,this.halfHeight,false,param3,false))
               {
                  break;
               }
               if(!§>#9§.§@,§(param1,param2,this.halfHeight,false,param4) && §>#9§.§ #B§(param1,param2 + 1,this.halfHeight,false,false))
               {
                  x = param1;
                  y = param2;
                  return true;
               }
               _loc5_++;
            }
         }
         return false;
      }
      
      protected function §>!c§(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = 1;
         while(_loc3_ < this.§@$3§)
         {
            if(++param2 > (physParams.§?$]§ ? §1$X§() : §"$§()))
            {
               break;
            }
            if(§>#9§.§ #B§(param1,param2,this.halfHeight,false,false))
            {
               x = param1;
               y = param2 - 1;
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      protected function §!#O§(param1:int) : Boolean
      {
         var _loc2_:Boolean = this.crawling < 0;
         if(§>#9§.§@,§(param1,y,this.halfHeight,false,_loc2_))
         {
            if(this.§,I§(param1,y,false,_loc2_) || this.§,I§(param1,y,true,_loc2_))
            {
               return true;
            }
            dispatchEvent(new Event(§9#1§.§>&9§));
         }
         else
         {
            if(this.§>!c§(param1,y))
            {
               return true;
            }
            stable = false;
            x = param1;
            y = y + this.§@$3§ - 1;
            dispatchEvent(new Event(§9#1§.§ ""§));
         }
         return false;
      }
   }
}

