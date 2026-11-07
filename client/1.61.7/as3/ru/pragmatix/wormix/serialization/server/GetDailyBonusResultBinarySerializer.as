package ru.pragmatix.wormix.serialization.server
{
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class GetDailyBonusResultBinarySerializer implements §&"a§
   {
      
      public function GetDailyBonusResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10107;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:GetDailyBonusResult = new GetDailyBonusResult();
         _loc3_.result = param1.readShort();
         var _loc4_:uint = param1.readUnsignedShort();
         _loc3_.awards = [];
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.awards[_loc5_] = §<!h§.§@%$§(GenericAwardStructure).deserializeStructure(param1,null);
            _loc5_++;
         }
         return _loc3_;
      }
   }
}

