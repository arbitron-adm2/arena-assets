package ru.pragmatix.wormix.serialization.client
{
   import § !8§.§`!d§;
   import § "d§.§,!c§;
   import §"%H§.§6$3§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §&#E§.§;"v§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2!x§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1#0§.§;!L§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2!-§.AttackDodgedEvent;
   import §3#a§.§-!`§;
   import §4#2§.§,%g§;
   import §4u§.§9!]§;
   import §5!9§.§6$,§;
   import §65§.§`"C§;
   import §7"Q§.§0$L§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?>§.§0!7§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[!`§.*;
   import §^!]§.MineSetUpEvent;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.external.ExternalInterface;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.ColliseumInterruptSeries;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.utils.§#&>§;
   
   public class ColliseumInterruptSeriesBinarySerializer implements §&"a§
   {
      
      public function ColliseumInterruptSeriesBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 115;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ColliseumInterruptSeries = ColliseumInterruptSeries(param1);
         var _temp_1:* = new §^!V§();
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return new ColliseumInterruptSeries();
      }
   }
}

