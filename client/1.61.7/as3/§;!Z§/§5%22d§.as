package §;!Z§
{
   import § !8§.§`!d§;
   import § !P§.§<#q§;
   import § #m§.§;#^§;
   import § $q§.§,"c§;
   import § &5§.§0&$§;
   import §!$Z§.§6=§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%# §.*;
   import §%#u§.*;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+$=§.§9"%§;
   import §+$=§.§`$v§;
   import §+%S§.§'%V§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §-@§.§-#m§;
   import §0!Y§.§#!Z§;
   import §0%"§.§`"`§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.AttackDodgedEvent;
   import §2#V§.§-#U§;
   import §2>§.*;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §<"L§.*;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §]$v§.*;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import §`%&§.§8U§;
   import §`%&§.§`§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.BuyMercenariesTicket;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.CancelBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §5"d§ extends §@& § implements §^c§
   {
      
      private var §9#§:MovieClip;
      
      private var §-%7§:MovieClip;
      
      private var buyTab:MovieClip;
      
      private var loses:MovieClip;
      
      private var §[%t§:TextField;
      
      private var §0#?§:TextField;
      
      private var §!$J§:TextField;
      
      private var §?""§:TextField;
      
      private var §-$&§:TextField;
      
      private var progressBar:DisplayObject;
      
      private var §>!Z§:DisplayObject;
      
      private var §"#A§:DisplayObject;
      
      private var §9"P§:DisplayObject;
      
      private var buyBtn:§?%>§;
      
      private var §?"<§:Vector.<§,"c§> = new Vector.<§,"c§>();
      
      public function §5"d§()
      {
         super(§6#A§.§!&6§(§+"'§.§?q§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc8_:String = null;
         super.§@"o§(param1);
         this.§5u§();
         var _loc2_:§?%>§ = §!&5§.§7#[§(getChildByName("buildTeamBtn"));
         this.buyBtn = §!&5§.§7#[§(getChildByName("delayBar.buyBtn"));
         this.§-%7§ = §'$a§("progressBar");
         this.§9#§ = §'$a§("delayBar");
         this.buyTab = §'$a§("buyTab");
         this.§[%t§ = §'%s§("progressBar.bar.countText");
         this.§0#?§ = §'%s§("currentCoins.battleCoinsCount");
         this.§!$J§ = §'%s§("noMoreBattles");
         this.§?""§ = §'%s§("playedTotal");
         this.§-$&§ = §'%s§("winRate");
         this.progressBar = getChildByName("progressBar.bar.bar");
         this.§>!Z§ = getChildByName("progressBar.bar.frame");
         this.loses = §'$a§("progressBar.loses");
         this.§"#A§ = getChildByName("currentCoins.battleCoinsBadge");
         this.§9"P§ = getChildByName("currentCoins");
         this.buyBtn.§[!u§(this.§`"D§);
         §>!-§.setText(§0$N§.BATTLE_BTN,§"-§.§+$m§);
         _loc2_.setText(§0$N§.MERCS_QUEST_BUILD_TEAM,§"-§.§+$m§);
         _loc2_.§[!u§(§8"%§.§'%;§.§!$$§);
         var _loc3_:§0%9§ = new §0%9§(this.buyBtn.simpleButton);
         _loc3_.setText(§0$N§.MERCS_QUEST_OPEN,§"-§.§+$m§);
         _loc3_.setText(§?B§.§;!o§.toString(),§"-§.§6"j§,"textCount");
         §7&5§.§>&<§(§'%s§("teamText"),§0$N§.MERCS_QUEST_TEAM_LABEL);
         §7&5§.§>&<§(§'%s§("progressBar.description"),§0$N§.MERCS_QUEST_PROGRESS_DESCRIPTION);
         §7&5§.§>&<§(§'%s§("delayBar.description"),§0$N§.MERCS_QUEST_BUY_DIALOG_DESCRIPTION);
         §7&5§.§>&<§(§'%s§("currentCoins.battleCoinsLabel"),§0$N§.MERCS_QUEST_BATTLE_COINS);
         var _loc4_:TextField = §'%s§("progressBar.losesText");
         §7&5§.§>&<§(_loc4_,§0$N§.DEFEAT_LABEL);
         this.loses.x = _loc4_.x + _loc4_.getLineMetrics(0).width + 10;
         var _loc5_:§`&-§ = new §`&-§(getChildByName("team"));
         var _loc6_:int = 0;
         while(_loc6_ < §?B§.§4&§)
         {
            this.§?"<§.push(new §,"c§(_loc5_.§'$a§("char" + (_loc6_ + 1).toString() + ".avatar")));
            _loc6_++;
         }
         this.§5#V§();
         var _loc7_:String = §0%§.format(§0$N§.MERCS_QUEST_NO_MORE_BATTLES,{
            "br1":"\n",
            "br2":"\n"
         });
         §7&5§.§>&<§(this.§!$J§,_loc7_);
         _loc8_ = Social.settings.§@"G§().toString();
         var _loc9_:Boolean = _loc8_ == "ru" || _loc8_ == "ua";
         getChildByName("title_en").visible = !_loc9_;
         getChildByName("title_ru").visible = _loc9_;
         this.§9#§.visible = false;
      }
      
      private function §5#V§() : void
      {
         var _loc1_:Number = NaN;
         var _loc3_:String = null;
         var _loc4_:String = null;
         _loc1_ = §?B§.§ !F§.getTime() / 1000;
         var _loc2_:int = §0#2§.§0%x§(_loc1_) + 1;
         if(_loc2_ == 1)
         {
            _loc3_ = §0$N§.§%! §("MERCS_QUEST_LAST_DAY");
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
      
      private function §5u§() : void
      {
         var _loc1_:§'$2§ = §5&4§.§-!l§;
         var _loc2_:§?%>§ = §!&5§.§7#[§(getChildByName("buyTab.buyOneBattleForFuziesBtn"));
         _loc2_.§[!u§(this.§;%A§);
         _loc2_.setText(§0$N§.ARENA_BUY_BTN_NAME,§"-§.§+$m§);
         _loc2_.setText(String(_loc1_.ingamePrice),§"-§.§6"j§,"count");
         var _loc3_:§?%>§ = §!&5§.§7#[§(getChildByName("buyTab.buyOneBattleForRubiesBtn"));
         _loc3_.§[!u§(this.§ #T§);
         _loc3_.setText(§0$N§.ARENA_BUY_BTN_NAME,§"-§.§+$m§);
         _loc3_.setText(String(_loc1_.realPrice),§"-§.§6"j§,"count");
         var _loc4_:§'$2§ = §5&4§.§#%A§;
         var _loc5_:§?%>§ = §!&5§.§7#[§(getChildByName("buyTab.buyFiveBattlesForFuziesBtn"));
         _loc5_.§[!u§(this.§?S§);
         _loc5_.setText(§0$N§.ARENA_BUY_BTN_NAME,§"-§.§+$m§);
         _loc5_.setText(String(_loc4_.ingamePrice),§"-§.§6"j§,"count");
         var _loc6_:§?%>§ = §!&5§.§7#[§(getChildByName("buyTab.buyFiveBattlesForRubiesBtn"));
         _loc6_.§[!u§(this.§9#l§);
         _loc6_.setText(§0$N§.ARENA_BUY_BTN_NAME,§"-§.§+$m§);
         _loc6_.setText(String(_loc4_.realPrice),§"-§.§6"j§,"count");
         var _loc7_:TextField = §'%s§("buyTab.buyOneBattleText");
         var _loc8_:TextField = §'%s§("buyTab.buyFiveBattles");
         var _loc9_:TextField = §'%s§("buyTab.description");
         §7&5§.§>&<§(_loc7_,§0$N§.§<N§("MERCS_QUEST_BUY_ONE_BATTLE"));
         §7&5§.§>&<§(_loc8_,§0$N§.§<N§("MERCS_QUEST_BUY_FIVE_BATTLES"));
         §7&5§.§>&<§(_loc9_,§0$N§.§<N§("MERCS_QUEST_NEED_THREE_COINS"));
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
         var _loc1_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         _loc1_ = int(§8"%§.§[%h§.§`t§());
         var _loc2_:§?B§ = §8"%§.§'%;§;
         var _loc3_:Boolean = _loc1_ < §?B§.§;!o§;
         this.§,"s§();
         §>!-§.setDisabled(!_loc2_.isOpen || !_loc2_.§&%[§ || _loc2_.§"$B§);
         this.§9"P§.visible = !_loc2_.isOpen || _loc3_ && !_loc2_.isOpen;
         this.buyTab.visible = _loc3_ && !_loc2_.isOpen;
         §7&5§.§>&<§(this.§-$&§,§0$N§.WIN_LABEL + " " + _loc2_.winRate + "%");
         §7&5§.§>&<§(this.§?""§,§0$N§.PLAYED_TOTAL + " " + _loc2_.§8!^§);
         §7&5§.§?$k§(this.§0#?§,_loc1_.toString());
         this.§"#A§.x = this.§0#?§.x + this.§0#?§.getLineMetrics(0).width + 10;
         if(_loc2_.§"$B§)
         {
            this.§!$J§.visible = true;
            this.§9"P§.visible = this.§-%7§.visible = this.§9#§.visible = false;
            return;
         }
         this.§!$J§.visible = false;
         if(_loc3_ && !_loc2_.isOpen)
         {
            this.§-%7§.visible = this.§9#§.visible = false;
            this.§9"P§.y = this.buyTab.y - this.§9"P§.height - 10;
            this.§9"P§.x = this.buyTab.x + this.buyTab.width / 2;
            return;
         }
         if(_loc2_.isOpen)
         {
            _loc4_ = _loc2_.§<4§ / §?B§.§!$a§;
            if(_loc4_ > 1)
            {
               _loc4_ = 1;
            }
            this.progressBar.width = int(this.§>!Z§.width * _loc4_);
            §7&5§.§>&<§(this.§[%t§,_loc2_.§<4§ + " / " + §?B§.§!$a§);
            _loc5_ = _loc2_.§=%Z§;
            _loc6_ = 0;
            _loc7_ = this.loses.numChildren;
            while(_loc6_ < _loc7_)
            {
               _loc8_ = _loc5_ > 0;
               MovieClip(this.loses.getChildAt(_loc6_)).getChildByName("disabled").visible = !_loc8_;
               MovieClip(this.loses.getChildAt(_loc6_)).getChildByName("enabled").visible = _loc8_;
               _loc5_--;
               _loc6_++;
            }
         }
         else
         {
            this.§9"P§.y = this.§9#§.y + this.§9"P§.height * 1.5;
            this.§9"P§.x = (this.§9#§.width >> 1) + 70;
         }
         this.buyBtn.setDisabled(_loc1_ < §?B§.§;!o§);
         this.§,#+§(!_loc2_.isOpen);
      }
      
      private function §,"s§() : void
      {
         var _loc1_:Vector.<UserProfile> = §8"%§.§'%;§.§%",§;
         var _loc2_:int = 0;
         var _loc3_:int = int(_loc1_.length);
         while(_loc2_ < _loc3_)
         {
            this.§?"<§[_loc2_].§3%,§(_loc1_[_loc2_]);
            _loc2_++;
         }
      }
      
      private function §,#+§(param1:Boolean) : void
      {
         this.§-%7§.visible = !param1;
         this.§9#§.visible = param1;
      }
      
      private function §`"D§(param1:Event) : void
      {
         §%%w§.§,U§(new BuyMercenariesTicket());
         §?B§.§8#&§(this.§^#b§);
      }
      
      private function §^#b§() : void
      {
         var _loc1_:§-#m§ = §8"%§.§[%h§;
         _loc1_.§-"r§(_loc1_.§`t§() - §?B§.§;!o§);
         this.update();
      }
      
      override protected function okAction() : void
      {
         if(Application.userProfile.getLevel() >= §8"%§.§'%;§.wager.minLevel)
         {
            super.okAction();
            if(§?B§.§'"p§())
            {
               §?B§.§8#&§(null);
               §8"%§.§'%;§.startBattle();
            }
            else
            {
               §8"%§.§'%;§.§8"u§();
            }
         }
         else
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0%§.format(§0$N§.QUEST_ACCESS_LEVEL_MESSAGE,{"level":§8"%§.§'%;§.wager.minLevel}));
         }
      }
      
      public function playAnimations() : void
      {
      }
      
      public function stopAnimations() : void
      {
      }
      
      private function §#%M§(param1:uint) : void
      {
         §8"%§.§[%h§.§-"r§(§8"%§.§[%h§.§`t§() + param1);
         this.update();
      }
      
      private function §^!I§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#%M§(1);
         }
      }
      
      private function §@"l§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#%M§(5);
         }
      }
      
      private function §;%A§(param1:Event) : void
      {
         §8"%§.§&"n§.§5%&§(§+$A§.INGAME,this.§^!I§);
      }
      
      private function § #T§(param1:Event) : void
      {
         §8"%§.§&"n§.§5%&§(§+$A§.REAL,this.§^!I§);
      }
      
      private function §?S§(param1:Event) : void
      {
         §8"%§.§&"n§.buyFiveBattles(§+$A§.INGAME,this.§@"l§);
      }
      
      private function §9#l§(param1:Event) : void
      {
         §8"%§.§&"n§.buyFiveBattles(§+$A§.REAL,this.§@"l§);
      }
   }
}

