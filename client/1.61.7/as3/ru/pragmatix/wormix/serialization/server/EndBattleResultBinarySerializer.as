package ru.pragmatix.wormix.serialization.server
{
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §?$L§.§ "N§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndBattleResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   
   public class EndBattleResultBinarySerializer implements §&"a§
   {
      
      public function EndBattleResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10121;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         var _loc6_:§@#&§ = null;
         var _loc7_:int = 0;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:EndBattleResult = new EndBattleResult();
         _loc4_.validateResult = _loc3_.readShort();
         _loc4_.result = _loc3_.readInt();
         _loc4_.battleId = _loc3_.readInt();
         _loc4_.missionId = _loc3_.readShort();
         _loc4_.sessionKey = _loc3_.readUTF();
         _loc4_.awards = [];
         var _loc5_:int = int(_loc3_.readUnsignedShort());
         if(_loc5_ > 0)
         {
            _loc6_ = §<!h§.§@%$§(GenericAwardStructure);
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               _loc3_.readShort();
               _loc4_.awards[_loc7_] = _loc6_.deserializeStructure(_loc3_,null) as GenericAwardStructure;
               _loc7_++;
            }
         }
         _loc4_.isSecure = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc4_.isSecure)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
            return null;
         }
         return _loc4_;
      }
   }
}

