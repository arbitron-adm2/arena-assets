package ru.pragmatix.wormix.serialization.clans.response
{
   import § &5§.§%$O§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§0%9§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §+%S§.§@#s§;
   import §+5§.§^$[§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §3"@§.§##L§;
   import §7!B§.§&"T§;
   import §7$t§.§2"y§;
   import §9%W§.§&!P§;
   import §=&!§.§]$d§;
   import §?!E§.*;
   import §?$L§.§ "N§;
   import §@!N§.§3!3§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§%&=§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.ExpelFromClanResponse;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class ExpelFromClanResponseBinarySerializer implements §&"a§
   {
      
      public function ExpelFromClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ExpelFromClanResponse = new ExpelFromClanResponse();
         _loc3_.serviceResult = param1.readShort();
         _loc3_.socialId = param1.readShort();
         _loc3_.profileId = param1.readInt();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.EXPEL_FROM_CLAN_RESPONSE;
      }
   }
}

