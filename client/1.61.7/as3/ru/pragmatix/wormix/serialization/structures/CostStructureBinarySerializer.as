package ru.pragmatix.wormix.serialization.structures
{
   import §&#h§.§-"F§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2"L§.§,'§;
   import §=#g§.*;
   import §@!N§.§""L§;
   import §@!i§.§<!9§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§`§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.messages.server.SyncInvestedAwardPointsResult;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class CostStructureBinarySerializer implements §@#&§
   {
      
      public function CostStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:CostStructure = CostStructure(param1);
         param2.writeShort(_loc4_.currencyType);
         param2.writeInt(_loc4_.itemId);
         param2.writeInt(_loc4_.value);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:CostStructure = new CostStructure();
         _loc3_.currencyType = param1.readShort();
         _loc3_.itemId = param1.readInt();
         _loc3_.value = param1.readInt();
         return _loc3_;
      }
   }
}

