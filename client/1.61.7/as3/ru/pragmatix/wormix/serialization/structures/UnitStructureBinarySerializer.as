package ru.pragmatix.wormix.serialization.structures
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§@#&§;
   import §0&F§.SelectObjectEvent;
   import §4#2§.§,%g§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §@!N§.§""L§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §]$v§.§]%_§;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import config.achievements.BossAchieves;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UnitStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.weapons.*;
   
   public class UnitStructureBinarySerializer implements §@#&§
   {
      
      public function UnitStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:UnitStructure = null;
         _loc3_ = new UnitStructure();
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
         _loc3_.raceId = param1.readByte();
         _loc3_.skin = param1.readByte();
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
         return _loc3_;
      }
   }
}

