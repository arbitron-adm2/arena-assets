package ru.pragmatix.wormix.serialization.server
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §]$v§.§1>§;
   import §]$v§.§`0§;
   import §^#[§.§&$2§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.server.Pong;
   import ru.pragmatix.wormix.weapons.*;
   
   public class PongBinarySerializer implements §&"a§
   {
      
      public function PongBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10017;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:Pong = Pong(param1);
         var _temp_1:* = new §^!V§();
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return new Pong();
      }
   }
}

