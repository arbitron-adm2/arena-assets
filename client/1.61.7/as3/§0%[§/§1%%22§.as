package §0%[§
{
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §1%"§
   {
      
      public function §1%"§()
      {
         super();
      }
      
      public static function §]$<§(param1:Function, param2:Object, param3:Array = null, param4:Boolean = false) : Function
      {
         var fn:Function = param1;
         var scope:Object = param2;
         var args:Array = param3;
         var appendArgs:Boolean = param4;
         return function():*
         {
            var _loc2_:* = undefined;
            if(appendArgs)
            {
               _loc2_ = arguments.concat(args);
            }
            else
            {
               _loc2_ = args || arguments;
            }
            return fn.apply(scope,_loc2_);
         };
      }
      
      public static function delay(param1:Function, param2:Object, param3:uint, param4:Array = null) : void
      {
         var fn:Function = param1;
         var scope:Object = param2;
         var delay:uint = param3;
         var args:Array = param4;
         var t:Timer = new Timer(delay,1);
         t.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
         {
            fn.apply(scope,args);
         });
         t.start();
      }
   }
}

