package ru.pragmatix.wormix.serialization.clans.response
{
   import § "d§.§,!c§;
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!%6§.*;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&$Y§.§6[§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§7%f§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#H§.§`#D§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §4$b§.§2m§;
   import §4'§.§^"p§;
   import §8$Z§.§9!&§;
   import §<"L§.§##-§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §?#g§.Race;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.data.TweenLiteVars;
   import com.greensock.loading.LoaderStatus;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.SellStuff;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class ListClansResponseBinarySerializer implements §&"a§
   {
      
      public function ListClansResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ListClansResponse = new ListClansResponse();
         _loc3_.serviceResult = param1.readShort();
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.clans.push(§<!h§.§@%$§(ClanTO).deserializeStructure(param1,null));
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.LIST_CLANS_RESPONSE;
      }
   }
}

