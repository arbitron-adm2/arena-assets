package ru.pragmatix.wormix.serialization.client
{
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&#h§.§5f§;
   import §&&6§.§7$§;
   import §'!Z§.§1"-§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2#W§.*;
   import §3%J§.BuyBattleTokensDialog;
   import §6"'§.§&"3§;
   import §6"'§.§>"V§;
   import §6",§.§[%w§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §8#o§.§#$s§;
   import §;$8§.§6"E§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?#g§.§-!k§;
   import §@!N§.§""L§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[$P§.§8%R§;
   import §[%§.*;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.§`!a§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.ITouchHitTester;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.EndBattle;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   
   public class EndBattleBinarySerializer implements §&"a§
   {
      
      public function EndBattleBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 84;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc6_:int = 0;
         var _loc9_:ByteArray = null;
         var _loc3_:EndBattle = EndBattle(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.result);
         _loc5_.writeShort(_loc3_.type);
         _loc5_.writeInt(_loc3_.expBonus);
         _loc5_.writeUnsignedInt(_loc3_.battleId);
         _loc5_.writeShort(_loc3_.missionId);
         var _loc7_:uint = _loc3_.items.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc9_ = new ByteArray();
            §<!h§.§@%$§(WeaponStructure).serializeStructure(_loc3_.items[_loc6_],_loc9_,null);
            _loc5_.writeShort(_loc9_.length);
            _loc5_.writeBytes(_loc9_);
            _loc6_++;
         }
         _loc5_.writeShort(_loc3_.banType);
         _loc5_.writeUTF(_loc3_.banNote);
         var _loc8_:int = int(_loc3_.collectedReagents.length);
         _loc5_.writeShort(_loc8_);
         _loc6_ = 0;
         while(_loc6_ < _loc8_)
         {
            _loc5_.writeByte(_loc3_.collectedReagents[_loc6_]);
            _loc6_++;
         }
         _loc5_.writeShort(TurnStructureV2.VERSION_MARKER);
         _loc5_.writeShort(_loc3_.totalTurnsCount);
         _loc5_.writeInt(_loc3_.totalDamageToPlayer);
         _loc5_.writeInt(_loc3_.totalDamageToBoss);
         _loc7_ = _loc3_.totalUsedItems.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc9_ = new ByteArray();
            §<!h§.§@%$§(WeaponStructure).serializeStructure(_loc3_.totalUsedItems[_loc6_],_loc9_,null);
            _loc5_.writeShort(_loc9_.length);
            _loc5_.writeBytes(_loc9_);
            _loc6_++;
         }
         _loc7_ = _loc3_.journal ? _loc3_.journal.length : 0;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc9_ = new ByteArray();
            §<!h§.§@%$§(TurnStructureV2).serializeStructure(_loc3_.journal[_loc6_],_loc9_,null);
            _loc5_.writeShort(_loc9_.length);
            _loc5_.writeBytes(_loc9_);
            _loc6_++;
         }
         _loc5_.writeShort(_loc3_.mapId);
         _loc5_.writeUTF(_loc3_.sessionKey);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:EndBattle = new EndBattle();
         _loc4_.result = _loc3_.readUnsignedInt();
         _loc4_.type = _loc3_.readShort();
         _loc4_.expBonus = _loc3_.readInt();
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc4_.missionId = _loc3_.readShort();
         var _loc5_:uint = 0;
         var _loc6_:uint = _loc3_.readUnsignedShort();
         _loc4_.items = [];
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            _loc3_.readShort();
            _loc4_.items[_loc5_] = §<!h§.§@%$§(WeaponStructure).deserializeStructure(_loc3_,null);
            _loc5_++;
         }
         _loc4_.banType = _loc3_.readShort();
         _loc4_.banNote = _loc3_.readUTF();
         var _loc7_:int = int(_loc3_.readUnsignedShort());
         _loc4_.collectedReagents = new Vector.<int>(0);
         _loc5_ = 0;
         while(_loc5_ < _loc7_)
         {
            _loc4_.collectedReagents[_loc5_] = _loc3_.readByte();
            _loc5_++;
         }
         _loc4_.totalTurnsCount = _loc3_.readShort();
         _loc4_.totalDamageToPlayer = _loc3_.readInt();
         _loc4_.totalDamageToBoss = _loc3_.readInt();
         _loc6_ = _loc3_.readUnsignedShort();
         _loc4_.totalUsedItems = [];
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            _loc3_.readShort();
            _loc4_.totalUsedItems[_loc5_] = §<!h§.§@%$§(WeaponStructure).deserializeStructure(_loc3_,null);
            _loc5_++;
         }
         _loc4_.sessionKey = _loc3_.readUTF();
         var _loc8_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc8_)
         {
            §%%w§.§7F§.§]">§();
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.PROTOCOL_CHEATER,§,#W§.§0!V§);
         }
         return _loc4_;
      }
   }
}

