package vk.api
{
   import § #m§.§[&H§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+5§.§5"<§;
   import §-%B§.*;
   import §-@§.*;
   import §-I§.§,$$§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#0§.§;4§;
   import §1#p§.§"Z§;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §3#a§.§-#M§;
   import §4$b§.§8D§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8#a§.ShopMenu;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §>!_§.§@"N§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.rules.§+&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§&m§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import vk.api.serialization.json.*;
   
   public class §;&G§
   {
      
      private var §;!W§:String;
      
      private var §,%N§:String = "http://api.vkontakte.ru/api.php";
      
      private var §8"B§:Number;
      
      private var §?"_§:String;
      
      private var §>$]§:Number;
      
      private var §9L§:Array;
      
      private var §<J§:Object;
      
      public function §;&G§(param1:String, param2:Number, param3:String, param4:String, param5:Number)
      {
         super();
         this.§?"_§ = param4;
         this.§;!W§ = param3;
         this.§,%N§ = param1;
         this.§8"B§ = param2;
         this.§>$]§ = param5;
      }
      
      public function setup(param1:Object) : void
      {
         this.§<J§ = param1;
      }
      
      public function request(param1:String, param2:Object = null) : void
      {
         var _loc3_:Function = null;
         var _loc4_:Function = null;
         if(param2 == null)
         {
            param2 = new Object();
         }
         param2.onComplete = param2.onComplete ? param2.onComplete : (this.§<J§.onComplete ? this.§<J§.onComplete : null);
         param2.onError = param2.onError ? param2.onError : (this.§<J§.onError ? this.§<J§.onError : null);
         this.§ #E§(param1,param2);
      }
      
      private function § #E§(param1:String, param2:Object) : void
      {
         var variables:URLVariables;
         var j:String = null;
         var request:URLRequest = null;
         var loader:URLLoader = null;
         var i:String = null;
         var method:String = param1;
         var options:Object = param2;
         var self:Object = this;
         var request_params:Object = {"method":method};
         request_params.api_id = this.§8"B§;
         request_params.format = "JSON";
         request_params.v = "3.0";
         if(options.params)
         {
            for(i in options.params)
            {
               request_params[i] = options.params[i];
            }
         }
         variables = new URLVariables();
         for(j in request_params)
         {
            variables[j] = request_params[j];
         }
         variables["sig"] = this.§!#k§(request_params);
         variables["sid"] = this.§;!W§;
         request = new URLRequest();
         request.url = this.§,%N§;
         request.method = URLRequestMethod.POST;
         request.data = variables;
         loader = new URLLoader();
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         if(options.onError)
         {
            loader.addEventListener(IOErrorEvent.IO_ERROR,function():void
            {
               options.onError("Connection error occured");
            });
            loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,function():void
            {
               options.onError("Security error occured");
            });
         }
         loader.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            var _loc2_:URLLoader = URLLoader(param1.target);
            var _loc3_:Object = vk.api.serialization.json.JSON.decode(_loc2_.data);
            if(_loc3_.error)
            {
               options.onError(_loc3_.error);
            }
            else if(Boolean(options.onComplete) && _loc3_.response != undefined)
            {
               options.onComplete(_loc3_.response);
            }
         });
         try
         {
            loader.load(request);
         }
         catch(error:Error)
         {
            options.onError(error);
         }
      }
      
      private function §!#k§(param1:Object) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = "";
         var _loc3_:Array = new Array();
         for(_loc4_ in param1)
         {
            _loc3_.push(_loc4_ + "=" + param1[_loc4_]);
         }
         _loc3_.sort();
         for(_loc4_ in _loc3_)
         {
            _loc2_ += _loc3_[_loc4_];
         }
         if(this.§>$]§ > 0)
         {
            _loc2_ = this.§>$]§.toString() + _loc2_;
         }
         _loc2_ += this.§?"_§;
         return MD5.§9#v§(_loc2_);
      }
   }
}

