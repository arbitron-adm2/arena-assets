package ru.pragmatix.wormix.serialization.client
{
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0%[§.§""n§;
   import §0%[§.§6!?§;
   import §0&F§.FrameTimerEvent;
   import §4$b§.§2m§;
   import §7!B§.§&"T§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class PvpEndTurnBinarySerializer implements §&"a§
   {
      
      public function PvpEndTurnBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 1014;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc8_:ByteArray = null;
         var _loc3_:PvpEndTurn = PvpEndTurn(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.turnNum);
         _loc5_.writeShort(_loc3_.commandNum);
         _loc5_.writeInt(_loc3_.battleId);
         _loc5_.writeByte(_loc3_.playerNum);
         §!!"§.§6%i§(_loc5_,_loc3_.eliminated);
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
         _loc5_.writeBoolean(_loc3_.forced);
         _loc5_.writeShort(_loc3_.banType);
         _loc5_.writeUTF(_loc3_.banNote);
         §!!"§.§6%i§(_loc5_,_loc3_.droppedUnits);
         §!!"§.§[$k§(_loc5_,_loc3_.participantsHealthInPercent);
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
         var _loc4_:PvpEndTurn = new PvpEndTurn();
         _loc4_.turnNum = _loc3_.readShort();
         _loc4_.commandNum = _loc3_.readShort();
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc4_.playerNum = _loc3_.readByte();
         _loc4_.eliminated = [];
         §!!"§.§#$>§(_loc3_,_loc4_.eliminated);
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
         _loc4_.forced = _loc3_.readByte() != 0;
         _loc4_.banType = _loc3_.readShort();
         _loc4_.banNote = _loc3_.readUTF();
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

