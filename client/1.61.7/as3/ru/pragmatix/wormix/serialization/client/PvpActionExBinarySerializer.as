package ru.pragmatix.wormix.serialization.client
{
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.§,#;§;
   import §'!Z§.§1"-§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-8§.§3!x§;
   import §0!Y§.§ !k§;
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0%[§.§]2§;
   import §2#s§.BankMenu;
   import §8!Y§.§`#Q§;
   import §9%k§.*;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §>%S§.§^!V§;
   import §[!O§.§@&D§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class PvpActionExBinarySerializer implements §&"a§
   {
      
      public function PvpActionExBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 1007;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc9_:Array = null;
         var _loc10_:§ !k§ = null;
         var _loc11_:uint = 0;
         var _loc12_:uint = 0;
         var _loc3_:PvpActionEx = PvpActionEx(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:uint = 0;
         var _loc7_:uint = _loc3_.firstFrame;
         while(_loc7_ <= _loc3_.lastFrame)
         {
            if(_loc3_.actionsByFrame[_loc7_])
            {
               _loc6_ += 2;
               _loc5_.writeUnsignedInt(_loc7_);
               _loc9_ = _loc3_.actionsByFrame[_loc7_];
               _loc5_.writeUnsignedInt(_loc9_.length);
               for each(_loc10_ in _loc9_)
               {
                  _loc11_ = §#!Z§.§9$ §(_loc10_.commandId);
                  _loc6_ += 1 + _loc11_;
                  _loc5_.writeUnsignedInt(_loc10_.commandId);
                  _loc12_ = 0;
                  while(_loc12_ < _loc11_)
                  {
                     _loc5_.writeUnsignedInt(_loc10_.params[_loc12_]);
                     _loc12_++;
                  }
               }
            }
            _loc7_++;
         }
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.writeUnsignedInt(_loc3_.firstFrame);
         _loc8_.writeUnsignedInt(_loc3_.lastFrame);
         _loc8_.writeShort(_loc3_.turnNum);
         _loc8_.writeShort(_loc3_.commandNum);
         _loc8_.writeUnsignedInt(_loc3_.battleId);
         _loc8_.writeByte(_loc3_.playerNum);
         _loc8_.writeShort(_loc6_);
         _loc8_.writeBytes(_loc5_);
         §6&A§.§,&!§(_loc8_,§["u§.§'&I§);
         _loc4_.§<!§(_loc8_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc8_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc14_:uint = 0;
         var _loc15_:uint = 0;
         var _loc16_:uint = 0;
         var _loc17_:uint = 0;
         var _loc18_:Array = null;
         var _loc19_:uint = 0;
         var _loc20_:uint = 0;
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:uint = _loc3_.readUnsignedInt();
         var _loc5_:uint = _loc3_.readUnsignedInt();
         var _loc6_:uint = uint(_loc3_.readShort());
         var _loc7_:uint = uint(_loc3_.readShort());
         var _loc8_:uint = _loc3_.readUnsignedInt();
         var _loc9_:uint = uint(_loc3_.readByte());
         var _loc10_:Object = new Object();
         var _loc11_:uint = uint(_loc3_.readShort());
         while(_loc11_ > 0)
         {
            _loc11_ -= 2;
            _loc14_ = _loc3_.readUnsignedInt();
            _loc15_ = _loc3_.readUnsignedInt();
            _loc10_[_loc14_] = [];
            _loc16_ = 0;
            while(_loc16_ < _loc15_)
            {
               _loc17_ = _loc3_.readUnsignedInt();
               _loc18_ = [];
               _loc19_ = §#!Z§.§9$ §(_loc17_);
               _loc11_ -= 1 + _loc19_;
               _loc20_ = 0;
               while(_loc20_ < _loc19_)
               {
                  _loc18_.push(_loc3_.readUnsignedInt());
                  _loc20_++;
               }
               (_loc10_[_loc14_] as Array).push(new § !k§(_loc17_,_loc18_));
               _loc16_++;
            }
         }
         var _loc12_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc12_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
            if(§8"%§.§[#6§)
            {
               §8"%§.§[#6§.closeConnection();
            }
         }
         var _loc13_:PvpActionEx = new PvpActionEx(_loc4_,_loc5_,new §@&D§(_loc10_));
         _loc13_.battleId = _loc8_;
         _loc13_.turnNum = _loc6_;
         _loc13_.commandNum = _loc7_;
         _loc13_.playerNum = _loc9_;
         return _loc13_;
      }
   }
}

