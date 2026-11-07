package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §>%S§.§^!V§;
   import flash.errors.IllegalOperationError;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   
   public class WipeProfileResultBinarySerializer implements §&"a§
   {
      
      public function WipeProfileResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10036;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:WipeProfileResult = WipeProfileResult(param1);
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
         var _loc3_:WipeProfileResult = new WipeProfileResult();
         _loc3_.result = param1.readShort();
         return _loc3_;
      }
   }
}

