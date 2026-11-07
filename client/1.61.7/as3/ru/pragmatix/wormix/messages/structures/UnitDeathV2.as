package ru.pragmatix.wormix.messages.structures
{
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class UnitDeathV2
   {
      
      public static const CAUSE_UNKNOWN:int = 0;
      
      public static const CAUSE_DAMAGE:int = 1;
      
      public static const CAUSE_POISON:int = 2;
      
      public static const CAUSE_DROWN:int = 3;
      
      public static const CAUSE_SCRIPT:int = 4;
      
      public static const CAUSE_SUICIDE:int = 5;
      
      public var unitId:int;
      
      public var cause:int;
      
      public var remainingHp:int;
      
      public var killerWeaponId:int;
      
      public function UnitDeathV2(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.unitId = param1;
         this.cause = param2;
         this.remainingHp = param3;
         this.killerWeaponId = param4;
      }
      
      public function toString() : String
      {
         return "{#" + this.unitId + " cause=" + this.cause + " remHp=" + this.remainingHp + "}";
      }
   }
}

