package ru.pragmatix.wormix.serialization.server
{
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §<%k§.§`!v§;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   
   public class GetSpecialDealResponseBinarySerializer implements §&"a§
   {
      
      public function GetSpecialDealResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10108;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:GetSpecialDealResponse = new GetSpecialDealResponse();
         _loc3_.weaponId = param1.readShort();
         _loc3_.rubyPrice = param1.readByte();
         return _loc3_;
      }
   }
}

