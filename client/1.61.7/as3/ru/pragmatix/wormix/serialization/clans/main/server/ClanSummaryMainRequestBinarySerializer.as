package ru.pragmatix.wormix.serialization.clans.main.server
{
   import § "d§.§,!c§;
   import § &5§.§=#P§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §1#p§.§"Z§;
   import §3#a§.§-!`§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §;$%§.§0%%§;
   import §?>§.§0!7§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import config.achievements.§!$L§;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.weapons.§%%a§;
   
   public class ClanSummaryMainRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function ClanSummaryMainRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:ClanSummaryMainRequest = ClanSummaryMainRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(_loc2_.clanId);
         _loc3_.writeInt(_loc2_.scope);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return 95;
      }
   }
}

