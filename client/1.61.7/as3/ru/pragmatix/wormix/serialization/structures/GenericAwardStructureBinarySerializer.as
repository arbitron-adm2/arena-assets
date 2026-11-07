package ru.pragmatix.wormix.serialization.structures
{
   import § !P§.*;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §3#T§.§;#Q§;
   import §4f§.§-&§;
   import §?$L§.§&$9§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GenericAwardStructureBinarySerializer implements §@#&§
   {
      
      public function GenericAwardStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:GenericAwardStructure = new GenericAwardStructure();
         _loc3_.awardKind = param1.readShort();
         _loc3_.count = param1.readInt();
         _loc3_.itemId = param1.readInt();
         return _loc3_;
      }
   }
}

