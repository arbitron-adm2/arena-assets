package §2!-§
{
   import §!$D§.§2$^§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2#V§.§-#U§;
   import §3"@§.§##L§;
   import §4'§.§#"l§;
   import §6_§.*;
   import §7!B§.§1"?§;
   import §7$t§.§2"y§;
   import §<%k§.§`!v§;
   import §?"[§.*;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §`#x§.*;
   import §`v§.§2&H§;
   import config.achievements.§^t§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class NewGraveEvent extends Event
   {
      
      public var grave:§1"?§;
      
      public function NewGraveEvent(param1:§1"?§, param2:Boolean = false, param3:Boolean = false)
      {
         super(§0%v§.NEW_GRAVE_ADDED,param2,param3);
         this.grave = param1;
      }
      
      override public function clone() : Event
      {
         return new NewGraveEvent(this.grave,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("NewGraveEvent","type","bubbles","cancelable","grave");
      }
   }
}

