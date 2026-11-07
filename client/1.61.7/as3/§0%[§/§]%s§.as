package §0%[§
{
   import §+%S§.§]&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §]%s§
   {
      
      public function §]%s§()
      {
         super();
      }
      
      public static function onComplete(param1:MovieClip, param2:Function) : void
      {
         onFrame(param1,param1.totalFrames,param2);
      }
      
      public static function onFrame(param1:MovieClip, param2:uint, param3:Function) : void
      {
         var listener:Function = null;
         var movie:MovieClip = param1;
         var frame:uint = param2;
         var func:Function = param3;
         listener = function(param1:Event):void
         {
            if(movie.currentFrame == frame)
            {
               movie.removeEventListener(Event.ENTER_FRAME,listener);
               func(movie);
            }
         };
         movie.addEventListener(Event.ENTER_FRAME,listener);
      }
   }
}

