package §[$<§
{
   import § %f§.§=%f§;
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §,#_§.FrameTimer;
   import §0&F§.FrameTimerEvent;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import flash.events.Event;
   
   public class §;"E§
   {
      
      protected var ft:FrameTimer;
      
      protected var gobj:§&"T§;
      
      public function §;"E§(param1:§&"T§, param2:uint)
      {
         super();
         this.gobj = param1;
         this.ft = new FrameTimer(param2);
         this.ft.addEventListener(FrameTimerEvent.§8$`§,this.onFrame);
         this.ft.start();
      }
      
      protected function onFrame(param1:Event) : void
      {
         if(this.gobj == null || this.gobj.disposed)
         {
            this.remove();
         }
         else
         {
            this.§>$!§();
         }
      }
      
      protected function §>$!§() : void
      {
      }
      
      public function remove() : void
      {
         if(Boolean(this.ft) && this.ft.running)
         {
            this.ft.stop();
            this.ft.removeEventListener(FrameTimerEvent.§8$`§,this.onFrame);
            this.ft = null;
            this.gobj = null;
         }
      }
   }
}

