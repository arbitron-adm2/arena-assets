package ru.pragmatix.wormix.serialization.server
{
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §7$1§.§;$n§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.WhoPumpedReactionResult;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   
   public class WhoPumpedReactionResultBinarySerializer implements §&"a§
   {
      
      public function WhoPumpedReactionResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10034;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:WhoPumpedReactionResult = WhoPumpedReactionResult(param1);
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:§^!V§ = new §^!V§();
         _loc6_.§@&I§(this.getCommandId());
         var _loc7_:uint = 0;
         var _loc8_:uint = _loc3_.todayPumped.length;
         _loc4_.writeShort(_loc8_);
         _loc7_ = 0;
         while(_loc7_ < _loc8_)
         {
            _loc5_ = new ByteArray();
            §<!h§.§@%$§(ProfileDoubleKeyStructure).serializeStructure(_loc3_.todayPumped[_loc7_],_loc5_,null);
            _loc4_.writeShort(_loc5_.length);
            _loc4_.writeBytes(_loc5_);
            _loc7_++;
         }
         _loc6_.§<!§(_loc4_.length);
         _loc6_.§2$t§(param2);
         param2.writeBytes(_loc4_);
         var _loc9_:§^!V§ = new §^!V§();
         _loc9_.§@&I§(this.getCommandId());
         _loc7_ = 0;
         _loc8_ = _loc3_.yesterdayPumped.length;
         _loc4_.writeShort(_loc8_);
         _loc7_ = 0;
         while(_loc7_ < _loc8_)
         {
            _loc5_ = new ByteArray();
            §<!h§.§@%$§(ProfileDoubleKeyStructure).serializeStructure(_loc3_.yesterdayPumped[_loc7_],_loc5_,null);
            _loc4_.writeShort(_loc5_.length);
            _loc4_.writeBytes(_loc5_);
            _loc7_++;
         }
         _loc9_.§<!§(_loc4_.length);
         _loc9_.§2$t§(param2);
         param2.writeBytes(_loc4_);
         var _loc10_:§^!V§ = new §^!V§();
         _loc10_.§@&I§(this.getCommandId());
         _loc7_ = 0;
         _loc8_ = _loc3_.twoDaysAgoPumped.length;
         _loc4_.writeShort(_loc8_);
         _loc7_ = 0;
         while(_loc7_ < _loc8_)
         {
            _loc5_ = new ByteArray();
            §<!h§.§@%$§(ProfileDoubleKeyStructure).serializeStructure(_loc3_.twoDaysAgoPumped[_loc7_],_loc5_,null);
            _loc4_.writeShort(_loc5_.length);
            _loc4_.writeBytes(_loc5_);
            _loc7_++;
         }
         _loc10_.§<!§(_loc4_.length);
         _loc10_.§2$t§(param2);
         param2.writeBytes(_loc4_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:§&`§ = new §&`§(WhoPumpedReactionResultBinarySerializer);
         var _loc4_:WhoPumpedReactionResult = new WhoPumpedReactionResult();
         var _loc5_:uint = 0;
         _loc4_.todayPumped = new Array();
         var _loc6_:uint = uint(param1.readShort());
         _loc3_.info("todayPumped length=" + _loc6_,"CMD");
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            param1.readShort();
            _loc4_.todayPumped[_loc5_] = §<!h§.§@%$§(ProfileDoubleKeyStructure).deserializeStructure(param1,null);
            _loc3_.info("self.todayPumped[" + _loc5_ + "]=" + _loc4_.todayPumped[_loc5_].longId + " / " + _loc4_.todayPumped[_loc5_].stringId,"CMD");
            _loc5_++;
         }
         _loc5_ = 0;
         _loc4_.yesterdayPumped = new Array();
         _loc6_ = uint(param1.readShort());
         _loc3_.info("yesterdayPumped length=" + _loc6_,"CMD");
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            param1.readShort();
            _loc4_.yesterdayPumped[_loc5_] = §<!h§.§@%$§(ProfileDoubleKeyStructure).deserializeStructure(param1,null);
            _loc3_.info("self.yesterdayPumped[" + _loc5_ + "]=" + _loc4_.yesterdayPumped[_loc5_].longId + " / " + _loc4_.yesterdayPumped[_loc5_].stringId,"CMD");
            _loc5_++;
         }
         _loc5_ = 0;
         _loc4_.twoDaysAgoPumped = new Array();
         _loc6_ = uint(param1.readShort());
         _loc3_.info("twoDaysAgoPumped length=" + _loc6_,"CMD");
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            param1.readShort();
            _loc4_.twoDaysAgoPumped[_loc5_] = §<!h§.§@%$§(ProfileDoubleKeyStructure).deserializeStructure(param1,null);
            _loc3_.info("self.twoDaysAgoPumped[" + _loc5_ + "]=" + _loc4_.twoDaysAgoPumped[_loc5_].longId + " / " + _loc4_.twoDaysAgoPumped[_loc5_].stringId,"CMD");
            _loc5_++;
         }
         return _loc4_;
      }
   }
}

