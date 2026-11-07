package ru.pragmatix.wormix.serialization.structures
{
   import §!L§.§+"'§;
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$&§.§&8§;
   import §+$&§.§+"g§;
   import §+$&§.§@#t§;
   import §+$=§.§6#A§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §8$Z§.§@!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   
   public class BackpackItemShortStructureBinarySerializer implements §@#&§
   {
      
      public function BackpackItemShortStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:BackpackItemShortStructure = BackpackItemShortStructure(param1);
         param2.writeShort(_loc4_.weaponId);
         param2.writeShort(_loc4_.count);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:int = param1.readShort();
         var _loc4_:int = param1.readShort();
         return new BackpackItemShortStructure(_loc3_,_loc4_);
      }
   }
}

