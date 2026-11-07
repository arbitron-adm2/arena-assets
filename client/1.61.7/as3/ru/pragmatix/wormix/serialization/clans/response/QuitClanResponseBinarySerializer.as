package ru.pragmatix.wormix.serialization.clans.response
{
   import § !8§.§`!d§;
   import § $q§.*;
   import §!!!§.§7&%§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §4'§.§^"p§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §9%W§.§`"y§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §>!_§.ClanMemberIntroHint;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@%I§.§7%K§;
   import §@&H§.§`d§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.QuitClanResponse;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class QuitClanResponseBinarySerializer implements §&"a§
   {
      
      public function QuitClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:QuitClanResponse = new QuitClanResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.QUIT_FROM_CLAN_RESPONSE;
      }
   }
}

