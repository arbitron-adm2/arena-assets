package §`#x§
{
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§ 6§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §"% §.LevelUpDialog;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§#&%§;
   import §%L§.§'$T§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §,#c§.ArenaMenu;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2#V§.§-#U§;
   import §2#s§.*;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#a§.§-#M§;
   import §4!!§.§6$V§;
   import §4!K§.§^%A§;
   import §4'§.§`"q§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§]$d§;
   import §?"[§.*;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`v§.§2&H§;
   import config.achievements.§^t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§[%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CancelBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpLogin;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §0"Y§
   {
      
      private static const log:§&`§ = new §&`§(§0"Y§);
      
      private static const §%"h§:uint = 5000;
      
      private static const §0#w§:uint = 500;
      
      protected static const §&3§:Vector.<uint> = new Vector.<uint>(0);
      
      protected static const §"$?§:int = 0;
      
      protected static const §'"b§:int = 1;
      
      protected static const §="§:uint = 5;
      
      protected static const §9"T§:uint = 10;
      
      protected static const §<$A§:§ 6§ = new § 6§();
      
      protected var state:§"$r§ = §"$r§.READY;
      
      protected var §`!J§:§'$T§;
      
      protected var info:§]$d§;
      
      protected var §38§:Boolean = true;
      
      protected var §+"7§:Boolean = true;
      
      protected var §2%A§:CreateBattleRequest;
      
      public function §0"Y§()
      {
         super();
      }
      
      protected function reset() : void
      {
         this.info = null;
      }
      
      protected function §]$"§(param1:§"$r§) : void
      {
         this.§1$h§(this.state);
         log.info("state = " + param1 + ", was " + this.state,"PVP");
         this.state = param1;
         this.§,!1§(this.state);
      }
      
      protected function §1$h§(param1:§"$r§) : void
      {
         if(param1 != §"$r§.READY)
         {
            if(param1 == §"$r§.§#!D§)
            {
               this.§7&=§();
            }
         }
      }
      
      private function §7&=§() : void
      {
         this.§`!J§.removeListener(BattleCreated,this.§ !O§);
         this.§`!J§.removeListener(BattleCreationFailure,this.§'$E§);
         this.§`!J§.removeListener(BattleLoginError,this.§<$r§);
         this.§`!J§.removeListener(PvpSystemMessage,this.§!%j§);
      }
      
      protected function §,!1§(param1:§"$r§) : void
      {
         if(param1 != §"$r§.READY)
         {
            return;
         }
         this.reset();
         if(this.§`!J§)
         {
            this.§`!J§.removeEventListener(Event.CLOSE,this.§0$<§);
            if(this.§38§ && this.§`!J§.§1",§())
            {
               §1%"§.delay(this.§`!J§.close,this.§`!J§,§0#w§);
            }
            else
            {
               this.§38§ = true;
            }
         }
         if(this.§+"7§)
         {
            Application.setUserBusy(false);
         }
         else
         {
            this.§+"7§ = true;
         }
         §[&G§.§]$+§();
      }
      
      public function §=$^§() : §'$T§
      {
         return this.§`!J§;
      }
      
      public function cancelBattle() : void
      {
         log.info("Отмена боя клиентом (state = " + this.state + ")","PVP");
         if(this.state == §"$r§.READY)
         {
            return;
         }
         var _loc1_:CancelBattle = new CancelBattle();
         _loc1_.battleId = this.info.battleId;
         _loc1_.error = 0;
         this.§`!J§.send(_loc1_);
         this.§]$"§(§"$r§.READY);
      }
      
      protected function connect(param1:§#&%§, param2:Function, param3:Function, param4:Boolean = true) : void
      {
         log.info("Подключение " + param1,"PVP");
         if(!param1)
         {
            return;
         }
         if(Boolean(this.§`!J§) && this.§`!J§.§1",§())
         {
            if(this.§`!J§.hasEventListener(Event.CLOSE))
            {
               this.§`!J§.removeEventListener(Event.CLOSE,this.§0$<§);
            }
            if(this.§`!J§.§`$8§(BattleCreated))
            {
               this.§7&=§();
            }
            this.§`!J§.close();
         }
         this.§`!J§ = new §'$T§(param1);
         this.§`!J§.addEventListener(Event.CLOSE,this.§0$<§,false,0,true);
         this.§`!J§.open(param2,param3);
         if(param4)
         {
            §[&G§.§5%b§(§0$N§.BATTLE_PVP_CONNECT);
         }
      }
      
      protected function §#!t§() : void
      {
         log.info("Ожидание создания боя","PVP");
         this.§]$"§(§"$r§.§#!D§);
         this.§`!J§.addListener(BattleCreated,this.§ !O§,false,0,true);
         this.§`!J§.addListener(BattleCreationFailure,this.§'$E§,false,0,true);
         this.§`!J§.addListener(BattleLoginError,this.§<$r§,false,0,true);
         this.§`!J§.addListener(PvpSystemMessage,this.§!%j§,false,0,true);
      }
      
      protected function §4#e§(param1:Event = null) : void
      {
         log.info("Ошибка подключения","PVP");
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.PVP_SERVER_CONNECTION_ERROR);
         this.§]$"§(§"$r§.READY);
      }
      
      private function §0$<§(param1:Event = null) : void
      {
         log.info("Соединение закрыто","PVP");
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.PVP_SERVER_CONNECTION_CLOSED);
         this.§]$"§(§"$r§.READY);
      }
      
      protected function § !O§(param1:§9$v§) : void
      {
         var _loc2_:ArenaMenu = §8"%§.§%w§.getArenaMenu();
         if(_loc2_.isShown())
         {
            _loc2_.hide();
         }
         var _loc3_:§@&&§ = Application.§5!>§.§^P§;
         if(Boolean(_loc3_) && _loc3_.isShown())
         {
            _loc3_.hide();
         }
         var _loc4_:BattleCreated = BattleCreated(param1.message);
         §8"%§.§!"F§ = _loc4_.serverTime;
         this.info.victoryRating = _loc4_.victoryRating;
         this.info.defeatRating = _loc4_.defeatRating;
         this.info.victoryRankPoints = _loc4_.victoryRankPoints;
         this.info.defeatRankPoints = _loc4_.defeatRankPoints;
         this.info.drawRankPoints = _loc4_.drawRankPoints;
      }
      
      protected function §'$E§(param1:§9$v§) : void
      {
         var _loc3_:String = null;
         log.info("Ошибка создания боя","PVP");
         this.§]$"§(§"$r§.READY);
         var _loc2_:BattleCreationFailure = BattleCreationFailure(param1.message);
         if(_loc2_.refuserId == Application.userProfile.getId())
         {
            _loc3_ = _loc2_.reason.localFailureReason;
         }
         else
         {
            _loc3_ = _loc2_.reason.remoteFailureReason;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,_loc3_ + " (0)");
      }
      
      protected function §<$r§(param1:§9$v§) : void
      {
         log.info("Ошибка логина в бою","PVP");
         this.§]$"§(§"$r§.READY);
         var _loc2_:BattleLoginError = BattleLoginError(param1.message);
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,_loc2_.error.message);
      }
      
      protected function §,"^§() : void
      {
         log.info("Не удалось загрузить карту","PVP");
         this.cancelBattle();
      }
      
      protected function §!%j§(param1:§9$v§) : void
      {
         var _loc2_:PvpSystemMessage = PvpSystemMessage(param1.message);
      }
      
      protected function §-c§(param1:Vector.<PvpProfileStructure>) : void
      {
         var _loc4_:PvpProfileStructure = null;
         var _loc5_:UserProfile = null;
         var _loc6_:§'"-§ = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:§#$R§ = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:UserProfile = null;
         var _loc13_:UserProfile = null;
         log.info("Обновление профилей","PVP");
         var _loc2_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         var _loc3_:Vector.<uint> = new Vector.<uint>(0);
         for each(_loc4_ in param1)
         {
            if(_loc4_.id == Application.userProfile.getId())
            {
               _loc5_ = new UserProfile();
               _loc6_ = Application.userProfile.§3%^§();
               _loc7_ = _loc6_.§4"G§();
               _loc8_ = _loc6_.§;#@§();
               _loc5_.§1G§.§"Q§(_loc4_);
               _loc5_.§3%^§().§%!§(§@$l§.§+%s§(_loc4_.backpackConf,_loc5_.§3%^§()));
               _loc9_ = _loc5_.§3%^§().§ %7§();
               _loc10_ = 0;
               _loc11_ = int(_loc7_.length);
               while(_loc10_ < _loc11_)
               {
                  if(_loc9_.§[!d§(_loc7_[_loc10_].getWeapons()))
                  {
                     _loc8_ = _loc10_;
                     break;
                  }
                  _loc10_++;
               }
               Application.userProfile.§1G§.§,$y§(_loc4_);
               Application.userProfile.§9]§(_loc6_);
               Application.userProfile.§9"4§(_loc4_.seasonsBestRank);
               if(_loc8_ != _loc6_.§;#@§())
               {
                  _loc6_.§-&,§(_loc8_);
               }
               if(_loc4_.activeTeamMembers.length)
               {
                  _loc12_ = Application.userProfile.§ "P§(true);
                  _loc12_.§1G§.§,$y§(_loc4_);
                  _loc12_.§9]§(_loc6_);
                  _loc12_.§9"4§(_loc4_.seasonsBestRank);
                  if(_loc8_ != _loc12_.§3%^§().§;#@§())
                  {
                     _loc12_.§3%^§().§-&,§(_loc8_);
                  }
                  this.§7&$§(_loc12_,_loc4_.activeTeamMembers);
                  _loc2_.push(_loc12_);
               }
               else
               {
                  _loc2_.push(Application.userProfile);
               }
               this.info.§8$'§ = _loc4_.dailyRating;
            }
            else
            {
               _loc13_ = new UserProfile();
               _loc13_.§1G§.§"Q§(_loc4_);
               _loc13_.§3%^§().§%!§(§@$l§.§+%s§(_loc4_.backpackConf,_loc13_.§3%^§()));
               if(_loc4_.activeTeamMembers.length)
               {
                  this.§7&$§(_loc13_,_loc4_.activeTeamMembers);
               }
               §4! §.§`$@§(_loc13_);
               _loc2_.push(_loc13_);
            }
            _loc3_.push(_loc4_.teamNum);
         }
         this.info.setProfiles(_loc2_,_loc3_);
      }
      
      private function §7&$§(param1:UserProfile, param2:Array) : void
      {
         var _loc5_:TeamMemberStructure = null;
         var _loc6_:UserProfile = null;
         var _loc7_:int = 0;
         var _loc3_:Vector.<UserProfile> = param1.§"]§();
         var _loc4_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         for each(_loc5_ in param2)
         {
            for each(_loc6_ in _loc3_)
            {
               _loc7_ = int(_loc5_.ownerId);
               if(_loc6_.getId() == _loc7_)
               {
                  _loc4_.push(_loc6_);
                  break;
               }
            }
         }
         param1.§;"!§(_loc4_);
      }
      
      protected function §%7§(param1:PvpLogin) : void
      {
         var _loc2_:UserProfile = Application.userProfile;
         param1.profileId = _loc2_.getId();
         param1.profileSocialId = _loc2_.§"%D§();
         param1.socialNetworkId = §8"%§.context.§54§().§1#&§;
         param1.playerNames = JSON.stringify(§4! §.§&%i§(_loc2_));
         param1.authKey = §8"%§.§[f§.§7!f§();
         param1.mainServerId = §8"%§.context.§2!k§()["pvpMainId"];
         log.info("PVP login, main server id = " + param1.mainServerId);
      }
      
      protected function §#$;§(param1:Vector.<uint>, param2:Vector.<uint>, param3:int, param4:§<#&§, param5:Vector.<int>, param6:String = "", param7:String = "", param8:int = -1) : CreateBattleRequest
      {
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:uint = 0;
         var _loc15_:ClanMemberTO = null;
         log.info("Создание запроса на бой","PVP");
         var _loc9_:CreateBattleRequest = new CreateBattleRequest();
         this.§%7§(_loc9_);
         _loc9_.mapId = param3;
         _loc9_.wager = param4;
         _loc9_.missionIds = param5;
         _loc9_.playerIds = param2.concat(param1);
         var _loc10_:Vector.<int> = new Vector.<int>(0);
         _loc11_ = 0;
         _loc12_ = int(param2.length);
         while(_loc11_ < _loc12_)
         {
            _loc10_[_loc10_.length] = §"$?§;
            _loc11_++;
         }
         _loc11_ = 0;
         _loc12_ = int(param1.length);
         while(_loc11_ < _loc12_)
         {
            _loc10_[_loc10_.length] = §'"b§;
            _loc11_++;
         }
         _loc9_.teamIds = _loc10_;
         _loc9_.params = {
            "options":param6,
            "floodingOption":param7
         };
         if(param8 > 0)
         {
            _loc9_.friendSocialNetId = param8;
         }
         else
         {
            for each(_loc14_ in _loc9_.playerIds)
            {
               if(_loc14_ != Application.userProfile.getId())
               {
                  _loc13_ = int(_loc14_);
                  break;
               }
            }
            _loc15_ = §=%_§.§<!5§(_loc13_);
            if(_loc15_)
            {
               _loc9_.friendSocialNetId = _loc15_.socialId;
            }
            else
            {
               _loc9_.friendSocialNetId = int(§8"%§.context.§54§().§1#&§) || param8;
            }
         }
         return _loc9_;
      }
   }
}

