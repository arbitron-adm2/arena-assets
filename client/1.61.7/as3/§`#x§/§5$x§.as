package §`#x§
{
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §"!C§.§2v§;
   import §"%H§.*;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-@§.§+"A§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §1!J§.§"t§;
   import §3#a§.§[&A§;
   import §4&F§.*;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<"?§.§3>§;
   import §<"?§.§6!8§;
   import §<"?§.§7!@§;
   import §<$q§.§?!d§;
   import §<%k§.*;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §?$7§.§!§;
   import §?$7§.§6J§;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@"x§.CommonSettingsMenu;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.§=%A§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§4%?§;
   import ru.pragmatix.wormix.gui.window.§5$t§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanEmblemRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.JoinToChatResult;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.JoinToBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.pvp.messages.ex.RejectBattleOffer;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §5$x§ extends §0"Y§
   {
      
      private static const log:§&`§ = new §&`§(§5$x§);
      
      private var §4"u§:§4%?§;
      
      private var §;u§:§5$t§;
      
      private var §-$Q§:§7%0§;
      
      private var §5"'§:Boolean = true;
      
      private var §7M§:Vector.<int>;
      
      private var §[#3§:UserProfile;
      
      private var §[%G§:Object = {};
      
      public function §5$x§()
      {
         super();
         §%%w§.§##$§(CallToBattle,this.§,"I§);
         this.§-$Q§ = new §7%0§();
      }
      
      private static function §1%G§(param1:uint) : void
      {
         §[&G§.§]$+§();
         §,#W§.§6!P§(§0$N§.TITLE_ERROR_LOAD_RES,§0$N§.MSG_ERROR_LOAD_ROOM_RES);
      }
      
      private function §,"I§(param1:§9$v§) : void
      {
         var _loc2_:CallToBattle = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Class = null;
         if(!Application.userProfile)
         {
            return;
         }
         _loc2_ = CallToBattle(param1.message);
         log.info("onCallToBattle: " + _loc2_,"PVP");
         if(state == §"$r§.READY)
         {
            if(_loc2_.battleWager.§7&&§ == PvpBattleType.WAGER_PVP_2X2 || _loc2_.battleWager.§7&&§ == PvpBattleType.WAGER_PVP_2X2_FRIEND)
            {
               _loc4_ = int(§<#&§.valueOf(§-"P§.§,$^§).minUnits);
               _loc3_ = §0$c§.§0,§(Application.userProfile,_loc4_);
            }
            if(Application.isUserBusy())
            {
               info = new §]$d§(§&$a§.§^#f§);
               info.battleId = _loc2_.battleId;
               §+"7§ = false;
               this.§5"'§ = false;
               connect(§#&%§.PVP,this.§>§,this.§4#e§,false);
            }
            else if(Boolean(Application.isUserIgnoring()) || Boolean(this.§[%G§[this.§7!A§(_loc2_.playerStructs)]) || Boolean(_loc3_) && Boolean(!_loc3_.ready))
            {
               info = new §]$d§(§&$a§.§^#f§);
               info.online = true;
               info.battleId = _loc2_.battleId;
               info.§3$&§ = true;
               this.§5"'§ = true;
               connect(§#&%§.PVP,this.§>§,this.§4#e§,false);
            }
            else
            {
               Application.setUserBusy(true);
               info = §]$d§.§?%3§(_loc2_.battleWager.questId == §2v§.ROPE_RACE ? PvpBattleType.FRIEND_PVP : _loc2_.battleWager.§7&&§);
               info.online = true;
               info.mapId = _loc2_.mapId;
               info.battleId = _loc2_.battleId;
               info.missionIds = _loc2_.missionIds;
               info.options = _loc2_.params.options;
               info.questId = _loc2_.battleWager.questId;
               info.wager = _loc2_.battleWager;
               if(info.§>$'§())
               {
                  info.scenario = new §3>§();
                  info.scenario.mapRecord = §=%A§.§7S§(_loc2_.mapId);
                  info.§5"b§ = true;
               }
               else if(info.§]_§())
               {
                  info.scenario = new §7!@§(_loc2_.mapId,_loc2_.missionIds[0],_loc2_.missionIds[1]);
                  this.§7M§ = new <int>[_loc2_.missionIds[0],_loc2_.missionIds[1]];
                  info.§5"b§ = true;
               }
               else if(_loc2_.missionIds.length > 0)
               {
                  this.§7M§ = new <int>[_loc2_.missionIds[0]];
                  _loc5_ = §!#3§.getInstance().getRecord(_loc2_.missionIds[0]).getClass();
                  info.scenario = new _loc5_();
                  if(!info.scenario.mapRecord)
                  {
                     info.scenario.mapRecord = §=%A§.§7S§(_loc2_.mapId);
                  }
                  info.§5"b§ = true;
               }
               else if(info.battleType == §&$a§.§#"g§)
               {
                  info.§5"b§ = true;
                  if(info.wager == §<#&§.§[i§)
                  {
                     if(_loc2_.params.hasOwnProperty("floodingOption"))
                     {
                        info.floodingOption = _loc2_.params.floodingOption;
                     }
                  }
               }
               info.§>&§ = §#&%§.PVP;
               info.§3$&§ = true;
               this.§5"'§ = true;
               §@%;§.play(§`!v§.§'%o§);
               §[&G§.ENEMY_WAITING_MSG.show();
               if(_loc2_.battleWager.questId == §2v§.ROPE_RACE)
               {
                  §8"%§.§?$5§.§1"A§(_loc2_.playerStructs,info);
               }
               else
               {
                  §-c§(_loc2_.playerStructs);
               }
               this.§ %C§();
            }
         }
         else if(!§'$T§.§6%w§)
         {
            info = new §]$d§(§&$a§.§^#f§);
            info.battleId = _loc2_.battleId;
            §+"7§ = false;
            this.§5"'§ = false;
            §=$^§();
            connect(§#&%§.PVP,this.§>§,this.§4#e§);
         }
      }
      
      private function §7!A§(param1:Vector.<PvpProfileStructure>) : int
      {
         var _loc3_:PvpProfileStructure = null;
         var _loc2_:int = Application.userProfile.getId();
         for each(_loc3_ in param1)
         {
            if(_loc3_.id != _loc2_)
            {
               return _loc3_.id;
            }
         }
         return 0;
      }
      
      override protected function §,!1§(param1:§"$r§) : void
      {
         super.§,!1§(param1);
         if(param1 == §"$r§.READY)
         {
            if(Boolean(this.§4"u§) && Boolean(this.§4"u§.isShown()))
            {
               this.§4"u§.hide();
            }
            if(Boolean(this.§;u§) && this.§;u§.isShown())
            {
               this.§;u§.hide();
            }
         }
      }
      
      private function § %C§() : void
      {
         §]$"§(§"$r§.§8"]§);
         this.§4"u§ = §^$7§.create(info);
         this.§4"u§.addEventListener(§4$T§.ACCEPT_BATTLE_OFFER,§1%"§.§]$<§(this.§@#,§,this));
         this.§4"u§.addEventListener(§4$T§.DECLINE_BATTLE_OFFER,§1%"§.§]$<§(this.§6"V§,this));
         this.§4"u§.addEventListener(§4$T§.DECLINE_OFFER_AND_IGNORE_USER,§1%"§.§]$<§(this.§3%n§,this));
         this.§4"u§.addEventListener(§[%w§.WINDOW_CLOSE,§1%"§.§]$<§(this.§ '§,this));
         log.info("showOfferDialog: " + info,"PVP");
         if(info.battleType == §&$a§.§5!w§)
         {
            if(info.§>$'§())
            {
               this.§4"u§.§#7§(§0$N§.ZOMBIE_RISING_BATTLE_OFFER_TITLE);
               this.§4"u§.§=o§(true,info.mapId);
            }
            else
            {
               if(this.§7M§)
               {
                  this.§4"u§.§`![§(this.§7M§);
               }
               this.§4"u§.§-"r§();
            }
         }
         else if(Boolean(info.wager) && info.wager.id == §-"P§.§,$^§)
         {
            this.§4"u§.§#7§(§0$N§.BATTLE_2X2_OFFER_TITLE);
            this.§4"u§.§=o§(§ "^§.getValue(info.options,§ "^§.RANDOM_MAP),info.mapId);
         }
         else if(Boolean(info.wager) && info.wager.id == §-"P§.§5#4§)
         {
            this.§4"u§.§#7§(§0$N§.CALL_ON_ACTION_MODE);
            this.§4"u§.§=o§(true,info.mapId);
         }
         else if(info.§<",§())
         {
            this.§4"u§.§#7§(info.wager.id == §-"P§.§4&<§ ? §0$N§.RACE_QUEST_TITLE : §0$N§.RACE_TRAINING_TITLE);
            this.§4"u§.§=o§(false,info.mapId);
         }
         else
         {
            this.§4"u§.§%&§(info.options);
            this.§4"u§.§#7§(§0$N§.BATTLE_OFFER_TITLE);
            this.§4"u§.§=o§(§ "^§.getValue(info.options,§ "^§.RANDOM_MAP),info.mapId);
         }
         if(info.floodingOption)
         {
            this.§4"u§.§@#^§(info.floodingOption);
         }
         else
         {
            this.§4"u§.§1#j§();
         }
         this.§[#3§ = info.§6"M§().length > 0 ? info.§6"M§()[0] : info.§="T§()[0];
         var _loc1_:Boolean = Application.userProfile.§!#E§() && this.§[#3§.§!#E§() && §=%_§.§<!5§(this.§[#3§.getId()) != null;
         if(!_loc1_)
         {
            §4! §.§`$@§(this.§[#3§);
         }
         if(this.§[#3§.§54§().equals(§8"%§.context.§54§()))
         {
            this.§-$Q§.§%$N§([this.§[#3§],this.§`$6§);
         }
         else
         {
            this.§`$6§([],false);
         }
      }
      
      private function §`$6§(param1:Array, param2:Boolean) : void
      {
         if(param1.length > 0 && param2)
         {
            this.§[#3§ = param1[0];
         }
         this.§4"u§.§3%,§(this.§[#3§);
         §[&G§.ENEMY_WAITING_MSG.hide();
         this.§4"u§.show();
      }
      
      private function §^$g§() : void
      {
         if(!this.§;u§)
         {
            this.§;u§ = new §5$t§(§5$t§.§^$k§,§="§,false);
            this.§;u§.addEventListener(§4$T§.CANCEL_BATTLE_REQUEST,function(param1:Event):void
            {
               cancelBattle();
            });
         }
         this.§;u§.show();
      }
      
      private function §@#,§(param1:Event) : void
      {
         var continueToConnect:Function = null;
         var layoutId:int = 0;
         var event:Event = param1;
         continueToConnect = function():void
         {
            if(info.scenario is §6!8§)
            {
               if(Boolean(info.missionIds) && Boolean(info.missionIds.length > 1) && !§6J§.getInstance().§9$b§())
               {
                  §-!q§();
               }
               else
               {
                  §,$X§();
               }
               §+"A§.§5%§();
            }
            else
            {
               §7%=§();
            }
         };
         if(CommonSettingsMenu.getInstance().isShown())
         {
            CommonSettingsMenu.getInstance().hide();
         }
         if(§8"%§.§&S§.§%$2§() && (Boolean(info.§]_§() || info.§8y§() || info.§>$'§()) || Boolean(info.wager && (info.wager.id == §-"P§.§'$L§ || info.wager.id == §-"P§.§,$^§))))
         {
            if(info.§]_§())
            {
               layoutId = int(§#$R§.§1!L§);
            }
            else if(info.§8y§())
            {
               layoutId = int(§#$R§.§#E§);
            }
            else if(info.§>$'§())
            {
               layoutId = int(§#$R§.§^!p§);
            }
            else if(info.wager)
            {
               layoutId = §#$R§.§,p§(info.wager.id,Application.userProfile.§7$F§().length);
            }
            Application.userProfile.§3%^§().§-&,§(layoutId,true,continueToConnect);
         }
         else
         {
            continueToConnect();
         }
      }
      
      private function §-!q§() : void
      {
         §8"%§.§%w§.§&u§(this.§,$X§,§1%G§);
      }
      
      private function §,$X§() : void
      {
         §"t§.§+%R§(§6!8§(info.scenario).getResources(),this.§7%=§,§1%G§);
      }
      
      private function §7%=§() : void
      {
         §[&G§.§]$+§();
         §[&G§.§5%b§(§0$N§.BATTLE_INIT);
         connect(info.§>&§,this.§`#w§,this.§4#e§);
      }
      
      private function §3%n§(param1:Event) : void
      {
         §+"7§ = true;
         this.§[%G§[this.§[#3§.getId()] = true;
         connect(info.§>&§,this.§>§,this.§4#e§);
      }
      
      private function §6"V§(param1:Event) : void
      {
         §+"7§ = true;
         connect(info.§>&§,this.§>§,this.§4#e§);
      }
      
      override protected function §4#e§(param1:Event = null) : void
      {
         super.§4#e§();
      }
      
      private function §`#w§() : void
      {
         §[&G§.§5%b§(§0$N§.BATTLE_PVP_LOGIN);
         var _loc1_:JoinToBattle = new JoinToBattle();
         §%7§(_loc1_);
         _loc1_.battleId = info.battleId;
         _loc1_.backpackConf = Application.userProfile.§3%^§().§4#n§().§^$o§();
         §#!t§();
         §`!J§.send(_loc1_);
      }
      
      private function §>§() : void
      {
         var _loc1_:RejectBattleOffer = new RejectBattleOffer();
         §%7§(_loc1_);
         _loc1_.battleId = info.battleId;
         _loc1_.manual = this.§5"'§;
         §`!J§.send(_loc1_);
         §]$"§(§"$r§.READY);
      }
      
      override protected function § !O§(param1:§9$v§) : void
      {
         super.§ !O§(param1);
         if(Boolean(this.§;u§) && this.§;u§.isShown())
         {
            this.§;u§.§<%o§(true);
         }
         if(Boolean(this.§4"u§) && Boolean(this.§4"u§.isShown()))
         {
            this.§4"u§.§<%o§(true);
         }
         §]$"§(§"$r§.§;#Z§);
         var _loc2_:BattleCreated = BattleCreated(param1.message);
         info.seed = _loc2_.seed;
         info.battleId = _loc2_.battleId;
         info.mapId = _loc2_.mapId;
         info.questId = _loc2_.questId;
         if(_loc2_.wager != §<#&§.valueOf(§-"P§.§&",§))
         {
            info.wager = _loc2_.wager;
         }
         info.reagentsForBattle = §#$z§.§[%$§(_loc2_.reagentsForBattle);
         if(info.§<",§())
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
         §[&G§.§]$+§();
         this.§^$g§();
      }
      
      private function § '§(param1:Event) : void
      {
         if(Application.§5!>§.§^P§.isShown())
         {
            Application.§5!>§.§^P§.§6X§();
         }
      }
   }
}

