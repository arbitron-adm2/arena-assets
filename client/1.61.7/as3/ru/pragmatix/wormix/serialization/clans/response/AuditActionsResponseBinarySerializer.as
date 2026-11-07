package ru.pragmatix.wormix.serialization.clans.response
{
   import § &5§.§0&$§;
   import §!!!§.*;
   import §#%!§.*;
   import §%"1§.§@%;§;
   import §%"Z§.*;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!Y§.§!$%§;
   import §0&F§.§0%v§;
   import §2#H§.§>#M§;
   import §2B§.§#&E§;
   import §4#`§.§+!l§;
   import §4'§.§!!0§;
   import §<!W§.§7!L§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§=$,§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §^!]§.TeleportEvent;
   import api.com.odnoklassniki.*;
   import api.com.odnoklassniki.net.OdnoklassnikiRequest;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.geom.Rectangle;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class AuditActionsResponseBinarySerializer implements §&"a§
   {
      
      public function AuditActionsResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:AuditActionsResponse = new AuditActionsResponse();
         _loc3_.serviceResult = param1.readShort();
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.actions[_loc5_] = ClanAuditActionTO(§<!h§.§@%$§(ClanAuditActionTO).deserializeStructure(param1,null));
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.AUDIT_ACTIONS_RESPONSE;
      }
   }
}

