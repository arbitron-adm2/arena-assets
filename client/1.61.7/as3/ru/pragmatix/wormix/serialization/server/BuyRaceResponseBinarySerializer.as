package ru.pragmatix.wormix.serialization.server
{
   import §!$d§.§<$c§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §1#p§.§2=§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class BuyRaceResponseBinarySerializer implements §&"a§
   {
      
      public function BuyRaceResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10028;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:BuyRaceResponse = new BuyRaceResponse();
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
         _loc3_.races = _loc4_.readShort();
         _loc3_.isSecure = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         return _loc3_;
      }
   }
}

