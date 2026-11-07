package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §>%S§.§^!V§;
   import flash.events.IEventDispatcher;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   
   public class BuyBattleResultBinarySerializer implements §&"a§
   {
      
      public function BuyBattleResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10012;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuyBattleResult = BuyBattleResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.result);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:BuyBattleResult = new BuyBattleResult();
         _loc3_.result = param1.readShort();
         return _loc3_;
      }
   }
}

