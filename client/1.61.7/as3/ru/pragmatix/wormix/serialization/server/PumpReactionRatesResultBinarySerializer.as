package ru.pragmatix.wormix.serialization.server
{
   import §%"1§.§@%;§;
   import §&#h§.§-"F§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.PumpReactionRatesResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.PumpReactionRateStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class PumpReactionRatesResultBinarySerializer implements §&"a§
   {
      
      public function PumpReactionRatesResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10033;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc8_:ByteArray = null;
         var _loc3_:PumpReactionRatesResult = PumpReactionRatesResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:uint = 0;
         var _loc7_:uint = _loc3_.pumpedFriends.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc8_ = new ByteArray();
            §<!h§.§@%$§(PumpReactionRateStructure).serializeStructure(_loc3_.pumpedFriends[_loc6_],_loc8_,null);
            _loc5_.writeShort(_loc8_.length);
            _loc5_.writeBytes(_loc8_);
            _loc6_++;
         }
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:PumpReactionRatesResult = new PumpReactionRatesResult();
         var _loc4_:uint = 0;
         var _loc5_:uint = param1.readUnsignedShort();
         _loc3_.pumpedFriends = [];
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            param1.readShort();
            _loc3_.pumpedFriends[_loc4_] = §<!h§.§@%$§(PumpReactionRateStructure).deserializeStructure(param1,null);
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

