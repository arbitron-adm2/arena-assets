package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.RewardReturnFriendResult;
   
   public class RewardReturnFriendResultBinarySerializer implements §&"a§
   {
      
      public function RewardReturnFriendResultBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:RewardReturnFriendResult = new RewardReturnFriendResult();
         _loc3_.result = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return 10092;
      }
   }
}

