package ru.pragmatix.wormix.serialization.client
{
   import § $q§.§3U§;
   import §"#x§.§'"$§;
   import §"$+§.§ G§;
   import §"$+§.§`&$§;
   import §#"V§.*;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&"c§.§5$n§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0!§.*;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §2#W§.§ #,§;
   import §3#a§.§-#M§;
   import §4'§.§^"p§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.client.GetFriendsForMission;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class GetFriendsForMissionBinarySerializer implements §&"a§
   {
      
      public function GetFriendsForMissionBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetFriendsForMission = GetFriendsForMission(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         §!!"§.§]!o§(_loc5_,_loc3_.bossIds);
         _loc5_.writeShort(_loc3_.battleWager);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
      
      public function getCommandId() : uint
      {
         return 93;
      }
   }
}

