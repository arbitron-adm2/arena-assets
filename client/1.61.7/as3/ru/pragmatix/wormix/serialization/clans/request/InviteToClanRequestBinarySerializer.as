package ru.pragmatix.wormix.serialization.clans.request
{
   import §!$d§.*;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §7$t§.§^$E§;
   import §<%k§.§`!v§;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import com.greensock.TweenMax;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.InviteToClanRequest;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class InviteToClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function InviteToClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:InviteToClanRequest = InviteToClanRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(_loc2_.clanId);
         _loc3_.writeShort(_loc2_.socialId);
         _loc3_.writeInt(_loc2_.profileId);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.INVITE_TO_CLAN_REQUEST;
      }
   }
}

