package ru.pragmatix.wormix.serialization.client
{
   import § &5§.§0&$§;
   import §"!C§.§3#n§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §1#p§.§2=§;
   import §2!-§.UnitKilledEvent;
   import §3#a§.§-#M§;
   import §3#a§.§[&A§;
   import §4%_§.ZombieGrave;
   import §4'§.§`"q§;
   import §<%E§.§%#z§;
   import §=;§.§>%>§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   
   public class PvpChatMessageBinarySerializer implements §&"a§
   {
      
      public function PvpChatMessageBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return PvpChatMessage.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:PvpChatMessage = PvpChatMessage(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeByte(_loc3_.playerNum);
         _loc5_.writeShort(_loc3_.action);
         _loc5_.writeUTF(_loc3_.message);
         _loc5_.writeUnsignedInt(_loc3_.battleId);
         _loc5_.writeBoolean(_loc3_.isTeamMsg);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:PvpChatMessage = new PvpChatMessage();
         _loc4_.playerNum = _loc3_.readByte();
         _loc4_.action = _loc3_.readShort();
         _loc4_.message = _loc3_.readUTF();
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc4_.isTeamMsg = _loc3_.readByte() != 0;
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

