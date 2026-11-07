package ru.pragmatix.wormix.serialization.pvp.ex
{
   import § !8§.§`!d§;
   import § "I§.§,!D§;
   import §#P§.§`o§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%&3§.§'C§;
   import §%L§.§%%w§;
   import §&&6§.*;
   import §+$=§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0"L§.§@#n§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#H§.§"j§;
   import §4!!§.§#Z§;
   import §7$t§.§^%%§;
   import §8$V§.§]!i§;
   import §<%E§.§,$2§;
   import §=!p§.§1e§;
   import §@!i§.*;
   import §@"s§.§#&3§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §[%§.Dragon;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.*;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class BattleCreatedBinarySerializer implements §&"a§
   {
      
      public function BattleCreatedBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return BattleCreated.ID;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:BattleCreated = new BattleCreated();
         _loc4_.battleType = PvpBattleType.valueOf(_loc3_.readShort());
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc4_.wager = §<#&§.valueOf(_loc3_.readShort());
         _loc4_.mapId = _loc3_.readInt();
         §!!"§.§[L§(_loc3_,_loc4_.missionIds);
         _loc4_.playerStructs = new Vector.<PvpProfileStructure>(0);
         var _loc5_:uint = _loc3_.readUnsignedShort();
         var _loc6_:uint = 0;
         while(_loc6_ < _loc5_)
         {
            _loc3_.readShort();
            _loc4_.playerStructs[_loc6_] = PvpProfileStructure(§<!h§.§@%$§(PvpProfileStructure).deserializeStructure(_loc3_,null));
            _loc6_++;
         }
         _loc4_.seed = _loc3_.readInt();
         _loc4_.reagentsForBattle = new Vector.<int>(0);
         _loc5_ = _loc3_.readUnsignedShort();
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            _loc4_.reagentsForBattle[_loc6_] = _loc3_.readByte();
            _loc6_++;
         }
         _loc4_.questId = _loc3_.readShort();
         _loc3_.readShort();
         _loc3_.readShort();
         _loc4_.victoryRating = _loc3_.readInt();
         _loc4_.victoryRankPoints = _loc3_.readInt();
         _loc3_.readShort();
         _loc4_.defeatRating = _loc3_.readInt();
         _loc4_.defeatRankPoints = _loc3_.readInt();
         _loc3_.readShort();
         _loc4_.drawRating = _loc3_.readInt();
         _loc4_.drawRankPoints = _loc3_.readInt();
         _loc4_.serverTime = _loc3_.readInt();
         var _loc7_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc7_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
            return null;
         }
         return _loc4_;
      }
   }
}

