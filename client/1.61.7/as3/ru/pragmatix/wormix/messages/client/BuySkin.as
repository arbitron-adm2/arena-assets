package ru.pragmatix.wormix.messages.client
{
   import § &5§.§=#P§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §-@§.§5"4§;
   import §0%[§.§1%"§;
   import §0&F§.§[!F§;
   import §0&F§.§`"^§;
   import §6"'§.§&"3§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §?$7§.§+#N§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §`%&§.§5$1§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class BuySkin
   {
      
      public static const REAL_MONEY:int = 0;
      
      public var moneyType:int = 0;
      
      public var skinId:int;
      
      public function BuySkin(param1:int = 0, param2:int = 0)
      {
         super();
         this.skinId = param1;
         this.moneyType = param2;
      }
      
      public function toString() : String
      {
         return "BuySkin {" + " skinId=" + String(this.skinId) + " moneyType=" + String(this.moneyType) + " }";
      }
   }
}

