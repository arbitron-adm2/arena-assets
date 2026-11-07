package com.greensock.loading
{
   import § !8§.§`!d§;
   import § !P§.§9%Z§;
   import § !P§.§<#q§;
   import § &5§.§%$O§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §#"V§.§<"4§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&#h§.§,#;§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+$&§.§&8§;
   import §+$&§.§+"g§;
   import §+$&§.§@#t§;
   import §+$=§.§6#A§;
   import §+%S§.*;
   import §,#A§.§-$b§;
   import §,$J§.§0%G§;
   import §-%B§.*;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%j§.*;
   import §0%z§.§&%&§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §2!-§.§^!9§;
   import §2#H§.§,"R§;
   import §3#a§.§-#M§;
   import §4!!§.§#Z§;
   import §4!!§.§[%@§;
   import §4$b§.*;
   import §4'§.§`"q§;
   import §4B§.§=%8§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §6%2§.§'"Y§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §8#o§.§1@§;
   import §8$Z§.§@!P§;
   import §9![§.§#$k§;
   import §9%W§.§&!P§;
   import §9&+§.§>&5§;
   import §<"?§.*;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §="z§.*;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §>$q§.§4#;§;
   import §?$7§.§+#N§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.ArchivistSeal;
   import §["3§.§-%q§;
   import §["3§.§?%Q§;
   import §["3§.§@%^§;
   import §[%'§.§<"G§;
   import §]^§.§5" §;
   import §^#[§.§&$2§;
   import §`%&§.§,%§;
   import com.greensock.core.TweenCore;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.DisplayObjectLoader;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.AVM1Movie;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.extensions.native.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.BossBattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class SWFLoader extends DisplayObjectLoader
   {
      
      private static var _classActivated:Boolean = _activateClass("SWFLoader",SWFLoader,"swf");
      
      protected var _queue:LoaderMax;
      
      protected var _loaderFailed:Boolean;
      
      protected var _rslAddedCount:uint;
      
      protected var _loadOnExitStealth:Boolean;
      
      protected var _hasRSL:Boolean;
      
      protected var _loaderCompleted:Boolean;
      
      public function SWFLoader(param1:*, param2:Object = null)
      {
         super(param1,param2);
         _preferEstimatedBytesInAudit = true;
         _type = "SWFLoader";
      }
      
      override public function set url(param1:String) : void
      {
         if(_url != param1)
         {
            if(_status == LoaderStatus.LOADING && !_initted && !_loaderFailed)
            {
               _loadOnExitStealth = true;
            }
            super.url = param1;
         }
      }
      
      override protected function _determineScriptAccess() : void
      {
         var mc:DisplayObject = null;
         try
         {
            mc = _loader.content;
         }
         catch(error:Error)
         {
            _scriptAccessDenied = true;
            dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,error.message));
            return;
         }
         if(_loader.content is AVM1Movie)
         {
            _scriptAccessDenied = true;
            dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,"AVM1Movie denies script access"));
         }
      }
      
      override protected function _load() : void
      {
         if(_stealthMode)
         {
            _stealthMode = _loadOnExitStealth;
         }
         else if(!_initted)
         {
            super._load();
         }
         else if(_queue != null)
         {
            _changeQueueListeners(true);
            _queue.load(false);
         }
      }
      
      public function getClass(param1:String) : Class
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         if(_content == null || _scriptAccessDenied)
         {
            return null;
         }
         var _loc2_:Object = _content.loaderInfo.applicationDomain.getDefinition(param1);
         if(_loc2_ != null)
         {
            return _loc2_ as Class;
         }
         if(_queue != null)
         {
            _loc3_ = _queue.getChildren(true,true);
            _loc4_ = int(_loc3_.length);
            while(--_loc4_ > -1)
            {
               if(_loc3_[_loc4_] is SWFLoader)
               {
                  _loc2_ = (_loc3_[_loc4_] as SWFLoader).getClass(param1);
                  if(_loc2_ != null)
                  {
                     return _loc2_ as Class;
                  }
               }
            }
         }
         return null;
      }
      
      public function getContent(param1:String) : *
      {
         if(param1 == this.name || param1 == _url)
         {
            return this.content;
         }
         var _loc2_:LoaderCore = this.getLoader(param1);
         return _loc2_ != null ? _loc2_.content : null;
      }
      
      override protected function _failHandler(param1:Event) : void
      {
         if((param1.type == "ioError" || param1.type == "securityError") && param1.target == _loader.contentLoaderInfo)
         {
            _loaderFailed = true;
            if(_loadOnExitStealth)
            {
               _dump(1,_status,true);
               _load();
               return;
            }
         }
         super._failHandler(param1);
      }
      
      override protected function _refreshLoader(param1:Boolean = true) : void
      {
         super._refreshLoader(param1);
         _loaderCompleted = false;
      }
      
      public function getLoader(param1:String) : *
      {
         return _queue != null ? _queue.getLoader(param1) : null;
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var content:* = undefined;
         var scrubLevel:int = param1;
         var newStatus:int = param2;
         var suppressEvents:Boolean = param3;
         _loaderCompleted = false;
         if(_status == LoaderStatus.LOADING && !_initted && !_loaderFailed)
         {
            _stealthMode = true;
            super._dump(scrubLevel,newStatus,suppressEvents);
            return;
         }
         if(_initted && !_scriptAccessDenied && scrubLevel != 2)
         {
            _stopMovieClips(_loader.content);
            if(_loader.content in _rootLookup)
            {
               _queue = LoaderMax(_rootLookup[_loader.content]);
               _changeQueueListeners(false);
               if(scrubLevel == 0)
               {
                  _queue.cancel();
               }
               else
               {
                  _queue.dispose(Boolean(scrubLevel == 1 || scrubLevel == 3));
               }
            }
         }
         if(_stealthMode)
         {
            try
            {
               _loader.close();
            }
            catch(error:Error)
            {
            }
         }
         _loadOnExitStealth = false;
         _stealthMode = _hasRSL = _loaderFailed = false;
         _cacheIsDirty = true;
         if(scrubLevel >= 1)
         {
            _queue = null;
            _initted = false;
            super._dump(scrubLevel,newStatus,suppressEvents);
         }
         else
         {
            content = _content;
            super._dump(scrubLevel,newStatus,suppressEvents);
            _content = content;
         }
      }
      
      protected function _stopMovieClips(param1:DisplayObject) : void
      {
         var _loc2_:MovieClip = param1 as MovieClip;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.stop();
         var _loc3_:int = _loc2_.numChildren;
         while(--_loc3_ > -1)
         {
            _stopMovieClips(_loc2_.getChildAt(_loc3_));
         }
      }
      
      protected function _checkRequiredLoaders() : void
      {
         if(_queue == null && this.vars.integrateProgress != false && !_scriptAccessDenied && _content != null)
         {
            _queue = _rootLookup[_content];
            if(_queue != null)
            {
               _changeQueueListeners(true);
               _queue.load(false);
               _cacheIsDirty = true;
            }
         }
      }
      
      override protected function _completeHandler(param1:Event = null) : void
      {
         var _loc2_:SoundTransform = null;
         _loaderCompleted = true;
         _checkRequiredLoaders();
         _calculateProgress();
         if(this.progress == 1)
         {
            if(!_scriptAccessDenied && this.vars.autoPlay == false && _content is MovieClip)
            {
               _loc2_ = _content.soundTransform;
               _loc2_.volume = 1;
               _content.soundTransform = _loc2_;
            }
            _changeQueueListeners(false);
            super._determineScriptAccess();
            super._completeHandler(param1);
         }
      }
      
      protected function _changeQueueListeners(param1:Boolean) : void
      {
         var _loc2_:String = null;
         if(_queue != null)
         {
            if(param1 && this.vars.integrateProgress != false)
            {
               _queue.addEventListener(LoaderEvent.COMPLETE,_completeHandler,false,0,true);
               _queue.addEventListener(LoaderEvent.PROGRESS,_progressHandler,false,0,true);
               _queue.addEventListener(LoaderEvent.FAIL,_failHandler,false,0,true);
               for(_loc2_ in _listenerTypes)
               {
                  if(_loc2_ != "onProgress" && _loc2_ != "onInit")
                  {
                     _queue.addEventListener(_listenerTypes[_loc2_],_passThroughEvent,false,0,true);
                  }
               }
            }
            else
            {
               _queue.removeEventListener(LoaderEvent.COMPLETE,_completeHandler);
               _queue.removeEventListener(LoaderEvent.PROGRESS,_progressHandler);
               _queue.removeEventListener(LoaderEvent.FAIL,_failHandler);
               for(_loc2_ in _listenerTypes)
               {
                  if(_loc2_ != "onProgress" && _loc2_ != "onInit")
                  {
                     _queue.removeEventListener(_listenerTypes[_loc2_],_passThroughEvent);
                  }
               }
            }
         }
      }
      
      override protected function _initHandler(param1:Event) : void
      {
         var awaitingLoad:Boolean = false;
         var tempContent:DisplayObject = null;
         var className:String = null;
         var rslPreloader:Object = null;
         var event:Event = param1;
         if(_stealthMode)
         {
            _initted = true;
            awaitingLoad = _loadOnExitStealth;
            _dump(1,_status,true);
            if(awaitingLoad)
            {
               _load();
            }
            return;
         }
         _hasRSL = false;
         try
         {
            tempContent = _loader.content;
            className = getQualifiedClassName(tempContent);
            if(className.substr(-13) == "__Preloader__")
            {
               rslPreloader = tempContent["__rslPreloader"];
               if(rslPreloader != null)
               {
                  className = getQualifiedClassName(rslPreloader);
                  if(className == "fl.rsl::RSLPreloader")
                  {
                     _hasRSL = true;
                     _rslAddedCount = 0;
                     tempContent.addEventListener(Event.ADDED,_rslAddedHandler);
                  }
               }
            }
         }
         catch(error:Error)
         {
         }
         if(!_hasRSL)
         {
            _init();
         }
      }
      
      protected function _rslAddedHandler(param1:Event) : void
      {
         if(param1.target is DisplayObject && param1.currentTarget is DisplayObjectContainer && param1.target.parent == param1.currentTarget)
         {
            var _loc2_:* = §§findproperty(_rslAddedCount);
            var _loc3_:Number = _loc2_._rslAddedCount + 1;
            _loc2_._rslAddedCount = _loc3_;
         }
         if(_rslAddedCount > 1)
         {
            param1.currentTarget.removeEventListener(Event.ADDED,_rslAddedHandler);
            if(_status == LoaderStatus.LOADING)
            {
               _content = param1.target;
               _init();
               _calculateProgress();
               dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
               _completeHandler(null);
            }
         }
      }
      
      override protected function _passThroughEvent(param1:Event) : void
      {
         if(param1.target != _queue)
         {
            super._passThroughEvent(param1);
         }
      }
      
      override protected function _progressHandler(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         if(_status == LoaderStatus.LOADING)
         {
            if(_queue == null && _initted)
            {
               _checkRequiredLoaders();
            }
            if(_dispatchProgress)
            {
               _loc2_ = _cachedBytesLoaded;
               _loc3_ = _cachedBytesTotal;
               _calculateProgress();
               if(_cachedBytesLoaded != _cachedBytesTotal && (_loc2_ != _cachedBytesLoaded || _loc3_ != _cachedBytesTotal))
               {
                  dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
               }
            }
            else
            {
               _cacheIsDirty = true;
            }
         }
      }
      
      protected function _init() : void
      {
         var _loc1_:SoundTransform = null;
         _determineScriptAccess();
         if(!_scriptAccessDenied)
         {
            if(!_hasRSL)
            {
               _content = _loader.content;
            }
            if(_content != null)
            {
               if(this.vars.autoPlay == false && _content is MovieClip)
               {
                  _loc1_ = _content.soundTransform;
                  _loc1_.volume = 0;
                  _content.soundTransform = _loc1_;
                  _content.stop();
               }
               _checkRequiredLoaders();
            }
         }
         else
         {
            _content = _loader;
         }
         super._initHandler(null);
      }
      
      override protected function _calculateProgress() : void
      {
         _cachedBytesLoaded = _stealthMode ? 0 : _loader.contentLoaderInfo.bytesLoaded;
         if(_loader.contentLoaderInfo.bytesTotal != 0)
         {
            _cachedBytesTotal = _loader.contentLoaderInfo.bytesTotal;
         }
         if(_cachedBytesTotal < _cachedBytesLoaded || _loaderCompleted)
         {
            _cachedBytesTotal = _cachedBytesLoaded;
         }
         if(this.vars.integrateProgress != false)
         {
            if(_queue != null && (uint(this.vars.estimatedBytes) < _cachedBytesLoaded || _queue.auditedSize))
            {
               if(_queue.status <= LoaderStatus.COMPLETED)
               {
                  _cachedBytesLoaded += _queue.bytesLoaded;
                  _cachedBytesTotal += _queue.bytesTotal;
               }
            }
            else if(uint(this.vars.estimatedBytes) > _cachedBytesLoaded && (!_initted || _queue != null && _queue.status <= LoaderStatus.COMPLETED && !_queue.auditedSize))
            {
               _cachedBytesTotal = uint(this.vars.estimatedBytes);
            }
         }
         if(_hasRSL && _content == null || !_initted && _cachedBytesLoaded == _cachedBytesTotal)
         {
            _cachedBytesLoaded = int(_cachedBytesLoaded * 0.99);
         }
         _cacheIsDirty = false;
      }
      
      public function getChildren(param1:Boolean = false, param2:Boolean = false) : Array
      {
         return _queue != null ? _queue.getChildren(param1,param2) : [];
      }
      
      public function getSWFChild(param1:String) : DisplayObject
      {
         return !_scriptAccessDenied && _content is DisplayObjectContainer ? DisplayObjectContainer(_content).getChildByName(param1) : null;
      }
   }
}

