package com.greensock.easing
{
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §"% §.LevelUpDialog;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §9"-§.§5#-§;
   import §9%W§.§!7§;
   import §?$7§.§+#N§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Back
   {
      
      public function Back()
      {
         super();
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         return param3 * ((param1 = param1 / param4 - 1) * param1 * ((param5 + 1) * param1 + param5) + 1) + param2;
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         return param3 * (param1 = param1 / param4) * param1 * ((param5 + 1) * param1 - param5) + param2;
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         param1 = param1 / (param4 * 0.5);
         if(param1 < 1)
         {
            return param3 * 0.5 * (param1 * param1 * (((param5 = param5 * 1.525) + 1) * param1 - param5)) + param2;
         }
         §§push(param3 / 2);
         §§push((param1 = param1 - 2) * param1);
         var _temp_4:* = param5 * 1.525;
         param5 = param5 * 1.525;
         return §§pop() * (§§pop() * ((param5 + 1) * param1 + param5) + 2) + param2;
      }
   }
}

