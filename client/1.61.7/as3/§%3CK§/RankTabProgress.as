package §<K§
{
   import §!L§.§+"'§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&%7§.§&%f§;
   import §+$=§.§6#A§;
   import §0!Y§.§#!Z§;
   import §0"L§.§@#n§;
   import §0%[§.§0%§;
   import §8!Y§.TopAwardCell;
   import §8!Y§.§`#Q§;
   import §9%k§.§0"^§;
   import §9%k§.§=k§;
   import §=!p§.§1e§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@$§.*;
   import §[%'§.§<"G§;
   import §[%§.Dragon;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class RankTabProgress extends §1#g§
   {
      
      private static const §#!T§:int = 20;
      
      private var §=!e§:§&%f§;
      
      private var §6k§:Boolean;
      
      private var §-%@§:TextField;
      
      private var §6"i§:TextField;
      
      public function RankTabProgress(param1:String)
      {
         super(§6#A§.§!&6§(param1));
      }
      
      public static function §,$!§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:String = null;
         var _loc4_:MovieClip = null;
         var _loc9_:§`#Q§ = null;
         var _loc10_:TopAwardCell = null;
         _loc2_ = "awardPanel";
         var _loc3_:MovieClip = param1.getChildByName(_loc2_) as MovieClip;
         param1.removeChild(_loc3_);
         _loc4_ = new MovieClip();
         _loc4_.name = _loc2_;
         param1.addChild(_loc4_);
         _loc4_.x = _loc3_.x;
         _loc4_.y = _loc3_.y;
         var _loc5_:§`&-§ = new §`&-§(_loc4_);
         var _loc6_:Vector.<§`#Q§> = §0"^§.§2$B§();
         var _loc7_:int = 0;
         var _loc8_:int = int(_loc6_.length);
         while(_loc7_ < _loc8_)
         {
            _loc9_ = _loc6_[_loc7_];
            _loc10_ = new TopAwardCell();
            _loc10_.§3§(_loc9_);
            _loc5_.addChild(_loc10_);
            §`o§.§4!F§(_loc10_.getContainer());
            _loc10_.x = _loc7_ * 95;
            _loc7_++;
         }
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§-%@§ = §'%s§("curPoints");
         this.§6"i§ = §'%s§("nextPoints");
         this.§=!e§ = new §&%f§(new MovieClip(),null,§+"'§.§1#!§,§#!T§);
         addChild(this.§=!e§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.update();
      }
      
      private function update() : void
      {
         var noteText:String;
         var rewardsTF:TextField;
         var canSeeRewards:Boolean;
         var profile:UserProfile = null;
         var rankPoints:int = 0;
         var rank:int = 0;
         var isInefficient:Boolean = false;
         var rewards:Array = null;
         var pointsToNext:int = 0;
         var pointsCurrRank:int = 0;
         var playerRankState:§=k§ = null;
         profile = Application.userProfile;
         rankPoints = profile.§]#6§();
         rank = int(profile.§+X§());
         var isRubyLeague:Boolean = rank == 0;
         var bonusRating:int = §0"^§.§8$M§(rankPoints) * 100;
         var bonusRatingTF:TextField = §'%s§("bonusText");
         §7&5§.§>&<§(bonusRatingTF,§0%§.format(§0$N§.§%! §("RATING_BONUS_TEXT"),{"value":(bonusRating > 0 ? "+" : "") + bonusRating}));
         bonusRatingTF.autoSize = TextFieldAutoSize.CENTER;
         getChildByName("bonusIcon").x = bonusRatingTF.x - getChildByName("bonusIcon").width - 10;
         noteText = "";
         if(isRubyLeague)
         {
            if(rankPoints < 0)
            {
               noteText = §0$N§.§%! §("RATING_UNAVAILABLE_NOTE");
            }
            else if(bonusRating < §0"^§.§3$m§())
            {
               noteText = §0$N§.§%! §("RATING_BONUS_LOWERED_NOTE");
            }
         }
         else
         {
            isInefficient = §0"^§.§9!c§(profile.getLevel(),profile.§7$F§().length,rank);
            if(isInefficient)
            {
               noteText = §0$N§.§%! §("RANK_PROGRESS_NOTE");
            }
         }
         §7&5§.§>&<§(§'%s§("progressNote"),noteText);
         getChildByName("progressNote").visible = noteText.length > 0;
         rewardsTF = §'%s§("currentAward");
         canSeeRewards = profile.getBestRank() <= §0"^§.§+%l§;
         this.§=!e§.setVisible(canSeeRewards);
         if(canSeeRewards)
         {
            rewardsTF.y = getChildByName("blockRankMax").y + getChildByName("blockRankMax").height + 10;
            §7&5§.§>&<§(rewardsTF,§0$N§.§%! §("RANK_PROGRESS_AWARD"));
            rewards = §0"^§.§@$0§(profile.getBestRank());
            this.§=!e§.§+$R§();
            this.§=!e§.§`!y§(rewards);
            §`o§.§9$x§(this.§=!e§);
            this.§=!e§.y = rewardsTF.y + rewardsTF.height + 20;
         }
         else
         {
            rewardsTF.y = getChildByName("blockRankMax").y + getChildByName("blockRankMax").height * 2 + 10;
            §7&5§.§>&<§(rewardsTF,§0$N§.§%! §("RANK_FEW_FOR_AWARD"));
         }
         getChildByName("iconRankRuby").visible = isRubyLeague || rank == 1;
         getChildByName("blockRubyAwards").visible = isRubyLeague;
         getChildByName("bar").visible = !isRubyLeague;
         getChildByName("iconRankCur").visible = !isRubyLeague;
         getChildByName("iconRankNext").visible = !isRubyLeague;
         getChildByName("blockRankMax").visible = !isRubyLeague;
         this.§-%@§.visible = this.§6"i§.visible = !isRubyLeague;
         if(isRubyLeague)
         {
            §`o§.§%&%§(getChildByName("iconRankRuby"));
            §7&5§.§>&<§(§'%s§("title"),§0$N§.§%! §("YOUR_POSITION_IN_RUBY_TITLE"));
            §7&5§.§>&<§(§'%s§("maxRank"),§0$N§.§%! §("RANK_LEGENDS_AWARD_TEXT"));
            §,$!§(§'$a§("blockRubyAwards"));
            if(!this.§6k§)
            {
               this.§6k§ = true;
               §7&5§.§?$k§(§'%s§("iconRankRuby.text"),"?");
               §8"%§.§ $C§.§6"8§(function(param1:int):void
               {
                  §7&5§.§?$k§(§'%s§("iconRankRuby.text"),param1 > 0 ? String(param1) : " ");
                  §6k§ = false;
               });
            }
         }
         else
         {
            getChildByName("iconRankRuby").x = getChildByName("iconRankNext").x;
            §'%s§("iconRankRuby.text").text = " ";
            §7&5§.§>&<§(§'%s§("title"),§0$N§.§%! §("YOUR_CURRENT_RANK_TITLE"));
            §7&5§.§>&<§(§'%s§("maxRank"),§0$N§.§%! §("TOP_RANK_IN_THIS_SEASON_MESSAGE"));
            §7&5§.§?$k§(§'%s§("iconRankCur.text"),rank.toString());
            §7&5§.§?$k§(§'%s§("iconRankNext.text"),String(rank - 1));
            §7&5§.§?$k§(§'%s§("blockRankMax.iconRankMax.text"),profile.getBestRank().toString());
            pointsToNext = §0"^§.§&$,§(rank);
            pointsCurrRank = §0"^§.§]"Q§(profile.§+X§());
            playerRankState = §0"^§.§5>§(profile.§]#6§());
            §7&5§.§?$k§(this.§-%@§,profile.§]#6§().toString());
            §7&5§.§?$k§(this.§6"i§,String(pointsCurrRank + pointsToNext));
            getChildByName("bar.fill").width = getChildByName("bar").width * (playerRankState.§8#X§ / pointsToNext);
         }
      }
   }
}

