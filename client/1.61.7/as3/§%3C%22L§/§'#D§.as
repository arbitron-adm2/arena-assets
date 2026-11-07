package §<"L§
{
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §"$+§.*;
   import §"%H§.§1! §;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §+%o§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §1#p§.§2=§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §4#`§.§+!l§;
   import §4'§.§`"q§;
   import §7$t§.§;#_§;
   import §8#a§.ShopMenu;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §?$L§.§0"-§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^4§.§0#q§;
   import §^4§.§]"8§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.Security;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanBase;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanErrorResponse;
   import ru.pragmatix.wormix.messages.clans.response.PostToClanChatResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §'#D§ extends EventDispatcher
   {
      
      private var mainController:§##-§;
      
      public function §'#D§(param1:§##-§)
      {
         super();
         this.mainController = param1;
      }
      
      private static function §'%?§(param1:ClanTO) : void
      {
         var _loc3_:UserProfile = null;
         var _loc2_:UserProfile = Application.userProfile;
         for each(_loc3_ in _loc2_.§"]§())
         {
            if(_loc3_.§4!^§() == §2=§.§2f§ && §=%_§.§<!5§(_loc3_.getId(),param1) != null)
            {
               if(_loc2_.getLevel() >= _loc3_.getLevel())
               {
                  _loc3_.§;$v§(§2=§.§"!$§);
               }
               else
               {
                  _loc3_.§;$v§(§2=§.§^%&§);
               }
            }
         }
      }
      
      private static function §4"g§(param1:Function) : void
      {
         Social.§!g§.§`"e§();
         param1();
      }
      
      private function §?!T§(param1:Object, param2:Function) : void
      {
         var userClan:ClanTO;
         var userProfile:UserProfile;
         var response:LoginClanEnterAccount = null;
         var message:ClanChatMessageTO = null;
         var ids:Array = null;
         var member:ClanMemberTO = null;
         var responseObj:Object = param1;
         var callback:Function = param2;
         if(§%%w§.§`$8§(InviteFriendToClan))
         {
            §%%w§.§-"j§(InviteFriendToClan,this.mainController.§ ,§);
         }
         §]#i§.§,"&§();
         response = LoginClanEnterAccount(responseObj);
         userClan = response.clan;
         §]#i§.§3"y§(userClan);
         §]#i§.userClan = userClan;
         §]#i§.startSeasonDate = response.startSeasonDate;
         §]#i§.finishSeasonDate = response.finishSeasonDate;
         userProfile = Application.userProfile;
         if(userClan)
         {
            §=%_§.§2% §(userProfile,userClan.id);
         }
         for each(message in response.chat)
         {
            §]#i§.§!#S§(message);
         }
         if(response.newsBoard.length > 0)
         {
            §]#i§.§?# §(response.newsBoard[0]);
         }
         this.mainController.getEventDispatcher().dispatchEvent(new Event(§-#U§.§?!y§));
         if(!§##-§.§8",§)
         {
            ids = [];
            for each(member in userClan.members)
            {
               ids[ids.length] = member.socialProfileId;
            }
            §`#p§.§#&2§(ids,function(param1:Vector.<UserProfile>):void
            {
               §##-§.§8",§ = true;
               mainController.login.dispatchEvent(new Event(Event.COMPLETE));
               if(callback != null)
               {
                  callback();
               }
            });
         }
         else if(callback != null)
         {
            callback();
         }
         §'%?§(userClan);
         §%#9§.§##$§(IncomingClanMessage,this.mainController.message.§1#H§);
         §%#9§.§##$§(PostToClanChatResponse,this.mainController.common.§6#i§);
      }
      
      private function §9"O§(param1:Object, param2:Function) : void
      {
         var _loc3_:LoginClanErrorResponse = null;
         var _loc5_:String = null;
         _loc3_ = LoginClanErrorResponse(param1);
         var _loc4_:ClanServiceResult = ClanServiceResult.getResultByCode(_loc3_.serviceResult);
         if(_loc4_ == ClanServiceResult.ERR_ALREADY_IN_GAME)
         {
            this.§="7§();
            this.mainController.§!N§().start();
         }
         else
         {
            this.mainController.§[%N§();
            switch(_loc4_)
            {
               case ClanServiceResult.ERR_CLAN_NAME_EXISTS:
                  _loc5_ = §0$N§.ERR_CLAN_NAME_EXISTS;
                  break;
               case ClanServiceResult.ERR_ACCESS_DENIED:
                  _loc5_ = §0$N§.ERR_INVITE_ALREADY_PASSED;
                  break;
               case ClanServiceResult.ERR_CLAN_SIZE_LIMIT:
                  _loc5_ = §0$N§.MAP_CAPACITY_FOR_JOIN_CLAN;
                  break;
               case ClanServiceResult.ERR_EMPTY_SOCIAL_ID:
                  _loc5_ = §0$N§.ERR_SOCIAL_ID;
                  break;
               case ClanServiceResult.ERR_NOT_IN_CLAN:
            }
            if(_loc5_)
            {
               §,#W§.§'!+§(§0$N§.TITLE_ERROR,_loc5_).show();
            }
         }
      }
      
      public function §="7§() : void
      {
         var _loc1_:LoginClanRequest = new LoginClanRequest();
         §7"L§.§9!R§(_loc1_);
         this.§=$?§(_loc1_,null,false);
      }
      
      public function §;&H§(param1:uint, param2:uint, param3:uint, param4:Function) : void
      {
         var _loc5_:LoginJoinClanRequest = new LoginJoinClanRequest();
         §7"L§.§9!R§(_loc5_);
         _loc5_.clanId = param1;
         _loc5_.hostSocialId = param3;
         _loc5_.hostProfileId = param2;
         this.§=$?§(_loc5_,param4,true);
      }
      
      public function createClan(param1:String, param2:Vector.<uint>, param3:String, param4:Function) : void
      {
         var _loc5_:LoginCreateClanRequest = new LoginCreateClanRequest();
         §7"L§.§9!R§(_loc5_);
         _loc5_.clanName = param1;
         _loc5_.clanEmblem = param2;
         _loc5_.clanDescription = param3;
         this.§=$?§(_loc5_,§1%"§.§]$<§(§4"g§,this,[param4]),true,§@C§.§!&8§);
      }
      
      private function §=$?§(param1:LoginClanBase, param2:Function, param3:Boolean, param4:§`"q§ = null) : void
      {
         var _loc5_:Vector.<Class> = new <Class>[LoginClanEnterAccount,LoginClanErrorResponse];
         var _temp_3:* = new <Function>[this.§?!T§,this.§9"O§];
         var _loc6_:Vector.<Function> = new <Function>[this.§?!T§,this.§9"O§];
         this.mainController.§@!Q§(param1,_loc5_,_loc6_,param2,param3,param4);
      }
   }
}

