package §!"r§
{
   import § !P§.*;
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!$Z§.§"$I§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§ G§;
   import §"$+§.§@C§;
   import §"$+§.§^$`§;
   import §"$+§.§`&$§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'$Z§.ClanDescriptionPopup;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2#V§.§-#U§;
   import §2#x§.*;
   import §4#`§.§+!l§;
   import §4u§.ReagentHint;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8#o§.§#$s§;
   import §8$V§.§`"c§;
   import §<$q§.§6%b§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §=$#§.*;
   import §>!_§.§'!&§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§!q§;
   import §?>§.§^&<§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §;&,§ extends §1#g§
   {
      
      private var scrollPane:§>S§;
      
      private var §%!'§:§?%>§;
      
      private var leaveBtn:§?%>§;
      
      public var editBtn:§?%>§;
      
      private var clanDescriptionBtn:§?%>§;
      
      private var §<$<§:Vector.<§'!&§> = new Vector.<§'!&§>(0);
      
      private var §<%'§:TextField;
      
      private var ratingLabel:TextField;
      
      private var ratingCount:TextField;
      
      private var clanStructureLabel:TextField;
      
      private var clanStructureCount:TextField;
      
      private var termsOfJoinLabel:TextField;
      
      private var §["Y§:TextField;
      
      private var §-"D§:TextField;
      
      private var §`%<§:TextField;
      
      private var exchangeLabel:TextField;
      
      private var exchangeCount:TextField;
      
      private var treasuryLabel:TextField;
      
      private var treasuryCount:TextField;
      
      private var exitClosedLabel:TextField;
      
      private var exitClosedValue:TextField;
      
      private var captionPos:TextField;
      
      private var captionPlayer:TextField;
      
      private var captionPay:TextField;
      
      private var captionOnline:TextField;
      
      private var captionRate:TextField;
      
      public var clanLogo:MovieClip;
      
      private var content:DisplayObjectContainer;
      
      private var info:DisplayObjectContainer;
      
      private var invite:ClanInviteStructure;
      
      private var § #G§:ClanTO;
      
      private var isLeader:Boolean = false;
      
      private var isOfficer:Boolean = false;
      
      public function §;&,§(param1:DisplayObjectContainer = null)
      {
         param1.parent.removeChild(param1);
         super(param1);
         this.scrollPane = new §>S§(§'$a§("display"));
         this.content = this.scrollPane.§'$a§("content");
         this.info = §'$a§("info");
         this.info.x = 0;
         this.info.y = 0;
         this.content.addChild(this.info);
         this.§%!'§ = §!&5§.§7#[§(this.info.getChildByName("joinToClanBtn"));
         this.§%!'§.setText(§0$N§.JOIN_TO_CLAN_BTN,§"-§.§+$m§);
         this.§%!'§.§[!u§(this.§8S§);
         this.§%!'§.setVisible(false);
         this.leaveBtn = §!&5§.§7#[§(this.info.getChildByName("leaveBtn"));
         this.leaveBtn.setText(§0$N§.CLAN_LEAVE_BTN,§"-§.§+$m§);
         this.leaveBtn.§[!u§(this.§2$0§);
         this.leaveBtn.setVisible(false);
         this.editBtn = §!&5§.§7#[§(this.info.getChildByName("editBtn"));
         this.editBtn.setText(§0$N§.SETTING_LABEL,§"-§.§+$m§);
         this.editBtn.setVisible(false);
         this.clanDescriptionBtn = §!&5§.§7#[§(this.info.getChildByName("clanDescriptionBtn"));
         this.clanDescriptionBtn.§[!u§(this.§2"2§);
         var _loc2_:String = §0$N§.CLAN_DESCRIPTION.replace(":","");
         this.clanDescriptionBtn.setText(_loc2_,§"-§.§+$m§);
         this.§]1§();
         this.clanLogo = this.info.getChildByName("logo") as MovieClip;
         this.clanLogo.visible = false;
         this.scrollPane.setVisible(false);
         this.§<%'§.text = "";
         this.ratingLabel.text = "";
         this.ratingCount.text = "";
         this.clanStructureLabel.text = "";
         this.clanStructureCount.text = "";
         this.termsOfJoinLabel.text = "";
         this.§["Y§.text = "";
         this.exitClosedLabel.text = "";
         this.exitClosedValue.text = "";
         §&$9§.§>&F§(this.captionPos,§"-§.§+$m§,§0$N§.§%! §("CLAN_CAPTION_POSITION"));
         §&$9§.§>&F§(this.captionPlayer,§"-§.§+$m§,§0$N§.§%! §("CLAN_CAPTION_PLAYER"));
         §&$9§.§>&F§(this.captionPay,§"-§.§+$m§,§0$N§.§%! §("CLAN_CAPTION_PAY"));
         §&$9§.§>&F§(this.captionOnline,§"-§.§+$m§,§0$N§.§%! §("CLAN_CAPTION_ONLINE"));
         §&$9§.§>&F§(this.captionRate,§"-§.§+$m§,§0$N§.§%! §("CLAN_CAPTION_RATE"));
         §8"%§.§!&I§.getEventDispatcher().addEventListener(§-#U§.§^$X§,this.§?$<§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.scrollPane.§]%E§();
      }
      
      override public function deactivate() : void
      {
         this.scrollPane.§@%i§();
         super.deactivate();
      }
      
      private function §?$<§(param1:Event) : void
      {
         if(this.isLeader)
         {
            this.§^%h§(this.§ #G§);
         }
      }
      
      public function §7$7§(param1:ClanTO) : void
      {
         if(param1)
         {
            this.§^%h§(param1);
         }
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
      }
      
      public function §!Q§(param1:int, param2:ClanInviteStructure = null) : void
      {
         var _loc3_:ClanInviteStructure = null;
         if(this.scrollPane.scrollV > 0)
         {
            this.scrollPane.scrollV = 0;
         }
         if(!param2)
         {
            for each(_loc3_ in §]#i§.§="&§())
            {
               if(_loc3_.clanId == param1)
               {
                  param2 = _loc3_;
                  break;
               }
            }
         }
         this.invite = param2;
         §8"%§.§!&I§.common.§5$$§(param1,ClanTO.SCOPE_ALL,this.§^%h§);
         §&#F§(true);
      }
      
      private function §^%h§(param1:ClanTO) : void
      {
         var _loc2_:String = null;
         var _loc3_:UserProfile = null;
         var _loc8_:ClanMemberTO = null;
         var _loc9_:String = null;
         var _loc10_:§'!&§ = null;
         §&#F§(false);
         while(this.§<$<§.length > 0)
         {
            this.content.removeChild(this.§<$<§.shift().getContainer());
         }
         this.§ #G§ = param1;
         this.scrollPane.setVisible(true);
         if(param1.prevSeasonTopPlace > 0)
         {
            _loc2_ = §0%§.format(§0$N§.§<N§(§0$N§.PREV_SEASON_PLACE),{"value":param1.prevSeasonTopPlace});
         }
         else
         {
            _loc2_ = "—";
         }
         §&$9§.§>&F§(this.§<%'§,§"-§.§+$m§,param1.name);
         §&$9§.§>&F§(this.ratingLabel,§"-§.§+$m§,§0$N§.CLAN_RATING_POINTS);
         §&$9§.§>&F§(this.ratingCount,§"-§.§6"j§,§2"e§.§5%t§(param1.seasonRating));
         §&$9§.§>&F§(this.clanStructureLabel,§"-§.§+$m§,§0$N§.CLAN_COMPOSITION);
         §&$9§.§>&F§(this.clanStructureCount,§"-§.§6"j§,"" + param1.size + "/" + § G§.getLevel(param1.level).capacity);
         §&$9§.§>&F§(this.termsOfJoinLabel,§"-§.§+$m§,§0$N§.JOIN_TO_CLAN_LABEL);
         §&$9§.§>&F§(this.§["Y§,§"-§.§+$m§,this.§<%,§(param1));
         §&$9§.§>&F§(this.§-"D§,§"-§.§+$m§,§0$N§.PREV_SEASON_LABEL);
         §&$9§.§>&F§(this.§`%<§,§"-§.§+$m§,_loc2_);
         §&$9§.§>&F§(this.exchangeLabel,§"-§.§+$m§,§0$N§.MEDAL_COST_LABEL + ":");
         §&$9§.§>&F§(this.exchangeCount,§"-§.§6"j§,param1.medalPrice.toString());
         §&$9§.§>&F§(this.treasuryLabel,§"-§.§+$m§,§0$N§.§%! §("TAB_TREASURY_CLAN") + ":");
         §&$9§.§>&F§(this.treasuryCount,§"-§.§6"j§,§2"e§.§5%t§(param1.treasury));
         §&$9§.§>&F§(this.exitClosedLabel,§"-§.§+$m§,§0$N§.§%! §("EXIT_FROM_CLAN_LABEL"));
         §&$9§.§>&F§(this.exitClosedValue,§"-§.§+$m§,§0$N§.§%! §(param1.isExitClosed ? "EXIT_FROM_CLAN_CLOSED" : "EXIT_FROM_CLAN_FREE"));
         this.clanLogo.visible = true;
         §=%_§.§!-§(this.clanLogo.logo,param1.emblem);
         _loc3_ = Application.userProfile;
         var _loc4_:Boolean = _loc3_.§!#E§() && _loc3_.clanMember.clanId == param1.id;
         this.isLeader = _loc4_ && _loc3_.clanMember.rank == §`&$§.§+#8§;
         this.isOfficer = _loc4_ && _loc3_.clanMember.rank == §`&$§.OFFICER;
         if(!_loc3_.§!#E§())
         {
            this.§%!'§.setVisible(Boolean(this.invite) || param1.joinRating != -1 && _loc3_.getRating() >= param1.joinRating);
         }
         this.leaveBtn.setVisible(_loc4_);
         this.editBtn.setVisible(this.isLeader || this.isOfficer);
         this.captionOnline.visible = _loc4_;
         this.captionPay.visible = _loc4_;
         var _loc5_:Vector.<ClanMemberTO> = §=%_§.§5$3§(param1.members);
         var _loc6_:String = Application.userProfile.§"%D§();
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_.length)
         {
            _loc8_ = _loc5_[_loc7_];
            _loc9_ = _loc8_.socialProfileId == _loc6_ ? §+"'§.§&#d§ : §+"'§.§3#W§;
            _loc10_ = new §'!&§(param1,_loc8_,_loc9_,true);
            _loc10_.setIndexNumber(_loc7_ + 1);
            §4"0§.§^%T§(_loc10_,2);
            §`o§.§1$T§(_loc10_.getContainer(),this.content,-this.content.y);
            this.content.addChild(_loc10_.getContainer());
            this.§<$<§.push(_loc10_);
            _loc7_++;
         }
         this.scrollPane.update();
      }
      
      private function §<%,§(param1:ClanTO) : String
      {
         if(param1.joinRating == -1)
         {
            return §0$N§.CLOSE_CLAN;
         }
         if(param1.joinRating == 0)
         {
            return §0$N§.OPEN_CLAN;
         }
         return §0%§.format(§0$N§.OPEN_FOR_RATING,{"value":param1.joinRating});
      }
      
      private function §]1§() : void
      {
         this.§<%'§ = this.info.getChildByName("clanNameText") as TextField;
         §&$9§.§>&F§(this.§<%'§,§"-§.§+$m§,"");
         this.ratingLabel = this.info.getChildByName("ratingLabel") as TextField;
         this.ratingCount = this.info.getChildByName("ratingCount") as TextField;
         this.clanStructureLabel = this.info.getChildByName("clanStructureLabel") as TextField;
         this.clanStructureCount = this.info.getChildByName("clanStructureCount") as TextField;
         this.termsOfJoinLabel = this.info.getChildByName("termsOfJoinLabel") as TextField;
         this.§["Y§ = this.info.getChildByName("termsOfJoin") as TextField;
         this.§-"D§ = this.info.getChildByName("seasonRatingLabel") as TextField;
         this.§`%<§ = this.info.getChildByName("seasonRatingValue") as TextField;
         this.exchangeLabel = this.info.getChildByName("exchangeLabel") as TextField;
         this.exchangeCount = this.info.getChildByName("exchangeCount") as TextField;
         this.treasuryLabel = this.info.getChildByName("treasuryLabel") as TextField;
         this.treasuryCount = this.info.getChildByName("treasuryCount") as TextField;
         this.exitClosedLabel = this.info.getChildByName("exitClosedLabel") as TextField;
         this.exitClosedValue = this.info.getChildByName("exitClosedValue") as TextField;
         this.exchangeLabel.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:MovieClip = this.info.getChildByName("clanInfoColumns") as MovieClip;
         this.captionPos = _loc1_.getChildByName("captionPos") as TextField;
         this.captionPlayer = _loc1_.getChildByName("captionPlayer") as TextField;
         this.captionPay = _loc1_.getChildByName("captionPay") as TextField;
         this.captionOnline = _loc1_.getChildByName("captionOnline") as TextField;
         this.captionRate = _loc1_.getChildByName("captionRate") as TextField;
      }
      
      private function §2"2§(param1:Event) : void
      {
         var _loc2_:ClanDescriptionPopup = new ClanDescriptionPopup(this.§ #G§);
         _loc2_.show();
      }
      
      private function §8S§(param1:Event) : void
      {
         var _loc4_:String = null;
         var _loc2_:String = this.invite ? §0$N§.INVITE_CONFIRMATION_TITLE : §0$N§.JOIN_CLAN_CONFIRMATION_TITLE;
         var _loc3_:String = this.invite ? §0$N§.INVITE_CONFIRMATION_TEXT : §0$N§.JOIN_CLAN_CONFIRMATION_TEXT;
         _loc3_ = §0%§.format(_loc3_,{"clanName":this.§ #G§.name});
         if(this.§ #G§.isExitClosed)
         {
            _loc3_ = §0%§.format(§0$N§.§%! §("JOIN_TO_EXIT_CLOSED_CLAN"),{"count":§@C§.§+!u§}) + " " + _loc3_;
         }
         if(Application.userProfile.getLevel() < §@C§.§;k§)
         {
            _loc4_ = §0%§.format(§0$N§.CLAN_JOIN_DISABLE_BY_LEVEL,{"value":§@C§.§;k§});
            §,#W§.§6!P§(_loc2_,_loc4_);
         }
         else
         {
            §,#W§.§'!+§(_loc2_,_loc3_,§,#W§.§7"d§,this.§^!t§).show();
         }
      }
      
      private function §2$0§(param1:Event) : void
      {
         §8"%§.§!&I§.common.§3&6§(§"$I§.getInstance().hide);
      }
      
      private function §^!t§() : void
      {
         var profileId:uint = this.invite ? this.invite.profileId : 0;
         var socialId:int = this.invite ? this.invite.socialId : int(§8"%§.§[f§.getType().§1#&§);
         §8"%§.§!&I§.login.§;&H§(this.§ #G§.id,profileId,socialId,function():void
         {
            Social.§!g§.§1'§();
         });
      }
      
      public function get §5"U§() : ClanTO
      {
         return this.§ #G§;
      }
   }
}

