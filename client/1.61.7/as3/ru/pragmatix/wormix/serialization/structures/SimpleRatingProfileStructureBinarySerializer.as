package ru.pragmatix.wormix.serialization.structures
{
   import §"$+§.§^$`§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §,"v§.§@#&§;
   import §0%[§.§6!?§;
   import §1#p§.§"Z§;
   import §2"L§.*;
   import §2#i§.§!$A§;
   import §3#a§.§-!`§;
   import §7$t§.§;#_§;
   import §<%c§.*;
   import §?#g§.Race;
   import §^"y§.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.structures.SimpleRatingProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   
   public class SimpleRatingProfileStructureBinarySerializer implements §@#&§
   {
      
      public function SimpleRatingProfileStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:SimpleRatingProfileStructure = null;
         _loc3_ = new SimpleRatingProfileStructure();
         _loc3_.id = param1.readInt();
         _loc3_.name = param1.readUTF();
         _loc3_.armor = param1.readInt();
         _loc3_.attack = param1.readInt();
         _loc3_.level = param1.readInt();
         _loc3_.money = param1.readInt();
         _loc3_.realMoney = param1.readInt();
         _loc3_.reactionRate = param1.readInt();
         _loc3_.rating = param1.readInt();
         _loc3_.groupCount = param1.readInt();
         _loc3_.hatId = param1.readShort();
         _loc3_.raceId = param1.readShort();
         _loc3_.artifactId = param1.readShort();
         _loc3_.socialId = param1.readUTF();
         _loc3_.socialNetId = param1.readByte();
         param1.readShort();
         _loc3_.clanMember = ClanMemberStructure(§<!h§.§@%$§(ClanMemberStructure).deserializeStructure(param1,null));
         _loc3_.rank = param1.readByte();
         _loc3_.skin = param1.readByte();
         return _loc3_;
      }
   }
}

