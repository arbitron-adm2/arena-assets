package ru.pragmatix.wormix.serialization.clans.response
{
   import §!K§.§"%$§;
   import §%"1§.§@%;§;
   import §%"Z§.§9"z§;
   import §'$Z§.§2#f§;
   import §+%S§.§ !!§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §3"_§.*;
   import §4#`§.§+!l§;
   import §4$b§.§2m§;
   import §7$t§.§^$E§;
   import §8$Z§.§9!&§;
   import §;!Z§.§5"d§;
   import §<%E§.§'$g§;
   import §<V§.§!&-§;
   import §=!p§.§7#E§;
   import §?#g§.Race;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§'#E§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import config.achievements.BossAchieves;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.PostToClanChatResponse;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class PostToClanChatResponseBinarySerializer implements §&"a§
   {
      
      public function PostToClanChatResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:PostToClanChatResponse = new PostToClanChatResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.POST_TO_CHAT_RESPONSE;
      }
   }
}

