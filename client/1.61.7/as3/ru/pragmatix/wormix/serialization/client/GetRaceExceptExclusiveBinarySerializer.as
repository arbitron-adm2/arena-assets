package ru.pragmatix.wormix.serialization.client
{
   import §"!C§.§3#n§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#%!§.§7V§;
   import §#%!§.§=-§;
   import §#%!§.§[%U§;
   import §%"1§.§@%;§;
   import §%L§.§'$T§;
   import §&!m§.§-$6§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0!§.§[k§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2#i§.§+%z§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §65§.§6%E§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §;$8§.§6"E§;
   import §<!W§.§?#L§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.*;
   import §[$P§.§+H§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.ClearName;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GetRaceExceptExclusiveBinarySerializer implements §&"a§
   {
      
      public function GetRaceExceptExclusiveBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 135;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetRaceExceptExclusive = GetRaceExceptExclusive(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.profileId);
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

