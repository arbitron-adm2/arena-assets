package §`#x§
{
   import § %f§.§##d§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §"% §.LevelUpDialog;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+%S§.KamikazeBuff;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §-@§.§5"4§;
   import §0!Y§.§!$%§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#8§.§6"a§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §4&F§.*;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §8$Z§.*;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<"?§.§7!@§;
   import §<"?§.§@&#§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.*;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=$#§.§1!$§;
   import §=$#§.§`%u§;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>!_§.§'!&§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@"!§.§`<§;
   import §@$§.§`&C§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!O§.§!#y§;
   import §[!O§.§1#i§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.inreflected.ui.touchScroll.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.EventPhase;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   import ru.pragmatix.wormix.pvp.messages.client.PvpDropPlayer;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndBattle;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.pvp.messages.server.PvpRetryCommandRequestServer;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §[$I§
   {
      
      private static const §,E§:uint = 0;
      
      private static const §3"&§:uint = 1;
      
      private static const §9$'§:uint = 2;
      
      private static const §9#%§:uint = 3;
      
      private static const §[$;§:uint = 4;
      
      private static const §3#&§:uint = 3;
      
      private static const §@"8§:uint = 3 * 1000;
      
      private static const IDLE:uint = 0;
      
      private static const §=%u§:uint = 1;
      
      private static const §@#z§:uint = 2;
      
      private var state:uint = 0;
      
      private var running:Boolean = false;
      
      private var connection:§'$T§;
      
      private var playerNum:int;
      
      private var §]$l§:§!#y§ = new §!#y§();
      
      private var lastCommandNum:uint = 0;
      
      private var §[$N§:Array = [];
      
      private var §9!s§:uint = 0;
      
      private var §0#;§:Array = [];
      
      private var §?%X§:Array = [];
      
      private var retryCount:uint = 0;
      
      private var §'$-§:Number = 0;
      
      private var §5"j§:Array = [];
      
      public function §[$I§(param1:§'$T§, param2:int)
      {
         super();
         this.connection = param1;
         this.playerNum = param2;
      }
      
      internal function resetParams(param1:§'$T§, param2:int) : void
      {
         if(this.running)
         {
            this.stop();
         }
         this.connection = param1;
         this.playerNum = param2;
      }
      
      private function reset() : void
      {
         this.lastCommandNum = 0;
         this.§[$N§ = [];
         this.§9!s§ = 0;
         this.state = IDLE;
         this.§5"j§ = [];
      }
      
      internal function run(param1:Boolean = false) : void
      {
         if(!this.running)
         {
            this.running = true;
            this.connection.addListener(PvpEndBattle,this.§8#7§,false,0,true);
            this.connection.addListener(PvpRetryCommandRequestServer,this.§>r§,false,0,true);
            this.connection.addListener(PvpStartTurn,this.§1%5§,false,0,true);
            this.connection.addListener(PvpSystemMessage,this.§"$1§,false,0,true);
            if(this.state == §=%u§)
            {
               this.§<%0§();
            }
            else if(this.state == §@#z§)
            {
               this.§1h§();
            }
            if(param1)
            {
               this.§5%5§();
               this.§<%0§();
            }
            else if(this.state != §=%u§)
            {
               this.§=%&§();
            }
         }
      }
      
      internal function stop() : void
      {
         if(this.running)
         {
            this.running = false;
            this.connection.removeListener(PvpEndBattle,this.§8#7§);
            this.connection.removeListener(PvpRetryCommandRequestServer,this.§>r§);
            this.connection.removeListener(PvpStartTurn,this.§1%5§);
            this.connection.removeListener(PvpSystemMessage,this.§"$1§);
         }
      }
      
      internal function §]"^§() : void
      {
         this.state = §@#z§;
         this.§[$N§ = [];
         this.§9!s§ = §8"%§.§?!W§.§4"m§.§,j§();
         this.§[!@§();
         this.§1h§();
         this.§5#u§();
         this.§6#h§();
         this.§]$l§.reset();
         this.§]$l§.run();
         Application.scene.addEventListener(§1#i§.ACTION_PACKET,this.§+$K§);
      }
      
      internal function §7"S§(param1:Boolean) : void
      {
         this.state = IDLE;
         this.§3w§();
         this.§]$l§.stop();
         if(param1)
         {
            this.§]$l§.§@$X§();
         }
         Application.scene.removeEventListener(§1#i§.ACTION_PACKET,this.§+$K§);
      }
      
      internal function §5%7§() : void
      {
         var _loc1_:§9$v§ = null;
         this.state = §=%u§;
         this.§[!@§();
         this.§<%0§();
         this.§5#u§();
         this.§6#h§();
         for each(_loc1_ in this.§0#;§)
         {
            if(_loc1_.message is PvpActionEx)
            {
               this.§3%%§(_loc1_);
            }
            else if(_loc1_.message is PvpEndTurn)
            {
               this.§'#s§(_loc1_);
            }
         }
         this.§0#;§ = [];
      }
      
      internal function §9&@§() : void
      {
         if(this.state != IDLE)
         {
            this.state = IDLE;
            this.§9$c§();
            this.§=%&§();
         }
      }
      
      internal function §%2§(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:int) : void
      {
         var _loc7_:PvpEndTurn = new PvpEndTurn();
         _loc7_.eliminated = param1;
         _loc7_.droppedUnits = param2;
         _loc7_.participantsHealthInPercent = param3;
         _loc7_.collectedReagents = param4;
         _loc7_.items = param5;
         _loc7_.battleState = param6;
         _loc7_.banType = §8"%§.§?!W§.§4"m§.§5=§() != 0 ? int(§`d§.§+#5§) : 0;
         this.§3$?§(_loc7_);
      }
      
      internal function §7<§(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:int) : void
      {
         var _loc7_:PvpEndTurnResponse = new PvpEndTurnResponse();
         _loc7_.droppedPlayers = param1;
         _loc7_.droppedUnits = param2;
         _loc7_.participantsHealthInPercent = param3;
         _loc7_.collectedReagents = param4;
         _loc7_.items = param5;
         _loc7_.battleState = param6;
         this.§3$?§(_loc7_);
      }
      
      internal function §%$^§(param1:uint) : void
      {
         var _loc2_:PvpDropPlayer = null;
         if(this.running)
         {
            _loc2_ = new PvpDropPlayer();
            _loc2_.battleId = §8"%§.§?!W§.§^!U§().battleId;
            _loc2_.playerNum = this.playerNum;
            _loc2_.type = param1;
            this.connection.send(_loc2_);
         }
      }
      
      private function §1h§() : void
      {
         if(this.connection)
         {
            this.connection.§#%]§();
         }
      }
      
      private function §<%0§() : void
      {
         this.connection.addListener(PvpActionEx,this.§3%%§);
         this.connection.addListener(PvpEndTurn,this.§'#s§);
      }
      
      private function §3w§() : void
      {
         if(this.connection)
         {
            this.connection.§,"%§();
         }
      }
      
      private function §9$c§() : void
      {
         this.connection.removeListener(PvpActionEx,this.§3%%§);
         this.connection.removeListener(PvpEndTurn,this.§'#s§);
      }
      
      private function §3%%§(param1:§9$v§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc2_:PvpActionEx = PvpActionEx(param1.message);
         if(this.§3$N§(_loc2_))
         {
            _loc3_ = this.lastCommandNum + 1;
            if(_loc2_.commandNum == _loc3_)
            {
               ++this.lastCommandNum;
               _loc4_ = _loc2_.firstFrame;
               while(_loc4_ <= _loc2_.lastFrame)
               {
                  if(_loc2_.actionsByFrame[_loc4_])
                  {
                     Application.scene.dispatchEvent(new §!$%§(_loc2_.actionsByFrame[_loc4_],_loc4_));
                  }
                  _loc4_++;
               }
               Application.scene.dispatchEvent(§!$%§.empty(_loc2_.lastFrame));
            }
            else if(_loc2_.commandNum > _loc3_)
            {
               if(Application.instance.§#&7§())
               {
                  §8"%§.§?!W§.§>$y§("Неправильный номер команды (" + _loc2_.commandNum + " : " + _loc3_ + ") act");
                  §8"%§.§?!W§.§!#S§("firstFrame=" + _loc2_.firstFrame + " lastFrame=" + _loc2_.lastFrame);
                  _loc5_ = _loc2_.firstFrame;
                  while(_loc5_ <= _loc2_.lastFrame)
                  {
                     if(_loc2_.actionsByFrame[_loc5_])
                     {
                        §8"%§.§?!W§.§!#S§(_loc5_ + " " + JSON.stringify(_loc2_.actionsByFrame[_loc5_]));
                     }
                     _loc5_++;
                  }
               }
               if(this.§0$`§())
               {
                  this.§5#S§();
               }
            }
         }
         else if(§8"%§.§?!W§.§4"m§)
         {
            §8"%§.§?!W§.§>$y§("Неправильный фрейм команды (" + _loc2_.turnNum + " : " + §8"%§.§?!W§.§4"m§.§,j§() + ") act");
         }
         else
         {
            §8"%§.§?!W§.§>$y§("Неправильный фрейм команды (!gm) act");
         }
      }
      
      private function §'#s§(param1:§9$v§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:PvpEndTurn = PvpEndTurn(param1.message);
         if(this.§3$N§(_loc2_))
         {
            _loc3_ = this.lastCommandNum + 1;
            if(_loc2_.commandNum == _loc3_)
            {
               if(!Application.scene.§@$I§.§!%q§())
               {
                  Application.scene.§@$I§.§2$o§(_loc2_.forced);
                  this.retryCount = 0;
               }
            }
            else if(_loc2_.commandNum > _loc3_)
            {
               §8"%§.§?!W§.§>$y§("Неправильный номер команды завершения хода (" + _loc2_.commandNum + " : " + _loc3_ + ") end");
               if(this.§0$`§())
               {
                  this.§5#S§();
               }
            }
            else
            {
               _loc4_ = int(this.§[$N§.length);
               _loc5_ = _loc4_ - 1;
               if(_loc4_ > 0 && this.§[$N§[_loc5_] is PvpEndTurnResponse)
               {
                  this.connection.send(this.§[$N§[_loc5_]);
               }
            }
         }
         else if(§8"%§.§?!W§.§4"m§)
         {
            §8"%§.§?!W§.§>$y§("Неправильный фрейм команды завершения хода (" + _loc2_.turnNum + " : " + §8"%§.§?!W§.§4"m§.§,j§() + ") end");
         }
         else
         {
            §8"%§.§?!W§.§>$y§("Неправильный фрейм команды завершения хода (!gm) end");
         }
      }
      
      private function §3$N§(param1:PvpCommand) : Boolean
      {
         if(!§8"%§.§?!W§.§4"m§)
         {
            return false;
         }
         return param1.battleId == §8"%§.§?!W§.§^!U§().battleId && param1.turnNum == §8"%§.§?!W§.§4"m§.§,j§();
      }
      
      private function §+$K§(param1:§1#i§) : void
      {
         this.§3$?§(new PvpActionEx(param1.firstFrame,param1.lastFrame,param1.bulk));
      }
      
      private function §3$?§(param1:PvpCommand) : void
      {
         this.§[$N§.push(param1);
         param1.battleId = §8"%§.§?!W§.§^!U§().battleId;
         param1.turnNum = §8"%§.§?!W§.§4"m§.§,j§();
         param1.commandNum = ++this.lastCommandNum;
         param1.playerNum = this.playerNum;
         if(this.running)
         {
            this.connection.send(param1);
         }
      }
      
      private function §5%5§() : void
      {
         var _loc1_:§]$d§ = null;
         var _loc3_:PvpCommand = null;
         _loc1_ = §8"%§.§?!W§.§^!U§();
         var _loc2_:Boolean = Boolean(_loc1_.scenario) && (_loc1_.scenario is §@&#§ || _loc1_.scenario is §7!@§);
         if(Boolean(_loc1_ && _loc1_.missionIds.length) && Boolean(_loc2_) && Boolean(this.§[$N§.length))
         {
            _loc3_ = this.§[$N§[this.§[$N§.length - 1];
            if(Boolean(_loc3_) && _loc3_ is PvpEndTurnResponse)
            {
               this.connection.send(_loc3_);
            }
         }
      }
      
      private function §0$`§() : Boolean
      {
         return this.retryCount < §3#&§ && new Date().getTime() - this.§'$-§ > §@"8§;
      }
      
      private function §5#S§() : void
      {
         var _loc1_:PvpRetryCommandRequestClient = new PvpRetryCommandRequestClient();
         _loc1_.battleId = §8"%§.§?!W§.§^!U§().battleId;
         _loc1_.turnNum = §8"%§.§?!W§.§4"m§.§,j§();
         _loc1_.commandNum = this.lastCommandNum;
         if(this.running)
         {
            this.connection.send(_loc1_);
            ++this.retryCount;
            this.§'$-§ = new Date().getTime();
         }
      }
      
      internal function §[!@§() : void
      {
         if(§8"%§.§?!W§.§4"m§.§,j§() == 1)
         {
            this.lastCommandNum = 0;
         }
         else
         {
            this.lastCommandNum = 1;
         }
      }
      
      private function §8#7§(param1:§9$v§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§<$Z§ = null;
         var _loc5_:§3$z§ = null;
         var _loc2_:PvpEndBattle = PvpEndBattle(param1.message);
         if(_loc2_.battleId == §8"%§.§?!W§.§^!U§().battleId)
         {
            _loc3_ = _loc2_.battleResult;
            _loc4_ = §<$Z§.§!M§;
            _loc5_ = §3$z§.§[$s§;
            _loc5_.§5"j§ = this.§5"j§;
            if(_loc3_ != §3"&§)
            {
               if(!_loc2_.confirmed)
               {
                  if(_loc3_ != §[$;§)
                  {
                     _loc5_ = §3$z§.DESYNC;
                  }
                  else
                  {
                     _loc5_ = §3$z§.§2"0§;
                  }
                  _loc4_ = §<$Z§.§7!i§;
               }
               else if(_loc3_ == §,E§)
               {
                  _loc4_ = §<$Z§.§+%I§;
               }
               else if(_loc3_ == §9$'§)
               {
                  _loc4_ = §<$Z§.§7!i§;
               }
               else if(_loc3_ == §9#%§ || _loc3_ == §[$;§)
               {
                  _loc4_ = §<$Z§.§7!i§;
                  _loc5_ = §3$z§.DESYNC;
               }
            }
            §8"%§.§?!W§.§`$d§(_loc4_,_loc5_,_loc2_);
         }
      }
      
      private function §>r§(param1:§9$v§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:uint = 0;
         var _loc2_:PvpRetryCommandRequestServer = PvpRetryCommandRequestServer(param1.message);
         var _loc3_:String = "";
         for each(_loc4_ in _loc2_.commandNums)
         {
            _loc3_ = _loc3_ + (_loc3_ != "" ? "," : "") + _loc4_;
         }
         if(this.running && _loc2_.battleId == §8"%§.§?!W§.§^!U§().battleId && _loc2_.turnNum == this.§9!s§)
         {
            if(_loc2_.commandNums.length == 2 && _loc2_.commandNums[1] == -1)
            {
               _loc6_ = _loc5_ = this.§9!s§ != 1 ? uint(_loc2_.commandNums[0] - 2) : uint(_loc2_.commandNums[0] - 1);
               while(_loc6_ < this.§[$N§.length)
               {
                  this.connection.send(this.§[$N§[_loc6_]);
                  _loc6_++;
               }
            }
            else
            {
               for each(_loc7_ in _loc2_.commandNums)
               {
                  _loc8_ = this.§9!s§ != 1 ? uint(_loc7_ - 2) : uint(_loc7_ - 1);
                  if(_loc8_ >= 0 && _loc8_ < this.§[$N§.length)
                  {
                     this.connection.send(this.§[$N§[_loc8_]);
                  }
               }
            }
         }
      }
      
      private function §1%5§(param1:§9$v§) : void
      {
         var _loc3_:§5"4§ = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc2_:PvpStartTurn = PvpStartTurn(param1.message);
         _loc3_ = §8"%§.§?!W§;
         var _loc4_:§]$;§ = _loc3_.§4"m§;
         if(_loc4_)
         {
            _loc5_ = _loc4_.§,j§();
            _loc6_ = _loc5_ + 1;
            if(_loc2_.battleId == _loc3_.§^!U§().battleId && _loc2_.turnNum == _loc6_)
            {
               Application.scene.§@$I§.§!z§();
            }
            else if(_loc2_.turnNum != _loc6_)
            {
               _loc3_.§!#S§("Получен неправильный номер хода (" + _loc2_.turnNum + ":" + _loc6_ + ") start");
            }
         }
      }
      
      private function §"$1§(param1:§9$v§) : void
      {
         var _loc3_:UserProfile = null;
         var _loc6_:§"Z§ = null;
         var _loc2_:PvpSystemMessage = PvpSystemMessage(param1.message);
         if(_loc2_.type == PvpSystemMessage.SERVER_RESTARTING)
         {
            §8"%§.§?!W§.§!#S§(_loc2_.toChatString());
            §5"4§.§;!3§ = true;
            if(§8"%§.§?!W§.§4"m§)
            {
               §8"%§.§?!W§.§4"m§.§'%i§().§&%$§();
            }
            return;
         }
         _loc3_ = §8"%§.§?!W§.§0$r§(_loc2_.playerNum);
         var _loc4_:String = _loc3_ ? §4! §.§0!L§(_loc3_) : §2"e§.NA;
         var _loc5_:String = "#" + (_loc2_.playerNum + 1) + " (" + _loc4_ + ")";
         if(§8"%§.§?!W§.§4"m§)
         {
            §8"%§.§?!W§.§!#S§(_loc2_.toChatString().replace("%1",_loc5_));
            if(_loc2_.isPlayerDropped())
            {
               if(_loc2_.playerNum == this.playerNum)
               {
                  §8"%§.§?!W§.§`$d§(§<$Z§.§!M§,§3$z§.SERVER_SAID_I_AM_CHEATER);
               }
               else
               {
                  _loc6_ = §8"%§.§?!W§.§4"m§.§?%j§(_loc3_);
                  if(_loc6_)
                  {
                     _loc6_.§>y§(true);
                  }
                  §`%u§.§;$^§(_loc2_.type,_loc3_);
                  if(_loc2_.isPlayerSurrended() && this.§5"j§.indexOf(_loc2_.playerNum) == -1)
                  {
                     this.§5"j§.push(_loc2_.playerNum);
                  }
               }
            }
         }
         else
         {
            this.§?%X§.push(param1);
         }
      }
      
      private function §5#u§() : void
      {
         var _loc1_:§9$v§ = null;
         for each(_loc1_ in this.§?%X§)
         {
            this.§"$1§(_loc1_);
         }
         this.§?%X§ = [];
      }
      
      internal function §=%&§() : void
      {
         this.connection.addListener(PvpActionEx,this.§+%r§,false,0,true);
         this.connection.addListener(PvpEndTurn,this.§+%r§,false,0,true);
      }
      
      internal function §6#h§() : void
      {
         this.connection.removeListener(PvpActionEx,this.§+%r§);
         this.connection.removeListener(PvpEndTurn,this.§+%r§);
      }
      
      private function §+%r§(param1:§9$v§) : void
      {
         this.§0#;§.push(param1);
      }
      
      internal function §%"p§() : uint
      {
         return this.lastCommandNum;
      }
   }
}

