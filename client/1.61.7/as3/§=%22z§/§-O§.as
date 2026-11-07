package §="z§
{
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §-O§ extends §6a§
   {
      
      private static const § "v§:uint = 5;
      
      private static const §>!?§:uint = 12;
      
      private static const §@+§:uint = 250;
      
      private static const §-#O§:§&$2§ = new §&$2§(10);
      
      private static const §7#V§:§&$2§ = new §&$2§(10);
      
      private static const §@"U§:§&$2§ = new §&$2§(9);
      
      private var §9$^§:uint;
      
      public var rolling:int = 0;
      
      public var rollable:Boolean = false;
      
      private var §0%N§:int = 0;
      
      private var §'#H§:§&$2§ = new §&$2§(0);
      
      private var §^%b§:§&$2§ = new §&$2§(0);
      
      public function §-O§(param1:§9%1§)
      {
         super(param1,§-#O§.value,§<H§.§-#C§);
      }
      
      protected function §`!u§() : void
      {
         if(speed > 8)
         {
            §@%;§.play(§`!v§.§"d§);
         }
         setSpeedXY(0,0);
         if(keepUnstable)
         {
            dispatchEvent(new Event(§9#1§.§@"-§));
         }
         else
         {
            stable = true;
         }
      }
      
      override public function §9#O§(param1:§&"T§, param2:int, param3:int, param4:CollisionEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         if(param1 == null)
         {
            physParams.§9#H§();
            if(§>#9§.unit(param2,param3))
            {
               §'"$§.§]#I§(null,param2,param3,null,0,0,halfHeight + 1,false);
            }
            _loc6_ = this.angle;
            _loc7_ = true;
            if(physParams.dy > 0 && §>#9§.unit(x,y + 1))
            {
               if(Math.abs(physParams.dx / physParams.dy) < 0.1 || speed < 4)
               {
                  _loc5_ = 1;
                  while(_loc5_ <= §@$3§)
                  {
                     if(!§>#9§.unit(x,y - _loc5_))
                     {
                        break;
                     }
                     _loc5_++;
                  }
                  if(_loc5_ < §@$3§)
                  {
                     this.y = y - _loc5_;
                     this.§`!u§();
                     _loc7_ = false;
                  }
               }
               else if(this.rollable && speed > 1)
               {
                  _loc5_ = 1;
                  while(_loc5_ <= §@$3§)
                  {
                     if(!§>#9§.unit(x,y - _loc5_))
                     {
                        break;
                     }
                     _loc5_++;
                  }
                  if(_loc5_ < §@$3§)
                  {
                     this.y = y - _loc5_;
                     _loc8_ = §<H§.§<%d§(x,y + halfHeight);
                     _loc9_ = _loc6_ > _loc8_ ? -1 : 1;
                     _loc10_ = Math.abs(_loc6_ - _loc8_) / (Math.PI / 2) * (§>!?§ - § "v§) + § "v§;
                     this.rolling = _loc9_ * _loc10_;
                     setSpeedXY(0,0);
                     _loc7_ = false;
                  }
               }
            }
            else
            {
               physParams.dy *= -0.5;
            }
            if(_loc7_)
            {
               this.x = param2;
               if(!§>#9§.§ #B§(param2,param3 + 1,halfHeight,false,false))
               {
                  this.y = param3 + 1;
               }
               else
               {
                  this.y = param3;
                  this.§`!u§();
               }
               physParams.dx *= -0.3;
            }
            physParams.§9#H§(0.001);
            stop();
         }
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§'#H§.value != x || this.§^%b§.value != y)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"char coos hacked"));
         }
         if(crawling != 0)
         {
            this.§0%N§ += crawling;
            _loc1_ = §^$y§.sign(this.§0%N§);
            while(Math.abs(this.§0%N§) > §7#V§.value)
            {
               this.§0%N§ = _loc1_ * (Math.abs(this.§0%N§) - §7#V§.value);
               if(!§!#O§(x + _loc1_))
               {
                  this.§0%N§ = 0;
                  break;
               }
            }
         }
         else if(this.rolling != 0)
         {
            if(Math.abs(this.rolling) <= 1 || this.§9$^§ > §@+§)
            {
               setSpeedXY(0,0);
               this.rolling = 0;
            }
            else
            {
               §1"-§.explode(§;n§.§7q§,x,y + halfHeight,5);
               this.rolling *= §@"U§.value / §7#V§.value;
               _loc2_ = this.rolling;
               _loc3_ = Math.abs(_loc2_);
               _loc4_ = 1;
               while(_loc4_ <= _loc3_)
               {
                  ++this.§9$^§;
                  if(!this.§-$t§(x + §^$y§.sign(_loc2_)))
                  {
                     break;
                  }
                  _loc4_++;
               }
            }
         }
         else
         {
            super.§!!>§();
         }
         if(stable)
         {
            this.§9$^§ = 0;
         }
         if(!physParams.disposed)
         {
            §3"#§();
         }
         this.§'#H§.value = x;
         this.§^%b§.value = y;
      }
      
      private function §-$t§(param1:int) : Boolean
      {
         var _loc4_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §<H§.§>$§(this);
         var _loc3_:§+%]§ = Boolean(§8"%§.§?!W§) && Boolean(§8"%§.§?!W§.§4"m§) ? §8"%§.§?!W§.§4"m§.activeUnit : null;
         for each(_loc4_ in _loc2_)
         {
            if(_loc3_ != _loc4_)
            {
               _loc4_.stable = false;
               §-O§(_loc4_.physicModel).rollable = true;
               §-O§(_loc4_.physicModel).rolling = this.rolling * (§@"U§.value / §7#V§.value);
               this.rolling *= 0.4;
            }
         }
         if(_loc2_.length == 0)
         {
            if(§>#9§.§@,§(param1,y,halfHeight,false,this.rolling < 0))
            {
               if(§,I§(param1,y,false,this.rolling < 0) || §,I§(param1,y,true,this.rolling < 0))
               {
                  this.rolling *= 0.9;
                  return true;
               }
               this.rolling *= 0.5;
            }
            else
            {
               if(§>!c§(param1,y))
               {
                  return true;
               }
               physParams.dx = this.rolling / 2;
               this.rolling = 0;
               stable = false;
               this.x = param1;
            }
         }
         return false;
      }
      
      override public function set x(param1:int) : void
      {
         super.x = param1;
         this.§'#H§.value = param1;
      }
      
      override public function set y(param1:int) : void
      {
         super.y = param1;
         this.§^%b§.value = param1;
      }
   }
}

