package ru.pragmatix.wormix.messages.structures
{
   import §,!f§.*;
   import §0&F§.§0%v§;
   import §2#V§.§-#U§;
   import §7$1§.§;$n§;
   import §7$t§.§=?§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class HeroicBossBattleAwardStructure
   {
      
      public var level:int;
      
      public var winAward:BossBattleWinAwardStructure;
      
      public var winReagentsAward:Vector.<int> = new Vector.<int>(0);
      
      public function HeroicBossBattleAwardStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "HeroicBossBattleAwardStructure{" + "level=" + this.level + ";winAward=" + this.winAward + ";winReagentsAward=" + this.winReagentsAward + "}";
      }
   }
}

