package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §<%k§.§2§;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.SyncInvestedAwardPointsResult;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class SyncInvestedAwardPointsResultBinarySerializer implements §&"a§
   {
      
      public function SyncInvestedAwardPointsResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10041;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:SyncInvestedAwardPointsResult = new SyncInvestedAwardPointsResult();
         _loc3_.points = param1.readByte();
         return _loc3_;
      }
   }
}

