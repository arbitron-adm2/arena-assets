package ru.pragmatix.wormix.serialization.clans.main.server
{
   import § $q§.BagMenu;
   import § &5§.§%$O§;
   import §!K§.§"%$§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§]&§;
   import §,"v§.§@#&§;
   import §-8§.§3!x§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2#V§.§-#U§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.request.SetExpelPermitRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetExpelPermitResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ClanMemberStructureBinarySerializer implements §@#&§
   {
      
      public function ClanMemberStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ClanMemberStructure = new ClanMemberStructure();
         _loc3_.rank = param1.readShort();
         _loc3_.clanId = param1.readInt();
         _loc3_.clanName = param1.readUTF();
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_.clanEmblem.push(param1.readUnsignedByte());
            _loc5_++;
         }
         _loc3_.clanRating = param1.readInt();
         _loc3_.clanSeasonRating = param1.readInt();
         _loc3_.reviewState = param1.readShort();
         _loc3_.prevSeasonTopPlace = param1.readInt();
         return _loc3_;
      }
   }
}

