package ru.pragmatix.wormix.serialization.server
{
   import §%"Z§.§'$2§;
   import §&!m§.§-$6§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §2#i§.§+%z§;
   import §6%2§.*;
   import §8$V§.TeamController;
   import §^#[§.§&$2§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class GetFriendsForMissionResultBinarySerializer implements §&"a§
   {
      
      public function GetFriendsForMissionResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 1093;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc4_:ByteArray = null;
         var _loc3_:GetFriendsForMissionResult = new GetFriendsForMissionResult();
         _loc4_ = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         var _loc5_:int = int(_loc4_.readUnsignedShort());
         _loc3_.profiles = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc4_.readShort();
            _loc3_.profiles[_loc6_] = §<!h§.§@%$§(SimpleProfileStructure).deserializeStructure(_loc4_,null);
            _loc6_++;
         }
         _loc3_.states = new Vector.<int>(0);
         §!!"§.§[L§(_loc4_,_loc3_.states);
         return _loc3_;
      }
   }
}

