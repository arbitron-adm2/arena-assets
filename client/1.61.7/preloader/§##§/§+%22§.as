package §##§
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §+"§
   {
      
      private static var §!#§:§+"§;
      
      private var preloaderScreen:MovieClip;
      
      private var §[#§:MovieClip;
      
      private var §&%§:Object;
      
      private var §>%§:TextField;
      
      private var §'%§:TextField;
      
      private var §4"§:String;
      
      private var §7"§:String;
      
      public function §+"§(param1:MovieClip, param2:Object)
      {
         super();
         §!#§ = this;
         this.preloaderScreen = param1;
         this.§&%§ = param2;
         this.§[#§ = param1.progressBar;
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:MovieClip = new §0%§();
         this.§>%§ = _loc1_.getChildByName("tf") as TextField;
         var _loc2_:String = this.§&%§["buildVersion"];
         var _loc3_:Array = String(this.§&%§["clientVersion"]).split(".");
         _loc3_.splice(3,1);
         this.§>%§.text = this.§4"§ = "ver." + _loc3_.join(".") + (_loc2_ ? "b" + _loc2_ : "");
         this.§>%§.autoSize = TextFieldAutoSize.LEFT;
         this.preloaderScreen.addChild(_loc1_);
         _loc1_.name = "barText";
         _loc1_.y = this.§[#§.y + 3;
         this.§'%§ = new TextField();
         this.preloaderScreen.addChild(this.§'%§);
         this.§'%§.name = "infoText";
         this.§'%§.multiline = true;
         this.§'%§.wordWrap = true;
         this.§'%§.width = 800;
         this.§'%§.y = this.§[#§.y + this.§[#§.height;
         this.§'%§.height = this.preloaderScreen.height - this.§'%§.y;
         var _loc4_:String = "";
         this.§'%§.text = _loc4_;
         this.§?#§();
         this.§>$§();
         this.preloaderScreen.addEventListener(Event.ENTER_FRAME,this.§^%§);
      }
      
      private function §^%§(param1:Event) : void
      {
         if(!this.preloaderScreen || !this.preloaderScreen.parent)
         {
            param1.target.removeEventListener(Event.ENTER_FRAME,this.§^%§);
            return;
         }
         if(this.§4"§ != this.§>%§.text)
         {
            this.§4"§ = this.§>%§.text;
            this.§?#§();
         }
         if(this.§7"§ != this.§'%§.text)
         {
            this.§7"§ = this.§'%§.text;
            this.§>$§();
         }
      }
      
      private function §?#§() : void
      {
         this.§>%§.parent.x = this.§[#§.x + (this.§[#§.width - this.§>%§.width) / 2;
      }
      
      private function §>$§() : void
      {
         this.§'%§.x = this.§[#§.x + (this.§[#§.width - this.§'%§.width) / 2;
      }
   }
}

