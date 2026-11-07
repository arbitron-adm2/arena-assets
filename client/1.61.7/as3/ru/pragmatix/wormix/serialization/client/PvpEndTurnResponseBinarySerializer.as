package ru.pragmatix.wormix.serialization.client
{
   import §!L§.§+"'§;
   import §##j§.§'"%§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§=t§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§]%s§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2!-§.§^!9§;
   import §3#a§.§-#M§;
   import §9%k§.*;
   import §<!^§.§9"§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>$q§.§4#;§;
   import §>%S§.§^!V§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §]$v§.*;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.*;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   use namespace gestouch_internal;
   
   public class PvpEndTurnResponseBinarySerializer implements §&"a§
   {
      
      public function PvpEndTurnResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 1017;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc8_:ByteArray = null;
         var _loc3_:PvpEndTurnResponse = PvpEndTurnResponse(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.turnNum);
         _loc5_.writeShort(_loc3_.commandNum);
         _loc5_.writeInt(_loc3_.battleId);
         §!!"§.§6%i§(_loc5_,_loc3_.droppedPlayers);
         §!!"§.§6%i§(_loc5_,_loc3_.collectedReagents);
         var _loc6_:uint = _loc3_.items.length;
         _loc5_.writeShort(_loc6_);
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc8_ = new ByteArray();
            §<!h§.§@%$§(WeaponStructure).serializeStructure(_loc3_.items[_loc7_],_loc8_,null);
            _loc5_.writeShort(_loc8_.length);
            _loc5_.writeBytes(_loc8_);
            _loc7_++;
         }
         _loc5_.writeInt(_loc3_.battleState);
         §!!"§.§6%i§(_loc5_,_loc3_.droppedUnits);
         §!!"§.§[$k§(_loc5_,_loc3_.participantsHealthInPercent);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:PvpEndTurnResponse = new PvpEndTurnResponse();
         _loc4_.turnNum = _loc3_.readShort();
         _loc4_.commandNum = _loc3_.readShort();
         _loc4_.battleId = _loc3_.readInt();
         _loc4_.droppedPlayers = [];
         §!!"§.§#$>§(_loc3_,_loc4_.droppedPlayers);
         §!!"§.§#$>§(_loc3_,_loc4_.collectedReagents);
         var _loc5_:uint = _loc3_.readUnsignedShort();
         _loc4_.items = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc3_.readShort();
            _loc4_.items[_loc6_] = §<!h§.§@%$§(WeaponStructure).deserializeStructure(_loc3_,null);
            _loc6_++;
         }
         _loc4_.battleState = _loc3_.readInt();
         §!!"§.§#$>§(_loc3_,_loc4_.droppedUnits);
         §!!"§.§5t§(_loc3_,_loc4_.participantsHealthInPercent);
         var _loc7_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc7_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
         }
         return _loc4_;
      }
   }
}

