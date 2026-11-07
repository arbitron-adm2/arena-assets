package §+$=§
{
   import § &5§.§@N§;
   import §"% §.LevelUpDialog;
   import §'!Z§.§1"-§;
   import §+#m§.*;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0"L§.*;
   import §0%[§.§1%"§;
   import §0%[§.§]2§;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §2"v§.*;
   import §2#H§.§#$A§;
   import §4#2§.*;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §<!W§.§;#A§;
   import §=!V§.*;
   import §=&!§.§ "^§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import com.adobe.serialization.json.JSONDecoder;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§"&H§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.request.treasury.CashMedalsClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class AbstractConfigLoader extends §"&H§
   {
      
      protected var §2!u§:String;
      
      protected var §6%"§:String;
      
      protected var dataFormat:§1§;
      
      public var files:Vector.<String>;
      
      private var queue:LoaderMax;
      
      public function AbstractConfigLoader(param1:String, param2:String, param3:Vector.<String>, param4:§1§ = null)
      {
         super();
         this.§2!u§ = param1;
         this.§6%"§ = param2;
         this.files = param3;
         this.dataFormat = param4 ? param4 : §1§.XML;
      }
      
      public function load() : void
      {
         var _loc1_:String = null;
         this.queue = new LoaderMax({
            "auditSize":false,
            "maxConnections":1,
            "onComplete":this.§6!7§,
            "onError":this.errorHandler
         });
         for each(_loc1_ in this.files)
         {
            this.§!%o§(_loc1_);
         }
         this.queue.load();
      }
      
      protected function §!%o§(param1:String) : void
      {
         this.§+"i§("start loading configFile:" + param1);
         var _loc2_:String = this.§2!u§ + param1;
         var _loc3_:String = this.§6%"§ + param1;
         if(this.dataFormat == §1§.XML)
         {
            this.queue.append(new XMLLoader(_loc2_,{
               "name":param1,
               "alternateURL":_loc3_
            }));
         }
         else
         {
            this.queue.append(new DataLoader(_loc2_,{
               "name":param1,
               "alternateURL":_loc3_
            }));
         }
      }
      
      private function §6!7§(param1:LoaderEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Object = null;
         switch(this.dataFormat.value)
         {
            case §1§.XML.value:
               for each(_loc2_ in this.files)
               {
                  this.§+"i§("configFile load complete:" + _loc2_);
                  _loc3_ = new XML(LoaderMax.getContent(_loc2_));
                  this.§>!s§(_loc3_,_loc2_);
               }
               break;
            case §1§.JSON.value:
               for each(_loc2_ in this.files)
               {
                  this.§+"i§("configFile load complete:" + _loc2_);
                  _loc4_ = new JSONDecoder(LoaderMax.getContent(_loc2_)).getValue();
                  this.§9$O§(_loc4_,_loc2_);
               }
         }
         this.§6"S§();
      }
      
      protected function §>!s§(param1:XML, param2:String) : void
      {
         throw new IllegalOperationError();
      }
      
      protected function §9$O§(param1:Object, param2:String) : void
      {
         throw new IllegalOperationError();
      }
      
      private function errorHandler(param1:LoaderEvent) : void
      {
         this.log.warn("configFile load fail. error message: " + param1.text);
         if(param1.target is XMLLoader)
         {
            if(XMLLoader(param1.target).status == LoaderStatus.FAILED)
            {
               this.onFail(param1.text);
            }
         }
         else if(param1.target is DataLoader)
         {
            if(DataLoader(param1.target).status == LoaderStatus.FAILED)
            {
               this.onFail(param1.text);
            }
         }
      }
      
      protected function onFail(param1:String) : void
      {
         this.log.error("configFile load fail. error message: " + param1);
         dispatchEvent(new §9"%§(param1));
         this.queue.dispose(true);
      }
      
      private function §6"S§() : void
      {
         this.queue.dispose(true);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §+"i§(param1:String) : void
      {
         this.log.§[x§(param1,"RES_LOAD");
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      [Abstract]
      protected function get log() : §&`§
      {
         throw new Error("AbstractConfigLoader.log is abstract method and must be overriden");
      }
   }
}

