package ru.pragmatix.wormix.serialization.client
{
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§]&§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §>%S§.§^!V§;
   import §?>§.§0!7§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.client.RegenerateCandidates;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class RegenerateCandidatesBinarySerializer implements §&"a§
   {
      
      public function RegenerateCandidatesBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 113;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:RegenerateCandidates = RegenerateCandidates(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeBoolean(_loc3_.allTeam);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}

