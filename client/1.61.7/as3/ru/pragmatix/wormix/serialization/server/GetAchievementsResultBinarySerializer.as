package ru.pragmatix.wormix.serialization.server
{
   import §#5§.§!&"§;
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §6_§.*;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §>%S§.§^!V§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class GetAchievementsResultBinarySerializer implements §&"a§
   {
      
      public function GetAchievementsResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 13003;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetAchievementsResult = GetAchievementsResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.profileId);
         §!!"§.§^%d§(_loc5_,_loc3_.achievementsIndex);
         §!!"§.§^%d§(_loc5_,_loc3_.achievements);
         §!!"§.§^%d§(_loc5_,_loc3_.boolAchievements);
         _loc5_.writeByte(_loc3_.investedAwardPoints);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc4_:ByteArray = null;
         var _loc3_:GetAchievementsResult = new GetAchievementsResult();
         _loc4_ = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.profileId = _loc4_.readUTF();
         _loc3_.achievementsIndex = [];
         §!!"§.§;"S§(_loc4_,_loc3_.achievementsIndex);
         _loc3_.achievements = [];
         §!!"§.§;"S§(_loc4_,_loc3_.achievements);
         _loc3_.boolAchievements = [];
         §!!"§.§;"S§(_loc4_,_loc3_.boolAchievements);
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

