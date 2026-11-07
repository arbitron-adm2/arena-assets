package ru.pragmatix.wormix.serialization.structures
{
   import §,"v§.§@#&§;
   import §2!-§.SupplyPickedUpEvent;
   import §2"L§.§^$y§;
   import §4#2§.§,%g§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class BossBattleAwardStructureBinarySerializer implements §@#&§
   {
      
      public function BossBattleAwardStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = param1 as ByteArray;
         var _loc4_:BossBattleAwardStructure = new BossBattleAwardStructure();
         _loc4_.id = _loc3_.readInt();
         _loc3_.readShort();
         _loc4_.firstWinBattleAward = BossBattleWinAwardStructure(§<!h§.§@%$§(BossBattleWinAwardStructure).deserializeStructure(_loc3_,null));
         _loc3_.readShort();
         _loc4_.nextWinBattleAward = BossBattleWinAwardStructure(§<!h§.§@%$§(BossBattleWinAwardStructure).deserializeStructure(_loc3_,null));
         return _loc4_;
      }
   }
}

