package ru.pragmatix.wormix.pvp.messages.ex
{
   import §@!i§.§<#&§;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   
   public class BattleCreated
   {
      
      public static const ID:int = 2006;
      
      public var battleType:PvpBattleType;
      
      public var battleId:uint;
      
      public var wager:§<#&§;
      
      public var mapId:uint;
      
      public var missionIds:Vector.<int> = new Vector.<int>();
      
      public var playerStructs:Vector.<PvpProfileStructure>;
      
      public var seed:int;
      
      public var reagentsForBattle:Vector.<int>;
      
      public var questId:int;
      
      public var victoryRankPoints:int;
      
      public var defeatRankPoints:int;
      
      public var drawRankPoints:int;
      
      public var victoryRating:int;
      
      public var defeatRating:int;
      
      public var drawRating:int;
      
      public var serverTime:int;
      
      public function BattleCreated()
      {
         super();
      }
   }
}

