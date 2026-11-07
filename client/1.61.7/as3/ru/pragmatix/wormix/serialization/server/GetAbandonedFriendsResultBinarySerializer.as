package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §2"L§.§,'§;
   import §3#a§.§-#M§;
   import §4'§.§`"q§;
   import §9"-§.*;
   import §@<§.§+%]§;
   import §]$v§.§3z§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanEmblemRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class GetAbandonedFriendsResultBinarySerializer implements §&"a§
   {
      
      public function GetAbandonedFriendsResultBinarySerializer()
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
         var _loc4_:GetAbandonedFriendsResult = new GetAbandonedFriendsResult();
         _loc4_.abandonedFriendsPage = [];
         §!!"§.§-!N§(_loc3_,_loc4_.abandonedFriendsPage);
         _loc4_.abandonedFriendsPageString = [];
         §!!"§.§,1§(_loc3_,_loc4_.abandonedFriendsPageString);
         _loc4_.totalAbandonedFriends = _loc3_.readInt();
         return _loc4_;
      }
      
      public function getCommandId() : uint
      {
         return 10089;
      }
   }
}

