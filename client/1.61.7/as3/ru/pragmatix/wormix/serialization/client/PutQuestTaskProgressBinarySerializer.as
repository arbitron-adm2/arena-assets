package ru.pragmatix.wormix.serialization.client
{
   import § "%§.§0$[§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%E§.§5%C§;
   import §&"c§.§5$n§;
   import §&$Y§.§&!R§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.Team;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §;#O§.§+%7§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[!`§.VoidZone;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import com.inreflected.ui.touchScroll.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class PutQuestTaskProgressBinarySerializer implements §&"a§
   {
      
      public function PutQuestTaskProgressBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return ServerCommands.PUT_QUEST_TASK_PROGRESS;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc6_:int = 0;
         var _loc3_:PutQuestTaskProgress = PutQuestTaskProgress(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         var _loc7_:uint = _loc3_.taskIds.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeInt(_loc3_.taskIds[_loc6_]);
            _loc6_++;
         }
         _loc7_ = _loc3_.values.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeInt(_loc3_.values[_loc6_]);
            _loc6_++;
         }
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

