package §`#x§
{
   import § !P§.*;
   import § "L§.§1%b§;
   import § $q§.SelectMapMenu;
   import § %"§.§"%5§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"% §.LevelUpDialog;
   import §"%H§.§1! §;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%&3§.§'C§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §&#E§.§;"v§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%o§.*;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0"L§.§@#n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §1!J§.§"t§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#a§.§[&A§;
   import §4!!§.§#Z§;
   import §4!K§.§^%A§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §6#Z§.§&!Z§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8$V§.*;
   import §<"?§.§3>§;
   import §<"?§.§7!@§;
   import §<"L§.§7"L§;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$7§.§!§;
   import §?$L§.§0"-§;
   import §?>§.§0!7§;
   import §@!i§.§!m§;
   import §@!i§.§<#&§;
   import §@!i§.§=$,§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §[%§.Dragon;
   import §^#[§.§&$2§;
   import §`%&§.§,%§;
   import §`%&§.§@&,§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import config.§=%A§;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.system.Security;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§5$t§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.GetJoinClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.GetJoinClansMainResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §7"^§ extends §0"Y§
   {
      
      private static const log:§&`§ = new §&`§(§7"^§);
      
      private var §#!p§:Vector.<uint> = new Vector.<uint>(0);
      
      private var §9#,§:Vector.<uint> = new Vector.<uint>(0);
      
      private var callee:UserProfile;
      
      private var §`u§:SelectMapMenu;
      
      private var §;u§:§5$t§;
      
      private var §#%$§:§5$t§;
      
      private var §'$N§:§5$t§;
      
      private var §[$_§:Boolean = false;
      
      private var friendSocialNetId:int;
      
      public function §7"^§()
      {
         super();
         this.reset();
      }
      
      private static function §<!d§() : void
      {
         §[&G§.§]$+§();
         §,#W§.§6!P§(§0$N§.TITLE_ERROR_LOAD_RES,§0$N§.MSG_ERROR_LOAD_ROOM_RES);
      }
      
      private static function §2%%§(param1:UserProfile) : void
      {
         Social.§!g§.callToPvp(Application.userProfile,param1);
      }
      
      private function §7%=§(param1:Function) : void
      {
         §[&G§.§]$+§();
         connect(info.§>&§,param1,§4#e§);
      }
      
      public function §@&A§(param1:UserProfile, param2:Boolean = false, param3:int = 0) : Boolean
      {
         if(state == §"$r§.READY && !Application.isUserBusy())
         {
            Application.setUserBusy(true);
            info = new §]$d§(§&$a§.§^#f§);
            info.online = true;
            info.§>&§ = §#&%§.PVP;
            this.§9#,§ = new <uint>[param1.getId()];
            this.§#!p§ = new <uint>[Application.userProfile.getId()];
            this.callee = param1;
            this.§[$_§ = param2;
            this.friendSocialNetId = param3;
            this.§+!6§();
            return true;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.CURRENT_USER_ALREADY_IN_BATTLE + " (1)");
         return false;
      }
      
      public function §3%!§(param1:UserProfile, param2:Boolean = false) : Boolean
      {
         if(state == §"$r§.READY && !Application.isUserBusy())
         {
            Application.setUserBusy(true);
            info = new §]$d§(§&$a§.§^#f§);
            info.online = true;
            info.§>&§ = §#&%§.PVP;
            info.wager = §<#&§.valueOf(§-"P§.§5#4§);
            §§push(this);
            var _temp_2:* = new <uint>[param1.getId()];
            §§pop().§9#,§ = new <uint>[param1.getId()];
            this.§#!p§ = new <uint>[Application.userProfile.getId()];
            this.callee = param1;
            this.§[$_§ = param2;
            this.friendSocialNetId = this.callee.§54§().§1#&§;
            this.§""S§(null,false);
            this.§7%=§(this.§#t§);
            return true;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.CURRENT_USER_ALREADY_IN_BATTLE + " (2)");
         return false;
      }
      
      public function §-!]§(param1:UserProfile) : Boolean
      {
         if(state == §"$r§.READY && !Application.isUserBusy())
         {
            Application.setUserBusy(true);
            info = new §]$d§(§&$a§.§#"g§);
            info.online = true;
            info.§>&§ = §#&%§.PVP;
            info.wager = §<#&§.valueOf(§-"P§.§,$^§);
            this.§9#,§ = §&3§;
            §§push(this);
            var _temp_2:* = new <uint>[Application.userProfile.getId(),param1.getId()];
            §§pop().§#!p§ = new <uint>[Application.userProfile.getId(),param1.getId()];
            this.callee = param1;
            this.friendSocialNetId = this.callee.§54§().§1#&§;
            this.§""S§(null,false);
            info.§5"b§ = true;
            if(§8"%§.§&S§.§%$2§())
            {
               Application.userProfile.§3%^§().§-&,§(§#$R§.§8d§,true);
            }
            connect(info.§>&§,this.§#t§,§4#e§);
            return true;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.CURRENT_USER_ALREADY_IN_BATTLE + " (3)");
         return false;
      }
      
      public function §]q§(param1:UserProfile, param2:uint) : Boolean
      {
         var _loc3_:Class = null;
         if(state == §"$r§.READY && !Application.isUserBusy())
         {
            Application.setUserBusy(true);
            _loc3_ = §!#3§.getInstance().getRecord(param2).getClass();
            info = this.§""4§(param1,new _loc3_(),[param2]);
            info.§5"b§ = true;
            this.friendSocialNetId = this.callee.§54§().§1#&§;
            if(§8"%§.§&S§.§%$2§())
            {
               Application.userProfile.§3%^§().§-&,§(§#$R§.§#E§,true);
            }
            connect(info.§>&§,this.§#t§,§4#e§);
            return true;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.CURRENT_USER_ALREADY_IN_BATTLE + " (4)");
         return false;
      }
      
      public function §-"T§(param1:UserProfile, param2:HeroicMissionStructure) : Boolean
      {
         var _loc3_:§7!@§ = null;
         if(state == §"$r§.READY && !Application.isUserBusy())
         {
            Application.setUserBusy(true);
            _loc3_ = new §7!@§(param2.mapId,param2.bossId1,param2.bossId2);
            info = this.§""4§(param1,_loc3_,[param2.bossId1,param2.bossId2]);
            info.§5"b§ = true;
            this.friendSocialNetId = this.callee.§54§().§1#&§;
            if(§8"%§.§&S§.§%$2§())
            {
               Application.userProfile.§3%^§().§-&,§(§#$R§.§1!L§,true);
            }
            §"t§.§+%R§(_loc3_.getResources(),§1%"§.§]$<§(this.§7%=§,this,[this.§#t§]),§<!d§);
            return true;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.CURRENT_USER_ALREADY_IN_BATTLE + " (5)");
         return false;
      }
      
      public function §;D§(param1:uint) : Boolean
      {
         var _loc2_:Class = null;
         if(state == §"$r§.READY && !Application.isUserBusy())
         {
            Application.setUserBusy(true);
            _loc2_ = §!#3§.getInstance().getRecord(param1).getClass();
            info = this.§',§(new _loc2_(),[param1]);
            if(§8"%§.§&S§.§%$2§())
            {
               Application.userProfile.§3%^§().§-&,§(§#$R§.§#E§,true);
            }
            connect(info.§>&§,this.§5"x§,§4#e§);
            return true;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.CURRENT_USER_ALREADY_IN_BATTLE + " (6)");
         return false;
      }
      
      public function §@!A§(param1:HeroicMissionStructure) : Boolean
      {
         var _loc2_:§7!@§ = null;
         if(state == §"$r§.READY && !Application.isUserBusy())
         {
            Application.setUserBusy(true);
            _loc2_ = new §7!@§(param1.mapId,param1.bossId1,param1.bossId2);
            info = this.§',§(_loc2_,[param1.bossId1,param1.bossId2]);
            if(§8"%§.§&S§.§%$2§())
            {
               Application.userProfile.§3%^§().§-&,§(§#$R§.§1!L§,true);
            }
            §"t§.§+%R§(_loc2_.getResources(),§1%"§.§]$<§(this.§7%=§,this,[this.§5"x§]),§<!d§);
            return true;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.CURRENT_USER_ALREADY_IN_BATTLE + " (7)");
         return false;
      }
      
      public function §]$R§(param1:UserProfile, param2:PvpBattleType, param3:int, param4:Boolean = false) : Boolean
      {
         if(state == §"$r§.READY && !Application.isUserBusy())
         {
            Application.setUserBusy(true);
            info = new §]$d§(§&$a§.§^#f§);
            info.online = true;
            info.§>&§ = §#&%§.PVP;
            info.questId = §2v§.ROPE_RACE;
            info.mapId = §8"%§.§"!§.§8"G§();
            info.wager = §<#&§.valueOf(param3);
            this.§9#,§ = new <uint>[param1.getId()];
            this.§#!p§ = new <uint>[Application.userProfile.getId()];
            this.callee = param1;
            this.§[$_§ = param4;
            this.friendSocialNetId = this.callee.§54§().§1#&§;
            connect(info.§>&§,this.§#t§,§4#e§);
            return true;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.CURRENT_USER_ALREADY_IN_BATTLE + " (8)");
         return false;
      }
      
      public function §3#R§(param1:UserProfile) : Boolean
      {
         if(state == §"$r§.READY && !Application.isUserBusy())
         {
            Application.setUserBusy(true);
            info = this.§""4§(param1,new §3>§(),[]);
            info.§5"b§ = true;
            this.friendSocialNetId = this.callee.§54§().§1#&§;
            if(§8"%§.§&S§.§%$2§())
            {
               Application.userProfile.§3%^§().§-&,§(§#$R§.§^!p§,true);
            }
            connect(info.§>&§,this.§#t§,§4#e§);
            return true;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.CURRENT_USER_ALREADY_IN_BATTLE + " (9)");
         return false;
      }
      
      public function §1%§() : Boolean
      {
         if(state == §"$r§.READY && !Application.isUserBusy())
         {
            Application.setUserBusy(true);
            info = this.§',§(new §3>§(),[]);
            if(§8"%§.§&S§.§%$2§())
            {
               Application.userProfile.§3%^§().§-&,§(§#$R§.§^!p§,true);
            }
            connect(info.§>&§,this.§5"x§,§4#e§);
            return true;
         }
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.CURRENT_USER_ALREADY_IN_BATTLE + " (10)");
         return false;
      }
      
      private function §',§(param1:§>!^§, param2:Array) : §]$d§
      {
         var _loc4_:uint = 0;
         var _loc3_:§]$d§ = new §]$d§(§&$a§.§5!w§);
         _loc3_.online = true;
         _loc3_.§>&§ = §#&%§.PVP;
         _loc3_.scenario = param1;
         if(!param1.mapRecord)
         {
            param1.mapRecord = §=%A§.§7S§(§8"%§.§"!§.§0$?§(_loc3_));
         }
         _loc3_.mapId = param1.mapRecord.id;
         _loc3_.wager = §<#&§.valueOf(param1 is §3>§ ? uint(§-"P§.§&$'§) : uint(§-"P§.PVE_PARTNER));
         _loc3_.setProfiles(new <UserProfile>[Application.userProfile],new <uint>[0]);
         this.§9#,§ = §&3§;
         this.§#!p§ = new <uint>[Application.userProfile.getId()];
         for each(_loc4_ in param2)
         {
            _loc3_.missionIds.push(_loc4_);
         }
         return _loc3_;
      }
      
      private function §""4§(param1:UserProfile, param2:§>!^§, param3:Array) : §]$d§
      {
         var _loc5_:uint = 0;
         var _loc4_:§]$d§ = new §]$d§(§&$a§.§5!w§);
         _loc4_.online = true;
         _loc4_.§>&§ = §#&%§.PVP;
         _loc4_.scenario = param2;
         if(!param2.mapRecord)
         {
            param2.mapRecord = §=%A§.§7S§(§8"%§.§"!§.§0$?§(_loc4_));
         }
         _loc4_.mapId = param2.mapRecord.id;
         _loc4_.wager = §<#&§.valueOf(param2 is §3>§ ? uint(§-"P§.§3%k§) : uint(§-"P§.PVE_FRIEND));
         this.§9#,§ = §&3§;
         this.§#!p§ = new <uint>[Application.userProfile.getId(),param1.getId()];
         this.callee = param1;
         for each(_loc5_ in param3)
         {
            _loc4_.missionIds.push(_loc5_);
         }
         return _loc4_;
      }
      
      override protected function §,!1§(param1:§"$r§) : void
      {
         super.§,!1§(param1);
         if(param1 == §"$r§.READY)
         {
            if(Boolean(this.§;u§) && this.§;u§.isShown())
            {
               this.§;u§.hide();
            }
            if(Boolean(this.§#%$§) && this.§#%$§.isShown())
            {
               this.§#%$§.hide();
            }
            if(Boolean(this.§'$N§) && this.§'$N§.isShown())
            {
               this.§'$N§.hide();
            }
         }
      }
      
      override protected function reset() : void
      {
         super.reset();
         this.friendSocialNetId = 0;
         this.§#!p§ = §&3§;
         this.§9#,§ = §&3§;
         this.callee = null;
         this.§[$_§ = false;
      }
      
      private function §+!6§() : void
      {
         §]$"§(§"$r§.§2%2§);
         if(!this.§`u§)
         {
            this.§`u§ = new SelectMapMenu(info);
            this.§`u§.addEventListener(§[%w§.MENU_ITEM_SELECT,this.§^!+§);
            this.§`u§.addEventListener(§[%w§.WINDOW_CANCEL,this.§<!$§);
         }
         this.§`u§.show();
      }
      
      private function §^!+§(param1:Event) : void
      {
         this.§""S§(this.§`u§.§^#u§,§ "^§.getValue(this.§`u§.§7&!§,§ "^§.§6!R§));
         connect(info.§>&§,this.§#t§,§4#e§);
      }
      
      private function §""S§(param1:§9$Z§, param2:Boolean) : void
      {
         if(info.§>$'§())
         {
            if(this.§`u§.§^#u§)
            {
               info.mapId = this.§`u§.§^#u§.id;
               info.scenario.mapRecord = §=%A§.§7S§(info.mapId);
            }
         }
         else
         {
            info.mapId = param1 ? param1.id : §8"%§.§"!§.§0$?§(info);
            if(info.battleType == §&$a§.§^#f§)
            {
               info.floodingOption = this.§`u§.floodingOption ? this.§`u§.floodingOption.concat() : null;
               info.options = this.§`u§.§7&!§.concat();
            }
            else
            {
               info.options = § "^§.§4#8§(info.options,§ "^§.§6!R§,param2);
               info.options = § "^§.§4#8§(info.options,§ "^§.RANDOM_MAP,param1 == null);
            }
         }
      }
      
      private function §<!$§(param1:Event) : void
      {
         §]$"§(§"$r§.READY);
      }
      
      private function §#t§() : void
      {
         log.info("Создание приглашения в бой","PVP");
         §]$"§(§"$r§.§8#k§);
         this.§1&;§(this.callee);
         info.wager = info.wager || §<#&§.§[i§;
         var _loc1_:CreateBattleRequest = §#$;§(this.§9#,§,this.§#!p§,info.mapId,info.wager,info.missionIds,info.options,info.floodingOption,this.friendSocialNetId);
         log.info(_loc1_,"PVP");
         §`!J§.addListener(CallToBattle,this.§,"I§);
         §`!J§.addListener(BattleCreationFailure,this.§'$E§);
         §`!J§.addListener(BattleLoginError,§<$r§);
         §`!J§.send(_loc1_);
      }
      
      private function §5"x§() : void
      {
         log.info("Создание приглашения в бой со случайным партнёром","PVP");
         §]$"§(§"$r§.§8#k§);
         this.§6!W§();
         info.wager = info.wager || §<#&§.§[i§;
         var _loc1_:CreateBattleRequest = §#$;§(this.§9#,§,this.§#!p§,info.mapId,info.wager,info.missionIds);
         log.info(_loc1_,"PVP");
         §#!t§();
         §`!J§.send(_loc1_);
      }
      
      private function §6!W§() : void
      {
         if(!this.§'$N§)
         {
            this.§'$N§ = new §5$t§(§5$t§.§^$k§,§9"T§,false);
            this.§'$N§.addEventListener(§4$T§.CANCEL_BATTLE_REQUEST,function(param1:Event):void
            {
               cancelBattle();
            });
         }
         this.§'$N§.§[$%§(§<"G§.§%! §("SEARCHING_RANDOM_PARTNER"));
         this.§'$N§.§8%;§(§<"G§.§%! §("SEARCHING_RANDOM_PARTNER_TITLE"));
         this.§'$N§.show();
      }
      
      private function §1&;§(param1:UserProfile) : void
      {
         var callee:UserProfile = param1;
         if(!this.§;u§)
         {
            this.§;u§ = new §5$t§(§5$t§.§`"@§,§="§,false);
            this.§;u§.addEventListener(§4$T§.CANCEL_BATTLE_REQUEST,function(param1:Event):void
            {
               cancelBattle();
            });
         }
         this.§;u§.§3"+§(!this.§[$_§);
         if(callee)
         {
            this.§;u§.§3%,§(callee);
         }
         this.§;u§.show();
      }
      
      private function §^$g§() : void
      {
         if(!this.§#%$§)
         {
            this.§#%$§ = new §5$t§(§5$t§.§^$k§,§="§,false);
            this.§#%$§.addEventListener(§4$T§.CANCEL_BATTLE_REQUEST,function(param1:Event):void
            {
               cancelBattle();
            });
         }
         this.§#%$§.show();
      }
      
      override protected function §1$h§(param1:§"$r§) : void
      {
         super.§1$h§(param1);
         if(param1 == §"$r§.§8#k§)
         {
            §`!J§.removeListener(CallToBattle,this.§,"I§);
            §`!J§.removeListener(BattleCreationFailure,this.§'$E§);
            §`!J§.removeListener(BattleLoginError,§<$r§);
         }
      }
      
      private function §,"I§(param1:§9$v§) : void
      {
         var _loc2_:CallToBattle = CallToBattle(param1.message);
         info.battleId = _loc2_.battleId;
         §#!t§();
         if(_loc2_.battleWager.questId == §2v§.ROPE_RACE)
         {
            §8"%§.§?$5§.§1"A§(_loc2_.playerStructs,info);
         }
         else
         {
            §-c§(_loc2_.playerStructs);
         }
      }
      
      override protected function §'$E§(param1:§9$v§) : void
      {
         var _loc2_:BattleCreationFailure = null;
         var _loc5_:String = null;
         _loc2_ = BattleCreationFailure(param1.message);
         var _loc3_:UserProfile = this.callee;
         var _loc4_:Boolean = (Social.§!g§.§]$>§() || §8"%§.§[f§.getType() == §7"n§.OK) && (_loc2_.reason == CallToBattleResultType.BUSY || _loc2_.reason == CallToBattleResultType.OFFLINE);
         if(_loc2_.refuserId == Application.userProfile.getId())
         {
            _loc5_ = _loc2_.reason.localFailureReason;
         }
         else
         {
            _loc5_ = _loc2_.reason.remoteFailureReason;
         }
         if(_loc4_ && _loc3_.§54§().equals(§8"%§.context.§54§()))
         {
            _loc5_ += "<br>" + §0$N§.VIRAL_QUESTION_CHALLENGE_POST;
            §,#W§.§[#r§(§0$N§.BATTLE_REQUEST_TITLE,_loc5_,§,#W§.§7"d§,§1%"§.§]$<§(§2%%§,this,[_loc3_]),null);
         }
         else
         {
            §,#W§.§6!P§(§0"-§.TITLE_ERROR,_loc5_);
         }
         §]$"§(§"$r§.READY);
      }
      
      override protected function § !O§(param1:§9$v§) : void
      {
         super.§ !O§(param1);
         if(Boolean(this.§;u§) && this.§;u§.isShown())
         {
            this.§;u§.§<%o§(true);
         }
         if(Boolean(this.§#%$§) && this.§#%$§.isShown())
         {
            this.§#%$§.§<%o§(true);
         }
         if(Boolean(this.§'$N§) && this.§'$N§.isShown())
         {
            this.§'$N§.§<%o§(true);
         }
         var _loc2_:BattleCreated = BattleCreated(param1.message);
         §]$"§(§"$r§.§;#Z§);
         info.seed = _loc2_.seed;
         info.battleId = _loc2_.battleId;
         info.mapId = _loc2_.mapId;
         info.questId = _loc2_.questId;
         info.reagentsForBattle = §#$z§.§[%$§(_loc2_.reagentsForBattle);
         if(_loc2_.questId == §2v§.ROPE_RACE)
         {
            §8"%§.§?$5§.§1"A§(_loc2_.playerStructs,info);
         }
         else
         {
            §-c§(_loc2_.playerStructs);
         }
         var _loc3_:Vector.<UserProfile> = info.§6"M§().concat(info.§="T§()) as Vector.<UserProfile>;
         §<$A§.load(info,_loc3_,this.§0"A§,§,"^§);
      }
      
      private function §0"A§(param1:§0&$§) : void
      {
         var scene:§0&$§ = param1;
         if(state == §"$r§.§;#Z§)
         {
            if(Boolean(info.scenario) && info.scenario.mapRecord.id != scene.§^$'§().id)
            {
               info.scenario.mapRecord = scene.§^$'§();
            }
            if(info.§<",§())
            {
               §[&A§.load(info.mapId,function():void
               {
                  startBattle(scene);
               },this.§&9§);
            }
            else
            {
               this.startBattle(scene);
            }
         }
      }
      
      private function startBattle(param1:§0&$§) : void
      {
         var _loc2_:§]$d§ = info;
         _loc2_.scene = param1;
         §38§ = false;
         §]$"§(§"$r§.READY);
         §8"%§.§?!W§.§[#1§(_loc2_,§`!J§);
      }
      
      protected function §&9§() : void
      {
         log.info("Не удалось загрузить ресурсы для карты " + info.mapId,"PVP");
      }
      
      override protected function §!%j§(param1:§9$v§) : void
      {
         var _loc2_:PvpSystemMessage = PvpSystemMessage(param1.message);
         if(_loc2_.type == PvpSystemMessage.PLAYER_JOINED_TO_BATTLE)
         {
            if(Boolean(this.§;u§) && this.§;u§.isShown())
            {
               this.§;u§.hide();
            }
         }
         this.§^$g§();
      }
   }
}

