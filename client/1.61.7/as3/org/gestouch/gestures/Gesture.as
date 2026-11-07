package org.gestouch.gestures
{
   import § !8§.§`!d§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"% §.LevelUpDialog;
   import §"%H§.*;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §+%S§.KamikazeBuff;
   import §+&<§.§@$L§;
   import §+&<§.§^@§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-8§.§3!x§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3#T§.AtomBomb;
   import §3#a§.§-#M§;
   import §3#a§.§<#_§;
   import §4'§.§`"q§;
   import §5"J§.*;
   import §6",§.§[%w§;
   import §65§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §8$Z§.§9!&§;
   import §9%W§.§&!P§;
   import §<!W§.§=!6§;
   import §<"L§.*;
   import §<%E§.§6$=§;
   import §<%J§.RopeRaceGiftMenu;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[%'§.§<"G§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import com.adobe.serialization.json.JSON;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.net.*;
   import flash.system.Capabilities;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.*;
   import org.gestouch.core.Gestouch;
   import org.gestouch.core.GestureState;
   import org.gestouch.core.GesturesManager;
   import org.gestouch.core.IGestureDelegate;
   import org.gestouch.core.IGestureTargetAdapter;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.events.GestureEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3y§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class Gesture extends EventDispatcher
   {
      
      public static var DEFAULT_SLOP:uint = Math.round(20 / 252 * Capabilities.screenDPI);
      
      protected const _gesturesManager:GesturesManager = Gestouch.gesturesManager;
      
      protected var _touchesMap:Object = {};
      
      protected var _centralPoint:Point = new Point();
      
      protected var _gesturesToFail:Dictionary = new Dictionary(true);
      
      protected var _pendingRecognizedState:GestureState;
      
      private var eventListeners:Dictionary = new Dictionary();
      
      protected var _targetAdapter:IGestureTargetAdapter;
      
      protected var _enabled:Boolean = true;
      
      private var _delegateWeekStorage:Dictionary;
      
      protected var _state:GestureState = GestureState.IDLE;
      
      protected var _touchesCount:uint = 0;
      
      protected var _location:Point = new Point();
      
      public function Gesture(param1:Object = null)
      {
         super();
         this.preinit();
         this.target = param1;
      }
      
      gestouch_internal function get targetAdapter() : IGestureTargetAdapter
      {
         return this._targetAdapter;
      }
      
      protected function get targetAdapter() : IGestureTargetAdapter
      {
         return this._targetAdapter;
      }
      
      public function get target() : Object
      {
         return this._targetAdapter ? this._targetAdapter.target : null;
      }
      
      public function set target(param1:Object) : void
      {
         var _loc2_:Object = this.target;
         if(_loc2_ == param1)
         {
            return;
         }
         this.uninstallTarget(_loc2_);
         this._targetAdapter = param1 ? Gestouch.createGestureTargetAdapter(param1) : null;
         this.installTarget(param1);
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this._enabled == param1)
         {
            return;
         }
         this._enabled = param1;
         if(!this._enabled)
         {
            if(this.state == GestureState.POSSIBLE)
            {
               this.setState(GestureState.FAILED);
            }
            else if(this.state == GestureState.BEGAN || this.state == GestureState.CHANGED)
            {
               this.setState(GestureState.CANCELLED);
            }
         }
      }
      
      public function get delegate() : IGestureDelegate
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._delegateWeekStorage;
         for(_loc1_ in _loc3_)
         {
            return _loc1_ as IGestureDelegate;
         }
         return null;
      }
      
      public function set delegate(param1:IGestureDelegate) : void
      {
         var _loc2_:Object = null;
         for(_loc2_ in this._delegateWeekStorage)
         {
            delete this._delegateWeekStorage[_loc2_];
         }
         if(param1)
         {
            (this._delegateWeekStorage = this._delegateWeekStorage || new Dictionary(true))[param1] = true;
         }
      }
      
      public function get state() : GestureState
      {
         return this._state;
      }
      
      public function get touchesCount() : uint
      {
         return this._touchesCount;
      }
      
      public function get location() : Point
      {
         return this._location.clone();
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.addEventListener(param1,param2,param3,param4,param5);
         var _loc6_:Array = this.eventListeners[param2] as Array;
         if(_loc6_)
         {
            _loc6_.push(param1,param3);
         }
         else
         {
            this.eventListeners[param2] = [param1,param3];
         }
      }
      
      public function removeAllEventListeners() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         for(_loc1_ in this.eventListeners)
         {
            _loc2_ = this.eventListeners[_loc1_] as Array;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               §§push(this);
               §§push(_loc2_[_loc4_++] as String);
               §§push(_loc1_ as Function);
               §§push(_loc2_);
               var _temp_2:* = _loc4_;
               §§pop().super.removeEventListener(§§pop(),§§pop(),§§pop()[_loc4_++] as Boolean);
            }
            delete this.eventListeners[_loc1_];
         }
      }
      
      [Abstract]
      public function reflect() : Class
      {
         throw Error("reflect() is abstract method and must be overridden.");
      }
      
      public function isTrackingTouch(param1:uint) : Boolean
      {
         return this._touchesMap[param1] != undefined;
      }
      
      public function reset() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Gesture = null;
         var _loc1_:GestureState = this.state;
         if(_loc1_ == GestureState.IDLE)
         {
            return;
         }
         this._location.x = 0;
         this._location.y = 0;
         this._touchesMap = {};
         this._touchesCount = 0;
         for(_loc2_ in this._gesturesToFail)
         {
            _loc3_ = _loc2_ as Gesture;
            _loc3_.removeEventListener(org.gestouch.events.GestureEvent.GESTURE_STATE_CHANGE,this.gestureToFail_stateChangeHandler);
         }
         this._pendingRecognizedState = null;
         if(_loc1_ == GestureState.POSSIBLE)
         {
            this.setState(GestureState.FAILED);
         }
         else if(_loc1_ == GestureState.BEGAN || _loc1_ == GestureState.CHANGED)
         {
            this.setState(GestureState.CANCELLED);
         }
         else
         {
            this.setState(GestureState.IDLE);
         }
      }
      
      public function dispose() : void
      {
         this.reset();
         this.removeAllEventListeners();
         this.target = null;
         this.delegate = null;
         this._gesturesToFail = null;
         this.eventListeners = null;
      }
      
      public function canBePreventedByGesture(param1:Gesture) : Boolean
      {
         return true;
      }
      
      public function canPreventGesture(param1:Gesture) : Boolean
      {
         return true;
      }
      
      public function requireGestureToFail(param1:Gesture) : void
      {
         if(!param1)
         {
            throw new ArgumentError();
         }
         this._gesturesToFail[param1] = true;
      }
      
      protected function preinit() : void
      {
      }
      
      protected function installTarget(param1:Object) : void
      {
         if(param1)
         {
            this._gesturesManager.addGesture(this);
         }
      }
      
      protected function uninstallTarget(param1:Object) : void
      {
         if(param1)
         {
            this._gesturesManager.removeGesture(this);
         }
      }
      
      protected function ignoreTouch(param1:Touch) : void
      {
         if(this._touchesMap.hasOwnProperty(param1.id))
         {
            delete this._touchesMap[param1.id];
            --this._touchesCount;
         }
      }
      
      protected function failOrIgnoreTouch(param1:Touch) : void
      {
         if(this.state == GestureState.POSSIBLE)
         {
            this.setState(GestureState.FAILED);
         }
         else if(this.state != GestureState.IDLE)
         {
            this.ignoreTouch(param1);
         }
      }
      
      [Abstract]
      protected function onTouchBegin(param1:Touch) : void
      {
      }
      
      [Abstract]
      protected function onTouchMove(param1:Touch) : void
      {
      }
      
      [Abstract]
      protected function onTouchEnd(param1:Touch) : void
      {
      }
      
      protected function onTouchCancel(param1:Touch) : void
      {
      }
      
      protected function setState(param1:GestureState) : Boolean
      {
         var _loc3_:Gesture = null;
         var _loc4_:* = undefined;
         if(this._state == param1 && this._state == GestureState.CHANGED)
         {
            if(hasEventListener(org.gestouch.events.GestureEvent.GESTURE_STATE_CHANGE))
            {
               dispatchEvent(new org.gestouch.events.GestureEvent(org.gestouch.events.GestureEvent.GESTURE_STATE_CHANGE,this._state,this._state));
            }
            if(hasEventListener(org.gestouch.events.GestureEvent.GESTURE_CHANGED))
            {
               dispatchEvent(new org.gestouch.events.GestureEvent(org.gestouch.events.GestureEvent.GESTURE_CHANGED,this._state,this._state));
            }
            this.resetNotificationProperties();
            return true;
         }
         if(!this._state.canTransitionTo(param1))
         {
            throw new IllegalOperationError("You cannot change from state " + this._state + " to state " + param1 + ".");
         }
         if(param1 == GestureState.BEGAN || param1 == GestureState.RECOGNIZED)
         {
            for(_loc4_ in this._gesturesToFail)
            {
               _loc3_ = _loc4_ as Gesture;
               if(_loc3_.state != GestureState.IDLE && _loc3_.state != GestureState.POSSIBLE && _loc3_.state != GestureState.FAILED)
               {
                  this.setState(GestureState.FAILED);
                  return false;
               }
            }
            for(_loc4_ in this._gesturesToFail)
            {
               _loc3_ = _loc4_ as Gesture;
               if(_loc3_.state == GestureState.POSSIBLE)
               {
                  this._pendingRecognizedState = param1;
                  for(_loc4_ in this._gesturesToFail)
                  {
                     _loc3_ = _loc4_ as Gesture;
                     _loc3_.addEventListener(org.gestouch.events.GestureEvent.GESTURE_STATE_CHANGE,this.gestureToFail_stateChangeHandler,false,0,true);
                  }
                  return false;
               }
            }
            if(Boolean(this.delegate) && !this.delegate.gestureShouldBegin(this))
            {
               this.setState(GestureState.FAILED);
               return false;
            }
         }
         var _loc2_:GestureState = this._state;
         this._state = param1;
         if(this._state.isEndState)
         {
            this._gesturesManager.scheduleGestureStateReset(this);
         }
         if(hasEventListener(org.gestouch.events.GestureEvent.GESTURE_STATE_CHANGE))
         {
            dispatchEvent(new org.gestouch.events.GestureEvent(org.gestouch.events.GestureEvent.GESTURE_STATE_CHANGE,this._state,_loc2_));
         }
         if(hasEventListener(this._state.toEventType()))
         {
            dispatchEvent(new org.gestouch.events.GestureEvent(this._state.toEventType(),this._state,_loc2_));
         }
         this.resetNotificationProperties();
         if(this._state == GestureState.BEGAN || this._state == GestureState.RECOGNIZED)
         {
            this._gesturesManager.onGestureRecognized(this);
         }
         return true;
      }
      
      gestouch_internal function setState_internal(param1:GestureState) : void
      {
         this.setState(param1);
      }
      
      protected function updateCentralPoint() : void
      {
         var _loc1_:Point = null;
         var _loc4_:String = null;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         for(_loc4_ in this._touchesMap)
         {
            _loc1_ = (this._touchesMap[int(_loc4_)] as Touch).location;
            _loc2_ += _loc1_.x;
            _loc3_ += _loc1_.y;
         }
         this._centralPoint.x = _loc2_ / this._touchesCount;
         this._centralPoint.y = _loc3_ / this._touchesCount;
      }
      
      protected function updateLocation() : void
      {
         this.updateCentralPoint();
         this._location.x = this._centralPoint.x;
         this._location.y = this._centralPoint.y;
      }
      
      protected function resetNotificationProperties() : void
      {
      }
      
      gestouch_internal function touchBeginHandler(param1:Touch) : void
      {
         this._touchesMap[param1.id] = param1;
         var _loc2_:Gesture = this;
         var _loc3_:Number = _loc2_._touchesCount + 1;
         _loc2_._touchesCount = _loc3_;
         this.onTouchBegin(param1);
         if(this._touchesCount == 1 && this.state == GestureState.IDLE)
         {
            this.setState(GestureState.POSSIBLE);
         }
      }
      
      gestouch_internal function touchMoveHandler(param1:Touch) : void
      {
         this._touchesMap[param1.id] = param1;
         this.onTouchMove(param1);
      }
      
      gestouch_internal function touchEndHandler(param1:Touch) : void
      {
         delete this._touchesMap[param1.id];
         --this._touchesCount;
         this.onTouchEnd(param1);
      }
      
      gestouch_internal function touchCancelHandler(param1:Touch) : void
      {
         delete this._touchesMap[param1.id];
         --this._touchesCount;
         this.onTouchCancel(param1);
         if(!this.state.isEndState)
         {
            if(this.state == GestureState.BEGAN || this.state == GestureState.CHANGED)
            {
               this.setState(GestureState.CANCELLED);
            }
            else
            {
               this.setState(GestureState.FAILED);
            }
         }
      }
      
      protected function gestureToFail_stateChangeHandler(param1:org.gestouch.events.GestureEvent) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Gesture = null;
         if(!this._pendingRecognizedState || this.state != GestureState.POSSIBLE)
         {
            return;
         }
         if(param1.newState == GestureState.FAILED)
         {
            for(_loc2_ in this._gesturesToFail)
            {
               _loc3_ = _loc2_ as Gesture;
               if(_loc3_.state == GestureState.POSSIBLE)
               {
                  return;
               }
            }
            this.setState(this._pendingRecognizedState);
         }
         else if(param1.newState != GestureState.IDLE && param1.newState != GestureState.POSSIBLE)
         {
            this.setState(GestureState.FAILED);
         }
      }
   }
}

