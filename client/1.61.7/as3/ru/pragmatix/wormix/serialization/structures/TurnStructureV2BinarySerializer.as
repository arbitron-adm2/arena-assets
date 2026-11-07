package ru.pragmatix.wormix.serialization.structures
{
   import § &5§.§=#P§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §&"c§.§5$n§;
   import §+$2§.§;#T§;
   import §,"v§.§@#&§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §7$t§.§^$E§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.messages.structures.UnitHpV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class TurnStructureV2BinarySerializer implements §@#&§
   {
      
      public function TurnStructureV2BinarySerializer()
      {
         super();
      }
      
      private static function §`%8§(param1:IDataOutput, param2:Class, param3:Array) : void
      {
         var _loc6_:ByteArray = null;
         var _loc4_:uint = param3 ? param3.length : 0;
         param1.writeShort(_loc4_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = new ByteArray();
            param1.writeShort(0);
            §<!h§.§@%$§(param2).serializeStructure(param3[_loc5_],_loc6_,null);
            param1.writeBytes(_loc6_);
            _loc5_++;
         }
      }
      
      private static function §2#&§(param1:IDataInput, param2:Class) : Array
      {
         var _loc3_:uint = param1.readUnsignedShort();
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            param1.readShort();
            _loc4_[_loc5_] = §<!h§.§@%$§(param2).deserializeStructure(param1,null);
            _loc5_++;
         }
         return _loc4_;
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:TurnStructureV2 = TurnStructureV2(param1);
         param2.writeShort(_loc4_.turnNum);
         param2.writeBoolean(_loc4_.isPlayerTurn);
         param2.writeInt(_loc4_.endTime);
         param2.writeInt(_loc4_.damageToPlayer);
         param2.writeInt(_loc4_.damageToBoss);
         param2.writeInt(_loc4_.landDestroyed);
         §`%8§(param2,WeaponStructure,_loc4_.items);
         §`%8§(param2,UnitBirthV2,_loc4_.births);
         §`%8§(param2,UnitDeathV2,_loc4_.deaths);
         §`%8§(param2,UnitHpV2,_loc4_.unitsHp);
         §`%8§(param2,MechanicEventV2,_loc4_.mechanics);
         param2.writeInt(_loc4_.floodDepth);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:TurnStructureV2 = new TurnStructureV2();
         _loc3_.turnNum = param1.readShort();
         _loc3_.isPlayerTurn = param1.readBoolean();
         _loc3_.endTime = param1.readInt();
         _loc3_.damageToPlayer = param1.readInt();
         _loc3_.damageToBoss = param1.readInt();
         _loc3_.landDestroyed = param1.readInt();
         _loc3_.items = §2#&§(param1,WeaponStructure);
         _loc3_.births = §2#&§(param1,UnitBirthV2);
         _loc3_.deaths = §2#&§(param1,UnitDeathV2);
         _loc3_.unitsHp = §2#&§(param1,UnitHpV2);
         _loc3_.mechanics = §2#&§(param1,MechanicEventV2);
         _loc3_.floodDepth = param1.readInt();
         return _loc3_;
      }
   }
}

