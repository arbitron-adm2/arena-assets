package §[$<§
{
   import §+$=§.§6#A§;
   import §7!B§.§&"T§;
   import §@!N§.§3!3§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   
   public class §;#K§ extends §;"E§
   {
      
      private var className:String;
      
      private var §'#F§:Boolean;
      
      public function §;#K§(param1:§&"T§, param2:String, param3:uint = 1, param4:Boolean = false)
      {
         super(param1,param3);
         this.className = param2;
         this.§'#F§ = param4;
      }
      
      override protected function §>$!§() : void
      {
         var clip:MovieClip = null;
         var t:Timer = null;
         clip = §6#A§.§!&6§(this.className);
         clip.x = gobj.x;
         clip.y = gobj.y;
         clip.rotation = gobj.clip.rotation;
         if(this.§'#F§ && clip.totalFrames > 0 && clip.totalFrames == gobj.clip.totalFrames)
         {
            clip.gotoAndStop(gobj.clip.currentFrame);
         }
         Application.scene.addChild(clip);
         t = new Timer(20,10);
         t.addEventListener(TimerEvent.TIMER,function(param1:Event):void
         {
            if(clip.parent)
            {
               clip.alpha -= 0.1;
            }
         });
         t.addEventListener(TimerEvent.TIMER_COMPLETE,function(param1:Event):void
         {
            if(clip.parent)
            {
               clip.parent.removeChild(clip);
            }
            clip.stop();
            if(clip.numChildren > 0)
            {
               §3!3§.§>!j§(§3!3§.§#"R§(clip));
            }
            t.stop();
            clip = null;
         });
         t.start();
      }
      
      override public function remove() : void
      {
         super.remove();
         this.className = null;
      }
   }
}

