package ru.pragmatix.wormix.serialization.server
{
   import § !P§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §&%X§.§5F§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-G§.§&"7§;
   import §2#V§.§-#U§;
   import §4!!§.§76§;
   import §<%k§.§`!v§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.TracePublisher;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.ExecuteSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class ExecuteSpecialDealResponseBinarySerializer implements §&"a§
   {
      
      public function ExecuteSpecialDealResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10109;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:ExecuteSpecialDealResponse = new ExecuteSpecialDealResponse();
         _loc4_.result = _loc3_.readShort();
         _loc4_.itemId = _loc3_.readShort();
         _loc4_.rubyPrice = _loc3_.readByte();
         _loc4_.sessionKey = _loc3_.readUTF();
         var _loc5_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc5_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
            return null;
         }
         return _loc4_;
      }
   }
}

