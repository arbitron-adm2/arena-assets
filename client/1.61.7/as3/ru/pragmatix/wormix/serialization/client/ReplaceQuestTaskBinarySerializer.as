package ru.pragmatix.wormix.serialization.client
{
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§@x§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §4%_§.§6#W§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<!W§.*;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?"j§.§]!<§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%§.Boar;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.ReplaceQuestTask;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ReplaceQuestTaskBinarySerializer implements §&"a§
   {
      
      public function ReplaceQuestTaskBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return ServerCommands.REPLACE_QUEST_TASK;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ReplaceQuestTask = ReplaceQuestTask(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.taskId);
         _loc5_.writeInt(_loc3_.moneyType);
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

