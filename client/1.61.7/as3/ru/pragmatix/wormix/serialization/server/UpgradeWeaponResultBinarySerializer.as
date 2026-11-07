package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§@N§;
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §1#p§.§"Z§;
   import §6%2§.§!"x§;
   import §="z§.*;
   import §>%S§.§^!V§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.Shape;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   
   public class UpgradeWeaponResultBinarySerializer implements §&"a§
   {
      
      public function UpgradeWeaponResultBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:UpgradeWeaponResult = UpgradeWeaponResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.recipeId);
         _loc5_.writeShort(_loc3_.result);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _temp_1:* = new UpgradeWeaponResult();
         var _loc4_:UpgradeWeaponResult = new UpgradeWeaponResult();
         _loc4_.recipeId = _loc3_.readShort();
         _loc4_.result = _loc3_.readShort();
         var _loc5_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc5_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
         }
         return _loc4_;
      }
      
      public function getCommandId() : uint
      {
         return 10086;
      }
   }
}

