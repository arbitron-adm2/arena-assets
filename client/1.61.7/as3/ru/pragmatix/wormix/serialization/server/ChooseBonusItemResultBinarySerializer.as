package ru.pragmatix.wormix.serialization.server
{
   import § !P§.*;
   import §#k§.*;
   import §&#h§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §6_§.*;
   import §>%S§.§^!V§;
   import §]$&§.§2&2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.SimpleButton;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   
   public class ChooseBonusItemResultBinarySerializer implements §&"a§
   {
      
      public function ChooseBonusItemResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 13006;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ChooseBonusItemResult = ChooseBonusItemResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.result);
         _loc5_.writeInt(_loc3_.itemId);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ChooseBonusItemResult = new ChooseBonusItemResult();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.result = _loc4_.readShort();
         _loc3_.itemId = _loc4_.readInt();
         _loc3_.isSecure = §6&A§.isSecure(_loc4_,§["u§.§'&I§);
         return _loc3_;
      }
   }
}

