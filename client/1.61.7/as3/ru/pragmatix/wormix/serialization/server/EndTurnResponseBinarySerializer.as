package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §>%S§.§^!V§;
   import §@$§.§`&C§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   
   public class EndTurnResponseBinarySerializer implements §&"a§
   {
      
      public function EndTurnResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10120;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:EndTurnResponse = new EndTurnResponse();
         _loc3_.result = param1.readShort();
         _loc3_.battleId = param1.readUnsignedInt();
         _loc3_.turnNum = param1.readShort();
         _loc3_.lastTurnNum = param1.readShort();
         return _loc3_;
      }
   }
}

