package §<K§
{
   import § &5§.§=#P§;
   import § K§.§2""§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&&6§.§8"O§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §-%B§.§-"o§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2"L§.§,'§;
   import §2#V§.§-#U§;
   import §2B§.§#&E§;
   import §4$b§.§2m§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §9%W§.§8#p§;
   import §<$2§.§<%>§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §?"[§.*;
   import §?$7§.§!§;
   import §?$7§.§+l§;
   import §?$7§.§6&'§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§1""§;
   import §@!i§.§<,§;
   import §@$§.§6$[§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import §`v§.§2&H§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.§^t§;
   import flash.display.*;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§]$y§;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetFriendsForMission;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class RatingTabAllTime extends §@&§
   {
      
      private var §=#t§:int = -1;
      
      public function RatingTabAllTime(param1:String)
      {
         super(param1);
         §<$k§ = 2;
         userProfile = Application.userProfile;
         delay = 5 * 60 * 1000;
         §+"G§ = 9;
         §6%=§ = §1""§.§'$d§ ? §+"'§.§3!p§ : §+"'§.§@#x§;
         §7&5§.§>&<§(§'%s§("title"),§0$N§.§%! §("LEGEND_TITLE"));
         §'%s§("description").htmlText = §0$N§.§%! §("LEGEND_DESCR");
         §%d§ = new §`&-§(§6#A§.§!&6§("PlugIfNotEnough"));
         §7&5§.§>&<§(§%d§.§'%s§("title"),§0$N§.LETS_GO_TO_TOP);
         §7&5§.§>&<§(§%d§.§'%s§("msg.text"),§0$N§.§%! §("NOBODY_IN_LEGENDS_TEXT"));
         addChild(§%d§);
         §%d§.setVisible(false);
         §%d§.y = -3;
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§<%>§ = new §<%>§(param1 as MovieClip,new §6$[§());
         §4"0§.§^%T§(_loc2_,2);
         _loc2_.showDynamics(false);
         return _loc2_;
      }
      
      override public function loadIfNeeded() : void
      {
         var _loc1_:GetRating = null;
         if((Boolean(!§,$H§ || new Date().time > §,$H§ + delay || this.§=#t§ != userProfile.getRating())) && Boolean(RatingWindow.§]#h§()) && RatingWindow.§]#h§() is RatingTabAllTime)
         {
            RatingWindow.§0"F§().setVisible(false);
            §&#F§(true);
            _loc1_ = new GetRating(§ %`§.§&",§,§-"P§.§&",§);
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
         super.§;$B§(param1);
         §%d§.setVisible(result.userProfileStructures.length == 0);
      }
      
      override protected function §2%d§(param1:GetRatingResult) : GetRatingResult
      {
         var _loc4_:RatingProfileStructure = null;
         var _loc2_:int = 0;
         var _loc3_:int = int(param1.userProfileStructures.length);
         while(_loc2_ < _loc3_)
         {
            _loc4_ = param1.userProfileStructures[_loc2_];
            if(_loc4_.rating <= 0)
            {
               param1.userProfileStructures = param1.userProfileStructures.slice(0,_loc2_);
               break;
            }
            _loc2_++;
         }
         return param1;
      }
      
      override public function §&%q§(param1:§"&=§, param2:UserProfile) : void
      {
         super.§&%q§(param1,param2);
         §<%>§(param1).showRating(param2.getRating());
      }
      
      override public function §=%D§() : void
      {
         super.§=%D§();
         this.§=#t§ = userProfile.getRating();
         var _loc1_:§0$L§ = RatingWindow.§0"F§(false,true);
         §<%>§(_loc1_).showDynamics(false);
         §<%>§(_loc1_).showRating(this.§=#t§);
      }
   }
}

