package vk
{
   import § !P§.*;
   import § &5§.§=#P§;
   import § L§.§`T§;
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §"#]§.§7&0§;
   import §##j§.§'"%§;
   import §##j§.§7,§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §4!!§.§6$V§;
   import §4%_§.§3§;
   import §4'§.§`"q§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§3&G§;
   import §9%k§.*;
   import §;!J§.*;
   import §<!^§.§9"§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[$<§.§>"9§;
   import §]$&§.§2&2§;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§@#J§;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   import vk.api.§;&G§;
   
   public class §,#n§ extends EventDispatcher
   {
      
      private var §9$g§:LocalConnection;
      
      private var connectionName:String;
      
      private var §0$S§:LocalConnection;
      
      private var §-!R§:Array;
      
      private var §"#$§:Boolean = false;
      
      private var §?%h§:Boolean = false;
      
      private var §%!9§:Number = 0;
      
      private var §["`§:Object;
      
      private var §#%&§:§;&G§;
      
      private var log:§&`§;
      
      public function §,#n§(... rest)
      {
         var connectionName:String = null;
         var api_url:String = null;
         var params:Array = rest;
         this.§["`§ = new Object();
         this.log = new §&`§(§,#n§);
         super();
         if(typeof params[0] == "string")
         {
            connectionName = params[0];
         }
         else
         {
            connectionName = params[0].lc_name;
            api_url = "http://api.vkontakte.ru/api.php";
            if(params[0].api_url)
            {
               api_url = params[0].api_url;
            }
            this.§#%&§ = new §;&G§(api_url,params[0].api_id,params[0].sid,params[0].secret,params[0].viewer_id);
         }
         if(!connectionName)
         {
            return;
         }
         this.§-!R§ = new Array();
         this.connectionName = connectionName;
         this.§9$g§ = new LocalConnection();
         this.§9$g§.allowDomain("*");
         this.§0$S§ = new LocalConnection();
         this.§0$S§.allowDomain("*");
         this.§0$S§.client = {
            "initConnection":this.initConnection,
            "onBalanceChanged":this.onBalanceChanged,
            "onSettingsChanged":this.onSettingsChanged,
            "onLocationChanged":this.onLocationChanged,
            "onWindowResized":this.onWindowResized,
            "onApplicationAdded":this.onApplicationAdded,
            "onWindowBlur":this.onWindowBlur,
            "onWindowFocus":this.onWindowFocus,
            "onWallPostSave":this.onWallPostSave,
            "onWallPostCancel":this.onWallPostCancel,
            "onProfilePhotoSave":this.onProfilePhotoSave,
            "onProfilePhotoCancel":this.onProfilePhotoCancel,
            "onMerchantPaymentSuccess":this.onMerchantPaymentSuccess,
            "onMerchantPaymentCancel":this.onMerchantPaymentCancel,
            "onMerchantPaymentFail":this.onMerchantPaymentFail,
            "apiCallback":this.apiCallback,
            "customEvent":this.customEvent
         };
         try
         {
            this.§0$S§.connect("_out_" + connectionName);
         }
         catch(error:ArgumentError)
         {
            §[x§("Can\'t connect from App. The connection name is already being used by another SWF");
         }
         this.§9$g§.addEventListener(StatusEvent.STATUS,this.§%&$§);
         this.§9$g§.send("_in_" + connectionName,"initConnection");
      }
      
      public function callMethod(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("callMethod");
         this.§?$v§.apply(this,_loc2_);
      }
      
      public function §[x§(param1:*) : void
      {
         if(!param1 || !param1.toString)
         {
            return;
         }
         this.log.§[x§(param1.toString(),"vk.api");
      }
      
      public function §+!v§(param1:Boolean = true) : void
      {
         this.§?%h§ = param1;
      }
      
      public function api(param1:String, param2:Object, param3:Function = null, param4:Function = null) : void
      {
         var options:Object = null;
         var callId:Number = NaN;
         var method:String = param1;
         var params:Object = param2;
         var onComplete:Function = param3;
         var onError:Function = param4;
         if(!this.§9$g§ || this.§?%h§)
         {
            options = new Object();
            options["params"] = params;
            options["onComplete"] = onComplete;
            options["onError"] = onError;
            this.§#%&§.request(method,options);
         }
         else
         {
            callId = this.§%!9§++;
            this.§["`§[callId] = function(param1:Object):void
            {
               if(param1.error)
               {
                  onError(param1.error);
               }
               else
               {
                  onComplete(param1.response);
               }
            };
            this.§?$v§("api",callId,method,params);
         }
      }
      
      public function navigateToURL(param1:String, param2:String = "_self") : void
      {
         this.callMethod("navigateToURL",param1,param2);
      }
      
      private function initConnection() : void
      {
         if(this.§"#$§)
         {
            return;
         }
         this.§"#$§ = true;
         this.§[x§("Connection initialized.");
         dispatchEvent(new §8!a§(§8!a§.§!$n§));
         this.§<"%§();
      }
      
      public function customEvent(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         var _loc3_:String = _loc2_.shift();
         this.§[x§(_loc3_);
         var _loc4_:§8!a§ = new §8!a§(_loc3_);
         _loc4_.params = _loc2_;
         dispatchEvent(_loc4_);
      }
      
      private function onBalanceChanged(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onBalanceChanged");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onSettingsChanged(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onSettingsChanged");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onLocationChanged(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onLocationChanged");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onWindowResized(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onWindowResized");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onApplicationAdded(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onApplicationAdded");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onWindowBlur(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onWindowBlur");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onWindowFocus(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onWindowFocus");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onWallPostSave(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onWallPostSave");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onWallPostCancel(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onWallPostCancel");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onProfilePhotoSave(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onProfilePhotoSave");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onProfilePhotoCancel(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onProfilePhotoCancel");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onMerchantPaymentSuccess(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onMerchantPaymentSuccess");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onMerchantPaymentCancel(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onMerchantPaymentCancel");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onMerchantPaymentFail(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onMerchantPaymentFail");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function apiCallback(param1:Number, param2:Object) : void
      {
         this.§["`§[param1](param2);
         delete this.§["`§[param1];
      }
      
      private function §<"%§() : void
      {
         while(this.§-!R§.length)
         {
            this.§?$v§.apply(this,this.§-!R§.shift());
         }
      }
      
      private function §?$v§(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         if(this.§"#$§)
         {
            _loc2_.unshift("_in_" + this.connectionName);
            this.§9$g§.send.apply(null,_loc2_);
         }
         else
         {
            this.§-!R§.push(_loc2_);
         }
      }
      
      private function §%&$§(param1:StatusEvent) : void
      {
         this.§[x§("StatusEvent: " + param1.level + " code: " + param1.code + " text: " + param1.type);
         param1.target.removeEventListener(param1.type,this.§%&$§);
         if(param1.level == "status")
         {
            this.§0$S§.client.initConnection();
         }
      }
   }
}

