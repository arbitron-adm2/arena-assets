package ru.pragmatix.wormix.serialization.client
{
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §%"1§.*;
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §3#a§.§-!`§;
   import §7$t§.§&!e§;
   import §8!Y§.§`#Q§;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §<%c§.*;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.TweenMax;
   import com.greensock.core.*;
   import com.greensock.easing.Circ;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.*;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   
   public class PvpRetryCommandRequestClientBinarySerializer implements §&"a§
   {
      
      public function PvpRetryCommandRequestClientBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 1018;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:PvpRetryCommandRequestClient = PvpRetryCommandRequestClient(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _temp_2:* = new ByteArray();
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.commandNum);
         _loc5_.writeShort(_loc3_.turnNum);
         _loc5_.writeInt(_loc3_.battleId);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:PvpRetryCommandRequestClient = new PvpRetryCommandRequestClient();
         _loc4_.commandNum = _loc3_.readShort();
         _loc4_.turnNum = _loc3_.readShort();
         _loc4_.battleId = _loc3_.readInt();
         var _loc5_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc5_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
         }
         return _loc4_;
      }
   }
}

