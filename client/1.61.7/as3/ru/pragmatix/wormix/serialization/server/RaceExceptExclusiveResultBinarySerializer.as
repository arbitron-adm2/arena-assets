package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §#k§.§9$v§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §^!]§.MineSetUpEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.PostToClanChatRequest;
   import ru.pragmatix.wormix.messages.clans.response.PostToClanChatResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class RaceExceptExclusiveResultBinarySerializer implements §&"a§
   {
      
      public function RaceExceptExclusiveResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10135;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:RaceExceptExclusiveResult = new RaceExceptExclusiveResult();
         _loc3_.profileId = param1.readUnsignedInt();
         _loc3_.race = param1.readShort();
         _loc3_.skin = param1.readByte();
         return _loc3_;
      }
   }
}

