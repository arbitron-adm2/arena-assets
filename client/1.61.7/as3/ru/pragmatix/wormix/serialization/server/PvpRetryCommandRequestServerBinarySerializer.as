package ru.pragmatix.wormix.serialization.server
{
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §>%S§.§^!V§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpRetryCommandRequestServer;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class PvpRetryCommandRequestServerBinarySerializer implements §&"a§
   {
      
      public function PvpRetryCommandRequestServerBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 1016;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:PvpRetryCommandRequestServer = PvpRetryCommandRequestServer(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.battleId);
         §!!"§.§[$k§(_loc5_,_loc3_.commandNums);
         _loc5_.writeShort(_loc3_.turnNum);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:PvpRetryCommandRequestServer = new PvpRetryCommandRequestServer();
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc4_.commandNums = [];
         §!!"§.§5t§(_loc3_,_loc4_.commandNums);
         _loc4_.turnNum = _loc3_.readShort();
         var _loc5_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc5_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
         }
         return _loc4_;
      }
   }
}

