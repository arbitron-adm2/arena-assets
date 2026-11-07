package ru.pragmatix.wormix.serialization.clans.response
{
   import §"#x§.§'"$§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-!U§.§&%j§;
   import §-%B§.*;
   import §0!§.§8$Y§;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#H§.§+$^§;
   import §2#i§.§+%z§;
   import §5!,§.§-§;
   import §5!9§.§6$,§;
   import §7!B§.§&"T§;
   import §7!B§.§>"D§;
   import §;$8§.§6"E§;
   import §="z§.*;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §?%J§.*;
   import §@!N§.§'+§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §]$&§.§3$%§;
   import §]^§.*;
   import §^!"§.§^$F§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §`#x§.*;
   import §`%c§.*;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.PostClanNewsResponse;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class PostClanNewsResponseBinarySerializer implements §&"a§
   {
      
      public function PostClanNewsResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:PostClanNewsResponse = new PostClanNewsResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.POST_NEWS_RESPONSE;
      }
   }
}

