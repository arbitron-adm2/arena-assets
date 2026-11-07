package ru.pragmatix.wormix.serialization.client
{
   import §!L§.§+"'§;
   import §&!?§.§+" §;
   import §&#W§.§?#]§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §3#T§.*;
   import §3%?§.§=E§;
   import §4!!§.§2&F§;
   import §7"Q§.§0$L§;
   import §9%W§.§&!P§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import config.§;"I§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.SelectRace;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class SelectRaceBinarySerializer implements §&"a§
   {
      
      public function SelectRaceBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 44;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:SelectRace = SelectRace(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.raceId);
         _loc5_.writeByte(_loc3_.skinId);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:SelectRace = new SelectRace();
         _loc3_.raceId = param1.readShort();
         _loc3_.skinId = param1.readByte();
         return _loc3_;
      }
   }
}

