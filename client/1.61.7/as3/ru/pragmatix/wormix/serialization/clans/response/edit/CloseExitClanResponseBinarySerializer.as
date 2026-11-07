package ru.pragmatix.wormix.serialization.clans.response.edit
{
   import §!K§.§"%$§;
   import §"$+§.§^$`§;
   import §#P§.§`o§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §4!K§.§4%E§;
   import §4!K§.§>#_§;
   import §4!K§.§^%A§;
   import §6"'§.§9$Z§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §]7§.§0'§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.edit.CloseExitClanResponse;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import vk.§,#n§;
   
   public class CloseExitClanResponseBinarySerializer implements §&"a§
   {
      
      public function CloseExitClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:CloseExitClanResponse = new CloseExitClanResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.CHANGE_CLAN_CLOSE_EXIT_RESPONSE;
      }
   }
}

