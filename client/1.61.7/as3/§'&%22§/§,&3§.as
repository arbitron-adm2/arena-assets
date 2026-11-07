package §'&"§
{
   import § &5§.§0&$§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§[&$§;
   import §'$j§.*;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §-!U§.*;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §3%J§.BuyBattleTokensDialog;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$t§.§2"y§;
   import §9%W§.§&!P§;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §=#g§.§&%5§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$7§.§8"e§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@!i§.§'#E§;
   import §@!i§.§5&4§;
   import §@!i§.§;%v§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §]^§.§-$T§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §,&3§ extends §"&=§
   {
      
      private var §-!K§:§<$!§;
      
      private var playBtn:§?%>§;
      
      private var §+! §:TextFormat;
      
      private var §@%r§:TextField;
      
      private var §=$;§:§`&-§;
      
      public function §,&3§(param1:DisplayObjectContainer = null)
      {
         super(param1);
         this.playBtn = §!&5§.§7#[§(getChildByName("playBtn"));
         this.playBtn.setText(§0$N§.BATTLE_BTN,§"-§.§+$m§);
         this.playBtn.§[!u§(this.§7$E§);
         this.§+! § = new TextFormat();
         this.§+! §.bold = true;
         §00§(null);
      }
      
      private function §^!8§() : void
      {
         var _loc3_:§`&-§ = null;
         var _loc6_:§`&-§ = null;
         var _loc1_:TextField = §'%s§("cardName");
         _loc1_.text = this.§-!K§.name;
         §'%s§("profit").text = §0$N§.§<N§("AWARD_LABEL") + ":";
         §'%s§("enter").text = §0$N§.COST_ENTER_LABEL + ":";
         var _loc2_:uint = §;%v§.§'&&§(§<$Z§.§+%I§,this.§-!K§);
         _loc3_ = new §`&-§(getChildByName("moneyContainer"));
         _loc3_.setQtip(§0$N§.FUZY_QTIP);
         var _loc4_:TextField = _loc3_.§'%s§("moneyAwardCount");
         _loc4_.text = _loc2_.toString();
         _loc4_.setTextFormat(this.§+! §);
         var _loc5_:uint = §;%v§.§!$]§(§<$Z§.§+%I§,this.§-!K§);
         this.§=$;§ = new §`&-§(§'$a§("xpAward"));
         this.§=$;§.setQtip(§0$N§.EXPERIENCE);
         this.§@%r§ = this.§=$;§.§'%s§("count");
         this.§@%r§.text = _loc5_.toString();
         this.§@%r§.setTextFormat(this.§+! §);
         _loc6_ = new §`&-§(§'$a§("tokenCont"));
         _loc6_.setQtip(§0$N§.BATTLE_TOKENS);
         var _loc7_:TextField = _loc6_.§'%s§("count");
         _loc7_.text = "1";
         _loc7_.setTextFormat(this.§+! §);
         §'%s§("enemiesLabel").text = §0$N§.§<N§("ENEMIES_COUNT_LABEL") + ":";
         var _loc8_:TextField = §'%s§("enemiesCount");
         var _loc9_:Vector.<uint> = §8"%§.§0&4§.§3$X§(this.§-!K§);
         _loc8_.text = _loc9_[0] == _loc9_[1] ? _loc9_[0].toString() : _loc9_[0] + "-" + _loc9_[1];
         _loc8_.setTextFormat(this.§+! §);
      }
      
      public function update() : void
      {
         this.§@%r§.visible = Application.userProfile.getLevel() < §<!9§.getMaxLevel();
         this.§=$;§.setVisible(this.§@%r§.visible);
         getChildByName("separator").visible = !this.§@%r§.visible;
      }
      
      private function §7$E§(param1:MouseEvent) : void
      {
         var _loc2_:UserProfile = null;
         var _loc3_:Function = null;
         if(§8"%§.§[%h§.§7$J§())
         {
            §8"%§.§%w§.getArenaMenu().hide();
            _loc2_ = §8"%§.§0&4§.§#%4§(this.§-!K§);
            §8"%§.§?!W§.§+%8§(_loc2_,this.§-!K§);
         }
         else
         {
            _loc3_ = §8"%§.§%w§.getArenaMenu().getTabPanel().showAvailableBattlesCount;
            new BuyBattleTokensDialog(_loc3_).show();
         }
      }
      
      public function §3l§(param1:§<$!§) : void
      {
         this.§-!K§ = param1;
         this.§^!8§();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.playBtn.removeHandler(this.§7$E§);
      }
   }
}

