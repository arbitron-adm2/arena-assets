package ru.pragmatix.wormix.serialization.clans.structures
{
   import §"$+§.*;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+%S§.§[&;§;
   import §,"v§.§@#&§;
   import §0%[§.§^"5§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §8$V§.*;
   import §9"-§.§?!s§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §^#[§.§?"&§;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.PumpReactionRates;
   import ru.pragmatix.wormix.messages.server.PumpReactionRatesResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class ClanAuditActionTOBinarySerializer implements §@#&§
   {
      
      public function ClanAuditActionTOBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ClanAuditActionTO = new ClanAuditActionTO();
         _loc3_.date = param1.readInt();
         _loc3_.action = param1.readShort();
         _loc3_.publisherId = param1.readInt();
         _loc3_.memberId = param1.readInt();
         _loc3_.param = param1.readInt();
         return _loc3_;
      }
   }
}

