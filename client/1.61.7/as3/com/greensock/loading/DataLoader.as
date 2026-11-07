package com.greensock.loading
{
   import §!L§.§+"'§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §+%Q§.§#%9§;
   import §-8§.*;
   import §0%[§.§%"'§;
   import §0%[§.§9&#§;
   import §0%j§.*;
   import §1!J§.§@#%§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §8#`§.§#%r§;
   import §;$8§.§6"E§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §="z§.*;
   import §=&!§.§&$a§;
   import §=&!§.§<$Z§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class DataLoader extends LoaderItem
   {
      
      private static var _classActivated:Boolean = _activateClass("DataLoader",DataLoader,"txt,js");
      
      protected var _loader:URLLoader;
      
      public function DataLoader(param1:*, param2:Object = null)
      {
         super(param1,param2);
         _type = "DataLoader";
         _loader = new URLLoader(null);
         if("format" in this.vars)
         {
            _loader.dataFormat = String(this.vars.format);
         }
         _loader.addEventListener(ProgressEvent.PROGRESS,_progressHandler,false,0,true);
         _loader.addEventListener(Event.COMPLETE,_receiveDataHandler,false,0,true);
         _loader.addEventListener("ioError",_failHandler,false,0,true);
         _loader.addEventListener("securityError",_failHandler,false,0,true);
         _loader.addEventListener("httpStatus",_httpStatusHandler,false,0,true);
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var scrubLevel:int = param1;
         var newStatus:int = param2;
         var suppressEvents:Boolean = param3;
         if(_status == LoaderStatus.LOADING)
         {
            try
            {
               _loader.close();
            }
            catch(error:Error)
            {
            }
         }
         super._dump(scrubLevel,newStatus,suppressEvents);
      }
      
      override protected function _load() : void
      {
         _prepRequest();
         _loader.load(_request);
      }
      
      protected function _receiveDataHandler(param1:Event) : void
      {
         _content = _loader.data;
         super._completeHandler(param1);
      }
   }
}

