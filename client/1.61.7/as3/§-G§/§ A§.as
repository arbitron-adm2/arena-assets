package §-G§
{
   import § !8§.§`!d§;
   import § &5§.§%$O§;
   import §!$Z§.§6=§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-8§.§3!x§;
   import §0"L§.§+# §;
   import §0%"§.§[!^§;
   import §0%[§.§0%§;
   import §1!J§.§@#%§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2B§.§#&E§;
   import §6"'§.*;
   import §7!B§.§&"T§;
   import §7$t§.§[!X§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§=$,§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import com.greensock.TweenLite;
   import com.greensock.easing.Expo;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class § A§ extends §1#g§
   {
      
      private static var §3%6§:int = 0;
      
      private static var §%!V§:int = 0;
      
      private var §=n§:Vector.<§?%>§>;
      
      private var exchangeBtn:§?%>§;
      
      private var §]%%§:§?%>§;
      
      private var treasuryCount:TextField;
      
      private var treasuryLogo:MovieClip;
      
      private var treasuryRuby:MovieClip;
      
      private var payNotifyBonus:TextField;
      
      private var payNotifyFire:TextField;
      
      private var medalCount:TextField;
      
      private var rateCount:TextField;
      
      private var §@E§:DisplayObject;
      
      private var §0$m§:DisplayObject;
      
      private var §#%a§:MovieClip;
      
      private var costCountEdit:TextField;
      
      private var costCountShow:TextField;
      
      private var costNotify:TextField;
      
      private var isLeader:Boolean = false;
      
      private var isOfficer:Boolean = false;
      
      private var myRank:int = 3;
      
      private var §;&F§:int = 0;
      
      public function § A§()
      {
         super(§6#A§.§!&6§(§+"'§.§ $g§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.exchangeBtn = §!&5§.§7#[§(getChildByName("exchangeBtn"));
         this.§]%%§ = §!&5§.§7#[§(getChildByName("setExchangeBtn"));
         this.treasuryCount = §'%s§("treasuryCount");
         this.payNotifyBonus = §'%s§("payNotifyBonus");
         this.payNotifyFire = §'%s§("payNotifyFire");
         this.medalCount = §'%s§("medalCount");
         this.rateCount = §'%s§("rateCount");
         this.costCountEdit = §'%s§("costCountEdit");
         this.costCountShow = §'%s§("costCountShow");
         this.costNotify = §'%s§("costNotify");
         §&$9§.§>&F§(this.treasuryCount,§"-§.§6"j§,"0");
         §&$9§.§>&F§(§'%s§("payLabel"),§"-§.§+$m§,§0$N§.§%! §("CLAN_TREASURY_PAY_LABEL"));
         §&$9§.§>&F§(this.payNotifyBonus,§"-§.§+$m§,§0%§.format(§0$N§.§%! §("CLAN_TREASURY_PAY_NOTIFY_BONUS"),{"value":§@C§.§%"c§}));
         §&$9§.§>&F§(this.payNotifyFire,§"-§.§+$m§,§0%§.format(§0$N§.§%! §("CLAN_TREASURY_PAY_NOTIFY_FIRE"),{"value":§@C§.§%"c§}));
         §&$9§.§>&F§(§'%s§("medalLabel"),§"-§.§+$m§,§0$N§.§%! §("MEDAL_COLLECT_LABEL"));
         §&$9§.§>&F§(this.medalCount,§"-§.§6"j§,"0");
         §&$9§.§>&F§(§'%s§("medalNotify"),§"-§.§+$m§,§0%§.format(§0$N§.§%! §("MEDAL_COLLECT_NOTIFY"),{"count":§@C§.§2#`§}));
         §&$9§.§>&F§(§'%s§("rateLabel"),§"-§.§+$m§,§0$N§.§%! §("MEDAL_RATE_NEXT_LABEL"));
         §&$9§.§>&F§(this.rateCount,§"-§.§6"j§,"0/" + §@C§.§2#`§);
         §&$9§.§>&F§(§'%s§("costLabel"),§"-§.§+$m§,§0$N§.MEDAL_COST_LABEL + ":");
         §&$9§.§>&F§(this.costCountEdit,§"-§.§6"j§,"0");
         §&$9§.§>&F§(this.costCountShow,§"-§.§6"j§,"0");
         §&$9§.§>&F§(this.costNotify,§"-§.§+$m§,§0%§.format(§0$N§.§%! §("MEDAL_COST_NOTIFY"),{
            "min":§@C§.§<!S§,
            "max":§@C§.§6M§,
            "count":§@C§.§3$U§
         }));
         this.exchangeBtn.setText(§0$N§.§%! §("CLAN_EXCHANGE_MEDAL_FOR"),§"-§.§+$m§);
         this.exchangeBtn.setText("0",§"-§.§6"j§,"price");
         §4"0§.§;#f§(this.exchangeBtn);
         this.§]%%§.setText(§0$N§.SAVE_BTN,§"-§.§+$m§);
         var _loc2_:MovieClip = §'$a§("rateBar");
         this.§@E§ = _loc2_.getChildByName("back");
         this.§0$m§ = _loc2_.getChildByName("fill");
         this.treasuryLogo = §'$a§("treasuryLogo");
         this.treasuryRuby = §'$a§("treasuryRuby");
         this.§#%a§ = §'$a§("inputBackCost");
         this.costCountEdit.restrict = §@C§.§;$g§;
         this.costCountEdit.maxChars = §@C§.§6M§.toString().length;
         this.§>"C§();
      }
      
      private function §>"C§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§?%>§ = null;
         var _loc6_:String = null;
         this.§=n§ = new Vector.<§?%>§>(0);
         var _loc1_:Array = §>!n§.§-l§();
         var _loc2_:Array = Social.§-%=§.getRealPaymentOptions();
         if(_loc2_)
         {
            _loc3_ = 0;
            while(_loc3_ < §@C§.§4#H§)
            {
               _loc5_ = §!&5§.§7#[§(getChildByName("payBtn" + _loc3_));
               _loc4_ = _loc2_.length - §@C§.§4#H§ + _loc3_;
               _loc6_ = Social.§-%c§.§4!]§(int(_loc2_[_loc4_].price),_loc1_);
               _loc5_.setText(_loc2_[_loc4_].price + " " + _loc6_,§"-§.§+$m§,"price_text");
               _loc5_.setText(_loc2_[_loc4_].count,§"-§.§6"j§,"count_txt");
               _loc5_.setText("+" + _loc2_[_loc4_].bonus,§"-§.§6"j§,"bonus_txt");
               _loc5_.§[!u§(this.§^#Q§);
               this.§=n§[this.§=n§.length] = _loc5_;
               _loc3_++;
            }
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.update();
      }
      
      public function update() : void
      {
         var _loc1_:UserProfile = null;
         var _loc2_:ClanTO = null;
         _loc1_ = Application.userProfile;
         _loc2_ = §]#i§.§=#7§(_loc1_);
         var _loc3_:ClanMemberTO = §=%_§.§7&3§(_loc1_,_loc2_);
         var _loc4_:Boolean = _loc1_.§!#E§() && _loc1_.clanMember.clanId == _loc2_.id;
         this.myRank = _loc1_.clanMember.rank;
         this.isLeader = _loc4_ && this.myRank == §`&$§.§+#8§;
         this.isOfficer = _loc4_ && this.myRank == §`&$§.OFFICER;
         this.§6$s§();
         this.§`#i§(_loc3_,_loc2_);
         this.§]#!§();
      }
      
      private function §6$s§() : void
      {
         this.treasuryCount.autoSize = TextFieldAutoSize.LEFT;
         §&$9§.§>&F§(this.treasuryCount,§"-§.§6"j§,§]#i§.userClan.treasury.toString());
         §&$9§.§>&F§(this.payNotifyBonus,§"-§.§+$m§,§0%§.format(§0$N§.§%! §("CLAN_TREASURY_PAY_NOTIFY_BONUS"),{"value":§@C§.§%"c§}));
         §&$9§.§>&F§(this.payNotifyFire,§"-§.§+$m§,§0%§.format(§0$N§.§%! §("CLAN_TREASURY_PAY_NOTIFY_FIRE"),{"value":§@C§.§%"c§}));
         var _loc1_:int = this.treasuryCount.width + this.treasuryRuby.width;
         this.treasuryCount.x = this.treasuryLogo.x + (this.treasuryLogo.width - _loc1_) * 0.5;
         this.treasuryRuby.x = this.treasuryLogo.x + this.treasuryCount.width + (this.treasuryLogo.width - _loc1_) * 0.5 + 5;
      }
      
      private function §`#i§(param1:ClanMemberTO, param2:ClanTO) : void
      {
         var _loc3_:int = 0;
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         _loc3_ = param1.seasonRating - param1.cashedMedals * §@C§.§2#`§;
         var _loc4_:int = _loc3_ < 0 ? _loc3_ : 0;
         _loc3_ = _loc3_ > 0 ? _loc3_ : 0;
         _loc5_ = _loc3_ / §@C§.§2#`§;
         _loc6_ = _loc3_ - _loc5_ * §@C§.§2#`§;
         §&$9§.§>&F§(this.rateCount,§"-§.§6"j§,int(_loc6_) + " / " + int(§@C§.§2#`§ - _loc4_));
         var _loc7_:int = this.§@E§.width / (§@C§.§2#`§ - _loc4_) * _loc6_;
         if(§3%6§ < _loc5_ && §%!V§ != 0)
         {
            §3%6§ = _loc5_;
            §%!V§ = 0;
         }
         this.§0$m§.width = §%!V§;
         TweenLite.to(this.§0$m§,1,{
            "width":_loc7_,
            "ease":Expo.easeInOut
         });
         §%!V§ = _loc7_;
         var _loc8_:int = param2.medalPrice * _loc5_;
         _loc8_ = _loc8_ > param2.treasury ? param2.treasury : _loc8_;
         this.§;&F§ = param2.medalPrice > 0 ? int(_loc8_ / param2.medalPrice) : 0;
         _loc8_ = this.§;&F§ * param2.medalPrice;
         §&$9§.§>&F§(this.medalCount,§"-§.§6"j§,this.§;&F§ > 0 ? String(this.§;&F§) + (this.§;&F§ < _loc5_ ? " (" + String(_loc5_) + ")" : "") : String(_loc5_));
         this.exchangeBtn.setText(_loc8_.toString(),§"-§.§6"j§,"price");
         §4"0§.§;#f§(this.exchangeBtn);
         if(this.§;&F§ > 0 && _loc8_ > 0)
         {
            this.exchangeBtn.setDisabled(false);
            this.exchangeBtn.§[!u§(this.§5!j§);
         }
         else
         {
            this.exchangeBtn.setDisabled(true);
            this.exchangeBtn.removeHandler(this.§5!j§);
         }
      }
      
      private function §]#!§() : void
      {
         this.§]%%§.setVisible(this.isLeader);
         this.§#%a§.visible = this.isLeader;
         this.costCountEdit.visible = this.isLeader;
         this.costCountShow.visible = !this.isLeader;
         this.costNotify.visible = this.isLeader;
         §&$9§.§>&F§(this.costCountEdit,§"-§.§6"j§,§]#i§.userClan.medalPrice.toString());
         §&$9§.§>&F§(this.costCountShow,§"-§.§6"j§,§]#i§.userClan.medalPrice.toString());
         if(this.isLeader && §]#i§.userClan.medalPrice < §@C§.§6M§)
         {
            this.§]%%§.setDisabled(int(this.costCountEdit.text) <= §]#i§.userClan.medalPrice);
            this.§]%%§.§[!u§(this.§&#e§);
            this.costCountEdit.type = TextFieldType.INPUT;
            this.costCountEdit.mouseEnabled = true;
            this.costCountEdit.addEventListener(Event.CHANGE,this.§7&'§);
            this.costCountEdit.addEventListener(MouseEvent.CLICK,this.§@?§);
         }
         else
         {
            this.§]%%§.setDisabled(true);
            this.§]%%§.removeHandler(this.§&#e§);
            this.costCountEdit.type = TextFieldType.DYNAMIC;
            this.costCountEdit.mouseEnabled = false;
            this.costCountEdit.removeEventListener(Event.CHANGE,this.§7&'§);
            this.costCountEdit.removeEventListener(MouseEvent.CLICK,this.§@?§);
         }
      }
      
      private function §^#Q§(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:Array = null;
         _loc2_ = param1.target.id;
         _loc3_ = int(_loc2_.substring(_loc2_.length - 1));
         _loc4_ = Social.§-%=§.getRealPaymentOptions();
         var _loc5_:int = _loc4_.length - §@C§.§4#H§ + _loc3_;
         §8"%§.§^%W§.§[#l§();
         Social.§-%=§.callPayController(_loc4_[_loc5_]);
      }
      
      private function §5!j§(param1:MouseEvent) : void
      {
         if(this.§;&F§ > 0)
         {
            §8"%§.§!&I§.treasury.§5"2§(this.§;&F§,this.update);
         }
      }
      
      private function §&#e§(param1:MouseEvent) : void
      {
         var price:int = 0;
         var event:MouseEvent = param1;
         price = int(this.costCountEdit.text);
         this.costCountEdit.text = price.toString();
         if(price >= §@C§.§<!S§)
         {
            §6=§.show(price,function():void
            {
               §8"%§.§!&I§.treasury.§3$r§(price,update);
            });
         }
      }
      
      private function §7&'§(param1:Event) : void
      {
         this.costCountEdit.text = this.costCountEdit.text.replace(§@C§.§@$;§,"");
         var _loc2_:int = int(this.costCountEdit.text);
         this.§]%%§.setDisabled(_loc2_ <= §]#i§.userClan.medalPrice || _loc2_ > §@C§.§6M§);
      }
      
      private function §@?§(param1:MouseEvent) : void
      {
         this.costCountEdit.setSelection(0,this.costCountEdit.length);
      }
   }
}

