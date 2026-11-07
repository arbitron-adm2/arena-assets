package ru.pragmatix.wormix.serialization.server
{
   import § !P§.*;
   import § &5§.§=#P§;
   import §&"c§.§!!q§;
   import §+"m§.§3#[§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §5!,§.§?!P§;
   import §9%W§.§!"G§;
   import §9%W§.§8#p§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §=#g§.*;
   import §`"p§.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.ClearNameResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   
   public class ClearNameResultBinarySerializer implements §&"a§
   {
      
      public function ClearNameResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10131;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ClearNameResult = new ClearNameResult();
         _loc3_.result = param1.readShort();
         return _loc3_;
      }
   }
}

