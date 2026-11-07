package com.greensock.loading
{
   import § #9§.§"$t§;
   import § &5§.§%$O§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"% §.LevelUpDialog;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §&x§.§8$5§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§"$7§;
   import §+%S§.§[&;§;
   import §,!f§.*;
   import §-%B§.*;
   import §-8§.*;
   import §-G§.*;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §5%S§.§>&-§;
   import §6"'§.*;
   import §6",§.§[%w§;
   import §6$0§.§![§;
   import §6$0§.§%$z§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §8#a§.*;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%k§.*;
   import §<%k§.§`!v§;
   import §=!p§.§1%?§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§-!Y§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §`%&§.§5$1§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§&$d§;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class XMLLoader extends DataLoader
   {
      
      private static var _classActivated:Boolean = _activateClass("XMLLoader",XMLLoader,"xml,php,jsp,asp,cfm,cfml,aspx");
      
      protected static var _varTypes:Object = {
         "skipFailed":true,
         "skipPaused":true,
         "paused":false,
         "load":false,
         "noCache":false,
         "maxConnections":2,
         "autoPlay":false,
         "autoDispose":false,
         "smoothing":false,
         "estimatedBytes":1,
         "x":1,
         "y":1,
         "width":1,
         "height":1,
         "scaleX":1,
         "scaleY":1,
         "rotation":1,
         "alpha":1,
         "visible":true,
         "bgColor":0,
         "bgAlpha":0,
         "deblocking":1,
         "repeat":1,
         "checkPolicyFile":false,
         "centerRegistration":false,
         "bufferTime":5,
         "volume":1,
         "bufferMode":false,
         "estimatedDuration":200,
         "crop":false,
         "autoAdjustBuffer":true
      };
      
      public static var RAW_LOAD:String = "rawLoad";
      
      protected var _initted:Boolean;
      
      protected var _parsed:LoaderMax;
      
      protected var _loadingQueue:LoaderMax;
      
      public function XMLLoader(param1:*, param2:Object = null)
      {
         super(param1,param2);
         _preferEstimatedBytesInAudit = true;
         _type = "XMLLoader";
         _loader.dataFormat = "text";
      }
      
      public static function parseLoaders(param1:XML, param2:LoaderMax, param3:LoaderMax = null) : void
      {
         var _loc4_:LoaderCore = null;
         var _loc5_:LoaderMax = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:Class = null;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         for each(_loc10_ in param1.children())
         {
            _loc6_ = String(_loc10_.name()).toLowerCase();
            if(_loc6_ == "loadermax")
            {
               _loc5_ = param2.append(new LoaderMax(_parseVars(_loc10_))) as LoaderMax;
               if(param3 != null && Boolean(_loc5_.vars.load))
               {
                  param3.append(_loc5_);
               }
               parseLoaders(_loc10_,_loc5_,param3);
               if("replaceURLText" in _loc5_.vars)
               {
                  _loc7_ = _loc5_.vars.replaceURLText.split(",");
                  _loc9_ = 0;
                  while(_loc9_ < _loc7_.length)
                  {
                     _loc5_.replaceURLText(_loc7_[_loc9_],_loc7_[_loc9_ + 1],false);
                     _loc9_ += 2;
                  }
               }
               if("prependURLs" in _loc5_.vars)
               {
                  _loc5_.prependURLs(_loc5_.vars.prependURLs,false);
               }
            }
            else
            {
               if(_loc6_ in _types)
               {
                  _loc8_ = _types[_loc6_];
                  _loc4_ = param2.append(new _loc8_(_loc10_.@url,_parseVars(_loc10_)));
                  if(param3 != null && Boolean(_loc4_.vars.load))
                  {
                     param3.append(_loc4_);
                  }
               }
               parseLoaders(_loc10_,param2,param3);
            }
         }
      }
      
      protected static function _parseVars(param1:XML) : Object
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:ApplicationDomain = null;
         var _loc8_:XML = null;
         var _loc2_:Object = {};
         var _loc7_:XMLList = param1.attributes();
         for each(_loc8_ in _loc7_)
         {
            _loc3_ = _loc8_.name();
            _loc5_ = _loc8_.toString();
            if(_loc3_ != "url")
            {
               if(_loc3_ == "context")
               {
                  _loc2_.context = new LoaderContext(true,_loc5_ == "own" ? ApplicationDomain.currentDomain : (_loc5_ == "separate" ? new ApplicationDomain() : new ApplicationDomain(ApplicationDomain.currentDomain)),!_isLocal ? SecurityDomain.currentDomain : null);
               }
               else
               {
                  _loc4_ = typeof _varTypes[_loc3_];
                  if(_loc4_ == "boolean")
                  {
                     _loc2_[_loc3_] = Boolean(_loc5_ == "true" || _loc5_ == "1");
                  }
                  else if(_loc4_ == "number")
                  {
                     _loc2_[_loc3_] = Number(_loc5_);
                  }
                  else
                  {
                     _loc2_[_loc3_] = _loc5_;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function getContent(param1:String) : *
      {
         if(param1 == this.name || param1 == _url)
         {
            return _content;
         }
         var _loc2_:LoaderCore = this.getLoader(param1);
         return _loc2_ != null ? _loc2_.content : null;
      }
      
      override protected function _load() : void
      {
         if(!_initted)
         {
            _prepRequest();
            _loader.load(_request);
         }
         else if(_loadingQueue != null)
         {
            _changeQueueListeners(true);
            _loadingQueue.load(false);
         }
      }
      
      public function getLoader(param1:String) : *
      {
         return _parsed != null ? _parsed.getLoader(param1) : null;
      }
      
      override protected function _passThroughEvent(param1:Event) : void
      {
         if(param1.target != _loadingQueue)
         {
            super._passThroughEvent(param1);
         }
      }
      
      override public function get progress() : Number
      {
         return this.bytesTotal != 0 ? _cachedBytesLoaded / _cachedBytesTotal : (_status == LoaderStatus.COMPLETED || _initted ? 1 : 0);
      }
      
      override protected function _completeHandler(param1:Event = null) : void
      {
         _calculateProgress();
         if(this.progress == 1)
         {
            _changeQueueListeners(false);
            super._completeHandler(param1);
         }
      }
      
      public function getChildren(param1:Boolean = false, param2:Boolean = false) : Array
      {
         return _parsed != null ? _parsed.getChildren(param1,param2) : [];
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         if(_loadingQueue != null)
         {
            _changeQueueListeners(false);
            if(param1 == 0)
            {
               _loadingQueue.cancel();
            }
            else
            {
               _loadingQueue.dispose(Boolean(param1 == 3));
               _loadingQueue = null;
            }
         }
         if(param1 >= 1)
         {
            if(_parsed != null)
            {
               _parsed.dispose(Boolean(param1 == 3));
               _parsed = null;
            }
            _initted = false;
         }
         _cacheIsDirty = true;
         var _loc4_:* = _content;
         super._dump(param1,param2,param3);
         if(param1 == 0)
         {
            _content = _loc4_;
         }
      }
      
      override protected function _calculateProgress() : void
      {
         _cachedBytesLoaded = _loader.bytesLoaded;
         if(_loader.bytesTotal != 0)
         {
            _cachedBytesTotal = _loader.bytesTotal;
         }
         if(_cachedBytesTotal < _cachedBytesLoaded || _initted)
         {
            _cachedBytesTotal = _cachedBytesLoaded;
         }
         var _loc1_:uint = uint(this.vars.estimatedBytes);
         if(this.vars.integrateProgress != false)
         {
            if(_loadingQueue != null && (uint(this.vars.estimatedBytes) < _cachedBytesLoaded || _loadingQueue.auditedSize))
            {
               if(_loadingQueue.status <= LoaderStatus.COMPLETED)
               {
                  _cachedBytesLoaded += _loadingQueue.bytesLoaded;
                  _cachedBytesTotal += _loadingQueue.bytesTotal;
               }
            }
            else if(uint(this.vars.estimatedBytes) > _cachedBytesLoaded && (!_initted || _loadingQueue != null && _loadingQueue.status <= LoaderStatus.COMPLETED && !_loadingQueue.auditedSize))
            {
               _cachedBytesTotal = uint(this.vars.estimatedBytes);
            }
         }
         if(!_initted && _cachedBytesLoaded == _cachedBytesTotal)
         {
            _cachedBytesLoaded = int(_cachedBytesLoaded * 0.99);
         }
         _cacheIsDirty = false;
      }
      
      override protected function _receiveDataHandler(param1:Event) : void
      {
         var event:Event = param1;
         try
         {
            _content = new XML(_loader.data);
         }
         catch(error:Error)
         {
            _content = _loader.data;
            _failHandler(new LoaderEvent(LoaderEvent.ERROR,this,error.message));
            return;
         }
         dispatchEvent(new LoaderEvent(RAW_LOAD,this,"",_content));
         _initted = true;
         _loadingQueue = new LoaderMax({"name":this.name + "_Queue"});
         _parsed = new LoaderMax({
            "name":this.name + "_ParsedLoaders",
            "paused":true
         });
         parseLoaders(_content as XML,_parsed,_loadingQueue);
         if(_parsed.numChildren == 0)
         {
            _parsed.dispose(false);
            _parsed = null;
         }
         if(_loadingQueue.getChildren(true,true).length == 0)
         {
            _loadingQueue.empty(false);
            _loadingQueue.dispose(false);
            _loadingQueue = null;
         }
         else
         {
            _cacheIsDirty = true;
            _changeQueueListeners(true);
            _loadingQueue.load(false);
         }
         dispatchEvent(new LoaderEvent(LoaderEvent.INIT,this,"",_content));
         if(_loadingQueue == null || this.vars.integrateProgress == false)
         {
            _completeHandler(event);
         }
      }
      
      protected function _changeQueueListeners(param1:Boolean) : void
      {
         var _loc2_:String = null;
         if(_loadingQueue != null)
         {
            if(param1 && this.vars.integrateProgress != false)
            {
               _loadingQueue.addEventListener(LoaderEvent.COMPLETE,_completeHandler,false,0,true);
               _loadingQueue.addEventListener(LoaderEvent.PROGRESS,_progressHandler,false,0,true);
               _loadingQueue.addEventListener(LoaderEvent.FAIL,_failHandler,false,0,true);
               for(_loc2_ in _listenerTypes)
               {
                  if(_loc2_ != "onProgress" && _loc2_ != "onInit")
                  {
                     _loadingQueue.addEventListener(_listenerTypes[_loc2_],_passThroughEvent,false,0,true);
                  }
               }
            }
            else
            {
               _loadingQueue.removeEventListener(LoaderEvent.COMPLETE,_completeHandler);
               _loadingQueue.removeEventListener(LoaderEvent.PROGRESS,_progressHandler);
               _loadingQueue.removeEventListener(LoaderEvent.FAIL,_failHandler);
               for(_loc2_ in _listenerTypes)
               {
                  if(_loc2_ != "onProgress" && _loc2_ != "onInit")
                  {
                     _loadingQueue.removeEventListener(_listenerTypes[_loc2_],_passThroughEvent);
                  }
               }
            }
         }
      }
      
      override protected function _progressHandler(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
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
}

