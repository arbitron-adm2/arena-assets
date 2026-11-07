package ru.pragmatix.wormix.serialization.server
{
   import §!L§.§+"'§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §6",§.§[%w§;
   import §>%S§.§^!V§;
   import §@$§.*;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class ReagentsForProfileBinarySerializer implements §&"a§
   {
      
      public function ReagentsForProfileBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:ReagentsForProfile = new ReagentsForProfile();
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:int = int(_loc3_.reagents.length);
         param2.writeInt(_loc6_);
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            param2.writeInt(_loc3_.reagents[_loc7_]);
            _loc7_++;
         }
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ReagentsForProfile = new ReagentsForProfile();
         var _loc4_:int = int(param1.readUnsignedShort());
         _loc3_.reagents = new Vector.<int>();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_.reagents[_loc5_] = param1.readInt();
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return 10085;
      }
   }
}

