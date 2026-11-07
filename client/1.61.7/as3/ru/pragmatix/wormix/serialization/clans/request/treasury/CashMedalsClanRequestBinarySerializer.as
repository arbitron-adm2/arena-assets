package ru.pragmatix.wormix.serialization.clans.request.treasury
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §-%B§.§"`§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4%_§.ZombieGrave;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.treasury.CashMedalsClanRequest;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class CashMedalsClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function CashMedalsClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:CashMedalsClanRequest = CashMedalsClanRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(_loc2_.medals);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.CASH_MEDALS_REQUEST;
      }
   }
}

