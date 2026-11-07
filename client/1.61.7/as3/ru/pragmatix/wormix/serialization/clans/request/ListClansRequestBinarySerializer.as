package ru.pragmatix.wormix.serialization.clans.request
{
   import §"$+§.§`&$§;
   import §%"Z§.§'$2§;
   import §'!Z§.§2!H§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §2!-§.WaterLevelChangedEvent;
   import §4'§.§`"q§;
   import §=;§.§>%>§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.ListClansRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class ListClansRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function ListClansRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:ListClansRequest = ListClansRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTF(_loc2_.searchPhrase);
         §!!"§.§]!o§(_loc3_,_loc2_.reviewStates);
         _loc3_.writeInt(_loc2_.offset);
         _loc3_.writeInt(_loc2_.limit);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.LIST_CLANS_REQUEST;
      }
   }
}

