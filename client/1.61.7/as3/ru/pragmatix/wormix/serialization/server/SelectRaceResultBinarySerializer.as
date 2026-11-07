package ru.pragmatix.wormix.serialization.server
{
   import §&#h§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §6"'§.§>"V§;
   import §>%S§.§^!V§;
   import §?$L§.§0"-§;
   import §@!N§.§-!Y§;
   import §@<§.§+%]§;
   import §`%&§.§,L§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class SelectRaceResultBinarySerializer implements §&"a§
   {
      
      public function SelectRaceResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10044;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:SelectRaceResult = SelectRaceResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.result);
         _loc5_.writeShort(_loc3_.race);
         _loc5_.writeByte(_loc3_.skin);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:SelectRaceResult = new SelectRaceResult();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.result = _loc4_.readShort();
         _loc3_.race = _loc4_.readShort();
         _loc3_.skin = _loc4_.readByte();
         return _loc3_;
      }
   }
}

