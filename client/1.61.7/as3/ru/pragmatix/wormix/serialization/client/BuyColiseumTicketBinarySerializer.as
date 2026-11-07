package ru.pragmatix.wormix.serialization.client
{
   import §!L§.§+"'§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&#E§.§;2§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §,!f§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-@§.§5"4§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §4!x§.§@& §;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §?>§.§0!7§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[!O§.§1#i§;
   import §]$v§.§+%n§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.ColorTransform;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BuyColiseumTicketBinarySerializer implements §&"a§
   {
      
      public function BuyColiseumTicketBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 112;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:BuyColiseumTicket = BuyColiseumTicket(param1);
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
         return new BuyColiseumTicket();
      }
   }
}

