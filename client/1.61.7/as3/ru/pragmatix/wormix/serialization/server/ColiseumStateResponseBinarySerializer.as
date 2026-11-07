package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.Cookie;
   import §8$V§.*;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   
   public class ColiseumStateResponseBinarySerializer implements §&"a§
   {
      
      public function ColiseumStateResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10110;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ColiseumStateResponse = new ColiseumStateResponse();
         _loc3_.num = param1.readInt();
         _loc3_.isOpen = param1.readBoolean();
         _loc3_.winCount = param1.readInt();
         _loc3_.defeatCount = param1.readInt();
         _loc3_.drawCount = param1.readInt();
         _loc3_.error = param1.readInt();
         _loc3_.teamStructures = [];
         _loc3_.teamCandidatesStructures = [];
         var _loc4_:int = 0;
         var _loc5_:int = int(param1.readUnsignedShort());
         while(_loc4_ < _loc5_)
         {
            param1.readShort();
            _loc3_.teamCandidatesStructures[_loc4_] = GladiatorUnitStructure(§<!h§.§@%$§(GladiatorUnitStructure).deserializeStructure(param1,null));
            _loc4_++;
         }
         _loc4_ = 0;
         _loc5_ = int(param1.readUnsignedShort());
         while(_loc4_ < _loc5_)
         {
            param1.readShort();
            _loc3_.teamStructures[_loc4_] = GladiatorUnitStructure(§<!h§.§@%$§(GladiatorUnitStructure).deserializeStructure(param1,null));
            _loc4_++;
         }
         _loc3_.openFrom = param1.readInt();
         _loc3_.openTo = param1.readInt();
         _loc3_.regenerateCount = param1.readInt();
         _loc3_.profileId = param1.readInt();
         return _loc3_;
      }
   }
}

