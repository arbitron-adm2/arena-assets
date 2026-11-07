package ru.pragmatix.wormix.serialization.client
{
   import § %f§.Puppet;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%# §.*;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §-%B§.§-"o§;
   import §2#s§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=$#§.§1!$§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndBattle;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class PvpEndBattleBinarySerializer implements §&"a§
   {
      
      public function PvpEndBattleBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 1021;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         var _loc8_:§@#&§ = null;
         var _loc9_:int = 0;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:PvpEndBattle = new PvpEndBattle();
         _loc4_.battleId = _loc3_.readUnsignedInt();
         _loc4_.turnNum = _loc3_.readShort();
         _loc4_.commandNum = _loc3_.readShort();
         _loc4_.battleResult = _loc3_.readShort();
         _loc4_.ratingPoints = _loc3_.readInt();
         _loc4_.rankPoints = _loc3_.readInt();
         _loc4_.award = [];
         var _loc5_:int = int(_loc3_.readUnsignedShort());
         if(_loc5_ > 0)
         {
            _loc8_ = §<!h§.§@%$§(GenericAwardStructure);
            _loc9_ = 0;
            while(_loc9_ < _loc5_)
            {
               _loc3_.readShort();
               _loc4_.award[_loc9_] = _loc8_.deserializeStructure(_loc3_,null);
               _loc9_++;
            }
         }
         _loc4_.note = _loc3_.readUTF();
         var _loc6_:uint = uint(_loc3_.readByte());
         _loc4_.confirmed = _loc6_ != 0;
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

