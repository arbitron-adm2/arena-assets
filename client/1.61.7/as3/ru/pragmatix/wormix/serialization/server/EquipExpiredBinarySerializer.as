package ru.pragmatix.wormix.serialization.server
{
   import § !P§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class EquipExpiredBinarySerializer implements §&"a§
   {
      
      public function EquipExpiredBinarySerializer()
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
         var _loc4_:EquipExpired = new EquipExpired();
         §!!"§.§[L§(_loc3_,_loc4_.equipIds);
         _loc4_.hatId = _loc3_.readShort();
         _loc4_.artifactId = _loc3_.readShort();
         return _loc4_;
      }
      
      public function getCommandId() : uint
      {
         return 10093;
      }
   }
}

