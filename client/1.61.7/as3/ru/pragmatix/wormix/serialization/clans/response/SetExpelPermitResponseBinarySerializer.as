package ru.pragmatix.wormix.serialization.clans.response
{
   import § &5§.§%$O§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §!L§.§3%b§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §%"Z§.§'$2§;
   import §%$!§.§9$p§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-@§.*;
   import §0%[§.§""n§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §6"'§.§9$Z§;
   import §6%2§.§'"Y§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §<%k§.§2§;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?>§.§]!V§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%'§.§<"G§;
   import §]$v§.§0"[§;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §`%&§.§2§;
   import config.achievements.BossAchieves;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.ai.§3+§;
   import ru.pragmatix.wormix.game.ai.§5&6§;
   import ru.pragmatix.wormix.game.ai.§<%&§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.SetExpelPermitResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetSpecialDeal;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class SetExpelPermitResponseBinarySerializer implements §&"a§
   {
      
      public function SetExpelPermitResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:SetExpelPermitResponse = new SetExpelPermitResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.SET_EXPEL_PERMIT_RESPONSE;
      }
   }
}

