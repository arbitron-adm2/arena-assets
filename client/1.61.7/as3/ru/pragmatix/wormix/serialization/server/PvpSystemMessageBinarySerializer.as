package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §%&3§.§[$z§;
   import §%&3§.§]"e§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §^#[§.§&$2§;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   
   public class PvpSystemMessageBinarySerializer implements §&"a§
   {
      
      public function PvpSystemMessageBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 2021;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:PvpSystemMessage = new PvpSystemMessage();
         _loc3_.type = param1.readShort();
         _loc3_.playerNum = param1.readByte();
         return _loc3_;
      }
   }
}

