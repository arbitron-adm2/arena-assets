package ru.pragmatix.wormix.serialization.clans.request.edit
{
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%j§.*;
   import §2#8§.§6"a§;
   import §2#x§.§0"`§;
   import §6_§.§&$6§;
   import §7!B§.§&"T§;
   import §<%E§.§,$2§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §]$v§.*;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class CloseExitClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function CloseExitClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:CloseExitClanRequest = CloseExitClanRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeBoolean(_loc2_.closed);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.CHANGE_CLAN_CLOSE_EXIT_REQUEST;
      }
   }
}

