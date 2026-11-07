package ru.pragmatix.wormix.serialization.client
{
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.FrameTimerEvent;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§=?§;
   import §<%E§.§,$2§;
   import §>%S§.§^!V§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import com.greensock.plugins.*;
   import com.inreflected.ui.touchScroll.*;
   import config.achievements.*;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   
   use namespace gestouch_internal;
   
   public class ReconnectToBattleBinarySerializer implements §&"a§
   {
      
      public function ReconnectToBattleBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return ReconnectToBattle.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ReconnectToBattle = ReconnectToBattle(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.profileId);
         _loc5_.writeUTF(_loc3_.profileSocialId);
         _loc5_.writeByte(_loc3_.socialNetworkId);
         _loc5_.writeUTF(_loc3_.authKey);
         _loc5_.writeUTF(_loc3_.playerNames);
         _loc5_.writeShort(_loc3_.mainServerId);
         _loc5_.writeUnsignedInt(_loc3_.battleId);
         _loc5_.writeShort(_loc3_.turnNum);
         _loc5_.writeByte(_loc3_.playerNum);
         _loc5_.writeShort(_loc3_.lastCommandNum);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
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

