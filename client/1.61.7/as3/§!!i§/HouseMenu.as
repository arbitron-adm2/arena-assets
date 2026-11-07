package §!!i§
{
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&%X§.§<$M§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§[0§;
   import §,#c§.ArenaMenu;
   import §-%B§.*;
   import §-8§.§3!x§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1#p§.*;
   import §4f§.§-&§;
   import §5"J§.*;
   import §7$t§.§&!e§;
   import §;!Z§.*;
   import §<"?§.*;
   import §<%k§.§`!v§;
   import §=#g§.§!"X§;
   import §=$#§.§`%u§;
   import §=7§.§?%4§;
   import §>$q§.§4#;§;
   import §?$7§.§6J§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<!9§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import config.achievements.§"!&§;
   import flash.display.*;
   import flash.events.*;
   import flash.text.TextFormat;
   import flash.utils.*;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.ConnectIcon;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.AwardBackpackItemStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.social.Social;
   
   use namespace gestouch_internal;
   
   public class HouseMenu extends §`&-§ implements §^c§
   {
      
      private static const houseGroup:String = "houseGroup";
      
      public var exitBtn:§8"@§;
      
      public var §7$L§:§8"@§;
      
      public var §0%Q§:§8"@§;
      
      public var §,#E§:§8"@§;
      
      public var §!B§:§8"@§;
      
      public var §+!a§:§8"@§;
      
      public var disableCraft:§8"@§;
      
      public var §""R§:§?%>§;
      
      public var photoBtn:§?%>§;
      
      public var §7#=§:§?%>§;
      
      private var settingsBtn:§?%>§;
      
      private var §2%t§:ConnectIcon;
      
      public function HouseMenu()
      {
         super(§6#A§.§!&6§(§+"'§.§8%x§));
         var _loc1_:Sprite = new Sprite();
         §?!C§(_loc1_);
         §8"%§.§#m§.§&#t§(_loc1_,§!"X§.§;%;§);
         this.exitBtn = §!&5§.§;#z§(getChildByName("exit"),houseGroup);
         this.exitBtn.setQtip(§0$N§.EXIT_QTIP,§;#^§.§[!K§,§+"'§.§]!H§);
         _loc1_.addChild(this.exitBtn.getContainer());
         this.§7$L§ = §!&5§.§;#z§(getChildByName("armory"),houseGroup);
         this.§7$L§.setQtip(§0$N§.ARMORY_QTIP,§;#^§.§[!K§,§+"'§.§]!H§);
         _loc1_.addChild(this.§7$L§.getContainer());
         this.§0%Q§ = §!&5§.§;#z§(getChildByName("team"),houseGroup);
         this.§0%Q§.setQtip(§0$N§.TEAM_TITLE,§;#^§.§[!K§,§+"'§.§]!H§);
         _loc1_.addChild(this.§0%Q§.getContainer());
         this.§,#E§ = §!&5§.§;#z§(getChildByName("race"),houseGroup);
         this.§,#E§.setQtip(§0$N§.RACE_TITLE,§;#^§.§[!K§,§+"'§.§]!H§);
         _loc1_.addChild(this.§,#E§.getContainer());
         if(§,! §.§]"X§())
         {
            this.§!B§ = §!&5§.§;#z§(getChildByName("achievRoom"),houseGroup);
            this.§!B§.setQtip(§0$N§.ACHIEVEMENTS_TITLE,§;#^§.§[!K§,§+"'§.§]!H§);
            _loc1_.addChild(this.§!B§.getContainer());
            this.§!B§.x = this.§,#E§.x;
         }
         else
         {
            removeChild(§!&5§.§7#[§(getChildByName("achievRoom")));
         }
         this.§+!a§ = §!&5§.§;#z§(getChildByName("craft"),houseGroup);
         this.§+!a§.setQtip(§0$N§.CRAFT_QTIP,§;#^§.§[!K§,§+"'§.§]!H§);
         _loc1_.addChild(this.§+!a§.getContainer());
         this.disableCraft = §!&5§.§;#z§(getChildByName("disableCraft"));
         var _loc2_:String = §0%§.format(§0$N§.CRAFT_DISABLE_QTIP,{"level":§,! §.§5!`§});
         this.disableCraft.setQtip(_loc2_,§;#^§.§[!K§,§+"'§.§]!H§);
         _loc1_.addChild(this.disableCraft.getContainer());
         this.photoBtn = §!&5§.§7#[§(getChildByName("photoBtn"));
         this.photoBtn.setQtip(§0$N§.PHOTO_QTIP,§;#^§.LEFT,§+"'§.§]!H§);
         this.photoBtn.setVisible(Social.settings.§2$@§());
         §8"%§.§#m§.§&#t§(this.photoBtn,§!"X§.§`"V§);
         this.settingsBtn = §!&5§.§7#[§(getChildByName("settingsBtn"));
         this.settingsBtn.§[!u§(§8"%§.§&S§.§4"[§);
         this.settingsBtn.setQtip(§0$N§.SETTINGS_QTIP,§;#^§.LEFT,§+"'§.§]!H§);
         §8"%§.§#m§.§&#t§(this.settingsBtn,§!"X§.§`"V§);
         this.§2%t§ = new ConnectIcon(§%%w§.§7F§,this.settingsBtn.width,§;#^§.LEFT,§+"'§.§]!H§);
         addChild(this.§2%t§);
         this.§2%t§.x = this.photoBtn.x;
         this.§2%t§.y = this.photoBtn.y - this.photoBtn.height - (this.settingsBtn.y - (this.photoBtn.y + this.photoBtn.height));
         §8"%§.§#m§.§&#t§(this.§2%t§,§!"X§.§`"V§);
         this.§""R§ = §4"0§.§-!S§(getChildByName("zeroing"));
         this.§""R§.setQtip(§0$N§.WIPE_PROFILE_TITLE,§;#^§.RIGHT,§+"'§.§]!H§);
         §8"%§.§#m§.§&#t§(this.§""R§,§!"X§.§[&I§);
         this.§7#=§ = §!&5§.§7#[§(getChildByName("profileBtn"));
         this.§7#=§.setQtip(§0$N§.TRANSFER_PROFILE_TITLE,§;#^§.RIGHT,§+"'§.§]!H§);
         §8"%§.§#m§.§&#t§(this.§7#=§,§!"X§.§[&I§);
         this.§7#=§.setVisible(false);
      }
      
      override protected function §^^§() : void
      {
         this.photoBtn.§[!u§(Application.instance.§1s§().§!#7§);
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         var _loc4_:§8"@§ = null;
         var _loc2_:int = this.exitBtn.x - this.§7$L§.x - this.§7$L§.width;
         var _loc3_:Boolean = §4! §.isMe(param1);
         if(this.§!B§)
         {
            §`o§.§@"n§(this.§!B§.getContainer(),this.§,#E§.getContainer(),_loc2_);
            §8"%§.§#m§.§`$y§(this.§!B§);
         }
         _loc4_ = this.§!B§ ? this.§!B§ : this.§0%Q§;
         var _loc5_:Boolean = param1.getLevel() >= §,! §.§5!`§;
         this.§+!a§.setVisible(_loc5_);
         this.disableCraft.setVisible(!_loc5_);
         §`o§.§@"n§(this.§+!a§.getContainer(),_loc4_.getContainer(),_loc2_);
         this.disableCraft.x = this.§+!a§.x;
         §8"%§.§#m§.§`$y§(this.§+!a§);
         §8"%§.§#m§.§`$y§(this.disableCraft);
      }
      
      public function playAnimations() : void
      {
         if(!isVisible())
         {
            return;
         }
         §!"$§(this.§""R§).playAnimations();
      }
      
      public function stopAnimations() : void
      {
         §!"$§(this.§""R§).stopAnimations();
      }
   }
}

