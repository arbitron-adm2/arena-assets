package §'&"§
{
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§+#h§;
   import §%"1§.§=#?§;
   import §&"c§.§!!q§;
   import §&&6§.§8"O§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§;!4§;
   import §-%B§.§-"o§;
   import §-@§.§5"4§;
   import §-@§.§6&3§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §2!-§.NewUnitEvent;
   import §3#T§.§5!M§;
   import §3%J§.BuyBattleTokensDialog;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §=1§.*;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[!O§.§1#i§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §8$D§ extends §"&=§
   {
      
      private var playBtn:§?%>§;
      
      private var §+! §:TextFormat;
      
      private var § %Y§:§`&-§;
      
      private var §=$;§:§`&-§;
      
      private var tokenCont:§`&-§;
      
      private var helpBtn:§?%>§;
      
      private var §4!U§:TextField;
      
      private var §9%U§:TextField;
      
      private var §#!z§:TextField;
      
      private var §@%r§:TextField;
      
      private var §%$a§:TextField;
      
      public function §8$D§(param1:DisplayObjectContainer = null)
      {
         super(param1);
         this.playBtn = §!&5§.§7#[§(getChildByName("playBtn"));
         this.playBtn.setText(§0$N§.BATTLE_BTN,§"-§.§+$m§);
         this.playBtn.§[!u§(this.§7$E§);
         var _loc2_:DisplayObject = getChildByName("helpBtn");
         var _loc3_:MovieClip = new MovieClip();
         this.§ %Y§ = new §`&-§(_loc3_);
         _loc3_.addChild(_loc2_);
         §?!C§(_loc3_);
         this.helpBtn = §!&5§.§7#[§(_loc2_);
         this.helpBtn.§00§(null);
         this.§ %Y§.setQtip(§2"e§.§;"e§(§0$N§.ZOMBIE_RISING_PROMPT,"{br}","\n"),null,§+"'§.§9%>§);
         this.§+! § = new TextFormat();
         this.§+! §.bold = true;
         this.§^!8§();
         §00§(null);
      }
      
      private function §^!8§() : void
      {
         var _loc1_:TextField = §'%s§("cardName");
         _loc1_.text = §0$N§.ZOMBIE_RISING_CARD;
         §'%s§("profit").text = §0$N§.§<N§("AWARD_LABEL") + ":";
         §'%s§("enter").text = §0$N§.COST_ENTER_LABEL + ":";
         var _loc2_:§`&-§ = new §`&-§(getChildByName("moneyContainer"));
         _loc2_.setQtip(§0$N§.FUZY_QTIP);
         this.§#!z§ = _loc2_.§'%s§("moneyAwardCount");
         this.§=$;§ = new §`&-§(§'$a§("xpAward"));
         this.§=$;§.setQtip(§0$N§.EXPERIENCE);
         this.§@%r§ = this.§=$;§.§'%s§("count");
         this.tokenCont = new §`&-§(§'$a§("tokenCont"));
         this.tokenCont.setQtip(§0$N§.BATTLE_TOKENS);
         this.§4!U§ = this.tokenCont.§'%s§("count");
         this.§9%U§ = §'%s§("enemiesCount");
         this.§%$a§ = §'%s§("text");
         this.§%$a§.mouseEnabled = false;
         §'%s§("enemiesLabel").text = §0$N§.§<N§("ENEMIES_COUNT_LABEL") + ":";
      }
      
      public function update() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.§4!U§.text = Application.userProfile.§7$F§().length.toString();
         this.§4!U§.setTextFormat(this.§+! §);
         var _loc1_:int = Math.ceil(Application.userProfile.§7$F§().length / 2);
         this.§9%U§.text = §2"e§.§[%3§("","?",_loc1_);
         this.§9%U§.setTextFormat(this.§+! §);
         this.§#!z§.text = "50" + §2"e§.§[%3§("","+",_loc1_);
         this.§#!z§.setTextFormat(this.§+! §);
         this.§@%r§.text = "20" + §2"e§.§[%3§("","+",_loc1_);
         this.§@%r§.setTextFormat(this.§+! §);
         this.§@%r§.visible = Application.userProfile.getLevel() < §<!9§.getMaxLevel();
         this.§=$;§.setVisible(this.§@%r§.visible);
         getChildByName("separator").visible = !this.§@%r§.visible;
         var _loc2_:int = §8"%§.§%w§.zombieRiseCoolDownTime;
         if(_loc2_ > 0)
         {
            _loc3_ = §0#2§.§1" §(§0#2§.§@&6§() + _loc2_);
            _loc4_ = §0%§.format(§0$N§.PVP_WAGER_AVAILABLE_FOR_PRIME,{
               "br":"\n",
               "time":_loc3_
            });
            §7&5§.§>&<§(this.§%$a§,_loc4_);
            this.§%$a§.visible = true;
            this.playBtn.setVisible(false);
         }
         else
         {
            this.§%$a§.visible = false;
            this.playBtn.setVisible(true);
         }
      }
      
      private function §7$E§(param1:MouseEvent) : void
      {
         var _loc2_:Function = null;
         if(§8"%§.§[%h§.§7$J§())
         {
            §6&3§.play();
         }
         else
         {
            _loc2_ = §8"%§.§%w§.getArenaMenu().getTabPanel().showAvailableBattlesCount;
            new BuyBattleTokensDialog(_loc2_).show();
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.playBtn.removeHandler(this.§7$E§);
      }
   }
}

