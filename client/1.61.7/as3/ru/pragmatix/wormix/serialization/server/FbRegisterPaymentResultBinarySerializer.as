package ru.pragmatix.wormix.serialization.server
{
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterPaymentResult;
   
   public class FbRegisterPaymentResultBinarySerializer implements §&"a§
   {
      
      public function FbRegisterPaymentResultBinarySerializer()
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
         var _loc4_:FbRegisterPaymentResult = new FbRegisterPaymentResult();
         _loc4_.itemId = _loc3_.readUTF();
         _loc4_.result = _loc3_.readShort();
         _loc4_.paymentId = _loc3_.readInt();
         _loc4_.sessionKey = _loc3_.readUTF();
         var _loc5_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc5_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
            return null;
         }
         return _loc4_;
      }
      
      public function getCommandId() : uint
      {
         return 1099;
      }
   }
}

