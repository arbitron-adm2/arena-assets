package ru.pragmatix.wormix.serialization.structures
{
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%# §.*;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §2#s§.*;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§!7§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.AwardBackpackItemStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   
   public class AwardBackpackItemStructureBinarySerializer implements §@#&§
   {
      
      public function AwardBackpackItemStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = param1 as ByteArray;
         var _loc4_:AwardBackpackItemStructure = new AwardBackpackItemStructure();
         _loc4_.weaponId = _loc3_.readInt();
         _loc4_.count = _loc3_.readInt();
         _loc4_.stuffId = _loc3_.readInt();
         _loc4_.expireHours = _loc3_.readInt();
         return _loc4_;
      }
   }
}

