package ru.pragmatix.wormix.serialization.server
{
   import §%"1§.§@%;§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §1#p§.§"Z§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   
   public class ArenaLockedBinarySerializer implements §&"a§
   {
      
      public function ArenaLockedBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10007;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ArenaLocked = ArenaLocked(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUnsignedInt(_loc3_.delay);
         _loc5_.writeShort(_loc3_.currentMission);
         _loc5_.writeShort(_loc3_.errorCode);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ArenaLocked = new ArenaLocked();
         _loc3_.delay = param1.readUnsignedInt();
         _loc3_.currentMission = param1.readShort();
         _loc3_.errorCode = param1.readShort();
         return _loc3_;
      }
   }
}

