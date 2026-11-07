package ru.pragmatix.wormix.serialization.server
{
   import §&#h§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   
   public class BuyResetBonusItemsResultBinarySerializer implements §&"a§
   {
      
      public function BuyResetBonusItemsResultBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:BuyResetBonusItemsResult = new BuyResetBonusItemsResult();
         _loc4_.result = _loc3_.readShort();
         _loc4_.requestNum = _loc3_.readInt();
         _loc4_.isSecure = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         return _loc4_;
      }
      
      public function getCommandId() : uint
      {
         return 13010;
      }
   }
}

