package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §1#p§.*;
   import §2!-§.HpChangeEvent;
   import §9![§.§^§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §]$v§.§1>§;
   import §]$v§.§`0§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ShopResultBinarySerializer implements §&"a§
   {
      
      public function ShopResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10003;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ShopResult = ShopResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.result);
         var _loc7_:uint = _loc3_.weapons.length;
         _loc5_.writeShort(_loc7_);
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            _loc6_ = new ByteArray();
            §<!h§.§@%$§(ShopItemStructure).serializeStructure(_loc3_.weapons[_loc8_],_loc6_,null);
            _loc5_.writeShort(_loc6_.length);
            _loc5_.writeBytes(_loc6_);
            _loc8_++;
         }
         _loc7_ = _loc3_.stuff.length;
         _loc5_.writeShort(_loc7_);
         var _loc9_:int = 0;
         while(_loc9_ < _loc7_)
         {
            _loc6_ = new ByteArray();
            §<!h§.§@%$§(ShopItemStructure).serializeStructure(_loc3_.stuff[_loc9_],_loc6_,null);
            _loc5_.writeShort(_loc6_.length);
            _loc5_.writeBytes(_loc6_);
            _loc9_++;
         }
         _loc7_ = _loc3_.temporalStuff.length;
         _loc5_.writeShort(_loc7_);
         _loc8_ = 0;
         while(_loc8_ < _loc7_)
         {
            _loc6_ = new ByteArray();
            §<!h§.§@%$§(TemporalStuffStructure).serializeStructure(_loc3_.temporalStuff[_loc8_],_loc6_,null);
            _loc5_.writeShort(_loc6_.length);
            _loc5_.writeBytes(_loc6_);
            _loc8_++;
         }
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:ShopResult = new ShopResult();
         _loc4_.result = _loc3_.readShort();
         var _loc5_:uint = uint(_loc3_.readShort());
         var _loc6_:uint = 0;
         while(_loc6_ < _loc5_)
         {
            _loc3_.readShort();
            _loc4_.weapons[_loc6_] = §<!h§.§@%$§(WeaponStructure).deserializeStructure(_loc3_,null);
            _loc6_++;
         }
         var _loc7_:int = _loc3_.readShort();
         var _loc8_:uint = 0;
         while(_loc8_ < _loc7_)
         {
            _loc4_.stuff[_loc8_] = _loc3_.readShort();
            _loc8_++;
         }
         var _loc9_:int = _loc3_.readShort();
         var _loc10_:int = 0;
         while(_loc10_ < _loc9_)
         {
            _loc3_.readShort();
            _loc4_.temporalStuff[_loc10_] = §<!h§.§@%$§(TemporalStuffStructure).deserializeStructure(_loc3_,null);
            _loc10_++;
         }
         var _loc11_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc11_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
         }
         return _loc4_;
      }
   }
}

