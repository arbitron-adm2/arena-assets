package ru.pragmatix.wormix.messages.server
{
   import §!$Z§.§"$I§;
   import §"$+§.§@C§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#E§.§4##§;
   import §&#h§.§-"F§;
   import §'%[§.§4,§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §2"L§.§^$y§;
   import §3#T§.§+&F§;
   import §4'§.§^"p§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §^4§.§>"$§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§`$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class ArenaResult
   {
      
      public var battlesCount:int;
      
      public var curSoloMissionId:int;
      
      public var curCooperativeMissionId:int;
      
      public var bossAvailable:Boolean;
      
      public var superBossAvailable:Boolean;
      
      public var heroicStructures:Vector.<HeroicMissionStructure>;
      
      public var delay:uint;
      
      public var restoreBattlesDelay:uint;
      
      public var restrictedWagers:Vector.<int>;
      
      public var restrictedWagersLeftTime:Vector.<uint>;
      
      public var heroicMissionDailyProgress:Vector.<HeroicMissionDailyProgressTO>;
      
      public var defeatContributionMoney:int;
      
      public var wagerWinAwardToken:int;
      
      public var bossWinAwardToken:int;
      
      public var extraBattlesTimetable:Object;
      
      public var bossAwardsStructure:BossBattleAwardsStructure;
      
      public var zombieRiseCoolDownTime:int;
      
      public function ArenaResult()
      {
         super();
      }
      
      public function toString() : String
      {
         return "ArenaResult{" + ",battlesCount=" + this.battlesCount + ",curSoloMissionId=" + this.curSoloMissionId + ",curCooperativeMissionId=" + this.curCooperativeMissionId + ",bossAvailable=" + this.bossAvailable + ",superBossAvailable=" + this.superBossAvailable + ",heroicStructures=" + this.heroicStructures + ",delay=" + this.delay + ",restoreBattlesDelay=" + this.restoreBattlesDelay + ",restrictedWagers=" + this.restrictedWagers + ",restrictedWagersLeftTime=" + this.restrictedWagersLeftTime + ",heroicMissionDailyProgress=" + this.heroicMissionDailyProgress + ",defeatContributionMoney=" + this.defeatContributionMoney + ",wagerWinAwardToken=" + this.wagerWinAwardToken + ",bossWinAwardToken=" + this.bossWinAwardToken + ",extraBattlesTimetable=" + (this.extraBattlesTimetable ? JSON.stringify(this.extraBattlesTimetable) : "-") + ",zombieRiseCoolDownTime=" + this.zombieRiseCoolDownTime + " }";
      }
   }
}

