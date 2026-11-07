package §5"J§
{
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §-@§.§0"e§;
   import §0%[§.§0%§;
   import §2#s§.*;
   import §6",§.§[%w§;
   import §<"L§.*;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §@!N§.§2"e§;
   import §^"y§.§]#i§;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class § #Q§ extends §'& §
   {
      
      private var §[z§:§4!m§;
      
      public function § #Q§(param1:String, param2:uint, param3:Boolean = false)
      {
         super(param2,param3);
         this.§[z§ = new §4!m§(param1,mapRecord);
      }
      
      override protected function § "a§(param1:uint) : void
      {
         super.§ "a§(param1);
         this.§[z§.§ "a§(param1);
      }
      
      override protected function §6&§(param1:uint) : void
      {
         super.§6&§(param1);
         this.§[z§.§6&§(param1);
      }
      
      override public function §1%C§(param1:§?!d§) : void
      {
         super.§1%C§(param1);
         param1.§`%?§ = §"%r§.STABLE;
      }
   }
}

