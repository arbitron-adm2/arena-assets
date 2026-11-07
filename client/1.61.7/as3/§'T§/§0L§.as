package §'T§
{
   import § !P§.§1!8§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §3#T§.§+&F§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §0L§ extends §!$C§
   {
      
      private static const FIRE_POWER:int = 7;
      
      private static const FIRE_DURATION:int = 60;
      
      private static const §2V§:uint = 3;
      
      private static const §["0§:Number = §2V§ / 2;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const §-a§:Number = Math.PI / 8;
      
      public function §0L§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         _damageType = §&!E§.FIRE;
      }
      
      override public function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:int = 0;
         if(!disposed)
         {
            _loc2_ = int(-§["0§);
            while(_loc2_ <= §["0§)
            {
               new §+&F§(owner,-PI_HALF + _loc2_ * §-a§,FIRE_POWER,x + _loc2_ * 6,y - 5,FIRE_DURATION,true);
               _loc2_++;
            }
         }
         super.onCollide(param1);
      }
   }
}

