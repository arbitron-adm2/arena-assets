package ru.pragmatix.wormix.serialization.server
{
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §2!-§.§'5§;
   import §>%S§.§^!V§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   
   public class IncomingPaymentBinarySerializer implements §&"a§
   {
      
      public function IncomingPaymentBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10031;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:IncomingPayment = IncomingPayment(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.paymentType);
         _loc5_.writeUTF(_loc3_.item);
         _loc5_.writeInt(_loc3_.count);
         _loc5_.writeUTF(§%%w§.§7F§.§?$X§());
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:IncomingPayment = new IncomingPayment();
         _loc4_.paymentType = _loc3_.readShort();
         _loc4_.item = _loc3_.readUTF();
         _loc4_.count = _loc3_.readInt();
         _loc4_.note = _loc3_.readUTF();
         _loc4_.sessionKey = _loc3_.readUTF();
         var _loc5_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc5_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
            return null;
         }
         return _loc4_;
      }
   }
}

