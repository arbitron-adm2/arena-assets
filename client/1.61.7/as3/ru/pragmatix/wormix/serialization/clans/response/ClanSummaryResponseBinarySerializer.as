package ru.pragmatix.wormix.serialization.clans.response
{
   import § #9§.§"$t§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-"N§.*;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4$b§.§6!G§;
   import §4'§.§^"p§;
   import §7!B§.§&"T§;
   import §;!Z§.*;
   import §;"9§.§8$B§;
   import §;"9§.§8&!§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §>$q§.*;
   import §?$7§.§+#N§;
   import §?%J§.*;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §^4§.§@#J§;
   import §`"x§.§[a§;
   import §`%&§.§5$1§;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§;$]§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ClanSummaryResponseBinarySerializer implements §&"a§
   {
      
      public function ClanSummaryResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ClanSummaryResponse = new ClanSummaryResponse();
         _loc3_.serviceResult = param1.readShort();
         param1.readShort();
         _loc3_.clan = ClanTO(§<!h§.§@%$§(ClanTO).deserializeStructure(param1,null));
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.CLAN_SUMMARY_RESPONSE;
      }
   }
}

