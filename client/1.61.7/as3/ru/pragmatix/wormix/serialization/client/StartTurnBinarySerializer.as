package ru.pragmatix.wormix.serialization.client
{
   import § !P§.§<#q§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%z§.§&%&§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§,'§;
   import §2#x§.*;
   import §7$t§.§^%%§;
   import §<!W§.§9%,§;
   import §=!p§.§%#'§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §[" §.*;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.StartTurn;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class StartTurnBinarySerializer implements §&"a§
   {
      
      public function StartTurnBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 143;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:StartTurn = StartTurn(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:§,'§ = new §,'§(getTimer());
         var _loc6_:ByteArray = new ByteArray();
         _loc6_.writeShort(_loc3_.missionId);
         _loc6_.writeUnsignedInt(_loc3_.battleId);
         _loc6_.writeShort(_loc5_.§,!q§(1,20));
         var _loc7_:ByteArray = new ByteArray();
         §<!h§.§@%$§(TurnStructure).serializeStructure(_loc3_.turn,_loc7_,null);
         _loc6_.writeShort(_loc7_.length);
         _loc6_.writeBytes(_loc7_);
         _loc6_.writeUTF(_loc3_.sessionKey);
         §6&A§.§,&!§(_loc6_,§["u§.§'&I§);
         _loc4_.§<!§(_loc6_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc6_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}

