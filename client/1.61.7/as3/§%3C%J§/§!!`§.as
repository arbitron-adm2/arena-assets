package §<%J§
{
   import § #m§.§;#^§;
   import §!!!§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#",§.ChooseFriendMenu;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!m§.§;#[§;
   import §&"R§.§;!t§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&&6§.*;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §+$=§.*;
   import §+%S§.§[0§;
   import §,#_§.FrameTimer;
   import §-%B§.*;
   import §-@§.§-#m§;
   import §-@§.§5"4§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.DamageEvent;
   import §3%J§.BuyBattleTokensDialog;
   import §4!!§.*;
   import §4!x§.§@& §;
   import §4&F§.*;
   import §4f§.§-&§;
   import §5%u§.§4"h§;
   import §6"'§.§&"3§;
   import §6%2§.§'"Y§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.*;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%E§.§,$2§;
   import §<%k§.*;
   import §<V§.*;
   import §=!p§.§7#E§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+l§;
   import §?$7§.§6&'§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[!O§.§1#i§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import org.gestouch.extensions.native.*;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!!`§ extends §@& § implements §^c§
   {
      
      private var rewardAvailableTab:MovieClip;
      
      private var notRewardedTab:MovieClip;
      
      private var §2j§:TextField;
      
      private var §0#?§:TextField;
      
      private var §"#A§:DisplayObject;
      
      private var buyBtn:§?%>§;
      
      public function §!!`§()
      {
         super(§6#A§.§!&6§(§+"'§.§?$H§));
      }
      
      private static function §2$p§(param1:Event) : void
      {
         var _loc2_:ChooseFriendMenu = new ChooseFriendMenu(§@&A§);
         _loc2_.show();
      }
      
      private static function §@&A§(param1:UserProfile) : void
      {
         §8"%§.§?!W§.§]$R§(param1,PvpBattleType.FRIEND_PVP,§-"P§.§="%§);
      }
      
      private static function §`#C§(param1:Event) : void
      {
         var _loc2_:ChooseFriendMenu = new ChooseFriendMenu(§3$,§);
         _loc2_.show();
      }
      
      private static function §3$,§(param1:UserProfile) : void
      {
         §8"%§.§?!W§.§]$R§(param1,PvpBattleType.PVE_FRIEND,§-"P§.§4&<§);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:String = null;
         super.§@"o§(param1);
         this.rewardAvailableTab = §'$a§("rewardAvailableTab");
         this.notRewardedTab = §'$a§("notRewardedTab");
         this.§2j§ = §'%s§("rewardedText");
         this.§0#?§ = §'%s§("rewardAvailableTab.currentCoins.battleCoinsCount");
         this.§"#A§ = getChildByName("rewardAvailableTab.currentCoins.battleCoinsBadge");
         §>!-§.setText(§0$N§.§<N§("RANDOM_PARTNER"),§"-§.§+$m§);
         var _loc3_:§?%>§ = §!&5§.§7#[§(getChildByName("friendDuelBtn"));
         _loc3_.setText(§0$N§.RACE_QUEST_CALL_FRIEND,§"-§.§+$m§);
         _loc3_.§[!u§(§2$p§);
         var _loc4_:§?%>§ = §!&5§.§7#[§(getChildByName("withFriendBtn"));
         _loc4_.setText(§0$N§.FRIEND_COOP_MODE_BTN,§"-§.§+$m§);
         _loc4_.§[!u§(§`#C§);
         this.buyBtn = §!&5§.§7#[§(getChildByName("rewardAvailableTab.buyBtn"));
         this.buyBtn.§[!u§(this.§`"D§);
         var _loc5_:§0%9§ = new §0%9§(this.buyBtn.simpleButton);
         _loc5_.setText(§0$N§.UNLOCK_FOR,§"-§.§+$m§);
         _loc5_.setText(§!"b§.§^#K§.toString(),§"-§.§6"j§,"textCount");
         §7&5§.§>&<§(§'%s§("duelWithFriendText"),§0$N§.RACE_QUEST_PLAY_WITH_FRIEND);
         _loc2_ = §0%§.format(§0$N§.RACE_QUEST_OPEN_REWARD,{
            "br":"\n",
            "br1":"\n"
         });
         §7&5§.§>&<§(§'%s§("rewardAvailableTab.descrText"),_loc2_);
         _loc2_ = §0%§.format(§0$N§.RACE_QUEST_NOT_REWARDED,{
            "br":"\n",
            "br1":"\n",
            "br2":"\n",
            "br3":"\n"
         });
         §7&5§.§>&<§(§'%s§("notRewardedTab.descrText"),_loc2_);
         _loc2_ = §0%§.format(§0$N§.RACE_QUEST_REWARDED,{
            "br":"\n",
            "br1":"\n",
            "br2":"\n",
            "br3":"\n",
            "br4":"\n",
            "br5":"\n",
            "br6":"\n"
         });
         §7&5§.§>&<§(this.§2j§,_loc2_);
         §7&5§.§>&<§(§'%s§("notRewardedTab.rewardBtnDisabledText"),§0$N§.RACE_QUEST_REWARD_BTN_DISABLED);
         §7&5§.§>&<§(§'%s§("rewardAvailableTab.currentCoins.battleCoinsLabel"),§0$N§.MERCS_QUEST_BATTLE_COINS);
         this.§5#V§();
         this.§^$l§();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         this.update();
         super.show(param1);
         this.playAnimations();
      }
      
      override public function hide() : void
      {
         this.stopAnimations();
         super.hide();
      }
      
      private function update() : void
      {
         var _loc1_:int = int(§8"%§.§[%h§.§`t§());
         §7&5§.§?$k§(this.§0#?§,_loc1_.toString());
         this.§"#A§.x = this.§0#?§.x + this.§0#?§.getLineMetrics(0).width + 10;
         if(§8"%§.§?$5§.§"!4§())
         {
            this.rewardAvailableTab.visible = true;
            this.notRewardedTab.visible = this.§2j§.visible = false;
         }
         else if(!§8"%§.§?$5§.canStartNew && §8"%§.§?$5§.§'!!§)
         {
            this.§2j§.visible = true;
            this.notRewardedTab.visible = this.rewardAvailableTab.visible = false;
         }
         else
         {
            this.notRewardedTab.visible = true;
            this.rewardAvailableTab.visible = this.§2j§.visible = false;
         }
      }
      
      private function §`"D§(param1:Event) : void
      {
         var _loc2_:§-#m§ = null;
         _loc2_ = §8"%§.§[%h§;
         var _loc3_:Boolean = _loc2_.§`t§() < §!"b§.§^#K§;
         if(_loc3_)
         {
            new BuyBattleTokensDialog(this.update).show();
         }
         else
         {
            _loc2_.§-"r§(_loc2_.§`t§() - §!"b§.§^#K§);
            §8"%§.§?$5§.§?&%§(null);
            this.hide();
         }
      }
      
      override protected function okAction() : void
      {
         if(Application.userProfile.getLevel() >= §8"%§.§?$5§.wager.minLevel)
         {
            super.okAction();
            if(§!"b§.§'"p§())
            {
               §5f§.§8#&§();
               §8"%§.§?$5§.§3&%§();
            }
            else
            {
               §8"%§.§?$5§.§8"u§();
            }
         }
         else
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0%§.format(§0$N§.QUEST_ACCESS_LEVEL_MESSAGE,{"level":§8"%§.§?$5§.wager.minLevel}));
         }
      }
      
      private function §5#V§() : void
      {
         var _loc1_:Number = NaN;
         var _loc3_:String = null;
         var _loc4_:String = null;
         _loc1_ = §!"b§.§ !F§.getTime() / 1000;
         var _loc2_:int = §0#2§.§0%x§(_loc1_) + 1;
         if(_loc2_ == 1)
         {
            _loc3_ = §0$N§.MERCS_QUEST_LAST_DAY;
         }
         else
         {
            _loc4_ = Social.§-%c§.§4!]§(_loc2_,§0$N§.DAY_PLURALS);
            _loc3_ = §0%§.format(§0$N§.MERCS_QUEST_TIME_LEFT,{
               "count":_loc2_,
               "days":_loc4_
            });
         }
         §7&5§.§>&<§(§'%s§("leftTimeText"),_loc3_);
         getChildByName("leftTimeText").visible = false;
      }
      
      private function §^$l§() : void
      {
         var _loc1_:String = null;
         _loc1_ = Social.settings.§@"G§().toString();
         var _loc2_:Boolean = _loc1_ == "ru" || _loc1_ == "ua";
         getChildByName("title_en").visible = !_loc2_;
         getChildByName("title_ru").visible = _loc2_;
      }
      
      public function playAnimations() : void
      {
      }
      
      public function stopAnimations() : void
      {
      }
   }
}

