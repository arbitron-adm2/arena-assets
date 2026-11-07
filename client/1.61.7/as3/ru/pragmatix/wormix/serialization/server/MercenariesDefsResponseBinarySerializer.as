package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §2#i§.§+%z§;
   import §3#T§.§1"R§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<%k§.§`!v§;
   import §@#K§.§3&2§;
   import §^#[§.§&$2§;
   import config.achievements.*;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.weapons.*;
   
   public class MercenariesDefsResponseBinarySerializer implements §&"a§
   {
      
      public function MercenariesDefsResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10124;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc4_:ByteArray = null;
         var _loc3_:MercenariesDefsResponse = new MercenariesDefsResponse();
         _loc4_ = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         var _loc5_:int = int(_loc4_.readUnsignedShort());
         _loc3_.mercenariesDefs = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc4_.readShort();
            _loc3_.mercenariesDefs[_loc6_] = §<!h§.§@%$§(MercenariesTeamMember).deserializeStructure(_loc4_,null);
            _loc6_++;
         }
         return _loc3_;
      }
   }
}

