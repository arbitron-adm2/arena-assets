package ru.pragmatix.wormix.serialization.clans.request
{
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §3#T§.*;
   import §7!B§.§6#I§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.PromoteRankInClanRequest;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class PromoteRankInClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function PromoteRankInClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:PromoteRankInClanRequest = PromoteRankInClanRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeShort(_loc2_.socialId);
         _loc3_.writeInt(_loc2_.profileId);
         _loc3_.writeShort(_loc2_.targetRank);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.PROMOTE_IN_RANK_REQUEST;
      }
   }
}

