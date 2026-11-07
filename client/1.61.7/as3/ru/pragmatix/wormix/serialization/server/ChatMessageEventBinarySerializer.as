package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §%"Z§.§+$A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import flash.events.EventPhase;
   import flash.events.TouchEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.ChatMessageEvent;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   use namespace gestouch_internal;
   
   public class ChatMessageEventBinarySerializer implements §&"a§
   {
      
      public function ChatMessageEventBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10302;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:ChatMessageEvent = new ChatMessageEvent();
         _loc4_.state = _loc3_.readShort();
         if(_loc3_.readShort() == 1)
         {
            _loc4_.message = ChatMessage(§<!h§.§@%$§(ChatMessage).deserializeStructure(_loc3_,null));
         }
         return _loc4_;
      }
   }
}

