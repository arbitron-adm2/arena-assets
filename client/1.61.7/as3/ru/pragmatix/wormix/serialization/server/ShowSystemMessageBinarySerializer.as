package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §>%S§.§^!V§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.ShowSystemMessage;
   
   public class ShowSystemMessageBinarySerializer implements §&"a§
   {
      
      public function ShowSystemMessageBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10011;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ShowSystemMessage = ShowSystemMessage(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.msg);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ShowSystemMessage = new ShowSystemMessage();
         _loc3_.msg = param1.readUTF();
         return _loc3_;
      }
   }
}

