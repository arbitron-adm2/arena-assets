package §%L§
{
   import § !8§.§`!d§;
   import § $q§.§<"]§;
   import § &5§.§=#P§;
   import §!$D§.*;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§7%R§;
   import §##j§.§9x§;
   import §##j§.§<!P§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#k§.§9$v§;
   import §#k§.§^#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&!@§.§ "'§;
   import §&!@§.§ %&§;
   import §&!@§.§!6§;
   import §&!@§.§%V§;
   import §&!@§.§1"7§;
   import §&!@§.§4"_§;
   import §&!@§.§5"`§;
   import §&!@§.§>"B§;
   import §&!@§.AncientGhost;
   import §&!@§.Assassin;
   import §&!@§.Blacksmith;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Devotee;
   import §&!@§.Emperor;
   import §&!@§.Engineer;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Illusionist;
   import §&!@§.Maniacs;
   import §&!@§.Miner;
   import §&!@§.RebelRobot;
   import §&!@§.Samurai;
   import §&!@§.Scientist;
   import §&!@§.Sergeant;
   import §&!@§.SoulMaster;
   import §&!@§.Symbiote;
   import §&!@§.Vikings;
   import §&!@§.VoodooShaman;
   import §&!@§.WindMaster;
   import §&!@§.Yakuza;
   import §+#P§.§8"j§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§[0§;
   import §,$J§.§,$O§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4#`§.*;
   import §4'§.§4$&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#a§.§>!o§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<!W§.§!"+§;
   import §<"L§.§##-§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?!E§.§&!5§;
   import §?!E§.§1&4§;
   import §?!E§.§6!S§;
   import §?!E§.§>"e§;
   import §?!E§.§^"u§;
   import §?#g§.Race;
   import §?$7§.*;
   import §@!N§.§""L§;
   import §@!i§.§5%8§;
   import §@!i§.§5&4§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import com.greensock.TweenMax;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.ExecuteSpecialDeal;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §"%Q§ extends §^#?§
   {
      
      public static var §7F§:§"%Q§;
      
      public static var § %$§:String = "wormix_achieve";
      
      public function §"%Q§(param1:§#&%§)
      {
         super(param1.§&![§(),param1.§0!+§()[0],§ %$§,new Ping(),14500);
         §7F§ = this;
      }
      
      public static function §&![§() : String
      {
         return §7F§.§&![§();
      }
      
      public static function §7!7§() : uint
      {
         return §7F§.§7!7§();
      }
      
      public function §,U§(param1:Object) : void
      {
         §7F§.send(param1);
      }
      
      public function §##$§(param1:Class, param2:Function) : void
      {
         §7F§.addListener(param1,param2);
      }
      
      public function §-"j§(param1:Class, param2:Function) : void
      {
         §7F§.removeListener(param1,param2);
      }
      
      public function §0%g§(param1:Class) : Boolean
      {
         return §7F§.§`$8§(param1);
      }
      
      public function closeConnection() : void
      {
         §7F§.close();
      }
      
      override protected function closeHandler(param1:Event) : void
      {
         super.closeHandler(param1);
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      override protected function §9$R§() : void
      {
      }
   }
}

