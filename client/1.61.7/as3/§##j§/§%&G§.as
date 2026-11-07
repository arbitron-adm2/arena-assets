package §##j§
{
   import §!L§.§+"'§;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §+$=§.§6#A§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §<"L§.*;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §%&G§ extends §9x§
   {
      
      private var raceId:uint;
      
      public function §%&G§(param1:uint)
      {
         super(1);
         name = "race";
         this.raceId = param1;
      }
      
      override public function getId() : uint
      {
         return this.raceId;
      }
      
      override public function toString() : String
      {
         return "{" + name + ",id=" + this.raceId + "}";
      }
   }
}

