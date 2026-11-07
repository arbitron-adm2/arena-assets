package ru.pragmatix.wormix.serialization.clans.response
{
   import § #m§.§2#P§;
   import §!!!§.§3A§;
   import §!L§.§+"'§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§>!I§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §3#T§.§]!6§;
   import §4$b§.§2m§;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §8$V§.§`"c§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§-O§;
   import §=&6§.*;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class PromoteRankInClanResponseBinarySerializer implements §&"a§
   {
      
      public function PromoteRankInClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:PromoteRankInClanResponse = new PromoteRankInClanResponse();
         _loc3_.serviceResult = param1.readShort();
         _loc3_.socialId = param1.readShort();
         _loc3_.profileId = param1.readInt();
         _loc3_.rank = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.PROMOTE_IN_RANK_RESPONSE;
      }
   }
}

