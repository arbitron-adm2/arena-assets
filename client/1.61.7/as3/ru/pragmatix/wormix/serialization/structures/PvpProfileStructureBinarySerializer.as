package ru.pragmatix.wormix.serialization.structures
{
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §^4§.§@#J§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class PvpProfileStructureBinarySerializer extends UserProfileStructureBinarySerializer
   {
      
      public function PvpProfileStructureBinarySerializer()
      {
         super();
      }
      
      override public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         super.serializeStructure(param1,param2,param3);
      }
      
      override public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:PvpProfileStructure = null;
         var _loc4_:int = 0;
         var _loc14_:int = 0;
         _loc3_ = new PvpProfileStructure();
         _loc3_.id = param1.readUnsignedInt();
         _loc3_.money = param1.readInt();
         _loc3_.realMoney = param1.readInt();
         _loc3_.rating = param1.readInt();
         var _loc5_:uint = param1.readUnsignedShort();
         _loc3_.units = [];
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            param1.readShort();
            _loc3_.units[_loc4_] = §<!h§.§@%$§(TeamMemberStructure).deserializeStructure(param1,null);
            _loc4_++;
         }
         var _loc6_:uint = param1.readUnsignedShort();
         _loc3_.weaponRecordList = [];
         _loc4_ = 0;
         while(_loc4_ < _loc6_)
         {
            _loc3_.weaponRecordList[_loc4_] = new WeaponStructure(param1.readShort(),param1.readShort());
            _loc4_++;
         }
         var _loc7_:int = int(param1.readUnsignedShort());
         _loc3_.stuff = [];
         _loc4_ = 0;
         while(_loc4_ < _loc7_)
         {
            _loc3_.stuff[_loc4_] = param1.readShort();
            _loc4_++;
         }
         var _loc8_:int = param1.readUnsignedShort() / 6;
         _loc3_.temporalStuff = new Dictionary();
         _loc4_ = 0;
         while(_loc4_ < _loc8_)
         {
            _loc14_ = param1.readShort();
            _loc3_.temporalStuff[_loc14_] = param1.readInt();
            _loc4_++;
         }
         _loc3_.reactionRate = param1.readInt();
         var _loc9_:String = param1.readUTF();
         if(!_loc9_)
         {
            _loc3_.socialId = _loc3_.id.toString();
         }
         else
         {
            _loc3_.socialId = _loc9_;
         }
         _loc3_.socialNetId = param1.readByte();
         var _loc10_:int = int(param1.readUnsignedShort());
         _loc3_.recipes = [];
         _loc4_ = 0;
         while(_loc4_ < _loc10_)
         {
            _loc3_.recipes[_loc4_] = param1.readShort();
            _loc4_++;
         }
         param1.readShort();
         _loc3_.clanMember = ClanMemberStructure(§<!h§.§@%$§(ClanMemberStructure).deserializeStructure(param1,null));
         _loc3_.extraGroupSlotsCount = param1.readByte();
         _loc3_.rankPoints = param1.readInt();
         _loc3_.bestRank = param1.readByte();
         _loc3_.playerNames = param1.readUTF();
         _loc3_.playerNum = param1.readByte();
         _loc3_.teamNum = param1.readByte();
         _loc3_.dailyRating = param1.readInt();
         var _loc11_:int = int(param1.readUnsignedShort());
         _loc3_.backpackConf = [];
         _loc4_ = 0;
         while(_loc4_ < _loc11_)
         {
            _loc3_.backpackConf.push(param1.readShort());
            _loc4_++;
         }
         var _loc12_:int = int(param1.readUnsignedShort());
         _loc3_.activeTeamMembers = [];
         _loc4_ = 0;
         while(_loc4_ < _loc12_)
         {
            param1.readShort();
            _loc3_.activeTeamMembers[_loc4_] = §<!h§.§@%$§(TeamMemberStructure).deserializeStructure(param1,null);
            _loc4_++;
         }
         var _loc13_:int = int(param1.readUnsignedShort());
         _loc3_.seasonsBestRank = [];
         _loc4_ = 0;
         while(_loc4_ < _loc13_)
         {
            _loc3_.seasonsBestRank.push(param1.readByte());
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

