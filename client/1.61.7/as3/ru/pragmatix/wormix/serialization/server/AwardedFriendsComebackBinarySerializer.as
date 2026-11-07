package ru.pragmatix.wormix.serialization.server
{
   import §#k§.§9$v§;
   import §%&3§.§'C§;
   import §&§.§0"v§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0&F§.§0%v§;
   import §2o§.§]#@§;
   import §4!!§.§#Z§;
   import §6"'§.*;
   import §7$t§.§&!e§;
   import §^#[§.§&$2§;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.AwardedFriendsComeback;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class AwardedFriendsComebackBinarySerializer implements §&"a§
   {
      
      public function AwardedFriendsComebackBinarySerializer()
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
         var _loc4_:AwardedFriendsComeback = new AwardedFriendsComeback();
         _loc4_.friendsId = [];
         §!!"§.§-!N§(_loc3_,_loc4_.friendsId);
         _loc4_.friendsIdString = [];
         §!!"§.§,1§(_loc3_,_loc4_.friendsIdString);
         return _loc4_;
      }
      
      public function getCommandId() : uint
      {
         return 10091;
      }
   }
}

