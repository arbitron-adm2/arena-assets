package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§,%§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   
   public class MoveProfileSecureTokenBinarySerializer implements §&"a§
   {
      
      public function MoveProfileSecureTokenBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10139;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:MoveProfileSecureToken = new MoveProfileSecureToken();
         _loc4_.secureToken = _loc3_.readUTF();
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

