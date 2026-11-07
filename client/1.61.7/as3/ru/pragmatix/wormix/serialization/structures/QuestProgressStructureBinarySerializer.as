package ru.pragmatix.wormix.serialization.structures
{
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,"v§.§@#&§;
   import §-%B§.*;
   import §0!§.*;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class QuestProgressStructureBinarySerializer implements §@#&§
   {
      
      public function QuestProgressStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:QuestProgressStructure = new QuestProgressStructure();
         _loc3_.questId = param1.readInt();
         _loc3_.canStartNew = param1.readBoolean();
         _loc3_.progress = param1.readUTF();
         _loc3_.rewarded = param1.readBoolean();
         return _loc3_;
      }
   }
}

