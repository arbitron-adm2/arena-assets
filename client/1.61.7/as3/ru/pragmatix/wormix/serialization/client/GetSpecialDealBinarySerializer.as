package ru.pragmatix.wormix.serialization.client
{
   import §"#x§.§'"$§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §2B§.§8"n§;
   import §4%_§.ZombieGrave;
   import §4'§.§^"p§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §`%&§.§5$1§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetSpecialDeal;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class GetSpecialDealBinarySerializer implements §&"a§
   {
      
      public function GetSpecialDealBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 108;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetSpecialDeal = GetSpecialDeal(param1);
         var _temp_1:* = new §^!V§();
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return new GetSpecialDeal();
      }
   }
}

