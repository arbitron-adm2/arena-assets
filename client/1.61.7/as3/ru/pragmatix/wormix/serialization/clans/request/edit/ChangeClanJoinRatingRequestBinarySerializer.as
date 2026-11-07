package ru.pragmatix.wormix.serialization.clans.request.edit
{
   import §"!C§.§3#n§;
   import §#"V§.§8"@§;
   import §#%!§.*;
   import §#5§.*;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §0"L§.§+# §;
   import §5"J§.*;
   import §6"'§.§&"3§;
   import §7$t§.§^$E§;
   import §8#o§.§1@§;
   import §<!W§.§7!L§;
   import §<"L§.*;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class ChangeClanJoinRatingRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function ChangeClanJoinRatingRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:ChangeClanJoinRatingRequest = ChangeClanJoinRatingRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(_loc2_.joinRating);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.CHANGE_CLAN_JOIN_RATING_REQUEST;
      }
   }
}

