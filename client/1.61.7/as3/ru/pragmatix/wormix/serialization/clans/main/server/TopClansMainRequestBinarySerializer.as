package ru.pragmatix.wormix.serialization.clans.main.server
{
   import § !P§.§9%Z§;
   import § !P§.§<#q§;
   import §'!Z§.§2!H§;
   import §0&F§.UpgradeEvent;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.main.server.TopClansMainRequest;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.weapons.*;
   
   public class TopClansMainRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function TopClansMainRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:TopClansMainRequest = TopClansMainRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeBoolean(_loc2_.season);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return 96;
      }
   }
}

