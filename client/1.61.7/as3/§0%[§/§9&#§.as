package §0%[§
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §9&#§ extends MovieClip
   {
      
      private static var §7F§:§9&#§;
      
      public var startTime:Number;
      
      public var §?7§:Number = 0;
      
      public var fps:uint;
      
      public function §9&#§()
      {
         super();
         this.startTime = new Date().time;
         addEventListener(Event.ENTER_FRAME,this.§>5§);
      }
      
      public static function getInstance() : §9&#§
      {
         if(!§7F§)
         {
            §7F§ = new §9&#§();
         }
         return §7F§;
      }
      
      public static function §^!f§() : uint
      {
         return getInstance().§^!f§();
      }
      
      private function §>5§(param1:Event) : void
      {
         var _loc2_:Number = (new Date().time - this.startTime) / 1000;
         var _loc3_:§9&#§ = this;
         var _loc4_:Number = _loc3_.§?7§ + 1;
         _loc3_.§?7§ = _loc4_;
         if(_loc2_ > 1)
         {
            this.fps = Math.floor(this.§?7§ / _loc2_ * 10) / 10;
            this.startTime = new Date().time;
            this.§?7§ = 0;
         }
      }
      
      public function §^!f§() : uint
      {
         return this.fps;
      }
   }
}

