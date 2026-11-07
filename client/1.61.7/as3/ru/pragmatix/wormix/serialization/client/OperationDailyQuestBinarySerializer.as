package ru.pragmatix.wormix.serialization.client
{
   import §!L§.§+"'§;
   import §"$+§.§ G§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §&&6§.*;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §+%S§.§?3§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#H§.§!%C§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7$t§.§^%%§;
   import §8$Z§.*;
   import §<!W§.*;
   import §<%k§.§`!v§;
   import §>!_§.§'!&§;
   import §>%S§.§^!V§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import config.§;"I§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.OperationDailyQuest;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class OperationDailyQuestBinarySerializer implements §&"a§
   {
      
      public function OperationDailyQuestBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return ServerCommands.OPERATION_DAILY_QUEST;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:OperationDailyQuest = OperationDailyQuest(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(_loc3_.operationId > 0 ? this.getCommandId() : ServerCommands.TEST_OPERATION_DAILY_QUEST);
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.operationId);
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

