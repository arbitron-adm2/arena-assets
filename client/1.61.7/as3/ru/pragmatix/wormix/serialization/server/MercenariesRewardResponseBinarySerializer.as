package ru.pragmatix.wormix.serialization.server
{
   import § "L§.§1%b§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §@<§.§+%]§;
   import config.achievements.*;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class MercenariesRewardResponseBinarySerializer implements §&"a§
   {
      
      public function MercenariesRewardResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10125;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc4_:ByteArray = null;
         var _loc6_:§@#&§ = null;
         var _loc7_:int = 0;
         var _loc3_:MercenariesRewardResponse = new MercenariesRewardResponse();
         _loc4_ = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.reward = [];
         var _loc5_:int = int(_loc4_.readUnsignedShort());
         if(_loc5_ > 0)
         {
            _loc6_ = §<!h§.§@%$§(GenericAwardStructure);
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               _loc4_.readShort();
               _loc3_.reward[_loc7_] = _loc6_.deserializeStructure(_loc4_,null);
               _loc7_++;
            }
         }
         _loc3_.sessionKey = _loc4_.readUTF();
         return _loc3_;
      }
   }
}

