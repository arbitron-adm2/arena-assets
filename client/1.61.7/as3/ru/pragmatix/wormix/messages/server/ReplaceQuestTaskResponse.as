package ru.pragmatix.wormix.messages.server
{
   import § !8§.§`!d§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §-@§.*;
   import §2!-§.§'5§;
   import §2!-§.NewUnitEvent;
   import §2#i§.§9##§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §?#g§.Race;
   import §?%J§.*;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §]^§.§4&+§;
   import §^#[§.§?"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class ReplaceQuestTaskResponse
   {
      
      public var error:int;
      
      public var newTaskId:int;
      
      public var taskValues:String;
      
      public var replaceMoneyPrice:int;
      
      public function ReplaceQuestTaskResponse()
      {
         super();
      }
      
      public function toString() : String
      {
         return "ReplaceQuestTaskResponse { error=" + this.error + ", newTaskId=" + this.newTaskId + ", taskValues=" + this.taskValues + ", replaceMoneyPrice=" + this.replaceMoneyPrice + " }";
      }
   }
}

