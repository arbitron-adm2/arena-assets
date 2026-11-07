package ru.pragmatix.wormix.serialization.clans.response.treasury
{
   import § !P§.§<#q§;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&#h§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§%"'§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §;$8§.§6"E§;
   import §<!<§.§4"K§;
   import §="z§.*;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §]^§.*;
   import §^!"§.§^$F§;
   import §^#[§.§&$2§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class CashMedalsClanResponseBinarySerializer implements §&"a§
   {
      
      public function CashMedalsClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:CashMedalsClanResponse = new CashMedalsClanResponse();
         _loc3_.serviceResult = param1.readShort();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.CASH_MEDALS_RESPONSE;
      }
   }
}

