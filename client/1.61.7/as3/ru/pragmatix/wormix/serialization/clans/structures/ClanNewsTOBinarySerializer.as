package ru.pragmatix.wormix.serialization.clans.structures
{
   import §,"v§.§@#&§;
   import §7$1§.§;$n§;
   import §9%W§.§!7§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   
   public class ClanNewsTOBinarySerializer implements §@#&§
   {
      
      public function ClanNewsTOBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ClanNewsTO = new ClanNewsTO();
         _loc3_.logDate = param1.readInt();
         _loc3_.publisherSocialId = param1.readShort();
         _loc3_.publisherProfileId = param1.readInt();
         _loc3_.publisherName = param1.readUTF();
         _loc3_.text = param1.readUTF();
         return _loc3_;
      }
   }
}

