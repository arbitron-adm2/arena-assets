package ru.pragmatix.wormix.messages.structures
{
   import §!L§.§+"'§;
   import §+$=§.§6#A§;
   import §1!J§.§"t§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §;&2§.§!#W§;
   import config.§=%A§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class TurnStructureV2
   {
      
      public static const VERSION_MARKER:int = 100;
      
      public var turnNum:int;
      
      public var isPlayerTurn:Boolean;
      
      public var endTime:int;
      
      public var damageToPlayer:int;
      
      public var damageToBoss:int;
      
      public var landDestroyed:int;
      
      public var items:Array;
      
      public var births:Array;
      
      public var deaths:Array;
      
      public var unitsHp:Array;
      
      public var mechanics:Array;
      
      public var floodDepth:int;
      
      public function TurnStructureV2()
      {
         super();
      }
      
      public function toString() : String
      {
         return "TurnStructureV2{" + " turnNum=" + this.turnNum + ",isPlayerTurn=" + this.isPlayerTurn + ",damageToPlayer=" + this.damageToPlayer + ",damageToBoss=" + this.damageToBoss + ",items=" + this.items + ",births=" + this.births + ",deaths=" + this.deaths + ",unitsHp=" + this.unitsHp + ",floodDepth=" + this.floodDepth + " }";
      }
   }
}

