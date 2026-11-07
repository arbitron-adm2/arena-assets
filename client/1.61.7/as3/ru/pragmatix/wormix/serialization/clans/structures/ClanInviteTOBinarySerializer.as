package ru.pragmatix.wormix.serialization.clans.structures
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §,"v§.§@#&§;
   import §2#i§.§+%z§;
   import §<%k§.§`!v§;
   import §^4§.§@#J§;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ClanInviteTOBinarySerializer implements §@#&§
   {
      
      public function ClanInviteTOBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ClanInviteTO = new ClanInviteTO();
         _loc3_.clanId = param1.readInt();
         _loc3_.socialId = param1.readShort();
         _loc3_.profileId = param1.readInt();
         _loc3_.inviteDate = param1.readInt();
         return _loc3_;
      }
   }
}

