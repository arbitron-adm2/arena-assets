package ru.pragmatix.wormix.serialization.client
{
   import § %"§.*;
   import §"#x§.§'"$§;
   import §"%H§.*;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.*;
   import §4!K§.§4%E§;
   import §4!K§.§>#_§;
   import §4!K§.§^%A§;
   import §4%_§.ZombieGrave;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §@!N§.*;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.PostToClanChatRequest;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class GetDailyBonusBinarySerializer implements §&"a§
   {
      
      public function GetDailyBonusBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 107;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetDailyBonus = GetDailyBonus(param1);
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
         return new GetDailyBonus();
      }
   }
}

