package §##§
{
   import com.greensock.events.LoaderEvent;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §%§
   {
      
      private static var §!#§:§%§;
      
      private var §<"§:DisplayObject;
      
      private var §"&§:int;
      
      private var §0"§:Number = 100;
      
      private var §>#§:TextField;
      
      private var container:MovieClip;
      
      private var §,&§:int = 0;
      
      public function §%§(param1:MovieClip)
      {
         super();
         §!#§ = this;
         this.container = param1;
         this.§<"§ = param1.getChildByName("mask_panel");
         this.§"&§ = this.§<"§.width;
         this.§>#§ = param1.getChildByName("percent") as TextField;
         this.§!§(1);
      }
      
      public static function §9!§(param1:int) : void
      {
         if(§!#§ != null && param1 > §!#§.§"$§)
         {
            §!#§.§!§(param1);
            §!#§.§"$§ = param1;
         }
      }
      
      public function §!§(param1:int) : void
      {
         this.§>#§.text = param1 + "%";
         this.§<"§.width = this.§"&§ * param1 / this.§0"§;
      }
      
      public function § "§(param1:Boolean) : void
      {
         this.container.visible = param1;
      }
      
      public function §7&§(param1:LoaderEvent) : void
      {
         var _loc2_:int = Math.round(param1.target.bytesLoaded / param1.target.bytesTotal * 10);
         if(_loc2_ > this.§,&§)
         {
            this.§,&§ = _loc2_;
            this.§!§(_loc2_);
         }
      }
      
      public function get §"$§() : int
      {
         return this.§,&§;
      }
      
      public function set §"$§(param1:int) : void
      {
         this.§,&§ = param1;
      }
   }
}

