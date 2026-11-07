package ru.pragmatix.wormix.serialization.structures
{
   import § "d§.§,!c§;
   import §#k§.§9$v§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §,"v§.§@#&§;
   import §-%B§.*;
   import §-@§.§3%9§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.*;
   import §3#a§.§-!`§;
   import §7"Q§.§0$L§;
   import §7$t§.*;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §=&!§.§ "^§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§?"&§;
   import §`#x§.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.utils.*;
   
   public class ReconnectToSimpleBattleResultStructureBinarySerializer implements §@#&§
   {
      
      public function ReconnectToSimpleBattleResultStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:ReconnectToSimpleBattleResultStructure = ReconnectToSimpleBattleResultStructure(param1);
         param2.writeInt(_loc4_.battleId);
         param2.writeInt(_loc4_.originalBattleId);
         param2.writeShort(_loc4_.missionId);
         param2.writeShort(_loc4_.lastTurnNum);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ReconnectToSimpleBattleResultStructure = new ReconnectToSimpleBattleResultStructure();
         _loc3_.battleId = param1.readInt();
         _loc3_.originalBattleId = param1.readInt();
         _loc3_.missionId = param1.readShort();
         _loc3_.lastTurnNum = param1.readShort();
         return _loc3_;
      }
   }
}

