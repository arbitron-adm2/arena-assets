package ru.pragmatix.wormix.serialization.server
{
   import §"% §.LevelUpDialog;
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §=!V§.*;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.events.Event;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.social.Social;
   
   public class StartBattleResultBinarySerializer implements §&"a§
   {
      
      public function StartBattleResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10006;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:StartBattleResult = new StartBattleResult();
         var _loc5_:int = 0;
         _loc4_.battleId = _loc3_.readUnsignedInt();
         var _loc6_:int = int(_loc3_.readUnsignedShort());
         _loc4_.reagentsForBattle = new Vector.<int>(0);
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            _loc4_.reagentsForBattle[_loc5_] = _loc3_.readByte();
            _loc5_++;
         }
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

