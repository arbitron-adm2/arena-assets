package ru.pragmatix.wormix.serialization.server
{
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §9%W§.§!"G§;
   import §>%S§.§^!V§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   
   public class PvpStartTurnBinarySerializer implements §&"a§
   {
      
      public function PvpStartTurnBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 1019;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc6_:uint = 0;
         var _loc3_:PvpStartTurn = PvpStartTurn(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.battleId);
         _loc5_.writeByte(_loc3_.nextPlayerNum);
         _loc5_.writeShort(_loc3_.turnNum);
         _loc5_.writeShort(_loc3_.commandNum);
         _loc5_.writeShort(_loc3_.droppedNums.length);
         for each(_loc6_ in _loc3_.droppedNums)
         {
            _loc5_.writeByte(_loc6_);
         }
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:PvpStartTurn = new PvpStartTurn();
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc4_.nextPlayerNum = _loc3_.readByte();
         _loc4_.turnNum = _loc3_.readShort();
         _loc4_.commandNum = _loc3_.readShort();
         _loc4_.droppedNums = [];
         var _loc5_:uint = uint(_loc3_.readShort());
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc4_.droppedNums.push(_loc3_.readByte());
            _loc6_++;
         }
         var _loc7_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc7_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
         }
         return _loc4_;
      }
   }
}

