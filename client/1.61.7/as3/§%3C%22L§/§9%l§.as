package §<"L§
{
   import § &5§.§%$O§;
   import §#%!§.§^%c§;
   import §+$=§.§6#A§;
   import §-8§.§3!x§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §1#p§.*;
   import §2#V§.§-#U§;
   import §7!B§.§&"T§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.ExpelFromClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.InviteToClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.LowerRankInClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.PromoteRankInClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.SetExpelPermitRequest;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.ExpelFromClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.InviteToClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LowerRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.SetExpelPermitResponse;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9%l§
   {
      
      private var mainController:§##-§;
      
      public function §9%l§(param1:§##-§)
      {
         super();
         this.mainController = param1;
      }
      
      public function §6%Q§(param1:UserProfile, param2:Function = null, param3:Boolean = true, param4:Boolean = true) : void
      {
         var _loc5_:InviteToClanRequest = new InviteToClanRequest();
         _loc5_.profileId = param1.getId();
         _loc5_.socialId = param1.§54§().§1#&§;
         var _loc6_:Function = §1%"§.§]$<§(this.§5#r§,this,[param1,param3],true);
         this.mainController.§=$t§(_loc5_,InviteToClanResponse,_loc6_,param2,param4);
      }
      
      private function §5#r§(param1:Object, param2:Function, param3:UserProfile, param4:Boolean) : void
      {
         var _loc5_:InviteToClanResponse = null;
         var _loc10_:ClanTO = null;
         _loc5_ = InviteToClanResponse(param1);
         var _loc6_:ClanServiceResult = ClanServiceResult.getResultByCode(_loc5_.serviceResult);
         var _loc7_:String = "";
         var _loc8_:String = "";
         var _loc9_:Boolean = false;
         switch(_loc6_)
         {
            case ClanServiceResult.OK:
               _loc7_ = §0$N§.§%! §("INVITE_CONFIRMATION_TITLE");
               _loc8_ = §0$N§.§%! §("FRIEND_INVITE_SENT");
               _loc9_ = true;
               break;
            case ClanServiceResult.ERR_REPEATED_INVITE:
               _loc7_ = §0$N§.TITLE_ERROR;
               _loc8_ = §0$N§.ERR_REPEATED_INVITE;
               break;
            case ClanServiceResult.ERR_PROFILE_INVITE_LIMIT:
               _loc7_ = §0$N§.TITLE_ERROR;
               _loc8_ = §0$N§.ERR_PROFILE_INVITE_LIMIT;
               break;
            case ClanServiceResult.ERR_CLAN_INVITE_LIMIT:
               _loc7_ = §0$N§.TITLE_ERROR;
               _loc8_ = §0$N§.ERR_CLAN_INVITE_LIMIT;
               break;
            case ClanServiceResult.ERR_INTEROP:
               _loc7_ = §0$N§.TITLE_ERROR;
               _loc8_ = §0$N§.ERR_INTEROP_ON_INVITE;
         }
         if(param4 && _loc7_ != "" && _loc8_ != "")
         {
            if(_loc9_ && param3.§54§().equals(Application.userProfile.§54§()) && (Social.§!g§.§]$>§() || §8"%§.§[f§.getType() == §7"n§.OK))
            {
               _loc10_ = §]#i§.§=#7§(Application.userProfile);
               Social.§!g§.§%"o§(param3,_loc10_.name);
            }
            else
            {
               §,#W§.§'!+§(_loc7_,_loc8_,§,#W§.§6!m§).show();
            }
         }
         if(param2 != null)
         {
            param2(_loc8_);
         }
      }
      
      public function §<%s§(param1:int, param2:int, param3:Function) : void
      {
         var memberProfileId:int = param1;
         var socialId:int = param2;
         var callback:Function = param3;
         var request:ExpelFromClanRequest = new ExpelFromClanRequest();
         request.profileId = memberProfileId;
         request.socialId = socialId;
         this.mainController.§=$t§(request,ExpelFromClanResponse,this.§'$Y§,function(param1:ExpelFromClanResponse):void
         {
            if(callback != null)
            {
               callback(param1);
            }
         },false);
      }
      
      private function §'$Y§(param1:Object, param2:Function) : void
      {
         var _loc3_:ExpelFromClanResponse = ExpelFromClanResponse(param1);
         if(param2 != null)
         {
            param2(_loc3_);
         }
         this.mainController.getEventDispatcher().dispatchEvent(new Event(§-#U§.§^$X§));
      }
      
      public function promoteRank(param1:int, param2:int, param3:int, param4:Function) : void
      {
         var _loc5_:PromoteRankInClanRequest = new PromoteRankInClanRequest();
         _loc5_.profileId = param1;
         _loc5_.socialId = param2;
         _loc5_.targetRank = param3;
         this.mainController.§=$t§(_loc5_,PromoteRankInClanResponse,this.§&!,§,param4,true);
      }
      
      private function §&!,§(param1:Object, param2:Function) : void
      {
         var _loc3_:PromoteRankInClanResponse = PromoteRankInClanResponse(param1);
         if(_loc3_.serviceResult == ClanServiceResult.OK.code && _loc3_.socialId == Application.userProfile.§54§().§1#&§)
         {
            Social.§!g§.§'V§(§=%_§.§<!5§(_loc3_.profileId));
         }
         this.mainController.getEventDispatcher().dispatchEvent(new Event(§-#U§.§^$X§));
      }
      
      public function §1&G§(param1:int, param2:int, param3:int, param4:Function) : void
      {
         var _loc5_:LowerRankInClanRequest = new LowerRankInClanRequest();
         _loc5_.profileId = param1;
         _loc5_.socialId = param2;
         _loc5_.targetRank = param3;
         this.mainController.§=$t§(_loc5_,LowerRankInClanResponse,this.§9#6§,param4,true);
      }
      
      private function §9#6§(param1:Object, param2:Function) : void
      {
         var _loc3_:LowerRankInClanResponse = LowerRankInClanResponse(param1);
         this.mainController.getEventDispatcher().dispatchEvent(new Event(§-#U§.§^$X§));
      }
      
      public function expelPermit(param1:ClanMemberTO, param2:Function) : void
      {
         var memberTO:ClanMemberTO = param1;
         var callback:Function = param2;
         var request:SetExpelPermitRequest = new SetExpelPermitRequest();
         request.profileId = memberTO.profileId;
         request.socialId = memberTO.socialId;
         request.value = !memberTO.expelPermit;
         this.mainController.§=$t§(request,SetExpelPermitResponse,function(param1:Object, param2:Function):void
         {
            var _loc3_:SetExpelPermitResponse = SetExpelPermitResponse(param1);
            if(_loc3_.serviceResult == ClanServiceResult.OK.code)
            {
               memberTO.expelPermit = !memberTO.expelPermit;
               mainController.getEventDispatcher().dispatchEvent(new Event(§-#U§.§^$X§));
            }
         },callback,true);
      }
      
      public function muteMode(param1:ClanMemberTO, param2:Function) : void
      {
         var memberTO:ClanMemberTO = param1;
         var callback:Function = param2;
         var request:SetMuteModeRequest = new SetMuteModeRequest();
         request.profileId = memberTO.profileId;
         request.socialId = memberTO.socialId;
         request.value = !memberTO.muteMode;
         this.mainController.§=$t§(request,SetMuteModeResponse,function(param1:Object, param2:Function):void
         {
            var _loc3_:SetMuteModeResponse = SetMuteModeResponse(param1);
            if(_loc3_.serviceResult == ClanServiceResult.OK.code)
            {
               memberTO.muteMode = !memberTO.muteMode;
               mainController.getEventDispatcher().dispatchEvent(new Event(§-#U§.§^$X§));
            }
         },callback,true);
      }
   }
}

