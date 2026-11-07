package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §7$t§.§&!e§;
   import §>%S§.§^!V§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.UserIsBanned;
   
   public class UserIsBannedBinarySerializer implements §&"a§
   {
      
      public function UserIsBannedBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10023;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:UserIsBanned = UserIsBanned(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.reason);
         _loc5_.writeUnsignedInt(_loc3_.endDate);
         _loc5_.writeUnsignedInt(_loc3_.profileId);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:UserIsBanned = new UserIsBanned();
         _loc3_.reason = param1.readInt();
         _loc3_.endDate = param1.readUnsignedInt();
         _loc3_.profileId = param1.readUnsignedInt();
         return _loc3_;
      }
   }
}

