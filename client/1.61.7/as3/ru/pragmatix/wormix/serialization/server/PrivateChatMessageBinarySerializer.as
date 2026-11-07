package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §9&+§.§>&5§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   
   public class PrivateChatMessageBinarySerializer implements §&"a§
   {
      
      public function PrivateChatMessageBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10051;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:PrivateChatMessage = PrivateChatMessage(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.fromProfileId);
         _loc5_.writeUTF(_loc3_.msg);
         _loc5_.writeByte(_loc3_.predefinedMsgType);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:PrivateChatMessage = new PrivateChatMessage();
         _loc3_.fromProfileId = param1.readUnsignedInt();
         _loc3_.msg = param1.readUTF();
         _loc3_.predefinedMsgType = param1.readByte();
         return _loc3_;
      }
   }
}

