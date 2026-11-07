package ru.pragmatix.wormix.serialization.clans.response.edit
{
   import § !P§.§<#q§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §3#T§.§;#Q§;
   import §3#a§.§-!`§;
   import §4f§.§-&§;
   import §<%c§.*;
   import §?$L§.§&$9§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §`#x§.*;
   import com.inreflected.ui.touchScroll.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpRetryCommandRequestServer;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ChangeClanJoinRatingResponseBinarySerializer implements §&"a§
   {
      
      public function ChangeClanJoinRatingResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ChangeClanJoinRatingResponse = new ChangeClanJoinRatingResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.CHANGE_CLAN_JOIN_RATING_RESPONSE;
      }
   }
}

