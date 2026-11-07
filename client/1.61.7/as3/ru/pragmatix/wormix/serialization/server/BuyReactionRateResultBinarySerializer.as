package ru.pragmatix.wormix.serialization.server
{
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.Cookie;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.ResetParametersResult;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class BuyReactionRateResultBinarySerializer implements §&"a§
   {
      
      public function BuyReactionRateResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10037;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuyReactionRateResult = BuyReactionRateResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.result);
         _loc5_.writeInt(_loc3_.reactionRateCount);
         _loc5_.writeInt(_loc3_.reactionRateLevel);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:BuyReactionRateResult = new BuyReactionRateResult();
         _loc3_.result = param1.readShort();
         _loc3_.reactionRateCount = param1.readInt();
         _loc3_.reactionRateLevel = param1.readInt();
         return _loc3_;
      }
   }
}

