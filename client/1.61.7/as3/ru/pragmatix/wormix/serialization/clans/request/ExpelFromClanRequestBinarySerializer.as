package ru.pragmatix.wormix.serialization.clans.request
{
   import §#k§.§9$v§;
   import §&!m§.§-$6§;
   import §+%S§.§'%V§;
   import §4!K§.*;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §="z§.§1!c§;
   import §?$L§.§0"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import §`%&§.§@&,§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.ExpelFromClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ExpelFromClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function ExpelFromClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:ExpelFromClanRequest = ExpelFromClanRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeShort(_loc2_.socialId);
         _loc3_.writeInt(_loc2_.profileId);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.EXPEL_FROM_CLAN_REQUEST;
      }
   }
}

