package ru.pragmatix.wormix.serialization.clans.request
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §+$=§.§6#A§;
   import §<%E§.§6$=§;
   import §@!i§.§!m§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.TopClansRequest;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   
   public class TopClansRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function TopClansRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:TopClansRequest = TopClansRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeBoolean(_loc2_.season);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.TOP_CLANS_REQUEST;
      }
   }
}

