package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §?$7§.§!§;
   import §@$§.*;
   import §]^§.§-$T§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.GetColiseumRewardResponse;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   
   public class GetColiseumRewardResponseBinarySerializer implements §&"a§
   {
      
      private var log:§&`§ = new §&`§(EnterAccountBinarySerializer);
      
      public function GetColiseumRewardResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10114;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc4_:ByteArray = null;
         var _loc6_:§@#&§ = null;
         var _loc7_:int = 0;
         var _loc3_:GetColiseumRewardResponse = new GetColiseumRewardResponse();
         _loc4_ = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.reward = [];
         var _temp_1:* = int(_loc4_.readUnsignedShort());
         var _loc5_:int = int(_loc4_.readUnsignedShort());
         if(_loc5_ > 0)
         {
            _loc6_ = §<!h§.§@%$§(GenericAwardStructure);
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               _loc4_.readShort();
               _loc3_.reward[_loc7_] = _loc6_.deserializeStructure(_loc4_,null);
               _loc7_++;
            }
         }
         _loc3_.sessionKey = _loc4_.readUTF();
         _loc3_.isSecure = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         return _loc3_;
      }
   }
}

