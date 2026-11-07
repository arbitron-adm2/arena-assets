package §8$Z§
{
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$D§.§[?§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§ G§;
   import §"$+§.§@C§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&#W§.§4#T§;
   import §&#h§.*;
   import §'"N§.*;
   import §'$Z§.§2#f§;
   import §'$Z§.ClanDescriptionPopup;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§?3§;
   import §+&<§.*;
   import §-!U§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#V§.§-#U§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §7$t§.§2"y§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §>!_§.§'!&§;
   import §>%S§.§^!V§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§8U§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §9"t§ extends §@& §
   {
      
      public static var instance:§9"t§;
      
      private var scrollPane:§>S§;
      
      private var §%!'§:§?%>§;
      
      private var leaveBtn:§?%>§;
      
      private var editBtn:§?%>§;
      
      private var clanDescriptionBtn:§?%>§;
      
      private var §3!&§:Vector.<§'!&§> = new Vector.<§'!&§>(0);
      
      private var §<%'§:TextField;
      
      private var ratingLabel:TextField;
      
      private var §>#@§:TextField;
      
      private var clanStructureCount:TextField;
      
      private var clanStructureLabel:TextField;
      
      private var termsOfJoinLabel:TextField;
      
      private var termsOfJoin:TextField;
      
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
      
      private var §?#^§:§9!&§;
      
      private var clanLogo:MovieClip;
      
      private var content:DisplayObjectContainer;
      
      private var info:DisplayObjectContainer;
      
      private var invite:ClanInviteStructure;
      
      private var §^$$§:ClanTO;
      
      private var §8%G§:Boolean = false;
      
      private var §<#t§:uint;
      
      private var closeBtn:§?%>§;
      
      public function §9"t§(param1:int, param2:ClanInviteStructure = null)
      {
         var _loc4_:ClanInviteStructure = null;
         super(§6#A§.§!&6§(§+"'§.§]%[§));
         if(!Application.§5!>§.§^P§.isShown())
         {
            Application.§5!>§.§1$i§.§@&<§(false);
         }
         this.scrollPane = new §>S§(§'$a§("display"));
         this.content = this.scrollPane.§'$a§("content");
         this.info = §'$a§("info");
         this.info.x = 0;
         this.info.y = 0;
         this.content.addChild(this.info);
         this.closeBtn = §!&5§.§7#[§(getChildByName("closeBtn"));
         this.closeBtn.§[!u§(§0!j§);
         this.§%!'§ = §!&5§.§7#[§(this.info.getChildByName("joinToClanBtn"));
         this.§%!'§.setText(§0$N§.JOIN_TO_CLAN_BTN,§"-§.§+$m§);
         this.§%!'§.§[!u§(this.§8S§);
         this.§%!'§.setVisible(false);
         this.leaveBtn = §!&5§.§7#[§(this.info.getChildByName("leaveBtn"));
         this.leaveBtn.setText(§0$N§.CLAN_LEAVE_BTN,§"-§.§+$m§);
         this.leaveBtn.setVisible(false);
         this.editBtn = §!&5§.§7#[§(this.info.getChildByName("editBtn"));
         this.editBtn.setText(§0$N§.SETTING_LABEL,§"-§.§+$m§);
         this.editBtn.setVisible(false);
         this.clanDescriptionBtn = §!&5§.§7#[§(this.info.getChildByName("clanDescriptionBtn"));
         this.clanDescriptionBtn.§[!u§(this.§2"2§);
         var _loc3_:String = §0$N§.CLAN_DESCRIPTION.replace(":","");
         this.clanDescriptionBtn.setText(_loc3_,§"-§.§+$m§);
         this.§]1§();
         this.clanLogo = this.info.getChildByName("logo") as MovieClip;
         this.clanLogo.visible = false;
         this.scrollPane.setVisible(false);
         this.§<%'§.text = "";
         this.termsOfJoinLabel.text = "";
         this.termsOfJoin.text = "";
         this.exitClosedLabel.text = "";
         this.exitClosedValue.text = "";
         this.ratingLabel.text = "";
         this.§>#@§.text = "";
         this.clanStructureLabel.text = "";
         this.clanStructureCount.text = "";
         §&$9§.§>&F§(this.captionPos,§"-§.§+$m§,§0$N§.§%! §("CLAN_CAPTION_POSITION"));
         §&$9§.§>&F§(this.captionPlayer,§"-§.§+$m§,§0$N§.§%! §("CLAN_CAPTION_PLAYER"));
         §&$9§.§>&F§(this.captionPay,§"-§.§+$m§,§0$N§.§%! §("CLAN_CAPTION_PAY"));
         §&$9§.§>&F§(this.captionOnline,§"-§.§+$m§,§0$N§.§%! §("CLAN_CAPTION_ONLINE"));
         §&$9§.§>&F§(this.captionRate,§"-§.§+$m§,§0$N§.§%! §("CLAN_CAPTION_RATE"));
         if(!param2)
         {
            for each(_loc4_ in §]#i§.§="&§())
            {
               if(_loc4_.clanId == param1)
               {
                  param2 = _loc4_;
                  break;
               }
            }
         }
         this.invite = param2;
         §8"%§.§!&I§.common.§5$$§(param1,ClanTO.SCOPE_ALL,this.§^%h§);
         §&#F§(true);
         §<"b§ = true;
         this.§<#t§ = height;
      }
      
      public static function getInstance(param1:int, param2:ClanInviteStructure = null) : §9"t§
      {
         if(!instance)
         {
            instance = new §9"t§(param1,param2);
         }
         return instance;
      }
      
      public static function §]"N§(param1:int, param2:ClanInviteStructure = null) : §9"t§
      {
         if(instance)
         {
            instance.hide();
         }
         instance = new §9"t§(param1,param2);
         instance.show();
         return instance;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.scrollPane.§]%E§();
      }
      
      override public function hide() : void
      {
         this.scrollPane.§@%i§();
         super.hide();
      }
      
      private function §^%h§(param1:ClanTO) : void
      {
         var _loc2_:String = null;
         var _loc8_:ClanMemberTO = null;
         var _loc9_:String = null;
         var _loc10_:§'!&§ = null;
         §&#F§(false);
         if(this.§8%G§)
         {
            return;
         }
         this.§^$$§ = param1;
         this.scrollPane.setVisible(true);
         if(param1.prevSeasonTopPlace > 0)
         {
            _loc2_ = §0%§.format(§0$N§.PREV_SEASON_PLACE,{"value":param1.prevSeasonTopPlace});
         }
         else
         {
            _loc2_ = "—";
         }
         §&$9§.§>&F§(this.§<%'§,§"-§.§+$m§,param1.name);
         §&$9§.§>&F§(this.ratingLabel,§"-§.§+$m§,§0$N§.CLAN_RATING_POINTS);
         §&$9§.§>&F§(this.§>#@§,§"-§.§6"j§,§2"e§.§5%t§(param1.seasonRating));
         §&$9§.§>&F§(this.clanStructureLabel,§"-§.§+$m§,§0$N§.CLAN_COMPOSITION);
         §&$9§.§>&F§(this.clanStructureCount,§"-§.§6"j§,"" + param1.size + "/" + § G§.getLevel(param1.level).capacity);
         §&$9§.§>&F§(this.termsOfJoinLabel,§"-§.§+$m§,§0$N§.JOIN_TO_CLAN_LABEL);
         §&$9§.§>&F§(this.termsOfJoin,§"-§.§+$m§,this.§<%,§(param1));
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
         var _loc3_:UserProfile = Application.userProfile;
         if(!_loc3_.§!#E§())
         {
            this.§%!'§.setVisible(Boolean(this.invite) || param1.joinRating != -1 && _loc3_.getRating() >= param1.joinRating);
         }
         var _loc4_:Boolean = _loc3_.§!#E§() && _loc3_.clanMember.clanId == param1.id;
         this.leaveBtn.§[!u§(this.§2$0§);
         this.leaveBtn.setVisible(_loc4_);
         this.captionOnline.visible = this.captionPay.visible = _loc4_;
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
            this.§3!&§.push(_loc10_);
            _loc7_++;
         }
         this.scrollPane.update();
         this.§^%#§();
      }
      
      private function §2$0§(param1:Event) : void
      {
         §8"%§.§!&I§.common.§3&6§(§9"t§.instance.hide);
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
         this.ratingLabel = this.info.getChildByName("ratingLabel") as TextField;
         this.§>#@§ = this.info.getChildByName("ratingCount") as TextField;
         this.clanStructureLabel = this.info.getChildByName("clanStructureLabel") as TextField;
         this.clanStructureCount = this.info.getChildByName("clanStructureCount") as TextField;
         this.termsOfJoinLabel = this.info.getChildByName("termsOfJoinLabel") as TextField;
         this.termsOfJoin = this.info.getChildByName("termsOfJoin") as TextField;
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
         var _loc2_:ClanDescriptionPopup = new ClanDescriptionPopup(this.§^$$§);
         _loc2_.show();
      }
      
      private function §8S§(param1:Event) : void
      {
         var _loc4_:String = null;
         var _loc2_:String = this.invite ? §0$N§.INVITE_CONFIRMATION_TITLE : §0$N§.JOIN_CLAN_CONFIRMATION_TITLE;
         var _loc3_:String = this.invite ? §0$N§.INVITE_CONFIRMATION_TEXT : §0$N§.JOIN_CLAN_CONFIRMATION_TEXT;
         _loc3_ = §0%§.format(_loc3_,{"clanName":this.§^$$§.name});
         if(this.§^$$§.isExitClosed)
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
      
      private function §^!t§() : void
      {
         var profileId:uint = this.invite ? this.invite.profileId : 0;
         var socialId:int = this.invite ? this.invite.socialId : int(§8"%§.§[f§.getType().§1#&§);
         §8"%§.§!&I§.login.§;&H§(this.§^$$§.id,profileId,socialId,function():void
         {
            hide();
            §8"%§.§!&I§.getEventDispatcher().dispatchEvent(new Event(§-#U§.§-R§));
            §2#f§.getInstance().hide();
            Social.§!g§.§1'§();
         });
      }
      
      override public function §!s§() : void
      {
         super.§!s§();
         this.y = (§8"%§.§^%W§.getCorrectResolution2().§'$#§() - this.§<#t§) * 0.5;
      }
      
      private function §^%#§() : void
      {
         if(this.§?#^§)
         {
            this.§?#^§.destroy();
            if(this.§?#^§.parent)
            {
               this.§?#^§.parent.removeChild(this.§?#^§);
            }
         }
         var _loc1_:§!&-§ = §=%_§.§>%"§(this.§^$$§.prevSeasonTopPlace);
         if(_loc1_)
         {
            this.§?#^§ = new §9!&§(_loc1_,this.§^$$§.emblem);
            this.§?#^§.x = this.§%!'§.x + this.§%!'§.width * 0.5;
            this.§?#^§.y = this.§%!'§.y + this.§%!'§.height;
            this.§?#^§.visible = !(Boolean(this.leaveBtn.isVisible()) || Boolean(this.§%!'§.isVisible()));
            this.info.addChild(this.§?#^§);
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:§'!&§ = null;
         super.destroy();
         this.§%!'§.removeHandler(this.§8S§);
         if(!Application.§5!>§.§^P§.isShown())
         {
            Application.§5!>§.§1$i§.§@&<§(true);
         }
         for each(_loc1_ in this.§3!&§)
         {
            _loc1_.destroy();
         }
         if(this.§?#^§)
         {
            this.§?#^§.destroy();
         }
         this.§3!&§.length = 0;
         this.§8%G§ = true;
         instance = null;
      }
   }
}

