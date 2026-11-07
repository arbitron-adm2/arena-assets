package ru.pragmatix.wormix.game.ai
{
   import §&"c§.§!!q§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §7$1§.§;$n§;
   import §9%W§.§!7§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§<"e§;
   
   public class §<%&§
   {
      
      private static var MAX_ANGLE_MOVEMENT_COUNT:uint = 100;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      public function §<%&§()
      {
         super();
      }
      
      public static function §7]§(param1:Function, param2:§+%]§, param3:§!!q§) : void
      {
         var ch:§!7§ = null;
         var epsilon:Number = NaN;
         var ft:FrameTimer = null;
         var failoverCounter:uint = 0;
         var cb:Function = param1;
         var unit:§+%]§ = param2;
         var params:§!!q§ = param3;
         if(unit.weapon is §<"e§)
         {
            if(params.point.x < unit.x && unit.direction == §+%]§.RIGHT)
            {
               §#!Z§.fire(§#!Z§.§!c§);
               §#!Z§.fire(§#!Z§.§0"i§);
            }
            else if(params.point.x > unit.x && unit.direction == §+%]§.LEFT)
            {
               §#!Z§.fire(§#!Z§.§%H§);
               §#!Z§.fire(§#!Z§.§0"i§);
            }
         }
         if(!(unit.weapon.§;#x§() is §!7§))
         {
            if(Application.scene != null)
            {
               §8$a§.§%!E§(30,cb);
            }
            return;
         }
         if(Math.abs(params.angle) < PI_HALF)
         {
            §#!Z§.fire(§#!Z§.§%H§);
         }
         else
         {
            §#!Z§.fire(§#!Z§.§!c§);
         }
         §#!Z§.fire(§#!Z§.§0"i§);
         ch = §!7§(unit.weapon.§;#x§());
         epsilon = ch.§=%`§() / 2;
         ft = new FrameTimer(1);
         failoverCounter = 0;
         ft.addEventListener(FrameTimerEvent.§8$`§,function(param1:Event):void
         {
            ++failoverCounter;
            if(Application.scene != null && ch.isActive() && failoverCounter != MAX_ANGLE_MOVEMENT_COUNT && Math.abs(ch.getAngle() - params.angle) > epsilon)
            {
               if(Math.sin(params.angle) > Math.sin(ch.getAngle()))
               {
                  §#!Z§.fire(§#!Z§.§^!x§);
               }
               else
               {
                  §#!Z§.fire(§#!Z§.§3"E§);
               }
            }
            else
            {
               ft.stop();
               cb();
            }
         });
         ft.start();
      }
      
      public static function §!"8§(param1:Function, param2:§+%]§, param3:int) : void
      {
         var counter:int;
         var FRAME_LIMIT:int = 0;
         var MAX_ERROR:int = 0;
         var ft:FrameTimer = null;
         var lastX:int = 0;
         var cb:Function = param1;
         var unit:§+%]§ = param2;
         var x:int = param3;
         FRAME_LIMIT = 150;
         MAX_ERROR = 5;
         if(unit.x < x)
         {
            §#!Z§.fire(§#!Z§.§%H§);
         }
         else
         {
            §#!Z§.fire(§#!Z§.§!c§);
         }
         ft = new FrameTimer(1,151);
         counter = 0;
         lastX = -1;
         ft.addEventListener(FrameTimerEvent.§8$`§,function(param1:Event):void
         {
            var e:Event = param1;
            if(!unit.disposed)
            {
               if(!unit.stable)
               {
                  §8$a§.§&!#§(unit,§0%v§.§3G§,function(param1:Event):void
                  {
                     cb();
                  });
                  ft.stop();
               }
               else
               {
                  if(Math.abs(unit.x - x) < MAX_ERROR || counter++ >= FRAME_LIMIT || lastX == unit.x)
                  {
                     §#!Z§.fire(§#!Z§.§0"i§);
                     ft.stop();
                     cb();
                  }
                  lastX = unit.x;
               }
            }
         });
         ft.start();
      }
   }
}

