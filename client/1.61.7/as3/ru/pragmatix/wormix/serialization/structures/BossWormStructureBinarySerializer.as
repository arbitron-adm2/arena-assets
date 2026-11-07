package ru.pragmatix.wormix.serialization.structures
{
   import §#k§.§9$v§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §2"L§.*;
   import §2#x§.§]s§;
   import §2o§.§]#;§;
   import §<$q§.§?!d§;
   import §="z§.§9%1§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §^!]§.MineSetUpEvent;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.structures.BossWormStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class BossWormStructureBinarySerializer implements §@#&§
   {
      
      public function BossWormStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:BossWormStructure = BossWormStructure(param1);
         param2.writeBoolean(_loc4_.isPlayerTeam);
         param2.writeInt(_loc4_.hp);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:BossWormStructure = new BossWormStructure();
         _loc3_.isPlayerTeam = param1.readBoolean();
         _loc3_.hp = param1.readInt();
         return _loc3_;
      }
   }
}

