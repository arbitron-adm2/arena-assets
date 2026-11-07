package ru.pragmatix.wormix.serialization.clans.request
{
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §+$=§.§;!d§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%E§.§4T§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §?"[§.*;
   import §?$7§.§+#N§;
   import §@<§.§+%]§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.geom.Point;
   import flash.media.Sound;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ClanSummaryRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function ClanSummaryRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:ClanSummaryRequest = ClanSummaryRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(_loc2_.clanId);
         _loc3_.writeInt(_loc2_.scope);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.CLAN_SUMMARY_REQUEST;
      }
   }
}

