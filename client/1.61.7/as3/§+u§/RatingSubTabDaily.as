package §+u§
{
   import § !8§.§9%+§;
   import § "d§.§,!c§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§3%b§;
   import §"!C§.§3#n§;
   import §"%H§.§'%u§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'$j§.*;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.§>$_§;
   import §0!§.§6#z§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.§<%;§;
   import §2!-§.HpChangeEvent;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §3#a§.§!$6§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4#2§.*;
   import §4'§.§^"p§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§`"d§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$1§.§=!?§;
   import §7$t§.§;#_§;
   import §8!Y§.TopAwardCell;
   import §8!Y§.§`#Q§;
   import §9%W§.§&!P§;
   import §9%W§.§`"y§;
   import §;!Z§.*;
   import §<!W§.§;#A§;
   import §<$2§.§+$9§;
   import §<$2§.§<%>§;
   import §<%E§.§6$=§;
   import §<K§.RatingTabDaily;
   import §=!p§.§7#E§;
   import §>!_§.ClanMemberIntroHint;
   import §?#g§.*;
   import §?$K§.§@$J§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%c§.§8"6§;
   import com.greensock.loading.*;
   import config.§5%T§;
   import config.§;"I§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class RatingSubTabDaily extends §'n§
   {
      
      private var §]!-§:int;
      
      private var §6r§:Boolean;
      
      private var §&%Z§:Boolean;
      
      public function RatingSubTabDaily(param1:String, param2:§8"@§)
      {
         var _loc3_:MovieClip = §6#A§.§!&6§(param1);
         super(_loc3_,param2);
         §%d§ = new §`&-§(§6#A§.§!&6§("NobodyInRatingTopMsg"));
         addChild(§%d§);
         §%d§.setVisible(false);
         §`o§.§4!F§(§%d§.getContainer());
         §%d§.getContainer().y = §%d§.getContainer().y + 50;
      }
      
      override protected function §;$B§(param1:§9$v§) : void
      {
         super.§;$B§(param1);
         §%d§.setVisible(result.userProfileStructures.length == 0);
         §3$Q§ = this.§&%Z§ && !§%d§.isVisible();
      }
      
      override protected function §5%O§(param1:int, param2:GetRatingResult) : void
      {
         if(param1 == 0)
         {
            if(param2.place == 0)
            {
               this.§6r§ = true;
            }
            else if(param2.oldPlace == 0)
            {
               this.§6r§ = true;
            }
            else
            {
               this.§]!-§ = param2.oldPlace - param2.place;
            }
         }
         else if(param2.oldPlace == 0)
         {
            this.§6r§ = true;
         }
         else
         {
            this.§]!-§ = param2.oldPlace - param1;
         }
         §]$2§ = new Date().time;
      }
      
      override protected function §<#X§() : void
      {
         var _loc3_:DisplayObject = null;
         if(!§3$Q§)
         {
            super.§<#X§();
            return;
         }
         if(!§4#B§)
         {
            §4#B§ = §&%p§();
         }
         cells = [];
         var _loc1_:int = §4#B§.numChildren - (§<"S§ ? 1 : 0);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §4#B§.getChildAt(_loc2_);
            §"%F§(_loc3_,_loc2_);
            _loc2_++;
         }
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         super.§3u§(param1,param2,param3);
         if(§3$Q§)
         {
            _loc4_ = UserProfile(param2).getDailyRating();
            _loc5_ = Social.settings.§7#-§().valueOf(§+C§).§2"c§;
            §<%>§(param1).setMinDailyTop(_loc5_);
            §<%>§(param1).setIndexNumber(param3);
            if(!§<"S§ && _loc4_ < _loc5_)
            {
               §<"S§ = true;
               §<#s§ = param3;
            }
         }
      }
      
      override public function §&%q§(param1:§"&=§, param2:UserProfile) : void
      {
         var _loc3_:§<%>§ = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super.§&%q§(param1,param2);
         if(param2)
         {
            _loc3_ = §<%>§(param1);
            param1.setItem(param2);
            _loc4_ = §>$_§.§]%J§(result.userProfileStructures,param2) + 1;
            if(param2.getId() == Application.userProfile.getId())
            {
               §-y§ = _loc4_;
            }
            _loc3_.showDynamics(this.§&%Z§);
            _loc3_.showRating(param2.getDailyRating());
            if(param2.§=$E§() == 0)
            {
               if(param2.getId() == Application.userProfile.getId())
               {
                  _loc3_.§?#,§(this.§]!-§);
               }
               else
               {
                  _loc3_.§9%@§();
               }
            }
            else
            {
               _loc5_ = param2.§=$E§() - _loc4_;
               _loc3_.§?#,§(_loc5_);
               if(param2.getId() == Application.userProfile.getId())
               {
                  this.§]!-§ = _loc5_;
               }
            }
         }
      }
      
      override public function §=%D§() : void
      {
         var _loc1_:§<%>§ = §<%>§(RatingWindow.§0"F§());
         _loc1_.setVisible(!§%d§.isVisible() && result && Boolean(RatingWindow.§]#h§()) && RatingWindow.§]#h§() is RatingTabDaily);
         if(result)
         {
            _loc1_.setItem(Application.userProfile);
            §^$x§(_loc1_ as §+$9§);
            _loc1_.showDynamics(this.§&%Z§);
            _loc1_.showRating(result.rating);
            if(§-y§ != -1)
            {
               _loc1_.setIndexNumber(§-y§ - 1);
            }
            else if(result.place != 0)
            {
               _loc1_.setIndexNumber(result.place);
            }
            else
            {
               _loc1_.setIndexNumber(§>$_§.§]%J§(result.userProfileStructures,Application.userProfile));
            }
            if(this.§6r§)
            {
               _loc1_.§9%@§();
            }
            else
            {
               _loc1_.§?#,§(this.§]!-§);
            }
         }
      }
      
      override public function §;#i§(param1:int) : void
      {
         super.§;#i§(param1);
         this.§&%Z§ = param1 == § %`§.§=U§;
         var _loc2_:String = this.§&%Z§ ? "NOBODY_IN_TOP_TODAY_TEXT" : "NOBODY_IN_TOP_YESTERDAY_TEXT";
         §7&5§.§>&<§(§%d§.§'%s§("text"),§0$N§.§%! §(_loc2_));
         if(this.§&%Z§)
         {
            this.§,$!§();
         }
      }
      
      override public function §]"$§(param1:int) : void
      {
         super.§]"$§(param1);
      }
      
      public function §,$!§() : void
      {
         var _loc1_:String = null;
         var _loc3_:Sprite = null;
         var _loc7_:§`#Q§ = null;
         var _loc8_:TopAwardCell = null;
         §7&5§.§>&<§(§'%s§("title"),§0$N§.§%! §("TODAY_AWARD_TITLE"));
         §'%s§("descr").text = §0$N§.§%! §("TODAY_AWARD_DESCRIPTION");
         _loc1_ = "awardPanel";
         var _loc2_:Vector.<§`#Q§> = §1""§.§0$>§(§+C§);
         _loc3_ = §#!`§().getChildByName(_loc1_) as Sprite;
         var _loc4_:§`&-§ = new §`&-§(_loc3_);
         var _loc5_:int = 0;
         var _loc6_:int = int(_loc2_.length);
         while(_loc5_ < _loc6_)
         {
            _loc7_ = _loc2_[_loc5_];
            _loc8_ = new TopAwardCell();
            _loc4_.addChild(_loc8_);
            _loc8_.§3§(_loc7_);
            §`o§.§4!F§(_loc8_.getContainer());
            _loc8_.x = _loc5_ * 95;
            _loc5_++;
         }
      }
      
      override protected function §9"J§(param1:Array) : void
      {
         super.§9"J§(param1);
         if(§3$Q§)
         {
            this.§?%c§();
         }
      }
      
      override protected function §?%c§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:§"&=§ = null;
         if(cells.length > 0 && §<"S§)
         {
            if(!divider)
            {
               §'&9§(Social.settings.§7#-§().valueOf(§+C§).§2"c§);
            }
            §4#B§.addChild(divider);
            _loc1_ = 33;
            _loc2_ = 0;
            while(_loc2_ < cells.length)
            {
               _loc3_ = cells[_loc2_];
               _loc3_.getContainer().y = _loc1_ * _loc2_ + (_loc2_ >= §<#s§ ? _loc1_ : 0);
               if(_loc2_ == §<#s§)
               {
                  divider.y = _loc3_.getContainer().y - _loc1_;
               }
               _loc2_++;
            }
            scrollPane.update();
            §<"S§ = false;
            §<#s§ = 0;
         }
         else if(Boolean(divider) && Boolean(divider.parent))
         {
            §4#B§.removeChild(divider);
         }
      }
   }
}

