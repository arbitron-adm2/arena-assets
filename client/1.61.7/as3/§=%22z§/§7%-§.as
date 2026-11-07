package §="z§
{
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §7!B§.§&"T§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §7%-§ extends §;$S§
   {
      
      private var radius:uint;
      
      private var §7$Y§:int;
      
      private var §<#w§:uint = 0;
      
      private var §+%&§:uint = 0;
      
      private var §6i§:uint = 0;
      
      public function §7%-§(param1:§9%1§, param2:uint, param3:int = 0)
      {
         super(param1);
         this.radius = param2;
         this.§7$Y§ = param3;
      }
      
      override public function §2"[§(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = x - param1;
         var _loc4_:int = y - param2;
         if(Math.abs(_loc3_) <= 1 && Math.abs(_loc4_) <= 1)
         {
            return §>#9§.§3m§(x,y,false,this.radius);
         }
         return §>#9§.§3m§(x,y,true,this.radius);
      }
      
      override public function §9#O§(param1:§&"T§, param2:int, param3:int, param4:CollisionEvent) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(param1 == null)
         {
            if(§>#9§.§3m§(param2,param3,true,this.radius))
            {
               _loc7_ = §<H§.§ !K§(param2,param3,§>#9§.§3m§,100);
               if(_loc7_)
               {
                  x = _loc7_.x;
                  y = _loc7_.y;
               }
               §'"$§.§]#I§(null,x,y,null,0,0,this.radius + 2,false);
               return;
            }
            _loc5_ = §<H§.§3"j§(param2,param3,this.radius + 5);
            _loc6_ = Math.abs(param2 - x) < 2 && Math.abs(param3 - y) < 2 && Math.abs(speedX) < 1 && Math.abs(speedY) < 2 && Math.abs(_loc5_ - Math.PI / 2) < Math.PI / 12;
            if(!_loc6_)
            {
               x = param2;
               y = param3;
               if(§-q§.§0#!§(angle,_loc5_) < Math.PI / 6)
               {
                  _loc8_ = §-q§.§2!Y§(_loc5_ * 2 - angle + Math.PI);
                  _loc9_ = speed * 0.75;
                  dispatchEvent(new Event(§9#1§.§>&9§));
               }
               else
               {
                  _loc10_ = §-q§.§0#!§(angle,_loc5_ + Math.PI / 2);
                  _loc11_ = §-q§.§0#!§(angle,_loc5_ - Math.PI / 2);
                  _loc8_ = _loc10_ < _loc11_ ? _loc5_ + Math.PI / 2 : _loc5_ - Math.PI / 2;
                  _loc9_ = speed * 0.95;
                  x = param2 - Math.cos(_loc5_) * 2;
                  y = param3 - Math.sin(_loc5_) * 2;
               }
               physParams.§`#y§ = -Math.sin(angle - _loc5_) * speed;
               §^"F§(_loc8_,_loc9_);
               physParams.§9#H§(0.001);
            }
            else
            {
               dispatchEvent(new Event(§9#1§.§@"-§));
            }
            stop();
         }
      }
   }
}

