package ru.pragmatix.wormix.serialization.structures
{
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §'"N§.*;
   import §,"v§.§@#&§;
   import §2"L§.§^$y§;
   import §7$t§.§^%%§;
   import §=#g§.§%!x§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class BackpackConfStructureBinarySerializer implements §@#&§
   {
      
      public function BackpackConfStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:BackpackConfStructure = BackpackConfStructure(param1);
         var _loc5_:ByteArray = param2 as ByteArray;
         §!!"§.§[$k§(_loc5_,_loc4_.config);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = param1 as ByteArray;
         var _loc4_:BackpackConfStructure = new BackpackConfStructure([]);
         §!!"§.§5t§(_loc3_,_loc4_.config);
         return _loc4_;
      }
   }
}

