package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §`"p§.*;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   
   public class ReorderGroupResultBinarySerializer implements §&"a§
   {
      
      public function ReorderGroupResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 1022;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ReorderGroupResult = new ReorderGroupResult();
         _loc3_.result = param1.readShort();
         return _loc3_;
      }
   }
}

