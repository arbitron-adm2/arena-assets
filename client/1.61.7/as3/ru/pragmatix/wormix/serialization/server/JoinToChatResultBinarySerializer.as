package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §^#[§.§?"&§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.server.JoinToChatResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.weapons.*;
   
   public class JoinToChatResultBinarySerializer implements §&"a§
   {
      
      public function JoinToChatResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10301;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:JoinToChatResult = new JoinToChatResult();
         var _loc5_:int = int(_loc3_.readUnsignedShort());
         _loc4_.messages = new Vector.<ChatMessage>(0);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if(_loc3_.readShort() == 1)
            {
               _loc4_.messages.push(ChatMessage(§<!h§.§@%$§(ChatMessage).deserializeStructure(_loc3_,null)));
            }
            _loc6_++;
         }
         return _loc4_;
      }
   }
}

