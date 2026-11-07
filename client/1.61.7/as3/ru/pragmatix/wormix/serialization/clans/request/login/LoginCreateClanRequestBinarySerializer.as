package ru.pragmatix.wormix.serialization.clans.request.login
{
   import § &5§.§%$O§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §0%[§.§0%§;
   import §8$V§.*;
   import §?!E§.*;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class LoginCreateClanRequestBinarySerializer extends LoginClanBaseBinarySerializer
   {
      
      public function LoginCreateClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:ByteArray = super.§?g§(param1);
         var _loc3_:LoginCreateClanRequest = LoginCreateClanRequest(param1);
         _loc2_.writeUTF(_loc3_.clanName);
         §!!"§.§8%O§(_loc2_,_loc3_.clanEmblem);
         _loc2_.writeUTF(_loc3_.clanDescription);
         return _loc2_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.LOGIN_CREATE_REQUEST;
      }
   }
}

