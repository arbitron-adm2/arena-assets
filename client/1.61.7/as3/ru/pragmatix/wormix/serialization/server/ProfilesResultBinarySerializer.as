package ru.pragmatix.wormix.serialization.server
{
   import §&#h§.§-"F§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §>%S§.§^!V§;
   import §@!i§.§<!9§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class ProfilesResultBinarySerializer implements §&"a§
   {
      
      public function ProfilesResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10005;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc8_:ByteArray = null;
         var _loc3_:ProfilesResult = ProfilesResult(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:uint = 0;
         var _loc7_:uint = _loc3_.userProfileStructures.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc8_ = new ByteArray();
            §<!h§.§@%$§(UserProfileStructure).serializeStructure(_loc3_.userProfileStructures[_loc6_],_loc8_,null);
            _loc5_.writeShort(_loc8_.length);
            _loc5_.writeBytes(_loc8_);
            _loc6_++;
         }
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ProfilesResult = new ProfilesResult();
         var _loc4_:uint = 0;
         var _loc5_:uint = param1.readUnsignedShort();
         _loc3_.userProfileStructures = new Array();
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            param1.readShort();
            _loc3_.userProfileStructures[_loc4_] = §<!h§.§@%$§(UserProfileStructure).deserializeStructure(param1,null);
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

