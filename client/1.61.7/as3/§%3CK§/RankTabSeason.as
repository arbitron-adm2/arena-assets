package §<K§
{
   import § !8§.§`!d§;
   import § &5§.§9X§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.*;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§2!%§;
   import §+$=§.§6#A§;
   import §+%S§.§@x§;
   import §,"v§.§9%d§;
   import §-@§.§>$_§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.*;
   import §2B§.§8"n§;
   import §4%_§.§6#W§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9![§.§^§;
   import §9%k§.§0"^§;
   import §9%k§.§=k§;
   import §<!W§.*;
   import §<"?§.§7!@§;
   import §<"?§.§@&#§;
   import §<$2§.§<%>§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§]$d§;
   import §?#g§.§&"P§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@$§.§6$[§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%§.Boar;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import §^4§.§]"8§;
   import §`"p§.*;
   import §`#x§.*;
   import §`%&§.§,%§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.DeleteClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.JoinToChatResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class RankTabSeason extends §@&§
   {
      
      private var §=#t§:int = -1;
      
      private var §+C§:int;
      
      private var ratingType:int;
      
      private var §&$1§:int = -1;
      
      private var §]!-§:int;
      
      private var §]$2§:Number = 0;
      
      private var §6r§:Boolean = false;
      
      private var §,$+§:Boolean = false;
      
      private var §,!2§:int;
      
      public function RankTabSeason(param1:String)
      {
         super(param1);
         §3$Q§ = true;
         userProfile = Application.userProfile;
         delay = 5 * 60 * 1000;
         §+"G§ = 8;
         this.§+C§ = §-"P§.§&",§;
         this.ratingType = § %`§.§#!m§;
         §6%=§ = §+"'§.§4% §;
         RankTabProgress.§,$!§(§#!`§());
         §%d§ = new §`&-§(§6#A§.§!&6§("NobodyInRubyLeagueMsg"));
         §7&5§.§>&<§(§%d§.§'%s§("text"),§0$N§.§%! §("NOBODY_IN_RUBY_LEAGUE_TEXT"));
         addChild(§%d§);
         §%d§.setVisible(false);
         §`o§.§4!F§(§%d§.getContainer());
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         §7&5§.§>&<§(§'%s§("title"),§0$N§.§%! §("RANK_SEASON_BEST_TEXT"));
         §'%s§("descr").text = §0$N§.§%! §("RANK_SEASON_BEST_AWARD_TEXT");
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§<%>§ = new §<%>§(param1 as MovieClip,new §6$[§());
         §4"0§.§^%T§(_loc2_,2);
         _loc2_.showDynamics(true);
         return _loc2_;
      }
      
      override protected function §<#X§() : void
      {
         var _loc3_:DisplayObject = null;
         if(!§4#B§)
         {
            §4#B§ = §&%p§();
         }
         cells = [];
         var _loc1_:int = §4#B§.numChildren - (this.§,$+§ ? 1 : 0);
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
         super.§3u§(param1,param2,param3);
         var _loc4_:uint = UserProfile(param2).getBestRank();
         §<%>§(param1).setIndexNumber(_loc4_ == 0 ? int(param3) : int(_loc4_ - 1));
         if(!this.§,$+§ && _loc4_ != 0)
         {
            this.§,$+§ = true;
            this.§,!2§ = param3;
         }
      }
      
      override protected function §9"J§(param1:Array) : void
      {
         super.§9"J§(param1);
         this.§?%c§();
      }
      
      override protected function §?%c§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:§"&=§ = null;
         if(cells.length > 0 && this.§,$+§)
         {
            if(!divider)
            {
               divider = §6#A§.§!&6§(§+"'§.§>"J§);
               §7&5§.§>&<§(divider.getChildByName("text") as TextField,§0$N§.§%! §("RANK_APPLICANTS"));
            }
            §4#B§.addChild(divider);
            _loc1_ = 33;
            _loc2_ = 0;
            while(_loc2_ < cells.length)
            {
               _loc3_ = cells[_loc2_];
               _loc3_.getContainer().y = _loc1_ * _loc2_ + (_loc2_ >= this.§,!2§ ? _loc1_ : 0);
               if(_loc2_ == this.§,!2§)
               {
                  divider.y = _loc3_.getContainer().y - _loc1_;
               }
               _loc2_++;
            }
            scrollPane.update();
            this.§,$+§ = false;
            this.§,!2§ = 0;
         }
         else if(Boolean(divider) && Boolean(divider.parent))
         {
            §4#B§.removeChild(divider);
         }
      }
      
      override protected function §'&9§(param1:int) : void
      {
      }
      
      override public function loadIfNeeded() : void
      {
         var _loc1_:GetRating = null;
         if(!§,$H§ || new Date().time > §,$H§ + delay || this.§=#t§ != userProfile.getRating())
         {
            RatingWindow.§0"F§().setVisible(false);
            §&#F§(true);
            _loc1_ = new GetRating(this.ratingType,this.§+C§);
            §%%w§.§##$§(GetRatingResult,this.§;$B§);
            §%%w§.§,U§(_loc1_);
         }
         else
         {
            this.§=%D§();
         }
      }
      
      override protected function §;$B§(param1:§9$v§) : void
      {
         var _loc2_:GetRatingResult = null;
         var _loc6_:RatingProfileStructure = null;
         §%%w§.§-"j§(GetRatingResult,this.§;$B§);
         _loc2_ = GetRatingResult(param1.message);
         var _loc3_:int = §>$_§.§]%J§(_loc2_.userProfileStructures,Application.userProfile) + 1;
         this.§5%O§(_loc3_,_loc2_);
         var _loc4_:int = 0;
         var _loc5_:int = int(_loc2_.userProfileStructures.length);
         while(_loc4_ < _loc5_)
         {
            _loc6_ = _loc2_.userProfileStructures[_loc4_];
            _loc4_++;
         }
         super.§;$B§(param1);
         §%d§.setVisible(result.userProfileStructures.length == 0);
      }
      
      private function §5%O§(param1:int, param2:GetRatingResult) : void
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
         this.§]$2§ = new Date().time;
      }
      
      override protected function §2%d§(param1:GetRatingResult) : GetRatingResult
      {
         return param1;
      }
      
      override public function §&%q§(param1:§"&=§, param2:UserProfile) : void
      {
         var _loc6_:int = 0;
         super.§&%q§(param1,param2);
         if(!param2)
         {
            return;
         }
         §<%>§(param1).showRating(param2.getRating());
         var _loc3_:§<%>§ = §<%>§(param1);
         param1.setItem(param2);
         var _loc4_:int = §>$_§.§]%J§(result.userProfileStructures,param2) + 1;
         var _loc5_:int = Application.userProfile.getId();
         if(param2.getId() == _loc5_)
         {
            this.§&$1§ = _loc4_;
         }
         _loc3_.showRating(param2.getDailyRating());
         if(param2.§=$E§() == 0)
         {
            if(param2.getId() == _loc5_)
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
            _loc6_ = param2.§=$E§() - _loc4_;
            _loc3_.§?#,§(_loc6_);
            if(param2.getId() == _loc5_)
            {
               this.§]!-§ = _loc6_;
            }
         }
      }
      
      override public function §=%D§() : void
      {
         var _loc3_:§=k§ = null;
         super.§=%D§();
         this.§=#t§ = userProfile.getRating();
         §<%>§(RatingWindow.§0"F§(true)).showDynamics(false);
         §<%>§(RatingWindow.§0"F§(true)).showRating(this.§=#t§);
         if(!result)
         {
            return;
         }
         super.§=%D§();
         var _loc1_:§<%>§ = §<%>§(RatingWindow.§0"F§(true));
         _loc1_.setVisible(true);
         _loc1_.showDynamics(true);
         _loc1_.showRating(result.rating);
         var _loc2_:uint = Application.userProfile.getBestRank();
         if(_loc2_ == 0)
         {
            if(this.§&$1§ != -1)
            {
               _loc1_.setIndexNumber(this.§&$1§ - 1);
            }
            else if(result.place != 0)
            {
               _loc1_.setIndexNumber(result.place);
            }
            else
            {
               _loc1_.setIndexNumber(§>$_§.§]%J§(result.userProfileStructures,Application.userProfile));
            }
         }
         else
         {
            _loc3_ = §0"^§.§5>§(Application.userProfile.§]#6§());
            _loc1_.setIndexNumber(_loc3_.rank - 1);
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
}

