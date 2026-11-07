package ru.pragmatix.wormix.serialization.client
{
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §&&6§.*;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0%j§.§0$+§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<%E§.§;!y§;
   import §=!p§.§'%#§;
   import §>%S§.§^!V§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"x§.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbFulfillPayment;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class FbFullfillPaymentBinarySerializer implements §&"a§
   {
      
      public function FbFullfillPaymentBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:FbFulfillPayment = FbFulfillPayment(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _temp_2:* = new ByteArray();
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.paymentId);
         _loc5_.writeUTF(_loc3_.signedRequest);
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
         return 100;
      }
   }
}

