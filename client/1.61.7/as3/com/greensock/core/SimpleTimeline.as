package com.greensock.core
{
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#h§.§,#;§;
   import §&$Y§.§6[§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§6S§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0&F§.UpgradeEvent;
   import §2#H§.§^!J§;
   import §2o§.§]#;§;
   import §3"@§.§##L§;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §7$t§.§2"y§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!V§.§,#p§;
   import §=!V§.§8%u§;
   import §=!V§.§=!#§;
   import §=!V§.§^$&§;
   import §=!p§.§7#E§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §@!N§.§3!3§;
   import §["3§.CraftEquipInfoHint;
   import §[%'§.§<"G§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import com.greensock.loading.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import org.gestouch.extensions.native.*;
   import ru.inspirit.net.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class SimpleTimeline extends TweenCore
   {
      
      public var autoRemoveChildren:Boolean;
      
      protected var _lastChild:TweenCore;
      
      protected var _firstChild:TweenCore;
      
      public function SimpleTimeline(param1:Object = null)
      {
         super(0,param1);
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:TweenCore = null;
         var _loc4_:TweenCore = _firstChild;
         this.cachedTotalTime = param1;
         this.cachedTime = param1;
         while(_loc4_)
         {
            _loc6_ = _loc4_.nextNode;
            if(_loc4_.active || param1 >= _loc4_.cachedStartTime && !_loc4_.cachedPaused && !_loc4_.gc)
            {
               if(!_loc4_.cachedReversed)
               {
                  _loc4_.renderTime((param1 - _loc4_.cachedStartTime) * _loc4_.cachedTimeScale,param2,false);
               }
               else
               {
                  _loc5_ = _loc4_.cacheIsDirty ? _loc4_.totalDuration : _loc4_.cachedTotalDuration;
                  _loc4_.renderTime(_loc5_ - (param1 - _loc4_.cachedStartTime) * _loc4_.cachedTimeScale,param2,false);
               }
            }
            _loc4_ = _loc6_;
         }
      }
      
      public function addChild(param1:TweenCore) : void
      {
         if(!param1.cachedOrphan && Boolean(param1.timeline))
         {
            param1.timeline.remove(param1,true);
         }
         param1.timeline = this;
         if(param1.gc)
         {
            param1.setEnabled(true,true);
         }
         if(_firstChild)
         {
            _firstChild.prevNode = param1;
         }
         param1.nextNode = _firstChild;
         _firstChild = param1;
         param1.prevNode = null;
         param1.cachedOrphan = false;
      }
      
      public function remove(param1:TweenCore, param2:Boolean = false) : void
      {
         if(param1.cachedOrphan)
         {
            return;
         }
         if(!param2)
         {
            param1.setEnabled(false,true);
         }
         if(param1.nextNode)
         {
            param1.nextNode.prevNode = param1.prevNode;
         }
         else if(_lastChild == param1)
         {
            _lastChild = param1.prevNode;
         }
         if(param1.prevNode)
         {
            param1.prevNode.nextNode = param1.nextNode;
         }
         else if(_firstChild == param1)
         {
            _firstChild = param1.nextNode;
         }
         param1.cachedOrphan = true;
      }
      
      public function get rawTime() : Number
      {
         return this.cachedTotalTime;
      }
   }
}

