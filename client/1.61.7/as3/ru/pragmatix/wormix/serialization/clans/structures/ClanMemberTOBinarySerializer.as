package ru.pragmatix.wormix.serialization.clans.structures
{
   import §!$d§.§<$c§;
   import §+#P§.§]!E§;
   import §,"v§.§@#&§;
   import §,$J§.§,$O§;
   import §5%S§.§>&-§;
   import §7$t§.§;#_§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ClanMemberTOBinarySerializer implements §@#&§
   {
      
      public function ClanMemberTOBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ClanMemberTO = new ClanMemberTO();
         _loc3_.socialId = param1.readShort();
         _loc3_.profileId = param1.readInt();
         _loc3_.socialProfileId = param1.readUTF();
         _loc3_.clanId = param1.readInt();
         _loc3_.rank = param1.readShort();
         _loc3_.name = param1.readUTF();
         _loc3_.online = param1.readBoolean();
         _loc3_.rating = param1.readInt();
         _loc3_.seasonRating = param1.readInt();
         _loc3_.oldPlace = param1.readInt();
         _loc3_.lastLoginTime = param1.readInt();
         _loc3_.donation = param1.readInt();
         _loc3_.donationCurrSeason = param1.readInt();
         _loc3_.donationPrevSeason = param1.readInt();
         _loc3_.cashedMedals = param1.readInt();
         _loc3_.expelPermit = param1.readBoolean();
         _loc3_.muteMode = param1.readBoolean();
         _loc3_.joinDate = param1.readUnsignedInt();
         _loc3_.hostProfileId = param1.readInt();
         _loc3_.weeklyRating = param1.readInt();
         _loc3_.yesterdayRating = param1.readInt();
         return _loc3_;
      }
   }
}

