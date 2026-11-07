package ru.pragmatix.wormix.serialization.server
{
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §9%W§.§!7§;
   import §>%S§.§^!V§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§,%§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class IncreaseAchievementResultBinarySerializer implements §&"a§
   {
      
      public function IncreaseAchievementResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 13004;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:IncreaseAchievementResult = IncreaseAchievementResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         §!!"§.§^%d§(_loc5_,_loc3_.achievementsIndex);
         §!!"§.§^%d§(_loc5_,_loc3_.achievementsValues);
         §!!"§.§^%d§(_loc5_,_loc3_.thresholdAchievmensIndex);
         §!!"§.§^%d§(_loc5_,_loc3_.thresholdAchievmensOldValues);
         §!!"§.§^%d§(_loc5_,_loc3_.boolAchievements);
         _loc5_.writeUnsignedInt(_loc3_.timeSequence);
         _loc5_.writeByte(_loc3_.investedAwardPoints);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc4_:ByteArray = null;
         var _loc3_:IncreaseAchievementResult = new IncreaseAchievementResult();
         _loc4_ = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.achievementsIndex = [];
         §!!"§.§;"S§(_loc4_,_loc3_.achievementsIndex);
         _loc3_.achievementsValues = [];
         §!!"§.§;"S§(_loc4_,_loc3_.achievementsValues);
         _loc3_.thresholdAchievmensIndex = [];
         §!!"§.§;"S§(_loc4_,_loc3_.thresholdAchievmensIndex);
         _loc3_.thresholdAchievmensOldValues = [];
         §!!"§.§;"S§(_loc4_,_loc3_.thresholdAchievmensOldValues);
         _loc3_.boolAchievements = [];
         §!!"§.§;"S§(_loc4_,_loc3_.boolAchievements);
         _loc3_.timeSequence = _loc4_.readUnsignedInt();
         _loc3_.investedAwardPoints = _loc4_.readByte();
         var _loc5_:Boolean = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         if(!_loc5_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
         }
         return _loc3_;
      }
   }
}

