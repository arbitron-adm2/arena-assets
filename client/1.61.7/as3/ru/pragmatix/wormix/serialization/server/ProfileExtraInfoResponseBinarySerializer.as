package ru.pragmatix.wormix.serialization.server
{
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import flash.errors.IllegalOperationError;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ProfileExtraInfoResponse;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.UnluckyCraftCount;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ProfileExtraInfoResponseBinarySerializer implements §&"a§
   {
      
      public function ProfileExtraInfoResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10141;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ProfileExtraInfoResponse = new ProfileExtraInfoResponse();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.profileId = _loc4_.readInt();
         _loc3_.races = _loc4_.readShort();
         §!!"§.§#$>§(_loc4_,_loc3_.skins);
         §!!"§.§!!J§(_loc4_,_loc3_.reagents);
         var _loc5_:§@#&§ = §<!h§.§@%$§(UnluckyCraftCount);
         var _loc6_:int = 0;
         var _loc7_:int = int(_loc4_.readUnsignedShort());
         while(_loc6_ < _loc7_)
         {
            _loc4_.readShort();
            _loc3_.unluckyCraftCounts[_loc6_] = _loc5_.deserializeStructure(_loc4_,null) as UnluckyCraftCount;
            _loc6_++;
         }
         var _loc8_:int = int(_loc4_.readUnsignedShort());
         _loc5_ = §<!h§.§@%$§(BackpackConfStructure);
         _loc6_ = 0;
         while(_loc6_ < _loc8_)
         {
            _loc4_.readShort();
            _loc3_.backpackConfs[_loc6_] = BackpackConfStructure(_loc5_.deserializeStructure(_loc4_,null));
            _loc6_++;
         }
         _loc3_.activeBackpackConf = _loc4_.readByte();
         return _loc3_;
      }
   }
}

