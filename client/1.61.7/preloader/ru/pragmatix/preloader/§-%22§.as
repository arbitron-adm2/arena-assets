package ru.pragmatix.preloader
{
   import §##§.§%§;
   import §##§.§+"§;
   import §+$§.§-§;
   import §0§.§]§;
   import §8"§.§&!§;
   import §8"§.§'!§;
   import §8"§.§@%§;
   import §8"§.§`%§;
   import com.greensock.TweenNano;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.net.LocalConnection;
   import flash.system.Security;
   import flash.utils.Timer;
   
   [SWF(width="800", height="600", backgroundColor="#ffffff", frameRate="30")]
   public class §-"§ extends Sprite
   {
      
      public static var §!#§:§-"§;
      
      private static const §<#§:uint = 11;
      
      private var compareMismatchResult:Boolean;
      
      private var preloaderScreen:MovieClip;
      
      private var §4§:Sprite;
      
      private var §7$§:Timer = new Timer(300);
      
      private var §2%§:LoaderMax;
      
      private var §#"§:LocalConnection;
      
      private var progressBar:§%§;
      
      private var §3#§:§+"§;
      
      private var §"#§:§@%§;
      
      private var §&%§:Object;
      
      private var banner:§9&§;
      
      private var §4&§:String = "";
      
      private var §`!§:String;
      
      private var §@§:String;
      
      private var §>&§:Boolean = true;
      
      private var checkTop:Boolean;
      
      private var §#$§:Object = {};
      
      public function §-"§()
      {
         super();
         Security.allowDomain("*");
         §!#§ = this;
         this.addEventListener(Event.ADDED_TO_STAGE,this.§?%§);
      }
      
      public static function §5%§() : void
      {
         §!#§.§@#§();
      }
      
      public static function §3!§(param1:Function) : void
      {
         ExternalInterface.addCallback("onCheckTop",param1);
         ExternalInterface.call("checkTop");
      }
      
      public static function §#%§(param1:String, param2:String, param3:Function) : void
      {
         ExternalInterface.addCallback("compareCallback",param3);
         ExternalInterface.call("doCompare",param1,param2);
      }
      
      public function §]#§() : void
      {
         this.§3$§(true);
      }
      
      private function §?%§(param1:Event) : void
      {
         this.preloaderScreen = new PreloaderScreen();
         this.preloaderScreen.name = "preloaderScreen";
         addChild(this.preloaderScreen);
         §<&§.§5"§(this.preloaderScreen,stage);
         this.§"#§ = §'!§.§^"§(this.§4$§);
         this.§>&§ = this.§"#§.init(this);
         this.§1!§();
         this.§3#§ = new §+"§(this.preloaderScreen,this.§%%§());
      }
      
      public function compareCallback(param1:Boolean) : void
      {
      }
      
      public function §'"§(param1:String) : void
      {
         var _loc5_:String = null;
         §]§.init(this.§"#§.language);
         try
         {
         }
         catch(e:Error)
         {
         }
         this.progressBar = new §%§(this.preloaderScreen.progressBar);
         var _loc2_:Number = §-%§.§1&§("lastLoginTime1",0);
         if(!_loc2_)
         {
            _loc2_ = 0;
         }
         var _loc3_:Number = new Date().time;
         if(_loc3_ - _loc2_ > 0 && _loc3_ - _loc2_ < §-§.§`"§)
         {
            this.§,$§(§]§.§0$§.§6#§(§-§.§`"§ / 1000) + " (" + param1 + ")");
            this.progressBar.§ "§(false);
            return;
         }
         this.progressBar.§ "§(true);
         §-%§.§'#§("lastLoginTime1",_loc3_);
         if(Boolean(stage) && Boolean(stage.loaderInfo) && Boolean(stage.loaderInfo.parameters))
         {
            for(_loc5_ in stage.loaderInfo.parameters)
            {
               if(_loc5_ == "request_key")
               {
                  this.§4&§ = stage.loaderInfo.parameters[_loc5_];
                  break;
               }
               if(_loc5_ == "custom_args")
               {
                  this.§4&§ = stage.loaderInfo.parameters[_loc5_];
                  break;
               }
            }
         }
         this.§#"§ = new LocalConnection();
         this.§#"§.allowDomain("*");
         var _loc4_:Object = {};
         _loc4_.progress = §%§.§9!§;
         this.§#"§.client = _loc4_;
         if(!§-§.§`$§(this.§"#§.§&&§()))
         {
            this.§,$§(§]§.§0$§.loginNotAllowedMsg);
            this.progressBar.§ "§(false);
            return;
         }
         this.§"#§.§#!§(§-§.socialType == §`%§.§ $§ && §-§.§=§ ? this.startLoadingBanner : this.§,!§);
      }
      
      private function startLoadingBanner() : void
      {
         this.§,$§("startLoadingBanner");
         this.banner = new §9&§(this,this.§,!§,this.§"#§.§&&§());
      }
      
      public function showBanner() : void
      {
         if(this.banner)
         {
            this.banner.showBanner();
         }
      }
      
      public function §,!§() : void
      {
         this.§2%§ = new LoaderMax({
            "auditSize":false,
            "maxConnections":1,
            "onProgress":this.progressBar.§7&§,
            "onComplete":this.§5&§,
            "onError":this.§ !§
         });
         this.§2%§.append(new SWFLoader(§-§.§`$§(this.§"#§.§&&§()) + §-§.§6!§,{
            "name":"engine",
            "autoPlay":false,
            "alternateURL":§-§.§>"§() + §-§.§6!§
         }));
         this.§2%§.load();
      }
      
      public function §5&§(param1:LoaderEvent) : void
      {
         var params:Object;
         var event:LoaderEvent = param1;
         try
         {
            this.§#"§.connect(§-§.channelName);
         }
         catch(error:ArgumentError)
         {
            progressBar = null;
         }
         params = this.§%%§();
         this.§!"§(event,params,§-§.§&$§(this.§"#§.§&&§()),§-§.getPvpServer(this.§"#§.§&&§()),§-§.§`$§(this.§"#§.§&&§()),§-§.§>"§(),this.§4&§ != "" ? this.§4&§ : this.§"#§.§5$§(),§-§.socialType.§1§);
         this.§2%§.dispose(true);
      }
      
      private function §%%§() : Object
      {
         if(!this.§&%§)
         {
            this.§&%§ = §-§.§%%§(this.§"#§.§&&§());
            this.§&%§["_social_type"] = this.§"#§.socialType.§1§;
            this.§&%§["refs_token"] = this.§"#§.§5#§();
            this.§&%§["href_token"] = this.§"#§.§'$§();
            this.§&%§["ad_token"] = this.§"#§.§]"§();
            this.§&%§["prnt"] = "";
            this.§&%§["bPr"] = stage.loaderInfo.bytesLoaded;
            this.§&%§["uPr"] = stage.loaderInfo.loaderURL;
            this.§&%§["showBanner"] = this.showBanner;
            this.§&%§["preloaderScreen"] = this.preloaderScreen;
            this.§&%§["progressBar"] = this.preloaderScreen.progressBar;
            this.§&%§["AdLibTitleFont"] = AdLibTitleFont;
         }
         if(!this.§&%§["uMn"] && Boolean(LoaderMax.getLoader("engine")))
         {
            this.§&%§["uMn"] = SWFLoader(LoaderMax.getLoader("engine")).url;
         }
         return this.§&%§;
      }
      
      private function §!"§(param1:LoaderEvent, param2:Object, param3:Object, param4:Object, param5:String, param6:String, param7:String, param8:String) : void
      {
         this.§4§ = Sprite(LoaderMax.getLoader("engine").rawContent);
         param2["bMn"] = param1.target.bytesTotal;
         if(param4 != null)
         {
            Object(this.§4§).initFromPreloader(param3,param4,param5,param6,param7,param8,param2);
         }
         else
         {
            Object(this.§4§).initFromPreloader(param3,param5,param6,param7,param8,param2);
         }
         this.§4§.addEventListener(Event.INIT,this.§?!§);
         this.§4§.addEventListener(ErrorEvent.ERROR,this.§-$§);
         addChildAt(this.§4§,0);
      }
      
      private function §?"§() : Boolean
      {
         return this.§>&§ && !this.checkTop;
      }
      
      public function §?!§(param1:Event) : void
      {
         if(!this.§?"§() && true == this.compareMismatchResult)
         {
            this.§<§();
            return;
         }
         this.§<$§();
         if(this.banner != null)
         {
            this.banner.visible = true;
         }
      }
      
      public function §-$§(param1:Event) : void
      {
         if(true == this.compareMismatchResult || !this.§?"§())
         {
            this.§<§();
            return;
         }
         this.§<$§();
      }
      
      private function §<§() : void
      {
         if(§-§.socialType != §`%§.§ $§ && Boolean(this.preloaderScreen))
         {
            this.preloaderScreen.height = stage.height;
            this.preloaderScreen.width = stage.width;
         }
         if(this.§4§)
         {
            Object(this.§4§).destroy(this.§@§);
            this.§4§.parent.removeChild(this.§4§);
            this.§4§ = null;
         }
      }
      
      public function §@#§() : void
      {
         if(this.preloaderScreen)
         {
            this.preloaderScreen.height = this.§4§.height;
            this.preloaderScreen.width = this.§4§.width;
            TweenNano.to(this.preloaderScreen,3,{
               "alpha":0,
               "onComplete":this.§<$§
            });
         }
      }
      
      public function §5!§(param1:String, param2:String) : void
      {
         var v1:String = param1;
         var v2:String = param2;
         §#%§(v1,v2,function(param1:Boolean):void
         {
            compareMismatchResult = param1;
         });
      }
      
      private function §<$§() : void
      {
         if(this.preloaderScreen)
         {
            this.preloaderScreen.stop();
            new §@$§(this.preloaderScreen);
            this.preloaderScreen = null;
            setChildIndex(this.§4§,numChildren - 1);
         }
      }
      
      private function §2#§() : void
      {
      }
      
      public function §4%§() : void
      {
         this.§3$§(false);
      }
      
      public function §,$§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§2!§ = new §2!§();
         _loc3_.§%&§.text = §]§.§0$§.titleAttention;
         _loc3_.§8$§.text = param1;
         if(param2)
         {
            _loc3_.§8$§.selectable = true;
         }
         addChild(_loc3_);
         _loc3_.x = this.preloaderScreen.x + (this.preloaderScreen.width - _loc3_.width) / 2;
         _loc3_.y = this.preloaderScreen.y + (this.preloaderScreen.height - _loc3_.height) / 2;
      }
      
      public function § !§(param1:LoaderEvent) : void
      {
         var _loc2_:Array = null;
         if(param1.target is SWFLoader)
         {
            if(SWFLoader(param1.target).status == LoaderStatus.FAILED)
            {
               _loc2_ = param1.text.split("/");
               this.§,$§(§]§.§0$§.loadEngineMsg + " :: (" + param1.text.split("(")[0] + (_loc2_.length ? _loc2_[_loc2_.length - 1] : ""));
               dispatchEvent(param1);
               this.§2%§.dispose(true);
            }
         }
      }
      
      private function §4$§() : void
      {
         §3!§(function(param1:Boolean):void
         {
            checkTop = param1;
         });
      }
      
      private function §3$§(param1:Boolean) : void
      {
         this.§>&§ = param1;
      }
      
      private function §1!§() : void
      {
         if(this.§"#§ is §&!§)
         {
            §&!§.§3%§(this.§]#§,this.§4%§,this.§3§,stage);
         }
         else
         {
            this.§'"§("cvCU");
         }
      }
      
      public function §3§(param1:String) : void
      {
         this.§4%§();
         this.§@§ = param1;
      }
   }
}

