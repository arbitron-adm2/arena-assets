package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §+%S§.§2$#§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §1#p§.Team;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §?$K§.§`""§;
   import §@<§.§+%]§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class AssembleStuffResultBinarySerializer implements §&"a§
   {
      
      public function AssembleStuffResultBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:AssembleStuffResult = new AssembleStuffResult();
         _loc4_.equipId = _loc3_.readShort();
         _loc4_.familyId = _loc3_.readShort();
         _loc4_.result = _loc3_.readShort();
         var _loc5_:String = _loc3_.readUTF();
         §!!"§.§1&B§(_loc3_,_loc5_,§0$N§.PROTOCOL_CHEATER);
         return _loc4_;
      }
      
      public function getCommandId() : uint
      {
         return 10099;
      }
   }
}

