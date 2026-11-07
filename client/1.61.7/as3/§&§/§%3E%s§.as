package §&§
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#E§.§4##§;
   import §&#E§.§;"v§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §1#p§.§2=§;
   import §4$b§.§6!G§;
   import §;#O§.§+%7§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@!i§.§<,§;
   import §`%&§.§5$1§;
   import §`%&§.§`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §>%s§ extends §<!U§
   {
      
      private var §2"n§:UserProfile;
      
      private var profileForReplace:UserProfile;
      
      private var teamMemberType:int;
      
      public function §>%s§(param1:UserProfile, param2:int, param3:UserProfile = null)
      {
         var profile:UserProfile = param1;
         var teamMemberType:int = param2;
         var profileForReplace:UserProfile = param3;
         super(§6#A§.§!&6§(§+"'§.§,&E§));
         this.§2"n§ = profile.§`!D§();
         this.profileForReplace = profileForReplace;
         this.teamMemberType = teamMemberType;
         if(this.teamMemberType == §2=§.FRIEND)
         {
            this.§2"n§.§7"i§(null);
            this.§2"n§.§;"U§(null);
         }
         §&$9§.§>&F§(§]"a§,§"-§.§+$m§,§0$N§.ADD_IN_GROUP);
         §&$9§.§>&F§(§'%s§("userName"),§"-§.§+$m§,this.§2"n§.§'&;§());
         §8&;§(§5&4§.§9Z§(this.§2"n§,this.§2"n§.getLevel(),this.teamMemberType));
         if(this.§2"n§.getRace().equals(Race.ALIEN.§]!D§()))
         {
            §8"%§.§%!m§.§"%x§(profile.getId(),function(param1:int, param2:int):void
            {
               §2"n§.§&$g§(Race.§3!4§(param1));
               §2"n§.§?!0§(param1,param2);
               §@$`§();
            });
         }
         else
         {
            this.§@$`§();
         }
      }
      
      private function §@$`§() : void
      {
         var _loc1_:MovieClip = null;
         §"$t§.§<$W§(this.§2"n§,container as MovieClip);
         _loc1_ = §`o§.getChildByName(container as MovieClip,"worm") as MovieClip;
         var _loc2_:§6!G§ = §"$t§.§!!1§(null,this.§2"n§,_loc1_);
         _loc2_.§4%F§();
      }
      
      override protected function §%&9§() : void
      {
         §7"x§ = §0$N§.BUTTON_ADD;
         §<"b§ = true;
         super.§%&9§();
      }
      
      override protected function buy(param1:§+$A§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         if(this.profileForReplace == null)
         {
            _loc2_ = §0$c§.§5G§(Application.userProfile);
            _loc3_ = §<!9§.§4p§(Application.userProfile.getLevel());
            _loc4_ = §0$c§.§1!B§(Application.userProfile);
            _loc5_ = _loc2_ < _loc3_ && _loc4_ < 1;
            this.§2"n§.setActive(_loc5_);
            §8"%§.§&"n§.§;#,§(this.§2"n§,param1,§%"]§().getValue(param1),this.teamMemberType,_loc5_,this.§,e§);
         }
         else
         {
            this.§2"n§.setActive(this.profileForReplace.isActive());
            §8"%§.§%!m§.replace(this.§2"n§,param1,§%"]§().getValue(param1),this.teamMemberType,this.profileForReplace.getId(),this.profileForReplace.isActive(),this.§,e§);
         }
      }
      
      private function §,e§(param1:Boolean) : void
      {
         if(param1 && this.profileForReplace == null)
         {
            this.§2"n§.§;$v§(this.teamMemberType);
            Application.userProfile.§1G§.§<#x§(this.§2"n§,this.teamMemberType != §2=§.FRIEND);
            Application.§5!>§.§8$w§();
            if(this.teamMemberType == §2=§.FRIEND || this.teamMemberType == §2=§.§"!$§)
            {
               Social.§!g§.newTeamMate(this.§2"n§,this.teamMemberType == §2=§.FRIEND);
            }
         }
         hide();
      }
   }
}

