package §,#_§
{
   import § !P§.§9%Z§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §'!Z§.§2!H§;
   import §0&F§.FrameTimerEvent;
   import §2"L§.§^$y§;
   import §2#x§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §;!J§.§8!a§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import com.inreflected.ui.touchScroll.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §?%s§ extends EventDispatcher
   {
      
      protected var _delay:uint;
      
      protected var §`#R§:uint;
      
      protected var §&$L§:Boolean = false;
      
      protected var frames:uint = 0;
      
      private var §49§:String;
      
      public function §?%s§(param1:String, param2:uint, param3:uint = 0)
      {
         super();
         this.§49§ = param1;
         this._delay = param2;
         this.§`#R§ = param3;
      }
      
      public function start(param1:int = 0) : void
      {
         if(!this.§&$L§)
         {
            this.§&$L§ = true;
            Application.scene.addEventListener(this.§49§,this.onFrame,false,param1);
         }
      }
      
      public function stop() : void
      {
         if(this.§&$L§)
         {
            this.§&$L§ = false;
            if(Application.scene)
            {
               Application.scene.removeEventListener(this.§49§,this.onFrame,false);
            }
         }
      }
      
      private function onFrame(param1:Event) : void
      {
         if(Application.scene)
         {
            ++this.frames;
            if(this.frames % this._delay == 0)
            {
               dispatchEvent(new FrameTimerEvent(Math.round(this.frames / this._delay),FrameTimerEvent.§8$`§));
            }
            if(this._delay * this.§`#R§ == this.frames)
            {
               this.stop();
               dispatchEvent(new FrameTimerEvent(this.§`#R§,FrameTimerEvent.§;$>§));
            }
         }
         else
         {
            this.stop();
         }
      }
      
      public function get delay() : uint
      {
         return this._delay;
      }
      
      public function restart(param1:int = -1) : void
      {
         this._delay = param1 == -1 ? this._delay : uint(param1);
         this.frames = 0;
         this.stop();
         this.start();
      }
      
      public function get §[#D§() : uint
      {
         return this.§`#R§;
      }
      
      public function get running() : Boolean
      {
         return this.§&$L§;
      }
   }
}

