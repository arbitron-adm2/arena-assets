package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.ReturnFriendResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   
   public class ReturnFriendResultBinarySerializer implements §&"a§
   {
      
      public function ReturnFriendResultBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ReturnFriendResult = new ReturnFriendResult();
         _loc3_.result = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return 10090;
      }
   }
}

