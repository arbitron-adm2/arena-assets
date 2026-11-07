package ru.pragmatix.wormix.serialization.server
{
   import § !P§.§9%Z§;
   import §!$d§.§<$c§;
   import §&#h§.*;
   import §'!Z§.§2!H§;
   import §'"N§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §2"L§.§^$y§;
   import §7$t§.§^%%§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.server.BuySkinResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class BuySkinResponseBinarySerializer implements §&"a§
   {
      
      public function BuySkinResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10029;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:BuySkinResponse = new BuySkinResponse();
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
         _loc3_.skin = _loc4_.readByte();
         _loc3_.skins = [];
         §!!"§.§#$>§(_loc4_,_loc3_.skins);
         _loc3_.isSecure = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         return _loc3_;
      }
   }
}

