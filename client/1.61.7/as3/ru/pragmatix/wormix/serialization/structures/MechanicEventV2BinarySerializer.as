package ru.pragmatix.wormix.serialization.structures
{
   import § !8§.§`!d§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §,"v§.§@#&§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§<$Z§;
   import §@<§.§+%]§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.system.LoaderContext;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class MechanicEventV2BinarySerializer implements §@#&§
   {
      
      public function MechanicEventV2BinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:MechanicEventV2 = MechanicEventV2(param1);
         param2.writeShort(_loc4_.unitId);
         param2.writeByte(_loc4_.type);
         param2.writeInt(_loc4_.amount);
         param2.writeShort(_loc4_.sourceItemId);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:MechanicEventV2 = new MechanicEventV2();
         _loc3_.unitId = param1.readShort();
         _loc3_.type = param1.readByte();
         _loc3_.amount = param1.readInt();
         _loc3_.sourceItemId = param1.readShort();
         return _loc3_;
      }
   }
}

