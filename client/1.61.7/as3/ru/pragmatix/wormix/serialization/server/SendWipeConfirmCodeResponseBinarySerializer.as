package ru.pragmatix.wormix.serialization.server
{
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §6_§.*;
   import §>%S§.§^!V§;
   import §]$&§.§2&2§;
   import §^#[§.§?"&§;
   import flash.display.SimpleButton;
   import flash.geom.ColorTransform;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.SendWipeConfirmCodeResponse;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class SendWipeConfirmCodeResponseBinarySerializer implements §&"a§
   {
      
      public function SendWipeConfirmCodeResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10040;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:SendWipeConfirmCodeResponse = SendWipeConfirmCodeResponse(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeByte(_loc3_.result);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:SendWipeConfirmCodeResponse = new SendWipeConfirmCodeResponse();
         _loc3_.result = param1.readByte();
         return _loc3_;
      }
   }
}

