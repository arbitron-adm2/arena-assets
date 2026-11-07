package §="z§
{
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §1!c§ extends §-O§
   {
      
      private static const GROUND:uint = 0;
      
      private static const §@!,§:uint = 1;
      
      private static const §`&B§:uint = 2;
      
      private static const §4!v§:uint = 3;
      
      private static const §@!B§:uint = 20;
      
      private static const §^$j§:Number = Math.PI / 16;
      
      private var attach:uint = 0;
      
      public var slopeAngle:Number = 1.5707963267948966;
      
      public function §1!c§(param1:§9%1§)
      {
         super(param1);
      }
      
      override protected function §`!u§() : void
      {
         super.§`!u§();
         this.attach = GROUND;
      }
      
      override public function §2"[§(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = x - param1;
         var _loc4_:int = y - param2;
         if(Math.abs(_loc3_) <= 1 && Math.abs(_loc4_) <= 1)
         {
            return §>#9§.§3m§(x,y,false);
         }
         return §>#9§.§3m§(x,y);
      }
      
      override protected function §!#O§(param1:int) : Boolean
      {
         var _loc2_:Boolean = this.§-"[§(§^$y§.sign(param1 - x));
         this.slopeAngle = §^$y§.§ !Q§(this.slopeAngle,§<H§.§3"j§(param1,y,§@!B§,this.slopeAngle),§^$j§);
         return _loc2_;
      }
      
      private function §-"[§(param1:int, param2:uint = 0) : Boolean
      {
         if(param2 > 4)
         {
            stable = false;
            return false;
         }
         switch(this.attach)
         {
            case GROUND:
               if(!§>#9§.§3m§(x,y + 1,false))
               {
                  stable = false;
                  return false;
               }
               if(!§>#9§.§3m§(x + param1,y,false))
               {
                  x += param1;
                  if(§>#9§.§3m§(x,y + 1,false))
                  {
                     return true;
                  }
                  this.attach = param1 > 0 ? §`&B§ : §4!v§;
                  return this.§-"[§(param1,param2 + 1);
               }
               this.attach = param1 > 0 ? §4!v§ : §`&B§;
               return this.§-"[§(param1,param2 + 1);
               break;
            case §@!,§:
               if(!§>#9§.§3m§(x - param1,y,false))
               {
                  x -= param1;
                  if(§>#9§.§3m§(x,y - 1,false))
                  {
                     return true;
                  }
                  this.attach = param1 > 0 ? §4!v§ : §`&B§;
                  return this.§-"[§(param1,param2 + 1);
               }
               this.attach = param1 > 0 ? §`&B§ : §4!v§;
               return this.§-"[§(param1,param2 + 1);
               break;
            case §`&B§:
               if(!§>#9§.§3m§(x,y + param1,false))
               {
                  y += param1;
                  if(!§>#9§.§3m§(x - 1,y,false))
                  {
                     this.attach = param1 > 0 ? §@!,§ : GROUND;
                     --x;
                  }
                  return true;
               }
               this.attach = param1 > 0 ? GROUND : §@!,§;
               return this.§-"[§(param1,param2 + 1);
               break;
            case §4!v§:
               if(!§>#9§.§3m§(x,y - param1,false))
               {
                  y -= param1;
                  if(!§>#9§.§3m§(x + 1,y,false))
                  {
                     this.attach = param1 > 0 ? GROUND : §@!,§;
                     ++x;
                  }
                  return true;
               }
               this.attach = param1 > 0 ? §@!,§ : GROUND;
               return this.§-"[§(param1,param2 + 1);
               break;
            default:
               return false;
         }
      }
      
      override public function §9#O§(param1:§&"T§, param2:int, param3:int, param4:CollisionEvent) : void
      {
         var _loc5_:int = 0;
         if(param1 == null)
         {
            physParams.§9#H§();
            if(§>#9§.§3m§(param2,param3))
            {
               §'"$§.§]#I§(null,x,y,null,0,0,§<H§.§-#C§ + 1,false);
            }
            else
            {
               _loc5_ = int(GROUND);
               if(§>#9§.§3m§(param2,param3 + 1,false))
               {
                  x = param2;
                  y = param3;
                  _loc5_ = int(GROUND);
               }
               else if(§>#9§.§3m§(param2 - 1,param3,false))
               {
                  x = param2;
                  y = param3;
                  _loc5_ = int(§`&B§);
               }
               else if(§>#9§.§3m§(param2 + 1,param3,false))
               {
                  x = param2;
                  y = param3;
                  _loc5_ = int(§4!v§);
               }
               else if(§>#9§.§3m§(param2,param3 - 1,false))
               {
                  x = param2;
                  y = param3;
                  _loc5_ = int(§@!,§);
               }
               else if(§>#9§.§3m§(param2 - 1,param3 + 1,false))
               {
                  x = param2 - 1;
                  y = param3;
                  _loc5_ = int(GROUND);
               }
               else if(§>#9§.§3m§(param2 + 1,param3 + 1,false))
               {
                  x = param2 + 1;
                  y = param3;
                  _loc5_ = int(GROUND);
               }
               else if(§>#9§.§3m§(param2 - 1,param3 - 1,false))
               {
                  x = param2;
                  y = param3 - 1;
                  _loc5_ = int(§`&B§);
               }
               else if(§>#9§.§3m§(param2 + 1,param3 - 1,false))
               {
                  x = param2;
                  y = param3 - 1;
                  _loc5_ = int(§4!v§);
               }
               else
               {
                  x = param2;
                  y = param3;
                  _loc5_ = int(GROUND);
               }
               this.slopeAngle = §<H§.§3"j§(x,y,§@!B§,this.slopeAngle);
               this.§2"s§();
               this.attach = _loc5_;
            }
         }
      }
      
      public function §2"s§() : void
      {
         this.§`!u§();
         stop();
      }
      
      private function §9"N§() : Point
      {
         var _loc1_:Number = Math.cos(this.slopeAngle);
         var _loc2_:Number = Math.sin(this.slopeAngle);
         var _loc3_:Number = x;
         var _loc4_:Number = y;
         var _loc5_:int = 0;
         while(_loc5_ <= §<H§.§-#C§)
         {
            _loc3_ += _loc1_;
            _loc4_ += _loc2_;
            if(§>#9§.point(int(_loc3_),int(_loc4_)))
            {
               break;
            }
            _loc5_++;
         }
         return new Point(int(_loc3_),int(_loc4_));
      }
   }
}

