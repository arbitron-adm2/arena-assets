package §!$Z§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §,"v§.§9%d§;
   import §,#h§.§8#Z§;
   import §-G§.§ A§;
   import §-G§.§&"7§;
   import §-G§.§1$l§;
   import §2"L§.§^$y§;
   import §3#T§.§]!6§;
   import §3#a§.*;
   import §4!x§.§@& §;
   import §5#`§.§7%g§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §="z§.§9%1§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §"$I§ extends §@& §
   {
      
      public static var instance:§"$I§;
      
      private var closeBtn:§?%>§;
      
      private var infoBtn:§8"@§;
      
      private var searchBtn:§8"@§;
      
      private var §##4§:§8"@§;
      
      private var §4"T§:§8"@§;
      
      private var §7$9§:§8#Z§;
      
      private var §;N§:§1$l§;
      
      private var §1T§:§ A§;
      
      private var §!$V§:§&"7§;
      
      private var §+$J§:§8L§;
      
      private const clanControlGroup:String = "clanControlGroup";
      
      private var §<#t§:uint;
      
      public function §"$I§()
      {
         super(§6#A§.§!&6§(§+"'§.§^z§));
         this.closeBtn = §!&5§.§7#[§(getChildByName("closeBtn"));
         this.closeBtn.§[!u§(§0!j§);
         this.infoBtn = §!&5§.§;#z§(getChildByName("tab1"),this.clanControlGroup);
         this.infoBtn.setText(§0$N§.CLAN_INFO_TAB,§"-§.§+$m§);
         this.searchBtn = §!&5§.§;#z§(getChildByName("tab2"),this.clanControlGroup);
         this.searchBtn.setText(§0$N§.§5!1§,§"-§.§+$m§);
         this.§##4§ = §!&5§.§;#z§(getChildByName("tab3"),this.clanControlGroup);
         this.§##4§.setText(§0$N§.§?$n§,§"-§.§+$m§);
         this.§4"T§ = §!&5§.§;#z§(getChildByName("tab4"),this.clanControlGroup);
         this.§4"T§.setText(§0$N§.§[#e§,§"-§.§+$m§);
         this.§7$9§ = new §8#Z§();
         this.§;N§ = new §1$l§();
         this.§1T§ = new § A§();
         this.§!$V§ = new §&"7§();
         this.§+$J§ = new §8L§();
         §'$a§("container").addChild(this.§+$J§.§#!`§());
         this.§+$J§.§3#J§(this.§7$9§,this.infoBtn);
         this.§+$J§.§3#J§(this.§;N§,this.searchBtn);
         this.§+$J§.§3#J§(this.§1T§,this.§##4§);
         this.§+$J§.§3#J§(this.§!$V§,this.§4"T§);
         this.§+$J§.§7!g§(this.§;N§);
         this.§<#t§ = height;
      }
      
      public static function getInstance() : §"$I§
      {
         if(!instance)
         {
            instance = new §"$I§();
         }
         return instance;
      }
      
      public function §[%0§(param1:int) : void
      {
         this.§7$9§.§!Q§(param1);
         this.§+$J§.§7!g§(this.§7$9§);
      }
      
      public function §2$A§(param1:int) : void
      {
         this.§7$9§.§!Q§(param1);
         this.§+$J§.§7!g§(this.§1T§);
      }
      
      override public function §!s§() : void
      {
         super.§!s§();
         this.align();
      }
      
      public function align() : void
      {
         this.y = (§8"%§.§^%W§.getCorrectResolution2().§'$#§() - this.§<#t§) * 0.5;
      }
      
      public function §&g§() : void
      {
         this.§+$J§.§7!g§(this.§;N§);
      }
      
      public function get §0%+§() : §8#Z§
      {
         return this.§7$9§;
      }
      
      public function get §>Q§() : § A§
      {
         return this.§1T§;
      }
      
      public function get §]$'§() : §&"7§
      {
         return this.§!$V§;
      }
   }
}

