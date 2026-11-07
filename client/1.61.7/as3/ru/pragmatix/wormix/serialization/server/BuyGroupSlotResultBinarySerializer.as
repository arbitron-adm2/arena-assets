package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §1#p§.*;
   import §3#a§.§-!`§;
   import §8$V§.*;
   import §<%c§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class BuyGroupSlotResultBinarySerializer implements §&"a§
   {
      
      public function BuyGroupSlotResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10122;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuyGroupSlotResult = BuyGroupSlotResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.result);
         _loc5_.writeInt(_loc3_.newSlotsIndex);
         _loc5_.writeUTF(_loc3_.sessionKey);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:BuyGroupSlotResult = new BuyGroupSlotResult();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.result = _loc4_.readShort();
         _loc3_.newSlotsIndex = _loc4_.readByte();
         _loc3_.sessionKey = _loc4_.readUTF();
         _loc3_.isSecure = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         return _loc3_;
      }
   }
}

