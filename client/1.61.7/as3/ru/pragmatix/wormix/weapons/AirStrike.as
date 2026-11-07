package ru.pragmatix.wormix.weapons
{
   import § "d§.§,!c§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §-%B§.*;
   import §1#p§.§"Z§;
   import §3#a§.§-!`§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §<!G§.§&!;§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class AirStrike extends §&!;§
   {
      
      public function AirStrike()
      {
         super();
      }
      
      override protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         _loc8_ = §?"&§(getProperty("isHoming")).value;
         var _loc9_:§!!q§ = _loc8_ ? shotParams : null;
         var _loc10_:int = -2;
         while(_loc10_ <= 2)
         {
            new §0%%§(param1,param2,param3 + 50 * _loc10_,param4,param5,param6,_loc9_);
            _loc10_++;
         }
         super.§2",§(param1,param2,param3,param4,param5,param6);
      }
   }
}

