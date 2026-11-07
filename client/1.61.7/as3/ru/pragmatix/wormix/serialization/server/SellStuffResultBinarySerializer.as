package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §#k§.§9$v§;
   import §%L§.§"%Q§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §3#T§.Boomerang;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class SellStuffResultBinarySerializer implements §&"a§
   {
      
      public function SellStuffResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10137;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc4_:ByteArray = null;
         var _loc6_:§@#&§ = null;
         var _loc7_:int = 0;
         var _loc3_:SellStuffResult = new SellStuffResult();
         _loc4_ = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.stuffIds = new Vector.<int>(0);
         §!!"§.§!!J§(_loc4_,_loc3_.stuffIds);
         _loc3_.awards = [];
         var _loc5_:int = int(_loc4_.readUnsignedShort());
         if(_loc5_ > 0)
         {
            _loc6_ = §<!h§.§@%$§(GenericAwardStructure);
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               _loc4_.readShort();
               _loc3_.awards[_loc7_] = _loc6_.deserializeStructure(_loc4_,null) as GenericAwardStructure;
               _loc7_++;
            }
         }
         _loc3_.sessionKey = _loc4_.readUTF();
         _loc3_.isSecure = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         if(!_loc3_.isSecure)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
            return null;
         }
         return _loc3_;
      }
   }
}

