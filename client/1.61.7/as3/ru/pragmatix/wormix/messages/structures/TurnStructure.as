package ru.pragmatix.wormix.messages.structures
{
   import §"!C§.§2v§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class TurnStructure
   {
      
      public var turnNum:int;
      
      public var isPlayerTurn:Boolean;
      
      public var endTime:int;
      
      public var damageToPlayer:int;
      
      public var damageToBoss:int;
      
      public var items:Array;
      
      public var deaths:Array;
      
      public var births:Array;
      
      public function TurnStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "TurnStructure{" + "turnNum=" + this.turnNum + ",isPlayerTurn=" + this.isPlayerTurn + ",damageToPlayer=" + this.damageToPlayer + ",damageToBoss=" + this.damageToBoss + ",items=" + this.items + ",deaths=" + this.deaths + ",births=" + this.births + "}";
      }
   }
}

