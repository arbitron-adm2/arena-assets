package ru.pragmatix.wormix.serialization.client
{
   import § #m§.§[&H§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §'!Z§.§2!H§;
   import §+%S§.§[0§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-@§.§0"e§;
   import §0!Y§.§#!Z§;
   import §0%[§.§^"5§;
   import §0%j§.*;
   import §1"r§.§#"Q§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#s§.*;
   import §4u§.§[%u§;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§1e§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import config.achievements.*;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.client.GetPromocodeBonus;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class GetPromocodeBonusBinarySerializer implements §&"a§
   {
      
      public function GetPromocodeBonusBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 142;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetPromocodeBonus = GetPromocodeBonus(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.promocode);
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

