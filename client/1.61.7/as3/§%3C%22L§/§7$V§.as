package §<"L§
{
   import §!$Z§.§"$I§;
   import §!L§.§`#p§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §0%[§.§0%§;
   import §2#V§.§-#U§;
   import §2#V§.§=$A§;
   import §5$]§.§3& §;
   import §<%k§.§`!v§;
   import §=$#§.§ b§;
   import §@!N§.§2"e§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §7$V§
   {
      
      private var mainController:§##-§;
      
      private var §"q§:int;
      
      private var §^!`§:Number;
      
      private var §>!7§:int;
      
      private const §=!<§:int = 3;
      
      public function §7$V§(param1:§##-§)
      {
         super();
         this.mainController = param1;
      }
      
      public function §1#H§(param1:§9$v§) : void
      {
         var message:ClanChatMessageTO = null;
         var myProfileId:uint = 0;
         var clanMemberTO:ClanMemberTO = null;
         var news:ClanNewsTO = null;
         var leaderVec:Vector.<ClanMemberTO> = null;
         var rubies:String = null;
         var msg:String = null;
         var event:§9$v§ = param1;
         message = IncomingClanMessage(event.message).message;
         myProfileId = uint(Application.userProfile.getId());
         switch(message.actionCode)
         {
            case ClanMessages.POST_TO_CHAT_REQUEST:
               this.§7%!§(message,myProfileId);
               break;
            case ClanMessages.LOGIN_JOIN_REQUEST:
               this.mainController.common.§5$$§(§]#i§.userClan.id,ClanTO.SCOPE_ALL,function(param1:ClanTO):void
               {
                  postToChat(message);
                  updateChat();
               });
               break;
            case ClanMessages.QUIT_CLAN_REQUEST:
               this.postToChat(message);
               this.§3!k§(message.publisherProfileId);
               this.updateChat();
               break;
            case ClanMessages.EXPEL_FROM_CLAN_REQUEST:
               this.postToChat(message);
               this.§3!k§(message.memberProfileId);
               if(myProfileId == message.memberProfileId)
               {
                  this.§1#x§(message);
               }
               else
               {
                  this.updateChat();
                  this.§'%O§();
               }
               break;
            case ClanMessages.LOGIN_REQUEST:
               clanMemberTO = §=%_§.§<!5§(message.publisherProfileId);
               clanMemberTO.online = true;
               break;
            case ClanMessages.LOGOUT_REQUEST:
               clanMemberTO = §=%_§.§<!5§(message.publisherProfileId);
               if(clanMemberTO)
               {
                  clanMemberTO.online = false;
               }
               break;
            case ClanMessages.POST_NEWS_REQUEST:
               news = new ClanNewsTO();
               news.logDate = message.logDate;
               news.publisherProfileId = message.publisherProfileId;
               news.publisherSocialId = message.publisherSocialId;
               news.text = message.params;
               §]#i§.§?# §(news);
               this.updateChat();
               break;
            case ClanMessages.PROMOTE_IN_RANK_REQUEST:
               clanMemberTO = §=%_§.§<!5§(message.memberProfileId);
               if(clanMemberTO.rank == §`&$§.OFFICER)
               {
                  leaderVec = §=%_§.§-+§(§]#i§.userClan.members,§`&$§.§+#8§);
                  this.§5%R§(1,leaderVec[0].profileId);
               }
               this.§5%R§(-1,message.memberProfileId);
               this.postToChat(message);
               break;
            case ClanMessages.LOWER_IN_RANK_REQUEST:
               this.§5%R§(1,message.memberProfileId);
               this.postToChat(message);
               break;
            case ClanMessages.INCREASE_LEVEL_CLAN_REQUEST:
               if(myProfileId != message.publisherProfileId)
               {
                  this.mainController.common.§5$$§(§]#i§.userClan.id,ClanTO.SCOPE_HEADER,function(param1:ClanTO):void
                  {
                  });
               }
               this.postToChat(message);
               break;
            case ClanMessages.CHANGE_CLAN_DESCRIPTION_REQUEST:
            case ClanMessages.CHANGE_CLAN_EMBLEM_REQUEST:
            case ClanMessages.RENAME_CLAN_REQUEST:
               if(!§]#i§.userClan.isBlocked())
               {
                  this.mainController.common.§5$$§(§]#i§.userClan.id,ClanTO.SCOPE_HEADER,function(param1:ClanTO):void
                  {
                     updateChat();
                     if(myProfileId != message.publisherProfileId)
                     {
                        postToChat(message);
                     }
                  });
               }
               break;
            case ClanMessages.CHANGE_CLAN_REVIEW_STATE_REQUEST:
            case ClanMessages.UPDATE_CLAN_REQUEST:
               this.mainController.common.§5$$§(§]#i§.userClan.id,ClanTO.SCOPE_HEADER,function(param1:ClanTO):void
               {
                  updateChat();
               });
               break;
            case ClanMessages.DONATE_REQUEST:
               if(!§8"%§.§?!W§.inBattle && myProfileId == message.publisherProfileId)
               {
                  rubies = Social.§-%c§.§4!]§(int(message.params),§0$N§.RUBY_PLURALS);
                  msg = §0%§.format(§0$N§.§%! §("TREASURY_INCOMING_PAYMENT_SUCCESS"),{
                     "count":message.params,
                     "rubies":rubies
                  });
                  new §,#W§(§0$N§.TITLE_ATTENTION,msg,§,#W§.§6!m§).show();
               }
               this.mainController.common.§5$$§(§]#i§.userClan.id,ClanTO.SCOPE_HEADER,function(param1:ClanTO):void
               {
                  updateTreasuryTab();
                  postToChat(message);
               });
               §8"%§.§"#§.§6!D§(§0#2§.§@&6§());
               §8"%§.§"#§.updateChatPanel();
               break;
            default:
               this.postToChat(message);
         }
      }
      
      private function §7%!§(param1:ClanChatMessageTO, param2:uint) : void
      {
         var _loc4_:Boolean = false;
         var _loc3_:Number = new Date().getTime();
         if(this.§"q§ == param1.publisherProfileId)
         {
            if(_loc3_ - this.§^!`§ < §@C§.§"%[§)
            {
               _loc4_ = true;
            }
         }
         this.§"q§ = param1.publisherProfileId;
         this.§^!`§ = _loc3_;
         if(_loc4_ && param1.publisherProfileId == param2)
         {
            ++this.§>!7§;
            if(this.§>!7§ >= this.§=!<§)
            {
               if(Application.scene)
               {
                  Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"clan chat spam hack"));
               }
               else
               {
                  §`d§.§7!0§(§`d§.§+%"§,"clan chat spam hack");
               }
            }
         }
         else
         {
            this.§>!7§ = 0;
         }
         if(!_loc4_)
         {
            this.postToChat(param1);
         }
      }
      
      private function postToChat(param1:ClanChatMessageTO) : void
      {
         var _loc2_:String = null;
         if(Application.userProfile.getId() != param1.publisherProfileId)
         {
            _loc2_ = §<$&§.§;%g§(param1);
            if(_loc2_)
            {
               §8"%§.§?!W§.§!#S§(_loc2_ + "<br>",0,null,true,§ b§.§"#g§);
            }
         }
         §]#i§.§!#S§(param1);
         this.mainController.getEventDispatcher().dispatchEvent(new §=$A§(param1));
      }
      
      private function updateChat() : void
      {
         this.mainController.getEventDispatcher().dispatchEvent(new Event(§-#U§.§-R§));
      }
      
      public function §'%O§() : void
      {
         var _loc1_:§"$I§ = §"$I§.getInstance();
         _loc1_.§0%+§.§7$7§();
         _loc1_.§>Q§.update();
         if(_loc1_.isShown() && _loc1_.§0%+§.isShown())
         {
            _loc1_.§[%0§(Application.userProfile.clanMember.clanId);
         }
      }
      
      public function §5%R§(param1:int, param2:int) : void
      {
         var _loc3_:ClanMemberTO = §=%_§.§<!5§(param2);
         _loc3_.rank += param1;
         var _loc4_:UserProfile = §`#p§.§ !§(param2);
         if(_loc4_)
         {
            _loc4_.clanMember.rank = _loc3_.rank;
         }
         if(Application.userProfile.getId() == param2)
         {
            Application.userProfile.clanMember.rank = _loc3_.rank;
         }
         else
         {
            this.§'%O§();
            this.updateChat();
         }
      }
      
      private function updateTreasuryTab() : void
      {
         var _loc1_:§"$I§ = §"$I§.getInstance();
         _loc1_.§0%+§.§7$7§();
         _loc1_.§>Q§.update();
         if(_loc1_.isShown() && _loc1_.§>Q§.isShown())
         {
            _loc1_.§2$A§(Application.userProfile.clanMember.clanId);
         }
      }
      
      private function §3!k§(param1:int) : void
      {
         var _loc2_:ClanMemberTO = null;
         _loc2_ = §=%_§.§<!5§(param1,§]#i§.userClan);
         §]#i§.userClan.members.splice(§]#i§.userClan.members.indexOf(_loc2_),1);
         §]#i§.userClan.seasonRating -= _loc2_.seasonRating;
         var _loc3_:UserProfile = §`#p§.§"!6§(_loc2_.socialProfileId);
         if(_loc3_)
         {
            _loc3_.clanMember.clanId = 0;
         }
      }
      
      private function §1#x§(param1:ClanChatMessageTO) : void
      {
         var _loc6_:String = null;
         this.mainController.common.§5!e§();
         var _loc2_:String = §4! §.§^B§(param1.publisherName,§@C§.§]%Z§);
         var _loc3_:String = _loc2_ != §2"e§.NA ? §0%§.format(§0$N§.USER_EXPELLED_BY_OFFICER_MSG,{"name":_loc2_}) : §0$N§.USER_EXPELLED_FROM_CLAN_MSG;
         var _loc4_:int = int(param1.params);
         if(_loc4_ > 0)
         {
            Application.userProfile.§9%D§(_loc4_);
            Application.§5!>§.§8$w§();
            §@%;§.play(§`!v§.§=#2§);
            _loc6_ = Social.§-%c§.§4!]§(_loc4_,§0$N§.RUBY_PLURALS);
            _loc3_ = _loc3_ + " " + §0%§.format(§0$N§.USER_EXPELLED_COMPENSATION,{
               "count":_loc4_,
               "rubies":_loc6_
            });
         }
         §,#W§.§'!+§(§0$N§.TITLE_MSG,_loc3_,§,#W§.§6!m§).show();
         var _loc5_:§"$I§ = §"$I§.instance;
         if((Boolean(_loc5_)) && _loc5_.isShown())
         {
            _loc5_.hide();
         }
      }
   }
}

