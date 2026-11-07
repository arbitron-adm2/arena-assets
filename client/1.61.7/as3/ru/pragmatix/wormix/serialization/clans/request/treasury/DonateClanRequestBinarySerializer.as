package ru.pragmatix.wormix.serialization.clans.request.treasury
{
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.treasury.DonateClanRequest;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   
   public class DonateClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function DonateClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:DonateClanRequest = DonateClanRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(_loc2_.donation);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.DONATE_REQUEST;
      }
   }
}

