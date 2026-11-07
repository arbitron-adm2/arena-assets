package ru.pragmatix.wormix.serialization.structures
{
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §&"c§.§5$n§;
   import §,"v§.§@#&§;
   import §0%[§.§0%§;
   import §2"L§.§^$y§;
   import §2#V§.§-#U§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §?"[§.*;
   import §@<§.§+%]§;
   import §`#x§.*;
   import §`v§.§2&H§;
   import config.achievements.§^t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class UserProfileStructureBinarySerializer implements §@#&§
   {
      
      public function UserProfileStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:UserProfileStructure = null;
         var _loc5_:int = 0;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         _loc4_ = UserProfileStructure(param1);
         param2.writeUnsignedInt(_loc4_.id);
         param2.writeInt(_loc4_.money);
         param2.writeInt(_loc4_.realMoney);
         param2.writeInt(_loc4_.rating);
         var _loc6_:uint = _loc4_.units.length;
         param2.writeShort(_loc6_);
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            param2.writeShort(0);
            §<!h§.§@%$§(TeamMemberStructure).serializeStructure(_loc4_.units[_loc5_],param2,null);
            _loc5_++;
         }
         var _loc7_:int = int(_loc4_.weaponRecordList.length);
         param2.writeShort(_loc7_ * 2);
         _loc5_ = 0;
         while(_loc5_ < _loc7_)
         {
            param2.writeShort(_loc4_.weaponRecordList[_loc5_].getId());
            param2.writeShort(_loc4_.weaponRecordList[_loc5_].getCount());
            _loc5_++;
         }
         var _loc8_:int = int(_loc4_.stuff.length);
         param2.writeShort(_loc8_);
         _loc5_ = 0;
         while(_loc5_ < _loc8_)
         {
            param2.writeShort(_loc4_.stuff[_loc5_]);
            _loc5_++;
         }
         var _loc9_:int = _loc4_.temporalStuff.length / 6;
         param2.writeShort(_loc9_);
         for(_loc10_ in _loc4_.temporalStuff)
         {
            _loc12_ = int(_loc10_);
            param2.writeShort(_loc12_);
            param2.writeInt(int(_loc4_.temporalStuff[_loc12_]));
         }
         param2.writeInt(_loc4_.reactionRate);
         param2.writeUTF(_loc4_.socialId);
         param2.writeByte(_loc4_.socialNetId);
         _loc11_ = int(_loc4_.recipes.length);
         param2.writeShort(_loc11_);
         _loc5_ = 0;
         while(_loc5_ < _loc11_)
         {
            param2.writeShort(_loc4_.recipes[_loc5_]);
            _loc5_++;
         }
         param2.writeShort(0);
         §<!h§.§@%$§(ClanMemberStructure).serializeStructure(_loc4_.clanMember,param2,null);
         param2.writeByte(_loc4_.extraGroupSlotsCount);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:UserProfileStructure = null;
         var _loc4_:int = 0;
         var _loc11_:int = 0;
         _loc3_ = new UserProfileStructure();
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
            _loc11_ = param1.readShort();
            _loc3_.temporalStuff[_loc11_] = param1.readInt();
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
         return _loc3_;
      }
   }
}

