package ru.pragmatix.wormix.messages.structures
{
   import §>%S§.§^!V§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.BuyRenameCharResult;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class BossBattleAwardStructure
   {
      
      public var id:int;
      
      public var firstWinBattleAward:BossBattleWinAwardStructure;
      
      public var nextWinBattleAward:BossBattleWinAwardStructure;
      
      public function BossBattleAwardStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "BossBattleAwardStructure{" + "id=" + this.id + ";firstWinBattleAward=" + this.firstWinBattleAward + ";nextWinBattleAward=" + this.nextWinBattleAward + "}";
      }
   }
}

