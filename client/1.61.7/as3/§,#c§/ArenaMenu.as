package §,#c§
{
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §##j§.§!%&§;
   import §##j§.§'"%§;
   import §##j§.§0%=§;
   import §##j§.§7%R§;
   import §##j§.§9x§;
   import §##j§.§<!P§;
   import §##j§.§>"M§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%#u§.*;
   import §&!@§.§!6§;
   import §&!@§.§5"`§;
   import §&!@§.Assassin;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Miner;
   import §&!@§.Samurai;
   import §&!m§.§;#[§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0%z§.§1&6§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §2B§.§&!Y§;
   import §4!x§.§@& §;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$V§.TeamController;
   import §;#O§.§+%7§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §@!N§.§3!3§;
   import §@!i§.§,! §;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[!`§.ArchivistSeal;
   import §^#[§.§&$2§;
   import config.§^"2§;
   import config.achievements.BossAchieves;
   import config.achievements.§`&<§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§!!"§;
   
   public class ArenaMenu extends §@& §
   {
      
      private var §!"J§:§&!Y§;
      
      public function ArenaMenu()
      {
         super(§6#A§.§!&6§(§+"'§.§`!s§));
         this.§!"J§ = new §&!Y§(getChildByName("tabs") as DisplayObjectContainer);
         addEventListener(§[%w§.WINDOW_SHOW,this.§["g§);
      }
      
      private function §["g§(param1:Event) : void
      {
         this.§!"J§.setDisabled(false);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§<![§;
         §%%R§ = §`!v§.ARENA;
      }
      
      public function §5!F§() : §1#g§
      {
         return this.§!"J§.§5!F§();
      }
      
      public function § !B§() : String
      {
         return this.§!"J§.§ !B§();
      }
      
      public function §;#!§(param1:String, param2:UserProfile = null) : void
      {
         this.§!"J§.§5!I§(param1,param2);
      }
      
      public function §8N§(param1:String) : §`&-§
      {
         return this.§!"J§.§8N§(param1);
      }
      
      public function getTabPanel() : §&!Y§
      {
         return this.§!"J§;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         this.§5!"§();
         super.show(param1);
         this.§!"J§.init();
      }
      
      public function §5!"§() : void
      {
         this.§!"J§.§>'§(false);
      }
      
      override public function hide() : void
      {
         super.hide();
         this.§!"J§.setDisabled(true);
      }
      
      override public function destroy() : void
      {
         removeEventListener(§[%w§.WINDOW_SHOW,this.§["g§);
         super.destroy();
         this.§!"J§.destroy();
      }
   }
}

