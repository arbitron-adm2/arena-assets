package ru.pragmatix.wormix.serialization.clans.response
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!-§.GameObjectDisposed;
   import §2#H§.§"§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §7!B§.§&"T§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §?%J§.*;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]#b§.§8!d§;
   import §^!]§.MineActivateEvent;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.client.ToggleTeamMember;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class SetMuteModeResponseBinarySerializer implements §&"a§
   {
      
      public function SetMuteModeResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:SetMuteModeResponse = new SetMuteModeResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.SET_MUTE_MODE_RESPONSE;
      }
   }
}

