package ru.pragmatix.wormix.serialization.clans.request.login
{
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §1#p§.*;
   import §7!B§.§&"T§;
   import §8$V§.*;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class LoginJoinClanRequestBinarySerializer extends LoginClanBaseBinarySerializer
   {
      
      public function LoginJoinClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:ByteArray = super.§?g§(param1);
         var _loc3_:LoginJoinClanRequest = LoginJoinClanRequest(param1);
         _loc2_.writeInt(_loc3_.clanId);
         _loc2_.writeShort(_loc3_.hostSocialId);
         _loc2_.writeInt(_loc3_.hostProfileId);
         return _loc2_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.LOGIN_JOIN_REQUEST;
      }
   }
}

