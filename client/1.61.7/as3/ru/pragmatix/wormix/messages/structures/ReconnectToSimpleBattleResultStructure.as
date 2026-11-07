package ru.pragmatix.wormix.messages.structures
{
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §@<§.§+%]§;
   
   public class ReconnectToSimpleBattleResultStructure
   {
      
      public var battleId:int;
      
      public var originalBattleId:int;
      
      public var missionId:int;
      
      public var lastTurnNum:int;
      
      public function ReconnectToSimpleBattleResultStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "ReconnectToSimpleBattleResultStructure{" + "battleId=" + this.battleId + ",originalBattleId=" + this.originalBattleId + ",missionId=" + this.missionId + ",lastTurnNum=" + this.lastTurnNum + "}";
      }
   }
}

