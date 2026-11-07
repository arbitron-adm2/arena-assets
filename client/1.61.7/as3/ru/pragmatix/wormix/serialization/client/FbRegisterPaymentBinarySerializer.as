package ru.pragmatix.wormix.serialization.client
{
   import § &5§.§0&$§;
   import §&#h§.§-"F§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.*;
   import §3"@§.*;
   import §3#a§.§[&A§;
   import §8#o§.§1@§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§<#&§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterPayment;
   
   public class FbRegisterPaymentBinarySerializer implements §&"a§
   {
      
      public function FbRegisterPaymentBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:FbRegisterPayment = FbRegisterPayment(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.itemId);
         _loc5_.writeUTF(_loc3_.sessionKey);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
      
      public function getCommandId() : uint
      {
         return 101;
      }
   }
}

