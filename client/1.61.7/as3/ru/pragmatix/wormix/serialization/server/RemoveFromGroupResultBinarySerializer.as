package ru.pragmatix.wormix.serialization.server
{
   import §%"Z§.§9"z§;
   import §'"N§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §7$t§.§&!e§;
   import §>%S§.§^!V§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.server.RemoveFromGroupResult;
   
   public class RemoveFromGroupResultBinarySerializer implements §&"a§
   {
      
      public function RemoveFromGroupResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10014;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:RemoveFromGroupResult = RemoveFromGroupResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.result);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:RemoveFromGroupResult = new RemoveFromGroupResult();
         _loc3_.result = param1.readShort();
         return _loc3_;
      }
   }
}

