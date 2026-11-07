package §?X§
{
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §"$+§.§ G§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'$Z§.§2#f§;
   import §+#P§.§]!E§;
   import §+5§.§5"<§;
   import §,$J§.§,$O§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §1#p§.§2=§;
   import §4$b§.§8D§;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §8#<§.§!#^§;
   import §8$Z§.§9"t§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§0"-§;
   import §@!i§.§<#&§;
   import §@$§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`%&§.§5$1§;
   import com.inreflected.forks.spark.effects.animation.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §36§ extends §&%z§
   {
      
      private static const PROMOTE_TO_LEADER_LEVEL:uint = 7;
      
      private static const PROMOTE_TO_LEADER_RATING:uint = 200;
      
      public function §36§(param1:UserProfile = null, param2:ClanMemberTO = null)
      {
         teamMemberType = §2=§.§"!$§;
         super(param1,param2);
         if(userProfile)
         {
            userProfile.§;$v§(§2=§.§"!$§);
         }
         teamMemberType = §2=§.§"!$§;
      }
      
      override protected function §5%i§() : void
      {
         var _loc1_:UserProfile = null;
         var _loc3_:int = 0;
         _loc1_ = Application.userProfile;
         var _loc2_:int = _loc1_.clanMember.rank;
         if(isMe)
         {
            if(userProfile.§!#E§())
            {
               §+$C§();
            }
         }
         else if(Boolean(_loc1_.§!#E§()) && Boolean(clanMemberTO) && clanMemberTO.clanId == _loc1_.clanMember.clanId)
         {
            if(userProfile)
            {
               §<#C§();
               this.§2#5§();
               §1"O§();
               §["?§();
               §<% §();
               §!%m§();
               if(§`%Y§(true))
               {
                  §%$@§();
               }
            }
            _loc3_ = clanMemberTO.rank;
            if(_loc2_ == §`&$§.§+#8§)
            {
               if(_loc3_ != §`&$§.§+#8§)
               {
                  this.§%%4§(_loc3_ - 1 == §`&$§.§+#8§);
               }
               if(_loc3_ != §`&$§.§7!^§)
               {
                  this.§^%5§();
               }
               if(_loc3_ == §`&$§.OFFICER)
               {
                  this.§>!E§(!clanMemberTO.expelPermit);
               }
               this.§%$+§(!clanMemberTO.muteMode);
            }
            if(_loc2_ < _loc3_)
            {
               this.§`" §();
            }
            §?#0§();
         }
         else
         {
            §<#C§();
         }
         §0%C§();
         if(!isMe)
         {
            §5&G§();
         }
         §7&B§();
         cells[cells.length - 1].§+"$§(false);
      }
      
      private function §%%4§(param1:Boolean = false) : void
      {
         var _loc2_:String = param1 ? §0$N§.CONTEXT_MENU_MAKE_LEADER : §0$N§.CONTEXT_MENU_INCREASE_RANK;
         var _loc3_:String = param1 ? §`&C§.§;$L§ : §`&C§.§8b§;
         §<%5§(this.§+#§,_loc3_,_loc2_,true);
      }
      
      private function §>!E§(param1:Boolean) : void
      {
         var _loc2_:String = param1 ? §0$N§.CONTEXT_MENU_EXPEL_PERMISSION_ON : §0$N§.CONTEXT_MENU_EXPEL_PERMISSION_OFF;
         var _loc3_:§&&H§ = §<%5§(this.§,"H§,§`&C§.§["1§,_loc2_,true);
         _loc3_.§&$%§(param1,§`&C§.§["1§);
      }
      
      private function §%$+§(param1:Boolean) : void
      {
         var _loc2_:String = param1 ? §0$N§.CONTEXT_MENU_MUTE_MODE_ON : §0$N§.CONTEXT_MENU_MUTE_MODE_OFF;
         var _loc3_:§&&H§ = §<%5§(this.§!"S§,§`&C§.§4#0§,_loc2_,true);
         _loc3_.§&$%§(!param1,§`&C§.§4#0§);
      }
      
      private function §^%5§() : void
      {
         §<%5§(this.§[%E§,§`&C§.§,"X§,§0$N§.CONTEXT_MENU_REDUCE_RANK,true);
      }
      
      private function §`" §() : void
      {
         §<%5§(this.§<"O§,§`&C§.§&$Z§,§0$N§.CONTEXT_MENU_FIRE_FROM_CLAN,true);
      }
      
      override protected function §2#5§() : void
      {
         if(Application.userProfile.getLevel() >= §<#&§.valueOf(§-"P§.§'$L§).minLevel)
         {
            §<%5§(§'"J§,§`&C§.§-"n§,§0$N§.CONTEXT_MENU_JOINT_FIGHT);
         }
      }
      
      override protected function §5$G§(param1:Event) : void
      {
         if(§9"t§.instance)
         {
            §9"t§.instance.hide();
         }
         §2#f§.getInstance().hide();
         super.§5$G§(param1);
      }
      
      private function §[%E§(param1:Event) : void
      {
         §8"%§.§!&I§.member.§1&G§(clanMemberTO.profileId,clanMemberTO.socialId,clanMemberTO.rank + 1,null);
         if(isShown())
         {
            hide();
         }
      }
      
      private function §+#§(param1:Event) : void
      {
         var profileRank:int = 0;
         var isOfficer:Boolean = false;
         var event:Event = param1;
         profileRank = clanMemberTO.rank;
         isOfficer = profileRank == §`&$§.OFFICER;
         var msgText:String = isOfficer ? §0$N§.§%! §("PROMOTION_CONFIRMATION_LEADER") : §0$N§.§%! §("PROMOTION_CONFIRMATION_OFFICER");
         §,#W§.§'!+§(§0"-§.TITLE_ATTENTION,msgText,§,#W§.§7"d§,function():void
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            var _loc6_:* = undefined;
            var _loc7_:* = undefined;
            var _loc8_:* = undefined;
            _loc1_ = userProfile.getProfileLevel();
            _loc2_ = userProfile.getRating();
            var _loc3_:* = profileRank == §`&$§.§7!^§ || _loc1_ >= PROMOTE_TO_LEADER_LEVEL && _loc2_ >= PROMOTE_TO_LEADER_RATING;
            var _loc4_:* = § G§.getLevel(§]#i§.userClan.level);
            var _loc5_:* = 0;
            for each(_loc6_ in §]#i§.userClan.members)
            {
               if(_loc6_.rank == §`&$§.OFFICER)
               {
                  _loc5_++;
               }
               if(_loc5_ == _loc4_.officers)
               {
                  break;
               }
            }
            if(!_loc3_)
            {
               _loc7_ = §0%§.format(§0$N§.PROMOTION_LEADER_FAILED,{
                  "level":PROMOTE_TO_LEADER_LEVEL,
                  "rating":PROMOTE_TO_LEADER_RATING
               });
               §,#W§.§'!+§(§0"-§.TITLE_ERROR,_loc7_,§,#W§.§6!m§).show();
            }
            else if(isOfficer && (!clanMemberTO.expelPermit || clanMemberTO.muteMode))
            {
               §,#W§.§'!+§(§0"-§.TITLE_ERROR,§0$N§.PROMOTION_LEADER_FAILED_2,§,#W§.§6!m§).show();
            }
            else if(profileRank == §`&$§.§7!^§ && _loc5_ == _loc4_.officers)
            {
               _loc8_ = § G§.getLevel(§]#i§.userClan.level + 1) != null ? " " + §0$N§.PROMOTION_OFFICER_FAILED_LIMIT : "";
               §,#W§.§'!+§(§0"-§.TITLE_ERROR,§0$N§.PROMOTION_OFFICER_FAILED + _loc8_,§,#W§.§6!m§).show();
            }
            else
            {
               §8"%§.§!&I§.member.promoteRank(clanMemberTO.profileId,clanMemberTO.socialId,profileRank - 1,null);
            }
         }).show();
         if(isShown())
         {
            hide();
         }
      }
      
      private function §<"O§(param1:Event) : void
      {
         var _loc2_:ClanMemberTO = §=%_§.§<!5§(Application.userProfile.getId());
         if(!_loc2_.expelPermit)
         {
            §,#W§.§'!+§(§0"-§.TITLE_ERROR,§0$N§.ERR_ACCESS_DENIED_FOR_EXPEL_CLANMATE,§,#W§.§6!m§).show();
            if(isShown())
            {
               hide();
            }
            return;
         }
         §8"%§.§!&I§.common.§5$$§(clanMemberTO.clanId,ClanTO.SCOPE_ALL,this.§]%F§);
      }
      
      private function §]%F§(param1:ClanTO) : void
      {
         var myRank:int;
         var title:String;
         var myProfile:UserProfile = null;
         var donation:int = 0;
         var medalsRate:int = 0;
         var medalsAllForChange:uint = 0;
         var cost:int = 0;
         var summ:int = 0;
         var msg:String = null;
         var isEnough:Boolean = false;
         var clan:ClanTO = param1;
         §]#i§.userClan = clan;
         §"$I§.getInstance().§0%+§.§7$7§(clan);
         clanMemberTO = §=%_§.§<!5§(clanMemberTO.profileId,clan);
         myProfile = Application.userProfile;
         myRank = myProfile.clanMember.rank;
         donation = clanMemberTO.donationCurrSeason + clanMemberTO.donationPrevSeason;
         medalsRate = clanMemberTO.seasonRating - clanMemberTO.cashedMedals * §@C§.§2#`§;
         medalsAllForChange = medalsRate / §@C§.§2#`§;
         cost = §]#i§.userClan.medalPrice * medalsAllForChange;
         summ = donation + cost;
         title = §0$N§.TITLE_ATTENTION;
         if(summ > 0)
         {
            msg = "";
            if(myRank == §`&$§.§+#8§)
            {
               isEnough = summ <= §]#i§.userClan.treasury;
               if(isEnough)
               {
                  §7$2§.show(userProfile,donation,cost,function():void
                  {
                     §8"%§.§!&I§.member.§<%s§(clanMemberTO.profileId,clanMemberTO.socialId,function():void
                     {
                        §]#i§.userClan.treasury -= summ;
                        §@%;§.play(§`!v§.§=#2§);
                     });
                  });
               }
               else
               {
                  title = §0$N§.§%! §("TREASURY_NOT_ENOUGH_TITLE");
                  msg = §0$N§.§%! §("NEED_FOR_COMPENSATION_MEMBER");
               }
            }
            else
            {
               msg = §0$N§.§%! §("ONLY_LEADER_CAN_EXPELL_MEMBER_WITH_COMPENSATION");
            }
            if(msg != "")
            {
               new §,#W§(title,msg,§,#W§.§6!m§).show();
               §@%;§.play(§`!v§.§2$e§);
            }
         }
         else
         {
            msg = §0$N§.§%! §("CONFIRM_EXPELL_CLANMATE");
            new §,#W§(title,msg,§,#W§.§7"d§,function():void
            {
               §8"%§.§!&I§.member.§<%s§(clanMemberTO.profileId,clanMemberTO.socialId,null);
            }).show();
         }
         if(isShown())
         {
            hide();
         }
      }
      
      private function §,"H§(param1:Event) : void
      {
         §8"%§.§!&I§.member.expelPermit(clanMemberTO,null);
         if(isShown())
         {
            hide();
         }
      }
      
      private function §!"S§(param1:Event) : void
      {
         §8"%§.§!&I§.member.muteMode(clanMemberTO,null);
         if(isShown())
         {
            hide();
         }
      }
   }
}

