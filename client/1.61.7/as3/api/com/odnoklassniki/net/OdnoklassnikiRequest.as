package api.com.odnoklassniki.net
{
   import § !8§.§`!d§;
   import § #9§.§3L§;
   import § &5§.§0&$§;
   import §!!!§.§7&%§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §#",§.*;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&!@§.§>"B§;
   import §&"R§.§`&7§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§2!x§;
   import §+%S§.§["4§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3#a§.§[&A§;
   import §4$b§.§2m§;
   import §4'§.§`"q§;
   import §6"'§.§&"3§;
   import §6%2§.*;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!n§.*;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §9%W§.§`"y§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §=!p§.§9#n§;
   import §>!_§.ClanMemberIntroHint;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!N§.§[%Z§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<!9§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import api.com.adobe.images.PNGEncoder;
   import api.com.adobe.json.JSON;
   import api.com.odnoklassniki.Odnoklassniki;
   import com.greensock.*;
   import com.greensock.data.*;
   import com.greensock.loading.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§;!f§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class OdnoklassnikiRequest
   {
      
      protected var urlLoader:URLLoader;
      
      protected var urlRequest:URLRequest;
      
      protected var _data:Object;
      
      protected var _serverUrl:String;
      
      protected var _requestMethod:String;
      
      protected var _callback:Function;
      
      protected var _success:Boolean = false;
      
      protected var _format:String = "XML";
      
      protected var _method:String;
      
      public function OdnoklassnikiRequest(param1:String, param2:String = "GET", param3:Function = null)
      {
         super();
         this._serverUrl = param1;
         this._requestMethod = param2;
         this._callback = param3;
      }
      
      public function call(param1:String, param2:* = null, param3:Function = null, param4:String = "JSON", param5:String = null) : void
      {
         if(param3 != null)
         {
            this._callback = param3;
         }
         this._method = param1;
         this._format = param4;
         if(param1 == "photos.upload")
         {
            this.uploadPhotos(param2,param3,param4,param5);
            return;
         }
         if(!param2)
         {
            param2 = {};
         }
         param2["method"] = param1;
         if(!param2.sig)
         {
            param2 = Odnoklassniki.getSignature(param2,false,param4);
         }
         var _loc6_:String = param5 ? param5 + "fb.do" : this._serverUrl + "fb.do";
         this.urlRequest = new URLRequest(_loc6_);
         this.urlRequest.method = this._requestMethod;
         this.urlRequest.data = this.getUrlVars(param2);
         this.load();
      }
      
      public function uploadPhotos(param1:*, param2:Function = null, param3:String = "JSON", param4:String = null) : void
      {
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:ByteArray = null;
         if(!param1)
         {
            param1 = {};
         }
         param1["method"] = "photos.upload";
         var _loc5_:String = param4 ? param4 + "fb.do" : this._serverUrl + "fb.do";
         var _loc6_:Array = [];
         if(param1.files)
         {
            _loc8_ = 0;
            while(_loc8_ < param1.files.length)
            {
               if(this.isValueFile(param1.files[_loc8_]))
               {
                  _loc6_.push(param1.files[_loc8_]);
               }
               _loc8_++;
            }
            delete param1.files;
         }
         param1 = Odnoklassniki.getSignature(param1,false,param3);
         _loc5_ += this.getUrlParams(param1);
         this.urlRequest = new URLRequest(_loc5_);
         if(_loc6_.length == 0)
         {
            this.urlRequest.data = this.getUrlVars(param1);
            this.load();
            return;
         }
         var _loc7_:PostRequest = new PostRequest();
         _loc8_ = 0;
         while(_loc8_ < _loc6_.length)
         {
            _loc9_ = "file_" + (_loc8_ + 1);
            if(_loc6_[_loc8_] is Bitmap)
            {
               _loc6_[_loc8_] = (_loc6_[_loc8_] as Bitmap).bitmapData;
            }
            if(_loc6_[_loc8_] is ByteArray)
            {
               _loc7_.writeFileData(_loc9_,_loc6_[_loc8_] as ByteArray,"image/jpeg");
            }
            else if(_loc6_[_loc8_] is BitmapData)
            {
               _loc10_ = PNGEncoder.encode(_loc6_[_loc8_] as BitmapData);
               _loc7_.writeFileData(_loc9_,_loc10_,"image/jpeg");
            }
            _loc6_[_loc8_] = null;
            _loc8_++;
         }
         _loc6_ = null;
         _loc7_.close();
         this.urlRequest.method = URLRequestMethod.POST;
         this.urlRequest.data = _loc7_.getPostData();
         this.urlRequest.requestHeaders.push(new URLRequestHeader("Content-Type","multipart/form-data; boundary=" + _loc7_.boundary));
         this.load();
      }
      
      private function getUrlParams(param1:Object) : String
      {
         var _loc3_:String = null;
         var _loc2_:String = "?";
         for(_loc3_ in param1)
         {
            if(_loc3_ != "files")
            {
               _loc2_ += _loc3_ + "=" + param1[_loc3_] + "&";
            }
         }
         return _loc2_;
      }
      
      protected function isValueFile(param1:Object) : Boolean
      {
         return param1 is Bitmap || param1 is BitmapData || param1 is ByteArray;
      }
      
      private function getUrlVars(param1:Object) : URLVariables
      {
         var _loc3_:String = null;
         var _loc2_:URLVariables = new URLVariables();
         if(param1 == null)
         {
            return _loc2_;
         }
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function load() : void
      {
         this.urlLoader = new URLLoader();
         this.urlLoader.addEventListener(Event.COMPLETE,this.onComplete,false,0,false);
         this.urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError,false,0,true);
         this.urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError,false,0,true);
         this.urlLoader.addEventListener(ProgressEvent.PROGRESS,this.onProgress,false,0,true);
         this.urlLoader.load(this.urlRequest);
      }
      
      private function onComplete(param1:Event) : void
      {
         if(this._format == "JSON")
         {
            this._data = api.com.adobe.json.JSON.decode(this.urlLoader.data);
            try
            {
               this._data.method = this._method;
            }
            catch(e:Error)
            {
               §§push(e);
               §§push(e);
               var _temp_1:* = §§pop();
               _temp_1.§§slot[1] = §§pop();
            }
         }
         else
         {
            this._data = this.urlLoader.data;
         }
         this._success = true;
         this.complete();
      }
      
      private function complete() : void
      {
         this._callback(this);
         this.close();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this._success = false;
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         if(this._callback != null)
         {
            this._callback({"error":"security_error"});
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
      }
      
      private function close() : void
      {
         if(this.urlLoader != null)
         {
            this.urlLoader.removeEventListener(Event.COMPLETE,this.onComplete);
            this.urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            this.urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
            this.urlLoader.removeEventListener(ProgressEvent.PROGRESS,this.onProgress);
            try
            {
               this.urlLoader.close();
            }
            catch(e:*)
            {
            }
            this.urlLoader = null;
         }
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function get success() : Boolean
      {
         return this._success;
      }
   }
}

