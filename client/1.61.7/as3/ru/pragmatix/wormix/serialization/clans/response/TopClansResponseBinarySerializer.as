package ru.pragmatix.wormix.serialization.clans.response
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §+#P§.§]!E§;
   import §+%S§.§'%V§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §2#H§.§`#D§;
   import §2#i§.§+%z§;
   import §3#T§.§;#Q§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §8#<§.§!#^§;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.net.URLRequestMethod;
   import flash.utils.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.rules.§+&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.TopClansResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class TopClansResponseBinarySerializer implements §&"a§
   {
      
      public function TopClansResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:TopClansResponse = new TopClansResponse();
         _loc3_.serviceResult = param1.readShort();
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.topClans.push(§<!h§.§@%$§(ClanTO).deserializeStructure(param1,null));
            _loc5_++;
         }
         _loc4_ = param1.readUnsignedShort();
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_.oldPlaces.push(param1.readInt());
            _loc5_++;
         }
         _loc3_.rating = param1.readInt();
         _loc3_.oldPlace = param1.readInt();
         _loc3_.playerClanPosition = param1.readInt();
         _loc3_.startSeasonDate = param1.readUnsignedInt();
         _loc3_.finishSeasonDate = param1.readUnsignedInt();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.TOP_CLANS_RESPONSE;
      }
   }
}

