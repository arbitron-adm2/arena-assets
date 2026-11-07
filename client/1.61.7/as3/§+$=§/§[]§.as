package §+$=§
{
   import § !8§.§`!d§;
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §"$+§.*;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§'$T§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+#U§.§'#w§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§>&&§;
   import §0%z§.BossAchieveHint;
   import §2"L§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.§"&B§;
   import §5%S§.§>&-§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §=#g§.§&%5§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?>§.§0!7§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import com.greensock.loading.core.LoaderCore;
   import com.inreflected.ui.touchScroll.ThrowEffect;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §[]§
   {
      
      protected var §2!u§:String;
      
      public var §>c§:String;
      
      protected var § $b§:Vector.<String>;
      
      protected var context:LoaderContext;
      
      private var §3%M§:§`$v§;
      
      protected var §'%@§:LoaderMax;
      
      private var §4!4§:Vector.<LoaderMax> = new Vector.<LoaderMax>(0);
      
      protected var §]$W§:Vector.<§+&§> = new Vector.<§+&§>(0);
      
      public function §[]§(param1:String, param2:String, param3:Vector.<String>, param4:LoaderContext)
      {
         super();
         this.§2!u§ = param1;
         this.§>c§ = param2;
         this.§ $b§ = param3;
         this.context = param4;
      }
      
      public function load(param1:Function, param2:Function, param3:Object = null, param4:Boolean = false) : void
      {
         var _loc5_:Object = {
            "onError":param2,
            "onComplete":param1
         };
         this.§3%M§ = new §`$v§(this.§2!u§,this.§>c§,this.§ $b§);
         this.§3%M§.addEventListener(Event.COMPLETE,§1%"§.§]$<§(this.§6!7§,this,[_loc5_,param3 || {},param4],true));
         this.§3%M§.addEventListener(§9"%§.LOAD_ERROR,§1%"§.§]$<§(this.§;#F§,this,[_loc5_],true));
         this.§3%M§.load();
      }
      
      private function §6!7§(param1:Event, param2:Object, param3:Object, param4:Boolean) : void
      {
         var _loc7_:§+&§ = null;
         var _loc5_:Vector.<§+&§> = this.§3%M§.§3"'§();
         var _loc6_:Vector.<§+&§> = new Vector.<§+&§>(0);
         for each(_loc7_ in _loc5_)
         {
            this.§%$"§(_loc7_,param3);
            if(!_loc7_.§6^§)
            {
               _loc6_.push(_loc7_);
            }
         }
         this.§3%M§.destroy();
         this.§3%M§ = null;
         this.§[&6§(_loc6_,param2.onComplete,param2.onError,param4);
      }
      
      protected function §;#F§(param1:§9"%§, param2:Object) : void
      {
         param2.onError(param1);
         this.§3%M§.destroy();
         this.§3%M§ = null;
      }
      
      protected function §%$"§(param1:§+&§, param2:Object) : void
      {
         var _loc3_:Object = param2[param1.name];
         if(_loc3_)
         {
            if(_loc3_.lazy)
            {
               param1.§6^§ = _loc3_.lazy;
            }
            if(_loc3_.path)
            {
               param1.§#""§ = _loc3_.path;
            }
         }
         if(param2.pathParams)
         {
            param1.§#""§ = §0%§.format(param1.§#""§,param2.pathParams);
         }
         if(param1.§6^§)
         {
            this.§+"i§("lazy library detected " + param1.name);
            this.§]$W§.push(param1);
         }
      }
      
      protected function §[&6§(param1:Vector.<§+&§>, param2:Function, param3:Function, param4:Boolean) : void
      {
         var _loc5_:§+&§ = null;
         var _loc7_:Vector.<§+&§> = null;
         var _loc8_:LoaderMax = null;
         var _loc9_:Boolean = false;
         var _loc6_:Object = {
            "onComplete":param2,
            "onError":param3
         };
         if(param4)
         {
            for each(_loc5_ in param1)
            {
               if(!this.§3$ §(_loc5_,ApplicationDomain.currentDomain,_loc6_))
               {
                  return;
               }
            }
            param2();
         }
         else
         {
            if(!this.§'%@§)
            {
               this.§'%@§ = new LoaderMax({
                  "auditSize":false,
                  "maxConnections":2,
                  "onProgress":this.§8%N§
               });
            }
            _loc7_ = new Vector.<§+&§>(0);
            _loc8_ = new LoaderMax();
            _loc8_.addEventListener(LoaderEvent.COMPLETE,§1%"§.§]$<§(this.§>%T§,this,[_loc8_,_loc7_,_loc6_],true));
            _loc8_.addEventListener(LoaderEvent.ERROR,§1%"§.§]$<§(this.errorHandler,this,[_loc8_,_loc7_,_loc6_],true));
            _loc9_ = true;
            for each(_loc5_ in param1)
            {
               this.§=!'§(_loc8_,_loc5_);
               _loc7_.push(_loc5_);
               if(!_loc5_.§[%o§())
               {
                  _loc9_ = false;
               }
            }
            if(_loc9_)
            {
               this.§4!4§.push(_loc8_);
            }
            else
            {
               this.§`$3§();
            }
            this.§+"i§("start loading " + param1.length + " libraries");
            this.§'%@§.append(_loc8_);
            this.§'%@§.load();
         }
      }
      
      protected function §3$ §(param1:§+&§, param2:ApplicationDomain, param3:Object) : Boolean
      {
         var _loc4_:§;!d§ = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         for each(_loc4_ in param1.§=!=§)
         {
            _loc5_ = (param1.ns == null ? "" : param1.ns) + _loc4_.§+"]§();
            if(param2.hasDefinition(_loc5_))
            {
               _loc4_.§6&6§(param2.getDefinition(_loc5_) as Class);
               this.§,!e§(_loc4_);
            }
            else
            {
               if(!param2.hasDefinition("ru.pragmatix.wormix.data." + _loc4_.§+"]§()))
               {
                  _loc6_ = "Class " + _loc5_ + " not found in library " + param1.§#""§;
                  this.log.error(_loc6_);
                  param3.onError(new §9"%§(_loc6_));
                  return false;
               }
               _loc4_.§6&6§(param2.getDefinition("ru.pragmatix.wormix.data." + _loc4_.§+"]§()) as Class);
               this.§,!e§(_loc4_);
            }
         }
         return true;
      }
      
      protected function §=!'§(param1:LoaderMax, param2:§+&§) : void
      {
         var _loc3_:int = param2.estimatedBytes == 0 ? 20000 : param2.estimatedBytes;
         if(param2.§#""§)
         {
            this.§+"i§("add resource: [" + param2.§#""§ + "] to load queue, estimatedBytes:=" + _loc3_);
            param1.append(new SWFLoader(param2.§2!u§ + param2.§#""§,{
               "name":param2.§?;§,
               "estimatedBytes":_loc3_,
               "autoPlay":false,
               "alternateURL":param2.§%%$§ + param2.§#""§
            }));
         }
         else
         {
            this.log.§3"l§("library \'" + param2.name + "\' path is null");
         }
      }
      
      protected function §`f§(param1:LoaderEvent, param2:Vector.<§+&§>, param3:Object) : void
      {
         var library:§+&§ = null;
         var name:String = null;
         var clip:MovieClip = null;
         var event:LoaderEvent = param1;
         var libs:Vector.<§+&§> = param2;
         var loadParams:Object = param3;
         this.§+"i§("start parsing swf");
         try
         {
            for each(library in libs)
            {
               this.§+"i§("try to parse library " + library.§#""§);
               name = library.§?;§;
               if(LoaderMax.getLoader(name) == null)
               {
                  this.log.§3"l§("can\'t get loader by path: " + library.§#""§);
                  return;
               }
               clip = LoaderMax.getLoader(name).rawContent;
               if(clip == null)
               {
                  this.log.§3"l§("can\'t get clip by path: " + library.§#""§);
                  return;
               }
               this.§+"i§("parse swf path = " + library.§#""§);
               if(!this.§3$ §(library,clip.loaderInfo.applicationDomain,loadParams))
               {
                  return;
               }
            }
         }
         catch(e:Object)
         {
            §§push(e);
            var _temp_1:* = e;
            e = §§pop();
            log.error("error: " + e.toString());
            loadParams.onError(new §9"%§());
         }
      }
      
      protected function §>%T§(param1:LoaderEvent, param2:LoaderMax, param3:Vector.<§+&§>, param4:Object) : void
      {
         this.§+"i§("loading " + param3.length + "  libraries complete");
         this.§`f§(param1,param3,param4);
         §>&&§.remove(this.§4!4§,param2);
         this.§1#r§(param2);
         param4.onComplete();
         this.§[#§();
      }
      
      protected function §8%N§(param1:LoaderEvent) : void
      {
      }
      
      private function errorHandler(param1:LoaderEvent, param2:LoaderMax, param3:Vector.<§+&§>, param4:Object) : void
      {
         this.§[#§();
         this.log.warn("load error occured url \'" + param1.target.url + "\' : " + param1.toString());
         if(LoaderCore(param1.target).status == LoaderStatus.FAILED)
         {
            this.log.§3"l§("load failed url \'" + param1.target.url + "\' : " + param1.toString());
            this.§1#r§(param2);
            param4.onError(new §9"%§(param1.text));
         }
      }
      
      protected function §1#r§(param1:LoaderMax) : void
      {
         this.§'%@§.remove(param1);
         param1.dispose(true);
      }
      
      protected function §+"i§(param1:String) : void
      {
         this.log.§[x§(param1,"RES_LOAD");
      }
      
      protected function §,!e§(param1:§;!d§) : void
      {
      }
      
      protected function §`$3§() : void
      {
         var _loc1_:LoaderMax = null;
         for each(_loc1_ in this.§4!4§)
         {
            if(_loc1_.status == LoaderStatus.LOADING || _loc1_.status == LoaderStatus.READY)
            {
               _loc1_.pause();
               this.§+"i§("suspend sound loader \'" + _loc1_.name + "\'");
            }
         }
      }
      
      protected function §[#§() : void
      {
         var _loc1_:LoaderMax = null;
         for each(_loc1_ in this.§4!4§)
         {
            if(_loc1_.status == LoaderStatus.PAUSED)
            {
               _loc1_.resume();
               this.§+"i§("resume sound loader \'" + _loc1_.name + "\'");
            }
         }
      }
      
      protected function get log() : §&`§
      {
         return null;
      }
   }
}

