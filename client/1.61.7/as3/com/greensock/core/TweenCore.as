package com.greensock.core
{
   import § #m§.§;#^§;
   import § $q§.BagMenu;
   import § %f§.*;
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §!K§.§&#Q§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#%!§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%E§.§2§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§@x§;
   import §+%S§.§[0§;
   import §+u§.§'n§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §-"N§.§"k§;
   import §-"N§.§+#R§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1!#§.§&?§;
   import §2!-§.SupplyPickedUpEvent;
   import §2"L§.§^$y§;
   import §3#T§.§;#Q§;
   import §4#2§.§,$8§;
   import §4#`§.*;
   import §4%_§.§6#W§;
   import §4'§.§`"q§;
   import §5!b§.§8#W§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §9z§.§>"d§;
   import §<!W§.*;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=!p§.§1e§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §>"l§.§#!Y§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §?>§.§]!V§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@!i§.§<!9§;
   import §@"x§.CommonSettingsMenu;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[" §.*;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §[%§.Dragon;
   import §[%§.Rhino;
   import §]#[§.§"!I§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§9!K§;
   import §`%&§.§`§;
   import com.greensock.*;
   import com.greensock.data.TweenLiteVars;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.ConnectIcon;
   import ru.pragmatix.wormix.gui.window.§4W§;
   import ru.pragmatix.wormix.gui.window.WeaponTipsPanel;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetSpecialDeal;
   import ru.pragmatix.wormix.messages.client.ReplaceQuestTask;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§<"e§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class TweenCore
   {
      
      protected static var _classInitted:Boolean;
      
      public static const version:Number = 1.5;
      
      public var initted:Boolean;
      
      protected var _hasUpdate:Boolean;
      
      public var active:Boolean;
      
      protected var _delay:Number;
      
      public var cachedReversed:Boolean;
      
      public var nextNode:TweenCore;
      
      public var cachedTime:Number;
      
      protected var _rawPrevTime:Number = -1;
      
      public var vars:Object;
      
      public var cachedTotalTime:Number;
      
      public var data:*;
      
      public var timeline:SimpleTimeline;
      
      public var cachedOrphan:Boolean;
      
      public var cachedStartTime:Number;
      
      public var prevNode:TweenCore;
      
      public var cachedDuration:Number;
      
      public var gc:Boolean;
      
      public var cachedPauseTime:Number;
      
      public var cacheIsDirty:Boolean;
      
      public var cachedPaused:Boolean;
      
      public var cachedTimeScale:Number;
      
      public var cachedTotalDuration:Number;
      
      public function TweenCore(param1:Number = 0, param2:Object = null)
      {
         super();
         this.vars = param2 != null ? param2 : {};
         if(this.vars.isGSVars)
         {
            this.vars = this.vars.vars;
         }
         this.cachedDuration = this.cachedTotalDuration = param1;
         _delay = this.vars.delay ? Number(this.vars.delay) : 0;
         this.cachedTimeScale = this.vars.timeScale ? Number(this.vars.timeScale) : 1;
         this.active = Boolean(param1 == 0 && _delay == 0 && this.vars.immediateRender != false);
         this.cachedTotalTime = this.cachedTime = 0;
         this.data = this.vars.data;
         if(!_classInitted)
         {
            if(!isNaN(TweenLite.rootFrame))
            {
               return;
            }
            TweenLite.initClass();
            _classInitted = true;
         }
         var _loc3_:SimpleTimeline = this.vars.timeline is SimpleTimeline ? this.vars.timeline : (this.vars.useFrames ? TweenLite.rootFramesTimeline : TweenLite.rootTimeline);
         this.cachedStartTime = _loc3_.cachedTotalTime + _delay;
         _loc3_.addChild(this);
         if(this.vars.reversed)
         {
            this.cachedReversed = true;
         }
         if(this.vars.paused)
         {
            this.paused = true;
         }
      }
      
      public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function get delay() : Number
      {
         return _delay;
      }
      
      public function get duration() : Number
      {
         return this.cachedDuration;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         if(param1 != this.cachedReversed)
         {
            this.cachedReversed = param1;
            setTotalTime(this.cachedTotalTime,true);
         }
      }
      
      public function set startTime(param1:Number) : void
      {
         var _loc2_:Boolean = Boolean(this.timeline != null && (param1 != this.cachedStartTime || this.gc));
         this.cachedStartTime = param1;
         if(_loc2_)
         {
            this.timeline.addChild(this);
         }
      }
      
      public function restart(param1:Boolean = false, param2:Boolean = true) : void
      {
         this.reversed = false;
         this.paused = false;
         this.setTotalTime(param1 ? -_delay : 0,param2);
      }
      
      public function set delay(param1:Number) : void
      {
         this.startTime += param1 - _delay;
         _delay = param1;
      }
      
      public function resume() : void
      {
         this.paused = false;
      }
      
      public function get paused() : Boolean
      {
         return this.cachedPaused;
      }
      
      public function play() : void
      {
         this.reversed = false;
         this.paused = false;
      }
      
      public function set duration(param1:Number) : void
      {
         var _loc2_:Number = param1 / this.cachedDuration;
         this.cachedDuration = this.cachedTotalDuration = param1;
         if(this.active && !this.cachedPaused && param1 != 0)
         {
            this.setTotalTime(this.cachedTotalTime * _loc2_,true);
         }
         setDirtyCache(false);
      }
      
      public function invalidate() : void
      {
      }
      
      public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!param1)
         {
            renderTime(this.totalDuration,param2,false);
            return;
         }
         if(this.timeline.autoRemoveChildren)
         {
            this.setEnabled(false,false);
         }
         else
         {
            this.active = false;
         }
         if(!param2)
         {
            if(Boolean(this.vars.onComplete) && Boolean(this.cachedTotalTime >= this.cachedTotalDuration) && !this.cachedReversed)
            {
               this.vars.onComplete.apply(null,this.vars.onCompleteParams);
            }
            else if(this.cachedReversed && this.cachedTotalTime == 0 && Boolean(this.vars.onReverseComplete))
            {
               this.vars.onReverseComplete.apply(null,this.vars.onReverseCompleteParams);
            }
         }
      }
      
      public function get totalTime() : Number
      {
         return this.cachedTotalTime;
      }
      
      public function get startTime() : Number
      {
         return this.cachedStartTime;
      }
      
      public function get reversed() : Boolean
      {
         return this.cachedReversed;
      }
      
      public function set currentTime(param1:Number) : void
      {
         setTotalTime(param1,false);
      }
      
      protected function setDirtyCache(param1:Boolean = true) : void
      {
         var _loc2_:TweenCore = param1 ? this : this.timeline;
         while(_loc2_)
         {
            _loc2_.cacheIsDirty = true;
            _loc2_ = _loc2_.timeline;
         }
      }
      
      public function reverse(param1:Boolean = true) : void
      {
         this.reversed = true;
         if(param1)
         {
            this.paused = false;
         }
         else if(this.gc)
         {
            this.setEnabled(true,false);
         }
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 != this.cachedPaused && Boolean(this.timeline))
         {
            if(param1)
            {
               this.cachedPauseTime = this.timeline.rawTime;
            }
            else
            {
               this.cachedStartTime += this.timeline.rawTime - this.cachedPauseTime;
               this.cachedPauseTime = NaN;
               setDirtyCache(false);
            }
            this.cachedPaused = param1;
            this.active = Boolean(!this.cachedPaused && this.cachedTotalTime > 0 && this.cachedTotalTime < this.cachedTotalDuration);
         }
         if(!param1 && this.gc)
         {
            this.setTotalTime(this.cachedTotalTime,false);
            this.setEnabled(true,false);
         }
      }
      
      public function kill() : void
      {
         setEnabled(false,false);
      }
      
      public function set totalTime(param1:Number) : void
      {
         setTotalTime(param1,false);
      }
      
      public function get currentTime() : Number
      {
         return this.cachedTime;
      }
      
      protected function setTotalTime(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.timeline)
         {
            _loc3_ = Boolean(this.cachedPauseTime) || this.cachedPauseTime == 0 ? this.cachedPauseTime : this.timeline.cachedTotalTime;
            if(this.cachedReversed)
            {
               _loc4_ = this.cacheIsDirty ? this.totalDuration : this.cachedTotalDuration;
               this.cachedStartTime = _loc3_ - (_loc4_ - param1) / this.cachedTimeScale;
            }
            else
            {
               this.cachedStartTime = _loc3_ - param1 / this.cachedTimeScale;
            }
            if(!this.timeline.cacheIsDirty)
            {
               setDirtyCache(false);
            }
            if(this.cachedTotalTime != param1)
            {
               renderTime(param1,param2,false);
            }
         }
      }
      
      public function pause() : void
      {
         this.paused = true;
      }
      
      public function set totalDuration(param1:Number) : void
      {
         this.duration = param1;
      }
      
      public function get totalDuration() : Number
      {
         return this.cachedTotalDuration;
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         this.gc = !param1;
         if(param1)
         {
            this.active = Boolean(!this.cachedPaused && this.cachedTotalTime > 0 && this.cachedTotalTime < this.cachedTotalDuration);
            if(!param2 && this.cachedOrphan)
            {
               this.timeline.addChild(this);
            }
         }
         else
         {
            this.active = false;
            if(!param2 && !this.cachedOrphan)
            {
               this.timeline.remove(this,true);
            }
         }
         return false;
      }
   }
}

