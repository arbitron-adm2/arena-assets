package ru.pragmatix.wormix.serialization.client
{
   import §'%[§.§#&B§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2"L§.§##l§;
   import §4%_§.§3§;
   import §6",§.§[%w§;
   import §7!B§.§`"d§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   
   public class DistributePointsBinarySerializer implements §&"a§
   {
      
      public function DistributePointsBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 14;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:DistributePoints = DistributePoints(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeInt(_loc3_.armor);
         _loc5_.writeInt(_loc3_.attack);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:DistributePoints = new DistributePoints();
         _loc3_.armor = param1.readUnsignedInt();
         _loc3_.attack = param1.readInt();
         return _loc3_;
      }
   }
}

