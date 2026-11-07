package ru.pragmatix.preloader
{
   import §+$§.§-§;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §9&§ extends DisplayObjectContainer
   {
      
      private var §""§:Function;
      
      private var id:String;
      
      private var banner:MovieClip;
      
      private var §2%§:LoaderMax;
      
      public function §9&§(param1:DisplayObjectContainer, param2:Function, param3:String)
      {
         super();
         param1.addChild(this);
         this.§""§ = param2;
         this.id = param3;
         this.§2%§ = new LoaderMax({
            "auditSize":false,
            "maxConnections":1,
            "onComplete":this.onComplete,
            "onError":this.onError
         });
         this.§2%§.append(new SWFLoader(§-§.§`$§(param3) + §-§.§0#§,{"name":"banner"}));
         this.§2%§.load();
      }
      
      public function onError(param1:LoaderEvent) : void
      {
         if(param1.target is SWFLoader)
         {
            if(SWFLoader(param1.target).status == LoaderStatus.FAILED)
            {
               this.§2%§.dispose(true);
               this.§""§();
            }
         }
      }
      
      public function onComplete(param1:LoaderEvent) : void
      {
         this.banner = MovieClip(LoaderMax.getLoader("banner").rawContent);
         if(this.banner != null)
         {
            this.banner.y = 600;
            addChild(this.banner);
            this.banner.addEventListener(MouseEvent.CLICK,this.§[%§);
            this.banner.visible = false;
            this.banner.alpha = 0;
         }
         this.§2%§.dispose(true);
         this.§""§();
      }
      
      public function showBanner() : void
      {
         this.§^#§(1);
      }
      
      public function §[$§() : void
      {
         this.§^#§(0);
      }
      
      private function §^#§(param1:Number) : void
      {
         if(this.banner != null)
         {
            this.banner.buttonMode = param1 == 1;
            TweenLite.to(this.banner,0.6,{"alpha":param1});
         }
      }
      
      private function §[%§(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(§-§.§8§));
      }
   }
}

