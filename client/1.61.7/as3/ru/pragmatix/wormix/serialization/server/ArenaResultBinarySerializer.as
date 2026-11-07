package ru.pragmatix.wormix.serialization.server
{
   import §"#x§.§'"$§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,!f§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §7$t§.§=?§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §@!i§.§<!9§;
   import §^!]§.WeaponShootEvent;
   import §`%&§.§5$1§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.server.ArenaResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class ArenaResultBinarySerializer implements §&"a§
   {
      
      public function ArenaResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10004;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:ArenaResult = new ArenaResult();
         _loc4_.battlesCount = _loc3_.readInt();
         _loc4_.curSoloMissionId = _loc3_.readShort();
         _loc4_.curCooperativeMissionId = _loc3_.readShort();
         _loc4_.bossAvailable = _loc3_.readBoolean();
         _loc4_.superBossAvailable = _loc3_.readBoolean();
         _loc4_.heroicStructures = new Vector.<HeroicMissionStructure>(0);
         var _loc5_:int = 0;
         var _loc6_:int = int(_loc3_.readUnsignedShort());
         while(_loc5_ < _loc6_)
         {
            _loc3_.readShort();
            _loc4_.heroicStructures[_loc5_] = HeroicMissionStructure(§<!h§.§@%$§(HeroicMissionStructure).deserializeStructure(_loc3_,null));
            _loc5_++;
         }
         _loc4_.delay = _loc3_.readUnsignedInt();
         _loc4_.restoreBattlesDelay = _loc3_.readUnsignedInt();
         _loc4_.restrictedWagers = new Vector.<int>(0);
         §!!"§.§[L§(_loc3_,_loc4_.restrictedWagers);
         _loc4_.restrictedWagersLeftTime = new Vector.<uint>(0);
         §!!"§.§ "X§(_loc3_,_loc4_.restrictedWagersLeftTime);
         _loc4_.heroicMissionDailyProgress = new Vector.<HeroicMissionDailyProgressTO>(0);
         _loc5_ = 0;
         _loc6_ = int(_loc3_.readUnsignedShort());
         while(_loc5_ < _loc6_)
         {
            _loc3_.readShort();
            _loc4_.heroicMissionDailyProgress[_loc5_] = HeroicMissionDailyProgressTO(§<!h§.§@%$§(HeroicMissionDailyProgressTO).deserializeStructure(_loc3_,null));
            _loc5_++;
         }
         _loc4_.defeatContributionMoney = _loc3_.readInt();
         var _loc7_:String = _loc3_.readUTF();
         _loc4_.extraBattlesTimetable = JSON.parse(_loc7_);
         _loc4_.wagerWinAwardToken = _loc3_.readInt();
         _loc4_.bossWinAwardToken = _loc3_.readInt();
         _loc3_.readShort();
         _loc4_.bossAwardsStructure = BossBattleAwardsStructure(§<!h§.§@%$§(BossBattleAwardsStructure).deserializeStructure(_loc3_,null));
         _loc4_.zombieRiseCoolDownTime = _loc3_.readInt();
         return _loc4_;
      }
   }
}

