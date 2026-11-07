package ru.pragmatix.wormix.serialization.server
{
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §4&F§.*;
   import §7!B§.§&"T§;
   import §<%k§.*;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class StartTurnResponseBinarySerializer implements §&"a§
   {
      
      public function StartTurnResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10143;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc5_:§@#&§ = null;
         var _loc6_:int = 0;
         var _loc3_:StartTurnResponse = new StartTurnResponse();
         _loc3_.result = param1.readShort();
         _loc3_.battleId = param1.readUnsignedInt();
         _loc3_.turnNum = param1.readShort();
         _loc3_.lastTurnNum = param1.readShort();
         _loc3_.awards = [];
         var _loc4_:int = int(param1.readUnsignedShort());
         if(_loc4_ > 0)
         {
            _loc5_ = §<!h§.§@%$§(GenericAwardStructure);
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               param1.readShort();
               _loc3_.awards[_loc6_] = _loc5_.deserializeStructure(param1,null) as GenericAwardStructure;
               _loc6_++;
            }
         }
         return _loc3_;
      }
   }
}

