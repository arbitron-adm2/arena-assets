package §`#x§
{
   import § !8§.§`!d§;
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##y§.§9§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §'!Z§.§;n§;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §+%S§.§]&§;
   import §,"v§.§9%d§;
   import §-8§.§3!x§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.Team;
   import §2!-§.NewUnitEvent;
   import §2"L§.*;
   import §2B§.§#&E§;
   import §3#a§.§<#_§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.*;
   import §6%2§.*;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §9%k§.*;
   import §<!^§.§9"§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §=$#§.§ b§;
   import §=&!§.§&$a§;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §?#g§.§&"P§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§]"8§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.server.AwardedFriendsComeback;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.NeedMoneyResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginErrorType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class PvpController
   {
      
      private static const log:§&`§ = new §&`§(PvpController);
      
      private static const §`%#§:uint = 0;
      
      private static const §-$;§:uint = 1;
      
      private static const §7#8§:uint = 5;
      
      private static const §-#I§:uint = 6;
      
      private static const §?%l§:uint = 7;
      
      private static const §84§:uint = 7 * 1000;
      
      private static const RECONNECT_TIMEOUT:uint = 1 * 1000;
      
      private static const §`!<§:uint = 3;
      
      private static const §#%y§:uint = 10;
      
      private var state:uint;
      
      private var §>&§:§#&%§;
      
      private var connection:§'$T§;
      
      private var §@$I§:§[$I§;
      
      private var §+!-§:Function;
      
      private var §##!§:uint = 0;
      
      private var §6z§:uint = 0;
      
      private var §"$c§:uint = 0;
      
      private var playerNum:int;
      
      private var §%$s§:Timer;
      
      private var §>$4§:EnterParams;
      
      public function PvpController()
      {
         super();
      }
      
      public function §2$G§() : void
      {
         §8"%§.§?!W§.§>$y§("рву ПВП коннект...");
         this.connection.close();
         this.§@$I§.stop();
         §1%"§.delay(this.§0$<§,this,1000);
      }
      
      private function reset() : void
      {
         this.state = §`%#§;
         this.playerNum = -1;
         this.§##!§ = 0;
         this.§6z§ = 0;
         this.§@$I§ = null;
         this.§>$4§ = null;
      }
      
      public function enter(param1:§]$d§, param2:§'$T§, param3:Function, param4:Function) : void
      {
         this.reset();
         this.§>$4§ = new EnterParams(param1,param3,param4);
         this.§>&§ = param1.§>&§;
         this.connection = param2;
         this.§>#k§();
      }
      
      public function closeConnection() : void
      {
         if(this.connection)
         {
            if(this.§+!-§ != null)
            {
               this.§+!'§(this.§+!-§);
            }
            this.connection.§#%]§();
            this.connection.§5%e§();
            this.connection.close();
            this.connection = null;
         }
      }
      
      private function §>#k§() : void
      {
         log.info("Отправка ReadyForBattle","PVP");
         if(!this.connection || !this.connection.§1",§())
         {
            this.§>$4§.onFail(§0$N§.PVP_SERVER_LOGIN_ERROR + (Application.instance.§#&7§() ? " (hs)" : ""));
            return;
         }
         this.state = §-$;§;
         §[&G§.§5%b§(§0$N§.WAITING_FOR_OTHER_PLAYERS);
         this.connection.addListener(StartPvpBattle,this.§-"7§);
         this.connection.addListener(BattleCreationFailure,this.§3!,§);
         this.connection.addEventListener(Event.CLOSE,this.§[§);
         this.§%$s§ = new Timer(§84§);
         this.§%$s§.addEventListener(TimerEvent.TIMER,this.§,$§);
         this.§%$s§.start();
         var _loc1_:ReadyForBattle = new ReadyForBattle();
         _loc1_.battleId = this.§>$4§.info.battleId;
         this.connection.send(_loc1_);
      }
      
      private function §=$]§() : void
      {
         if(this.connection)
         {
            this.connection.removeEventListener(Event.CLOSE,this.§[§);
            this.connection.removeListener(BattleCreationFailure,this.§3!,§);
            this.connection.removeListener(StartPvpBattle,this.§-"7§);
         }
         this.destroyTimer();
      }
      
      private function §-"7§(param1:§9$v§) : void
      {
         var event:§9$v§ = param1;
         var cmd:StartPvpBattle = null;
         try
         {
            cmd = StartPvpBattle(event.message);
         }
         catch(error:Error)
         {
            log.error("Error onStartBattle: " + error,"PVP");
         }
         if(!cmd || cmd.battleId != this.§>$4§.info.battleId)
         {
            this.§8#K§(§0$N§.PVP_SERVER_INCORRECT_BATTLE_NUMBER);
            return;
         }
         this.§=$]§();
         try
         {
            this.§>$4§.onSuccess();
         }
         catch(e:Error)
         {
         }
         this.playerNum = cmd.playerNum;
         this.§@$I§ = new §[$I§(this.connection,this.playerNum);
         this.§,"8§();
      }
      
      private function §3!,§(param1:§9$v§) : void
      {
         var _loc2_:BattleCreationFailure = BattleCreationFailure(param1.message);
         this.§8#K§(§0$N§.PVP_SERVER_LOGIN_ERROR + (Application.instance.§#&7§() ? " (sbf)" : ""));
      }
      
      private function §[§(param1:Event) : void
      {
         this.§8#K§(§0$N§.PVP_SERVER_CONNECTION_CLOSED);
      }
      
      private function §,$§(param1:Event) : void
      {
         if(this.state != §7#8§)
         {
            this.§8#K§(§0$N§.PVP_SERVER_BATTLE_CREATION_TIMEOUT);
         }
      }
      
      private function §8#K§(param1:String) : void
      {
         log.info(param1,"PVP");
         §[&G§.§]$+§();
         this.state = §`%#§;
         this.§=$]§();
         this.closeConnection();
         this.§>$4§.onFail(param1);
      }
      
      private function §%"j§(param1:Event) : void
      {
         var generation:uint = 0;
         var event:Event = param1;
         if(Timer(event.target).currentCount == 1)
         {
            §8"%§.§?!W§.§>$y§("пытаюсь сделать ПВП реконнект...");
         }
         if(!§%%w§.§7F§.§1",§() || !§%%w§.§7F§.§ "`§)
         {
            return;
         }
         §[&G§.§5%b§(§0$N§.BATTLE_PVP_CONNECT);
         if(this.connection)
         {
            this.connection.§5%e§();
            this.connection.close();
         }
         ++this.§"$c§;
         generation = this.§"$c§;
         this.connection = new §'$T§(this.§>&§);
         this.connection.open(function():void
         {
            if(generation != §"$c§ || state == §?%l§ || state == §7#8§)
            {
               return;
            }
            §^%7§();
         },null);
         this.§,a§(this.§+!-§);
      }
      
      private function §0%F§(param1:Event) : void
      {
         §8"%§.§?!W§.§>$y§("попытка ПВП реконнекта завершена.");
         this.destroyTimer();
         this.§-#q§();
      }
      
      private function §^%7§() : void
      {
         §8"%§.§?!W§.§>$y§("ПВП реконнект совершён!");
         this.§##!§ = 0;
         this.destroyTimer();
         this.relogin();
      }
      
      private function relogin() : void
      {
         this.state = §?%l§;
         if(§8"%§.§?!W§.§4"m§)
         {
            §[&G§.§5%b§(§0$N§.BATTLE_PVP_LOGIN);
            this.§9$<§();
            this.§@$]§(2000,1,this.§,"+§);
         }
         else
         {
            this.§-#q§();
         }
      }
      
      private function §9$<§() : void
      {
         var cmd:ReconnectToBattle = null;
         try
         {
            cmd = new ReconnectToBattle();
            cmd.profileId = Application.userProfile.getId();
            cmd.profileSocialId = Application.userProfile.§"%D§();
            cmd.socialNetworkId = §8"%§.§[f§.getType().§1#&§;
            cmd.playerNames = JSON.stringify(§4! §.§&%i§(Application.userProfile));
            cmd.authKey = §8"%§.§[f§.§7!f§();
            cmd.mainServerId = §8"%§.context.§2!k§()["pvpMainId"];
            cmd.battleId = this.§>$4§.info.battleId;
            cmd.turnNum = §8"%§.§?!W§.§4"m§.§,j§();
            cmd.lastCommandNum = this.§@$I§.§%"p§();
            this.connection.addEventListener(Event.CLOSE,this.§ %Z§);
            this.connection.addListener(BattleLoginError,this.§ %Z§);
            this.connection.addListener(StartPvpBattle,this.§1"x§);
            this.connection.send(cmd);
            log.info("PVP RElogin " + cmd);
         }
         catch(error:Error)
         {
         }
      }
      
      private function §3O§() : void
      {
         §[&G§.§]$+§();
         this.destroyTimer();
         if(this.connection)
         {
            this.connection.removeEventListener(Event.CLOSE,this.§ %Z§);
            this.connection.removeListener(BattleLoginError,this.§ %Z§);
            this.connection.removeListener(StartPvpBattle,this.§1"x§);
         }
      }
      
      private function §1"x§(param1:§9$v§) : void
      {
         var _loc2_:StartPvpBattle = §9$v§(param1).message as StartPvpBattle;
         this.§3O§();
         this.§,"8§(true);
         if(Boolean(_loc2_) && Boolean(_loc2_.turnElapsedBeforeOutageMs > 0) && Boolean(§8"%§.§?!W§.§4"m§))
         {
            §8"%§.§?!W§.§4"m§.§'%i§().§^h§(_loc2_.turnElapsedBeforeOutageMs);
         }
         §8"%§.§?!W§.§>$5§();
         ++this.§6z§;
         if(this.§6z§ >= §#%y§)
         {
            this.§6z§ = 0;
            §8"%§.§?!W§.§>$y§("ты задолбал своими реконнектами. до свидания! (" + this.§6z§ + "/" + §#%y§ + ")");
            this.§-#q§();
         }
      }
      
      private function § %Z§(param1:Event) : void
      {
         var _loc2_:BattleLoginError = null;
         if(param1 is §9$v§)
         {
            _loc2_ = §9$v§(param1).message as BattleLoginError;
            if(Boolean(_loc2_) && Boolean(_loc2_.error))
            {
               if(_loc2_.error == BattleLoginErrorType.RECONNECT_TIMEOUT)
               {
                  if(§%%w§.§7F§.§ "`§)
                  {
                     this.§-#q§(§3$z§.§1$3§);
                  }
               }
            }
         }
      }
      
      private function §,"+§(param1:TimerEvent) : void
      {
         this.§3O§();
         this.closeConnection();
         this.§?%Z§();
      }
      
      private function §,"8§(param1:Boolean = false) : void
      {
         this.state = §7#8§;
         this.§@$I§.resetParams(this.connection,this.playerNum);
         this.§@$I§.run(param1);
         this.connection.addEventListener(Event.CLOSE,this.§0$<§,false,0,true);
         if(param1)
         {
            §8"%§.§?!W§.§?"d§();
         }
      }
      
      private function §0$<§(param1:Event = null) : void
      {
         this.connection.removeEventListener(Event.CLOSE,this.§0$<§);
         this.§@$I§.stop();
         if(§8"%§.§?!W§.inBattle)
         {
            §8"%§.§?!W§.§>$y§("ПВП коннект закрылся.");
            this.§##!§ = 0;
            this.§?%Z§();
         }
         else
         {
            this.§-#q§();
         }
      }
      
      private function §?%Z§() : void
      {
         if(§%%w§.§7F§.§ "`§)
         {
            ++this.§##!§;
         }
         if(this.§##!§ > §`!<§)
         {
            §8"%§.§?!W§.§>$y§("попытки ПВП реконнекта исчерпаны. до свидания! (" + this.§##!§ + "/" + §`!<§ + ")");
            this.§-#q§();
         }
         else
         {
            §8"%§.§?!W§.§>$y§("попытка ПВП реконнекта... (" + this.§##!§ + "/" + §`!<§ + ")");
            this.state = §-#I§;
            this.§@$]§(RECONNECT_TIMEOUT,600,this.§%"j§,this.§0%F§);
         }
      }
      
      private function §-#q§(param1:§3$z§ = null) : void
      {
         this.§3O§();
         if(param1 == null)
         {
            param1 = §3$z§.§3#O§;
         }
         §8"%§.§?!W§.§`$d§(§<$Z§.§!M§,param1);
      }
      
      public function §]"^§() : void
      {
         this.§@$I§.§]"^§();
      }
      
      public function §7"S§(param1:Boolean) : void
      {
         this.§@$I§.§7"S§(param1);
      }
      
      public function §[!@§() : void
      {
         this.§@$I§.§[!@§();
      }
      
      public function §5%7§() : void
      {
         this.§@$I§.§5%7§();
      }
      
      public function §9&@§() : void
      {
         this.§@$I§.§9&@§();
      }
      
      public function §%2§(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:int) : void
      {
         this.§@$I§.§%2§(param1,param2,param3,param4,param5,param6);
      }
      
      public function §7<§(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:int) : void
      {
         this.§@$I§.§7<§(param1,param2,param3,param4,param5,param6);
      }
      
      public function §%$^§(param1:uint) : void
      {
         this.§@$I§.§%$^§(param1);
      }
      
      public function § $1§(param1:String, param2:String) : void
      {
         var _loc3_:PvpChatMessage = null;
         if(param2 == § b§.§"#g§)
         {
            §8"%§.§!&I§.common.postMessage(param1);
         }
         else if(Boolean(this.connection) && this.connection.§1",§())
         {
            _loc3_ = new PvpChatMessage();
            _loc3_.playerNum = this.playerNum;
            _loc3_.message = param1;
            _loc3_.battleId = this.§>$4§.info.battleId;
            _loc3_.isTeamMsg = param2 == § b§.§ $3§;
            this.connection.send(_loc3_);
         }
      }
      
      private function destroyTimer() : void
      {
         if(this.§%$s§)
         {
            this.§%$s§.stop();
            this.§%$s§ = null;
         }
      }
      
      private function §@$]§(param1:Number, param2:int = 0, param3:Function = null, param4:Function = null) : void
      {
         this.destroyTimer();
         this.§%$s§ = new Timer(param1,param2);
         if(param3 != null)
         {
            this.§%$s§.addEventListener(TimerEvent.TIMER,param3,false,0,true);
         }
         if(param4 != null)
         {
            this.§%$s§.addEventListener(TimerEvent.TIMER_COMPLETE,param4,false,0,true);
         }
         this.§%$s§.start();
      }
      
      public function §,a§(param1:Function) : void
      {
         this.§+!-§ = param1;
         if(this.connection)
         {
            this.connection.addListener(PvpChatMessage,param1,false,0,true);
         }
      }
      
      public function §+!'§(param1:Function) : void
      {
         if(this.connection)
         {
            this.connection.removeListener(PvpChatMessage,param1);
         }
      }
   }
}

import §=&!§.§]$d§;

class EnterParams
{
   
   public var info:§]$d§;
   
   public var onSuccess:Function;
   
   public var onFail:Function;
   
   public function EnterParams(param1:§]$d§, param2:Function, param3:Function)
   {
      super();
      this.info = param1;
      this.onSuccess = param2;
      this.onFail = param3;
   }
}
