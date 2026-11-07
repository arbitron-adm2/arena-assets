package ru.pragmatix.wormix.serialization.clans.main.server
{
   import §%&6§.§0%2§;
   import §&"c§.§5$n§;
   import §,"v§.§@#&§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§3!D§;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ClanInviteStructureBinarySerializer implements §@#&§
   {
      
      public function ClanInviteStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ClanInviteStructure = new ClanInviteStructure();
         _loc3_.clanId = param1.readInt();
         _loc3_.clanName = param1.readUTF();
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_.clanEmblem.push(param1.readUnsignedByte());
            _loc5_++;
         }
         _loc3_.socialId = param1.readShort();
         _loc3_.profileId = param1.readUnsignedInt();
         _loc3_.stringProfileId = param1.readUTF();
         _loc3_.rank = param1.readShort();
         _loc3_.name = param1.readUTF();
         _loc3_.inviteDate = param1.readInt();
         return _loc3_;
      }
   }
}

