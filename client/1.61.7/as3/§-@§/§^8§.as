package §-@§
{
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §"$+§.§`&$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&#h§.§5f§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.ClanDescriptionPopup;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,#c§.ArenaMenu;
   import §-%B§.*;
   import §-8§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%z§.§#%x§;
   import §0%z§.§,$h§;
   import §0%z§.§1"6§;
   import §0%z§.§@"q§;
   import §0%z§.§@#S§;
   import §0%z§.AchievTabPage;
   import §1#p§.*;
   import §2!-§.§^!9§;
   import §2"L§.§^$y§;
   import §2#V§.§-#U§;
   import §2B§.§&!Y§;
   import §3#T§.§;#Q§;
   import §3#a§.*;
   import §4#`§.§+!l§;
   import §4'§.§`"q§;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%W§.§!"G§;
   import §9%k§.*;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.§!"X§;
   import §>$q§.§4#;§;
   import §?"[§.*;
   import §?#g§.§"&>§;
   import §?$7§.§!§;
   import §?$7§.§+l§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`#x§.*;
   import §`%&§.§5$1§;
   import §`v§.§2&H§;
   import avmplus.getQualifiedClassName;
   import config.achievements.§"!&§;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Mouse;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.AddToGroup;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.ArenaResult;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §^8§
   {
      
      public static const §%&E§:uint = 1;
      
      private var §?v§:ArenaMenu;
      
      private var _profileForBosses:UserProfile;
      
      private var §+!E§:Function;
      
      private var onArenaDelayFn:Function;
      
      private var §@s§:int;
      
      private var §"$5§:int;
      
      private var §0#B§:int;
      
      public function §^8§()
      {
         super();
         §%%w§.§##$§(ArenaResult,this.§8"c§);
         §%%w§.§##$§(ArenaLocked,this.§0%`§);
      }
      
      public function getArenaMenu() : ArenaMenu
      {
         if(!this.§?v§)
         {
            this.§?v§ = new ArenaMenu();
            this.§?v§.addEventListener(§[%w§.WINDOW_CLOSE,function(param1:Event):void
            {
               _profileForBosses = null;
               §8"%§.§%$r§.§7&F§();
            });
         }
         return this.§?v§;
      }
      
      public function §^G§(param1:UserProfile = null) : void
      {
         var _loc5_:String = null;
         this._profileForBosses = param1;
         var _loc2_:Boolean = §,! §.§9$!§();
         var _loc3_:Boolean = param1 != null;
         var _loc4_:ArenaMenu = this.getArenaMenu();
         _loc4_.show();
         if(_loc3_)
         {
            _loc4_.§;#!§(§&!Y§.BOSS_TAB_NAME,param1);
         }
         else
         {
            _loc5_ = _loc4_.getTabPanel() ? _loc4_.§ !B§() : "";
            _loc4_.§;#!§(_loc5_ || (_loc2_ ? §&!Y§.PVP_TAB_NAME : §&!Y§.MISSION_TAB_NAME));
         }
      }
      
      public function §&u§(param1:Function, param2:Function) : void
      {
         var onLoadBattlesFn:Function = param1;
         var onArenaDelayFn:Function = param2;
         this.§+!E§ = onLoadBattlesFn;
         this.onArenaDelayFn = onArenaDelayFn;
         §5f§.§9!8§(function():void
         {
            getArenaMenu().getTabPanel().chestsUpdate();
         });
         §?B§.§8#&§(null,false,false);
         §8"%§.§%$r§.§>%U§(function():void
         {
            getArenaMenu().getTabPanel().showAvailableBattlesCount();
         },true);
      }
      
      private function §8"c§(param1:§9$v§) : void
      {
         var _loc2_:ArenaResult = null;
         _loc2_ = ArenaResult(param1.message);
         §6&'§.getInstance().§^&§ = _loc2_.curSoloMissionId;
         §!#3§.getInstance().§^&§ = _loc2_.curCooperativeMissionId;
         var _loc3_:§6J§ = §6J§.getInstance();
         _loc3_.§""O§(_loc2_.heroicStructures);
         §6%k§.bossAvailable = _loc2_.bossAvailable;
         §6%k§.superBossAvailable = _loc2_.superBossAvailable;
         §8"%§.§[%h§.§-"r§(_loc2_.battlesCount);
         §8"%§.§[%h§.§@!l§(_loc2_.restoreBattlesDelay);
         var _loc4_:Number = new Date().time + _loc2_.delay;
         if(_loc2_.battlesCount == 0)
         {
            §8"%§.§[%h§.§9!O§(_loc4_);
         }
         if(_loc2_.battlesCount < §-#m§.§%&E§)
         {
            §8"%§.§[%h§.§-!"§(_loc4_);
         }
         this.§0#B§ = _loc2_.zombieRiseCoolDownTime;
         §8"%§.§-"p§.§1"Q§(_loc2_.restrictedWagers,_loc2_.restrictedWagersLeftTime);
         _loc3_.§=%R§(_loc2_.heroicMissionDailyProgress,_loc2_.defeatContributionMoney);
         §8"%§.§?$5§.§&# §(_loc2_.extraBattlesTimetable);
         §8"%§.§>`§.§&# §(_loc2_.extraBattlesTimetable);
         §8"%§.§'%;§.§&# §(_loc2_.extraBattlesTimetable);
         this.§@s§ = _loc2_.wagerWinAwardToken;
         this.§"$5§ = _loc2_.bossWinAwardToken;
         §6&'§.getInstance().§[&!§(_loc2_.bossAwardsStructure.bossAwards);
         §!#3§.getInstance().§[&!§(_loc2_.bossAwardsStructure.bossAwards);
         §8"e§.§[&!§(_loc2_.bossAwardsStructure.heroicAwards);
         if(this.§+!E§ != null)
         {
            this.§+!E§();
            this.§+!E§ = null;
         }
      }
      
      private function §0%`§(param1:§9$v§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:uint = ArenaLocked(param1.message).delay;
         _loc3_ = ArenaLocked(param1.message).currentMission;
         var _loc4_:§+l§ = §6%k§.§>!+§(_loc3_);
         _loc4_.§^&§ = _loc3_ - _loc4_.§+#q§();
         §8"%§.§[%h§.§9!O§(new Date().time + _loc2_);
         §8"%§.§[%h§.§-"r§(0);
         if(this.onArenaDelayFn != null)
         {
            this.onArenaDelayFn(_loc2_);
            this.onArenaDelayFn = null;
         }
      }
      
      public function get §["x§() : UserProfile
      {
         return this._profileForBosses;
      }
      
      public function §-!8§() : int
      {
         return this.§@s§;
      }
      
      public function § #;§() : int
      {
         return this.§"$5§;
      }
      
      public function §;H§() : Boolean
      {
         return this.§@s§ > 0;
      }
      
      public function §7#G§() : Boolean
      {
         return this.§"$5§ > 0;
      }
      
      public function §3!n§() : void
      {
         --this.§@s§;
      }
      
      public function §-!E§() : void
      {
         --this.§"$5§;
      }
      
      public function get zombieRiseCoolDownTime() : int
      {
         return this.§0#B§;
      }
   }
}

