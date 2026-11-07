package ru.pragmatix.wormix.serialization.client
{
   import § !P§.§<#q§;
   import §!$d§.§<$c§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §&#E§.§;"v§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §65§.§`"C§;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$K§.§3#j§;
   import §@!N§.§2"e§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[!O§.§%@§;
   import §[!`§.*;
   import config.achievements.§"!&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class GetQuestRewardBinarySerializer implements §&"a§
   {
      
      public function GetQuestRewardBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 118;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetQuestReward = GetQuestReward(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.questId);
         _loc5_.writeShort(_loc3_.rewardId);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return new GetQuestReward();
      }
   }
}

