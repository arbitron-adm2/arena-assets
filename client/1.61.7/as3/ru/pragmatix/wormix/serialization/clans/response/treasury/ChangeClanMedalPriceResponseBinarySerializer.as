package ru.pragmatix.wormix.serialization.clans.response.treasury
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§ G§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §&!m§.§-$6§;
   import §+%S§.§?3§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7$t§.§&!e§;
   import §8#a§.§1$!§;
   import §8$Z§.*;
   import §9![§.§#$k§;
   import §<!W§.§#&#§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §>!_§.§'!&§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3y§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.treasury.ChangeClanMedalPriceResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class ChangeClanMedalPriceResponseBinarySerializer implements §&"a§
   {
      
      public function ChangeClanMedalPriceResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ChangeClanMedalPriceResponse = new ChangeClanMedalPriceResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.CHANGE_CLAN_MEDAL_PRICE_RESPONSE;
      }
   }
}

