package ru.pragmatix.wormix.serialization.client
{
   import §!!i§.§@&&§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#E§.§4##§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2B§.§#&E§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§=$,§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterMobilePayment;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class FbRegisterMobilePaymentBinarySerializer implements §&"a§
   {
      
      public function FbRegisterMobilePaymentBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:FbRegisterMobilePayment = FbRegisterMobilePayment(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.pricepointId);
         _loc5_.writeShort(_loc3_.moneyType);
         _loc5_.writeInt(_loc3_.amount);
         _loc5_.writeFloat(_loc3_.cost_USD);
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
         return 105;
      }
   }
}

