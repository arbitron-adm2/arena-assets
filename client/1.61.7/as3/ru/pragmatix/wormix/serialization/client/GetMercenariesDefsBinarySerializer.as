package ru.pragmatix.wormix.serialization.client
{
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §+%S§.§2&>§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §4!!§.§#Z§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import §`#x§.§"$r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.client.GetMercenariesDefs;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class GetMercenariesDefsBinarySerializer implements §&"a§
   {
      
      public function GetMercenariesDefsBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 124;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetMercenariesDefs = GetMercenariesDefs(param1);
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
         return new GetMercenariesDefs();
      }
   }
}

