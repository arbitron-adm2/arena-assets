package ru.pragmatix.wormix.serialization.client
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §&#h§.§?B§;
   import §+$=§.§6#A§;
   import §+u§.§'n§;
   import §,!f§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §2B§.§#&E§;
   import §4$b§.§6!G§;
   import §7$t§.§=?§;
   import §<%k§.§2§;
   import §<K§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?>§.§]!V§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^!]§.WeaponShootEvent;
   import §^§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.*;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.ExecuteSpecialDeal;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   use namespace gestouch_internal;
   
   public class ExecuteSpecialDealBinarySerializer implements §&"a§
   {
      
      public function ExecuteSpecialDealBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 109;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ExecuteSpecialDeal = ExecuteSpecialDeal(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.itemId);
         _loc5_.writeByte(_loc3_.rubyPrice);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ExecuteSpecialDeal = new ExecuteSpecialDeal();
         _loc3_.itemId = param1.readShort();
         _loc3_.rubyPrice = param1.readByte();
         return _loc3_;
      }
   }
}

