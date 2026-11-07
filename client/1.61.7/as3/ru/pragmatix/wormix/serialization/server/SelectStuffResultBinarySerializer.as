package ru.pragmatix.wormix.serialization.server
{
   import §#"V§.§!&5§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0!§.§7`§;
   import §0!§.§8$Y§;
   import §2#s§.*;
   import §7!B§.§&"T§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.SelectStuffResult;
   import ru.pragmatix.wormix.messages.structures.SelectStuffResultStructure;
   
   public class SelectStuffResultBinarySerializer implements §&"a§
   {
      
      public function SelectStuffResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10022;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:§@#&§ = null;
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:SelectStuffResult = new SelectStuffResult();
         _loc6_ = uint(_loc3_.readShort());
         _loc4_.selectStuffResults = [];
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            _loc3_.readShort();
            _loc7_ = §<!h§.§@%$§(SelectStuffResultStructure);
            _loc4_.selectStuffResults[_loc5_] = _loc7_.deserializeStructure(_loc3_,null);
            _loc5_++;
         }
         _loc4_.isSecure = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         return _loc4_;
      }
   }
}

