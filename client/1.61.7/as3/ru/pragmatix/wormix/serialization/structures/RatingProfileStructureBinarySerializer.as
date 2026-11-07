package ru.pragmatix.wormix.serialization.structures
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §?#g§.*;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import config.§;"I§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class RatingProfileStructureBinarySerializer implements §@#&§
   {
      
      public function RatingProfileStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:RatingProfileStructure = null;
         _loc3_ = new RatingProfileStructure();
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
         _loc3_.dailyRating = param1.readInt();
         _loc3_.oldPlace = param1.readInt();
         return _loc3_;
      }
   }
}

