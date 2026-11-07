package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'T§.§!$C§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0"L§.§@#n§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §[%§.Dragon;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ItemGranted;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class ItemGrantedBinarySerializer implements §&"a§
   {
      
      public function ItemGrantedBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ItemGranted = new ItemGranted();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.itemId = _loc4_.readInt();
         _loc3_.itemCount = _loc4_.readInt();
         _loc3_.sessionId = _loc4_.readUTF();
         §!!"§.§1&B§(_loc4_,_loc3_.sessionId,§0$N§.PROTOCOL_CHEATER);
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return 10104;
      }
   }
}

