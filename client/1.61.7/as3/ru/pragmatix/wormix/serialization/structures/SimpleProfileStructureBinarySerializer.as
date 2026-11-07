package ru.pragmatix.wormix.serialization.structures
{
   import § &5§.§=#P§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§@#&§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §4'§.§`"q§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import config.achievements.§!$L§;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.AwardedFriendsComeback;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class SimpleProfileStructureBinarySerializer implements §@#&§
   {
      
      public function SimpleProfileStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:SimpleProfileStructure = new SimpleProfileStructure();
         _loc3_.id = param1.readUnsignedInt();
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
         var _loc4_:String = param1.readUTF();
         if(!_loc4_)
         {
            _loc3_.socialId = _loc3_.id.toString();
         }
         else
         {
            _loc3_.socialId = _loc4_;
         }
         _loc3_.socialNetId = param1.readByte();
         param1.readShort();
         _loc3_.clanMember = ClanMemberStructure(§<!h§.§@%$§(ClanMemberStructure).deserializeStructure(param1,null));
         _loc3_.rank = param1.readByte();
         _loc3_.skin = param1.readByte();
         return _loc3_;
      }
   }
}

