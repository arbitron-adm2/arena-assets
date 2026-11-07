package ru.pragmatix.wormix.serialization.structures
{
   import §"%H§.§'%u§;
   import §#%!§.§%&F§;
   import §+$=§.§6#A§;
   import §,"v§.§@#&§;
   import §0!§.§6#z§;
   import §0%[§.§9&#§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §4#2§.*;
   import §7$t§.§;#_§;
   import §9%W§.§`"y§;
   import §<!W§.§;#A§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.UnitHpV2;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class UnitHpV2BinarySerializer implements §@#&§
   {
      
      public function UnitHpV2BinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:UnitHpV2 = UnitHpV2(param1);
         param2.writeShort(_loc4_.unitId);
         param2.writeInt(_loc4_.hp);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:UnitHpV2 = new UnitHpV2();
         _loc3_.unitId = param1.readShort();
         _loc3_.hp = param1.readInt();
         return _loc3_;
      }
   }
}

