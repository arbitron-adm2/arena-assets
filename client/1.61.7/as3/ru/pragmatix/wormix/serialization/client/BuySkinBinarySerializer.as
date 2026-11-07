package ru.pragmatix.wormix.serialization.client
{
   import § &5§.§0&$§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §1!J§.§"t§;
   import §5#`§.§7%g§;
   import §6#Z§.§&!Z§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §;&2§.§!#W§;
   import §="z§.§9%1§;
   import §=&!§.§4$z§;
   import §>%S§.§^!V§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import config.§=%A§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuySkin;
   import ru.pragmatix.wormix.messages.client.LeaveFromChat;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class BuySkinBinarySerializer implements §&"a§
   {
      
      public function BuySkinBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 29;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuySkin = BuySkin(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeByte(_loc3_.skinId);
         _loc5_.writeShort(_loc3_.moneyType);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}

