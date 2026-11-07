package §<"L§
{
   import §4'§.§`"q§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   
   internal class §5&-§
   {
      
      public var request:Object;
      
      public var responseClass:Vector.<Class>;
      
      public var responseCallback:Vector.<Function>;
      
      public var callback:Function;
      
      public var loadingMsg:Boolean;
      
      public var priceInfo:§`"q§;
      
      public var §7%j§:Timer;
      
      private var §0$7§:Function;
      
      public var §<"M§:Boolean = false;
      
      public function §5&-§(param1:Object, param2:Vector.<Class>, param3:Vector.<Function>, param4:Function, param5:Boolean, param6:Function)
      {
         super();
         this.request = param1;
         this.responseClass = param2;
         this.responseCallback = param3;
         this.callback = param4;
         this.loadingMsg = param5;
         this.§7%j§ = new Timer(§##-§.§1!>§);
         this.§7%j§.addEventListener(TimerEvent.TIMER,param6);
         this.§0$7§ = param6;
      }
      
      public function destroy() : void
      {
         this.§<"M§ = false;
         this.§7%j§.reset();
         this.§7%j§.removeEventListener(TimerEvent.TIMER,this.§0$7§);
         this.§0$7§ = null;
         this.§7%j§ = null;
         this.priceInfo = null;
         this.request = null;
         this.callback = null;
         this.responseClass.length = 0;
         this.responseCallback.length = 0;
         if(this.loadingMsg && §[&G§.§8"&§.isShown())
         {
            §[&G§.§8"&§.hide();
         }
      }
      
      public function §-&3§() : void
      {
         if(this.§7%j§.running)
         {
            this.§7%j§.reset();
         }
         this.§7%j§.start();
         this.§<"M§ = true;
      }
   }
}

