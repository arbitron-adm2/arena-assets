package ru.pragmatix.wormix.serialization.clans.response
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §!%6§.§56§;
   import §"#x§.§'"$§;
   import §#!5§.§>S§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§;!4§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §2!-§.NewUnitEvent;
   import §2"L§.§^$y§;
   import §2#H§.§0"u§;
   import §5!,§.§]"G§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8#o§.§1@§;
   import §8$V§.§]!i§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§&#Z§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@&H§.§`%`§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.response.GetJoinClansMainResponse;
   import ru.pragmatix.wormix.messages.clans.response.InviteToClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§]V§;
   
   public class GetJoinClansMainResponseBinarySerializer implements §&"a§
   {
      
      public function GetJoinClansMainResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:GetJoinClansMainResponse = new GetJoinClansMainResponse();
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.clans.push(§<!h§.§@%$§(ClanTO).deserializeStructure(param1,null));
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return 1098;
      }
   }
}

