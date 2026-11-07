package ru.pragmatix.wormix.serialization.clans.response
{
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%L§.§%%w§;
   import §&#h§.§!#x§;
   import §&&6§.§8"O§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§2!x§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §-&5§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1&-§.§-#B§;
   import §4%_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§<$Z§;
   import §=1§.*;
   import §?#g§.§-!k§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§8%6§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.LowerRankInClanResponse;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class LowerRankInClanResponseBinarySerializer implements §&"a§
   {
      
      public function LowerRankInClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:LowerRankInClanResponse = new LowerRankInClanResponse();
         _loc3_.serviceResult = param1.readShort();
         _loc3_.socialId = param1.readShort();
         _loc3_.profileId = param1.readInt();
         _loc3_.rank = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.LOWER_IN_RANK_RESPONSE;
      }
   }
}

