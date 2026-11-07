package §2B§
{
   import § #m§.§;#^§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import § m§.§2&G§;
   import §!$d§.*;
   import §!L§.§+"'§;
   import §"#]§.§@%x§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§0!-§;
   import §#%!§.§7V§;
   import §#%!§.§[%U§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#E§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §'$j§.§'-§;
   import §+#m§.§@"i§;
   import §+$=§.§6#A§;
   import §+%Q§.§#%9§;
   import §0!§.§6#z§;
   import §0"L§.§+# §;
   import §0%"§.§[!^§;
   import §0%[§.§%"'§;
   import §0%[§.§0%§;
   import §0%j§.§0$+§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §2!0§.§=%F§;
   import §3"_§.§?#w§;
   import §3#a§.*;
   import §4!x§.§@& §;
   import §4#2§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §8#`§.§#%r§;
   import §8$Z§.§9"t§;
   import §9&+§.§6&=§;
   import §<!W§.§;#A§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=#g§.§!"X§;
   import §=#g§.§%!x§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§]!V§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§?"&§;
   import §`#x§.§[$I§;
   import §`%&§.§5$1§;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import com.inreflected.forks.spark.effects.easing.Power;
   import com.inreflected.ui.touchScroll.*;
   import config.achievements.§!$L§;
   import config.achievements.§"!&§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3!V§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&!Y§ extends §`&-§
   {
      
      public static const MISSION_TAB_NAME:String = "mission";
      
      public static const PVP_TAB_NAME:String = "pvp";
      
      public static const BOSS_TAB_NAME:String = "boss";
      
      public static const §6#x§:String = "gladiator";
      
      private static const §<#r§:String = "TabPanelButtons";
      
      private static var §`%p§:String = "";
      
      private var §'" §:§@%x§;
      
      private var §#x§:§@"i§;
      
      private var §#"3§:§3!V§;
      
      private var §>$Q§:§2&G§;
      
      private var §!"N§:§1#g§;
      
      private var tabs:Vector.<§1#g§> = new Vector.<§1#g§>(0);
      
      private var §-!3§:§8"@§;
      
      private var §69§:§8"@§;
      
      private var bossesBtn:§8"@§;
      
      private var § &,§:§^%y§;
      
      private var tokensPanel:§1$U§;
      
      private var §#!c§:Boolean;
      
      public function §&!Y§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.§ &,§ = new §^%y§(§#&E§.§-!l§,this);
         this.tokensPanel = new §1$U§(§'$a§("tokensPanel"));
         this.§>$Q§ = new §2&G§(§6#x§);
         this.§>$Q§.§@"o§(getChildByName("gladiatorPanel"));
         this.tabs.push(this.§>$Q§);
         this.§'" § = new §@%x§(MISSION_TAB_NAME);
         this.§'" §.§@"o§(getChildByName("tab_mission"));
         this.tabs.push(this.§'" §);
         this.§#x§ = §=%F§.create(§8"%§.§[f§,PVP_TAB_NAME);
         this.§#x§.§@"o§(getChildByName("tab_pvp"));
         this.tabs.push(this.§#x§);
         this.§#"3§ = new §3!V§(BOSS_TAB_NAME);
         this.§#"3§.§@"o§(getChildByName("tab_boss"));
         this.tabs.push(this.§#"3§);
         this.§-!3§ = §!&5§.§;#z§(getChildByName("tabTitle_mission"),§<#r§);
         this.§-!3§.setText(§0$N§.MISSION_TAB_NAME,§"-§.§+$m§);
         this.§-!3§.§[!u§(this.§3%p§);
         this.§69§ = §!&5§.§;#z§(getChildByName("tabTitle_pvp"),§<#r§);
         this.§69§.setText(§0$N§.PVP_TAB_NAME,§"-§.§+$m§);
         this.§69§.§[!u§(this.§="C§);
         this.bossesBtn = §!&5§.§;#z§(getChildByName("tabTitle_boss"),§<#r§);
         this.bossesBtn.setText(§0$N§.BOSS_TAB_NAME,§"-§.§+$m§);
         this.bossesBtn.§[!u§(this.§^%9§);
         this.§'" §.addEventListener(§8"n§.§";§,this.§"%+§);
         this.§#"3§.addEventListener(§8"n§.§";§,this.§"%+§);
         this.§>$Q§.addEventListener(§8"n§.ACTIVATE,this.§#$p§);
      }
      
      public function init() : void
      {
         this.setDisabled(true);
         if(§,! §.§9$!§() && Social.settings.§7%N§())
         {
            this.§!"N§ = this.§#x§;
            this.§69§.setPressed(true);
         }
         else
         {
            this.§!"N§ = this.§'" §;
            this.§-!3§.setPressed(true);
         }
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         this.§'" §.setDisabled(param1);
         this.§#x§.setDisabled(param1);
      }
      
      private function §"%+§(param1:§8"n§) : void
      {
         var _loc2_:§1#g§ = §1#g§(param1.target);
         _loc2_.setVisible(true);
         this.showAvailableBattlesCount();
      }
      
      private function §#$p§(param1:Event) : void
      {
         this.§ &,§.setVisible(false);
      }
      
      private function §3%p§(param1:Event) : void
      {
         this.§5%D§();
         §`%p§ = MISSION_TAB_NAME;
         this.§!"N§ = this.§'" §;
         this.§'" §.activate();
      }
      
      private function §="C§(param1:Event) : void
      {
         this.§5%D§();
         §`%p§ = PVP_TAB_NAME;
         this.§!"N§ = this.§#x§;
         this.§#x§.activate();
         this.§#x§.setVisible(true);
      }
      
      private function §^%9§(param1:Event) : void
      {
         this.§5%D§();
         §`%p§ = BOSS_TAB_NAME;
         this.§!"N§ = this.§#"3§;
         this.§#"3§.activate();
      }
      
      private function §5%D§() : void
      {
         var _loc1_:§`&-§ = null;
         for each(_loc1_ in this.tabs)
         {
            _loc1_.setVisible(false);
         }
      }
      
      public function §5!F§() : §1#g§
      {
         return this.§!"N§;
      }
      
      public function § !B§() : String
      {
         return §`%p§;
      }
      
      public function §5!I§(param1:String, param2:UserProfile = null) : void
      {
         this.§5%D§();
         this.§?!O§(param2 == null);
         this.§ &,§.setVisible(param1 != §6#x§);
         this.showAvailableBattlesCount();
         if(!this.§#!c§)
         {
            this.§'" §.§@#H§().setVisible(false);
            this.§#"3§.§@#H§().setVisible(false);
            this.§'" §.§&#F§(true);
            this.§#"3§.§&#F§(true);
            §8"%§.§%w§.§&u§(this.§4!Z§,this.§3"I§);
         }
         else
         {
            this.§'" §.§@#H§().update();
            this.§#"3§.§@#H§().update();
         }
         switch(param1)
         {
            case §6#x§:
               §`%p§ = §6#x§;
               this.§!"N§ = this.§>$Q§;
               this.§>$Q§.activate();
               break;
            case MISSION_TAB_NAME:
               §`%p§ = MISSION_TAB_NAME;
               this.§!"N§ = this.§'" §;
               this.§'" §.activate();
               this.§-!3§.setPressed(true);
               break;
            case PVP_TAB_NAME:
               §`%p§ = PVP_TAB_NAME;
               this.§!"N§ = this.§#x§;
               this.§#x§.setVisible(true);
               this.§#x§.activate();
               this.§69§.setPressed(true);
               break;
            case BOSS_TAB_NAME:
               §`%p§ = BOSS_TAB_NAME;
               this.§!"N§ = this.§#"3§;
               this.§#"3§.activate();
               this.§#"3§.§@#H§().§6"q§(param2);
               this.bossesBtn.setPressed(true);
         }
      }
      
      private function §4!Z§() : void
      {
         this.§>'§(true);
         this.§'" §.§@#H§().setVisible(true);
         this.§#"3§.§@#H§().setVisible(true);
         this.§'" §.§&#F§(false);
         this.§#"3§.§&#F§(false);
         this.§'" §.§@#H§().update();
         this.§#"3§.§@#H§().update();
         this.showAvailableBattlesCount();
      }
      
      private function §3"I§(param1:uint) : void
      {
         this.§'" §.§&#F§(false);
         this.§#"3§.§&#F§(false);
         this.§>'§(true);
      }
      
      public function §>'§(param1:Boolean) : void
      {
         this.§#!c§ = param1;
      }
      
      public function §8N§(param1:String) : §`&-§
      {
         switch(param1)
         {
            case §6#x§:
               return this.§>$Q§;
            case MISSION_TAB_NAME:
               return this.§'" §;
            case PVP_TAB_NAME:
               return this.§#x§;
            case BOSS_TAB_NAME:
               return this.§#"3§;
            default:
               return null;
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.§-!3§.removeHandler(this.§3%p§);
         this.§69§.removeHandler(this.§="C§);
         this.bossesBtn.removeHandler(this.§^%9§);
      }
      
      public function §?!O§(param1:Boolean = true) : void
      {
         this.§-!3§.setVisible(param1);
         this.§69§.setVisible(param1);
         this.bossesBtn.setVisible(param1);
      }
      
      public function showAvailableBattlesCount() : void
      {
         this.§ &,§.update();
         this.tokensPanel.update();
      }
      
      public function chestsUpdate() : void
      {
         this.§#x§.chestsUpdate();
      }
      
      public function § T§() : Boolean
      {
         return this.§>$Q§.isVisible();
      }
   }
}

