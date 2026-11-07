package ru.pragmatix.wormix.messages.structures
{
   import §%"Z§.§+$A§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class BossBattleAwardsStructure
   {
      
      public var bossAwards:Vector.<BossBattleAwardStructure> = new Vector.<BossBattleAwardStructure>(0);
      
      public var heroicAwards:Vector.<HeroicBossBattleAwardStructure> = new Vector.<HeroicBossBattleAwardStructure>(0);
      
      public function BossBattleAwardsStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "BossBattleAwardsStructure{" + "bossAwards=" + this.bossAwards + ";heroicAwards=" + this.heroicAwards + "}";
      }
   }
}

