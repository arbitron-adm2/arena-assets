package ru.pragmatix.wormix.serialization.server
{
   import § !P§.*;
   import §"$+§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §2!-§.DamageEvent;
   import §7!B§.§6#I§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §="z§.§9%1§;
   import §`"p§.*;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   
   public class AwardGrantedBinarySerializer implements §&"a§
   {
      
      public function AwardGrantedBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10094;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc5_:§@#&§ = null;
         var _loc6_:int = 0;
         var _loc3_:AwardGranted = new AwardGranted();
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
         _loc3_.awardType = param1.readShort();
         _loc3_.attach = param1.readUTF();
         return _loc3_;
      }
   }
}

