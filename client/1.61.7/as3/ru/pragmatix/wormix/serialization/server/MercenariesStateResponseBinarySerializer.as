package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §+"m§.§3#[§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §5!,§.§?!P§;
   import §7$t§.§&!e§;
   import §^"y§.§]#i§;
   import flash.events.Event;
   import flash.events.EventPhase;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.social.Social;
   
   use namespace gestouch_internal;
   
   public class MercenariesStateResponseBinarySerializer implements §&"a§
   {
      
      public function MercenariesStateResponseBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10126;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc4_:ByteArray = null;
         var _loc3_:MercenariesStateResponse = new MercenariesStateResponse();
         _loc4_ = new ByteArray();
         param1.readBytes(_loc4_,0,param1.bytesAvailable);
         _loc3_.num = _loc4_.readInt();
         _loc3_.isOpen = _loc4_.readBoolean();
         _loc3_.win = _loc4_.readInt();
         _loc3_.defeat = _loc4_.readInt();
         _loc3_.draw = _loc4_.readInt();
         _loc3_.total_win = _loc4_.readInt();
         _loc3_.total_defeat = _loc4_.readInt();
         _loc3_.total_draw = _loc4_.readInt();
         _loc3_.error = _loc4_.readInt();
         var _loc5_:int = int(_loc4_.readUnsignedShort());
         _loc3_.team = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc3_.team[_loc6_] = _loc4_.readByte();
            _loc6_++;
         }
         _loc3_.attemptsRemainToday = _loc4_.readInt();
         return _loc3_;
      }
   }
}

