package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §>%S§.§^!V§;
   import §?o§.StuffedBouncingGrenade;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.SearchTheHouseResult;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class SearchTheHouseResultBinarySerializer implements §&"a§
   {
      
      public function SearchTheHouseResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10021;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:SearchTheHouseResult = SearchTheHouseResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _temp_2:* = new ByteArray();
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeByte(_loc3_.result);
         _loc5_.writeInt(_loc3_.value);
         _loc5_.writeByte(_loc3_.availableSearchKeys);
         _loc5_.writeUnsignedInt(_loc3_.friendId);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _temp_1:* = new SearchTheHouseResult();
         var _loc4_:SearchTheHouseResult = new SearchTheHouseResult();
         _loc4_.result = _loc3_.readByte();
         _loc4_.value = _loc3_.readInt();
         _loc4_.availableSearchKeys = _loc3_.readByte();
         _loc4_.friendId = _loc3_.readUnsignedInt();
         _loc4_.isSecure = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         return _loc4_;
      }
   }
}

