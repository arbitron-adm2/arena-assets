package ru.pragmatix.wormix.serialization.server
{
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §2"L§.§^$y§;
   import §7"Q§.§0$L§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   
   public class BuySelectRaceResponseBinarySerializer implements §&"a§
   {
      
      public function BuySelectRaceResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10050;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:BuySelectRaceResponse = new BuySelectRaceResponse();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.result = _loc4_.readShort();
         _loc3_.costs = [];
         var _loc5_:int = _loc4_.readShort();
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc4_.readShort();
            _loc3_.costs[_loc6_] = §<!h§.§@%$§(CostStructure).deserializeStructure(_loc4_,null);
            _loc6_++;
         }
         _loc3_.sessionKey = _loc4_.readUTF();
         _loc3_.race = _loc4_.readShort();
         _loc3_.skin = _loc4_.readByte();
         _loc3_.isSecure = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         return _loc3_;
      }
   }
}

