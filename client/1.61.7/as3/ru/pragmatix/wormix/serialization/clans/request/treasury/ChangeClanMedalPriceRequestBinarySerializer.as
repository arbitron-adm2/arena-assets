package ru.pragmatix.wormix.serialization.clans.request.treasury
{
   import §=!C§.§74§;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.treasury.ChangeClanMedalPriceRequest;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   
   public class ChangeClanMedalPriceRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function ChangeClanMedalPriceRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:ChangeClanMedalPriceRequest = ChangeClanMedalPriceRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeByte(_loc2_.medalPrice);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.CHANGE_CLAN_MEDAL_PRICE_REQUEST;
      }
   }
}

