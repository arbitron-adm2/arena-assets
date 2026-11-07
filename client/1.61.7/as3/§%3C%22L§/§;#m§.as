package §<"L§
{
   import §!$Z§.§"$I§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§8"@§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §-8§.§3!x§;
   import §-G§.§&"7§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §2#V§.§-#U§;
   import §4!!§.§76§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.§]#i§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.main.server.GetJoinClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.clans.main.server.ListClansRequestMain;
   import ru.pragmatix.wormix.messages.clans.main.server.TopClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.ListClansRequest;
   import ru.pragmatix.wormix.messages.clans.request.PostClanNewsRequest;
   import ru.pragmatix.wormix.messages.clans.request.PostToClanChatRequest;
   import ru.pragmatix.wormix.messages.clans.request.QuitClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.TopClansRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.response.DeleteClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.GetJoinClansMainResponse;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.clans.response.PostClanNewsResponse;
   import ru.pragmatix.wormix.messages.clans.response.PostToClanChatResponse;
   import ru.pragmatix.wormix.messages.clans.response.QuitClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.TopClansResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §;#m§
   {
      
      private var mainController:§##-§;
      
      public function §;#m§(param1:§##-§)
      {
         super();
         this.mainController = param1;
      }
      
      private static function §9#$§(param1:Object, param2:Function) : void
      {
         var _loc3_:GetJoinClansMainResponse = GetJoinClansMainResponse(param1.message);
         param2(_loc3_.clans);
      }
      
      public function §5!e§() : void
      {
         §]#i§.userClan = null;
         var _loc1_:ClanMemberStructure = Application.userProfile.clanMember;
         _loc1_.clanId = 0;
         _loc1_.clanName = "";
         _loc1_.rank = 0;
         _loc1_.clanEmblem.length = 0;
         §]#i§.§?# §(null);
         §]#i§.§ %x§();
         this.mainController.getEventDispatcher().dispatchEvent(new Event(§-#U§.§4%m§));
         this.mainController.§0"1§();
         this.mainController.§!N§().stop();
         §%#9§.§7F§.close();
         if(!§%%w§.§`$8§(InviteFriendToClan))
         {
            §%%w§.§##$§(InviteFriendToClan,this.mainController.§ ,§);
         }
         §&"7§.§3#-§();
      }
      
      private function §6%x§() : Boolean
      {
         return Application.userProfile.§!#E§() && this.mainController.§1",§();
      }
      
      public function §3&6§(param1:Function = null) : void
      {
         var clanMember:ClanMemberStructure = null;
         var clanUser:ClanTO = null;
         var days:Number = NaN;
         var rank:int = 0;
         var clanName:String = null;
         var msg:String = null;
         var callback:Function = param1;
         clanMember = Application.userProfile.clanMember;
         clanUser = §]#i§.userClan;
         days = §0#2§.§3V§(§]#i§.startSeasonDate / §0#2§.§>!U§);
         var exitClosed:Boolean = clanUser.isExitClosed && days > §@C§.§+!u§;
         if(clanMember.rank != §`&$§.§+#8§ && exitClosed)
         {
            msg = §0%§.format(§0$N§.§%! §("ERR_EXIT_CLOSED_CLAN"),{"count":§@C§.§+!u§});
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,msg,§,#W§.§6!m§);
            return;
         }
         rank = clanMember.rank;
         clanName = clanMember.clanName;
         if(clanMember.rank == §`&$§.§+#8§)
         {
            if(clanUser.members.length == 1)
            {
               §,#W§.§'!+§(§0$N§.TITLE_CONFIRMATION,§0$N§.§%! §("QUIT_CLAN_CONFIRMATION"),§,#W§.§7"d§,function():void
               {
                  §[$&§(clanMember.clanId,function(param1:DeleteClanResponse):void
                  {
                     var _loc2_:* = undefined;
                     var _loc3_:* = undefined;
                     if(callback != null)
                     {
                        callback();
                     }
                     if(Boolean(param1) && param1.comeback > 0)
                     {
                        Application.userProfile.§9%D§(param1.comeback);
                        Application.§5!>§.§8$w§();
                        §@%;§.play(§`!v§.§=#2§);
                        _loc2_ = Social.§-%c§.§4!]§(param1.comeback,§0$N§.RUBY_PLURALS);
                        _loc3_ = §0%§.format(§0$N§.USER_EXPELLED_COMPENSATION,{
                           "count":param1.comeback,
                           "rubies":_loc2_
                        });
                        §,#W§.§'!+§(§0$N§.TITLE_MSG,_loc3_,§,#W§.§6!m§).show();
                     }
                     Social.§!g§.§^m§(rank,clanName);
                  });
               }).show();
            }
            else
            {
               §,#W§.§'!+§(§0$N§.TITLE_ATTENTION,§0$N§.§%! §("ERR_LEADER_QUIT_CLAN"),§,#W§.§6!m§).show();
            }
         }
         else
         {
            §,#W§.§'!+§(§0$N§.TITLE_CONFIRMATION,§0$N§.§%! §("CONFIRMATION_EXIT_FROM_CLAN"),§,#W§.§7"d§,function():void
            {
               §#%l§(function():void
               {
                  if(callback != null)
                  {
                     callback();
                  }
                  Social.§!g§.§^m§(rank,clanName);
               });
            }).show();
         }
      }
      
      public function postMessage(param1:String) : void
      {
         §%#9§.§,U§(new PostToClanChatRequest(param1));
      }
      
      public function §6#i§(param1:§9$v§) : void
      {
         var _loc2_:PostToClanChatResponse = null;
         var _loc4_:String = null;
         var _loc5_:ClanMemberTO = null;
         _loc2_ = PostToClanChatResponse(param1.message);
         var _loc3_:ClanServiceResult = ClanServiceResult.getResultByCode(_loc2_.serviceResult);
         if(_loc3_ != ClanServiceResult.OK)
         {
            switch(_loc3_)
            {
               case ClanServiceResult.ERR_INVALID_ARGUMENT:
                  _loc4_ = §0$N§.§%! §("CHAT_FLOOD_WARNING");
                  break;
               case ClanServiceResult.ERR_ACCESS_DENIED:
                  var _temp_1:* = §=%_§.§<!5§(Application.userProfile.getId());
                  _loc5_ = §=%_§.§<!5§(Application.userProfile.getId());
                  if(_loc5_.muteMode)
                  {
                     §,#W§.§'!+§(§0$N§.TITLE_ERROR,§0$N§.ERR_ACCESS_DENIED_FOR_CLAN_CHAT,§,#W§.§6!m§).show();
                  }
                  break;
               default:
                  this.mainController.§&#r§(_loc3_,PostToClanChatRequest,PostToClanChatResponse);
            }
            if(_loc4_)
            {
               §,#W§.§'!+§(§0$N§.TITLE_ERROR,_loc4_,§,#W§.§6!m§).show();
            }
         }
      }
      
      public function §4&"§(param1:String) : void
      {
         this.mainController.§=$t§(new PostClanNewsRequest(param1),PostClanNewsResponse,this.§6"<§,null,false);
      }
      
      private function §6"<§(param1:Object, param2:Function) : void
      {
      }
      
      private function §[$&§(param1:int, param2:Function) : void
      {
         var _loc3_:Function = §1%"§.§]$<§(this.§=%S§,this,[param1],true);
         this.mainController.§=$t§(new DeleteClanRequest(param1),DeleteClanResponse,_loc3_,param2,true);
      }
      
      private function §=%S§(param1:Object, param2:Function, param3:int) : void
      {
         var _loc4_:DeleteClanResponse = DeleteClanResponse(param1);
         §]#i§.§ !9§(param3);
         this.§5!e§();
         if(param2 != null)
         {
            param2(_loc4_);
         }
      }
      
      private function §#%l§(param1:Function) : void
      {
         this.mainController.§=$t§(new QuitClanRequest(),QuitClanResponse,this.§?$b§,param1,true);
      }
      
      private function §?$b§(param1:Object, param2:Function) : void
      {
         if(§"$I§.getInstance().isShown())
         {
            §"$I§.getInstance().hide();
         }
         this.§5!e§();
         this.§,%V§();
         if(param2 != null)
         {
            param2();
         }
      }
      
      private function §,%V§() : void
      {
         var _loc1_:UserProfile = null;
         for each(_loc1_ in Application.userProfile.§"]§())
         {
            if(_loc1_.§4!^§() == §2=§.§"!$§)
            {
               _loc1_.§;$v§(§2=§.§2f§);
            }
         }
      }
      
      public function §5$$§(param1:int, param2:int, param3:Function) : void
      {
         if(this.§6%x§())
         {
            this.mainController.§=$t§(new ClanSummaryRequest(param1,param2),ClanSummaryResponse,this.§3%4§,param3,false);
         }
         else
         {
            §^"5§.single(§%%w§.§7F§,ClanSummaryResponse,§1%"§.§]$<§(this.§3%4§,this,[param3],true));
            §%%w§.§,U§(new ClanSummaryMainRequest(param1,param2));
         }
      }
      
      private function §3%4§(param1:Object, param2:Function) : void
      {
         var response:ClanSummaryResponse = null;
         var clan:ClanTO = null;
         var ids:Array = null;
         var member:ClanMemberTO = null;
         var responseObj:Object = param1;
         var callback:Function = param2;
         if(responseObj is §9$v§)
         {
            response = §9$v§(responseObj).message as ClanSummaryResponse;
         }
         else
         {
            response = ClanSummaryResponse(responseObj);
         }
         if(response.serviceResult == ClanServiceResult.ERR_NOT_FOUND.code)
         {
            §,#W§.§'!+§(§0$N§.TITLE_SERVER_MSG,§0$N§.§%! §("CLAN_NOT_FOUND"),§,#W§.§6!m§).show();
         }
         else
         {
            clan = response.clan;
            §=%_§.§9!7§(clan);
            ids = [];
            for each(member in clan.members)
            {
               ids[ids.length] = member.socialProfileId;
            }
            §`#p§.§#&2§(ids,function(param1:Vector.<UserProfile>):void
            {
               callback(clan);
            });
         }
      }
      
      public function §+,§(param1:Function) : void
      {
         if(this.§6%x§())
         {
            this.mainController.§=$t§(new TopClansRequest(),TopClansResponse,this.§3$V§,param1,false);
         }
         else
         {
            §^"5§.single(§%%w§.§7F§,TopClansResponse,§1%"§.§]$<§(this.§3$V§,this,[param1],true));
            §%%w§.§,U§(new TopClansMainRequest());
         }
      }
      
      private function §3$V§(param1:Object, param2:Function) : void
      {
         var _loc3_:TopClansResponse = null;
         if(param1 is §9$v§)
         {
            _loc3_ = §9$v§(param1).message as TopClansResponse;
         }
         else
         {
            _loc3_ = TopClansResponse(param1);
         }
         param2(_loc3_);
      }
      
      public function §=%7§(param1:String, param2:Function) : void
      {
         if(this.§6%x§())
         {
            this.mainController.§=$t§(new ListClansRequest(param1),ListClansResponse,this.§6$Q§,param2,false);
         }
         else
         {
            §^"5§.single(§%%w§.§7F§,ListClansResponse,§1%"§.§]$<§(this.§6$Q§,this,[param2],true));
            §%%w§.§,U§(new ListClansRequestMain(param1));
         }
      }
      
      private function §6$Q§(param1:Object, param2:Function) : void
      {
         var _loc3_:ListClansResponse = null;
         if(param1 is §9$v§)
         {
            _loc3_ = §9$v§(param1).message as ListClansResponse;
         }
         else
         {
            _loc3_ = ListClansResponse(param1);
         }
         param2(_loc3_.clans);
      }
      
      public function §2!l§(param1:Function) : void
      {
         §^"5§.single(§%%w§.§7F§,GetJoinClansMainResponse,§1%"§.§]$<§(§9#$§,this,[param1],true));
         §%%w§.§,U§(new GetJoinClansMainRequest());
      }
      
      public function §@"#§(param1:Function) : void
      {
         this.mainController.§=$t§(new AuditActionsRequest(),AuditActionsResponse,this.§""s§,param1,false);
      }
      
      private function §""s§(param1:Object, param2:Function) : void
      {
         var _loc3_:AuditActionsResponse = AuditActionsResponse(param1);
         if(_loc3_.serviceResult == ClanServiceResult.OK.code && param2 != null)
         {
            param2(_loc3_.actions);
         }
      }
   }
}

