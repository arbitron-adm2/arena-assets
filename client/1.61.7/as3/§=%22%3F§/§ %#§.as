package §="?§
{
   import § "L§.§1%b§;
   import §##j§.§0m§;
   import §##j§.§7,§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §4'§.§^"p§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$7§.§6%k§;
   import §?$L§.§ "N§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class § %#§ extends §&"T§
   {
      
      protected var owner:§+%]§;
      
      protected var §`%G§:§7#P§;
      
      protected var onEnterCallback:Function;
      
      public function § %#§(param1:§+%]§, param2:int, param3:int, param4:Function = null, param5:String = "AmFlightBlack")
      {
         var clip:MovieClip;
         var cont:MovieClip;
         var val:Number = NaN;
         var ufoEnter:Function = null;
         var owner:§+%]§ = param1;
         var tx:int = param2;
         var ty:int = param3;
         var onEnterCallback:Function = param4;
         var clipName:String = param5;
         ufoEnter = function(param1:Event):void
         {
            onEnterUpdate();
            var _loc2_:MovieClip = MovieClip(param1.currentTarget);
            _loc2_.scaleX += val;
            _loc2_.scaleY += val;
            if(_loc2_.scaleX >= 1 || _loc2_.scaleY >= 1)
            {
               _loc2_.removeEventListener(Event.ENTER_FRAME,ufoEnter);
               onEntered();
            }
         };
         super();
         this.owner = owner;
         this.onEnterCallback = onEnterCallback;
         clip = §6#A§.§!&6§(clipName);
         cont = new MovieClip();
         cont.addChild(clip);
         clip.y = -clip.height;
         this.clip = cont;
         this.x = tx;
         this.y = ty;
         this.stable = true;
         Application.scene.§@$I§.§1$+§(this);
         this.clip.scaleX = 0.1;
         this.clip.scaleY = 0.1;
         this.§`%G§ = §@%;§.play(§`!v§.§,&2§,true);
         val = 0.05;
         this.clip.addEventListener(Event.ENTER_FRAME,ufoEnter);
      }
      
      protected function onEnterUpdate() : void
      {
      }
      
      protected function onEntered() : void
      {
         if(this.onEnterCallback != null)
         {
            this.onEnterCallback();
            this.onEnterCallback = null;
         }
         this.ufoOut();
      }
      
      protected function ufoOut() : void
      {
         var val:Number = NaN;
         if(!disposed)
         {
            val = 0.05;
            clip.addEventListener(Event.ENTER_FRAME,function ufoFlyOut(param1:Event):void
            {
               var _loc2_:MovieClip = MovieClip(param1.currentTarget);
               _loc2_.scaleX -= val;
               _loc2_.scaleY -= val;
               if(_loc2_.scaleX <= 0.5 || _loc2_.scaleY <= 0.5)
               {
                  _loc2_.removeEventListener(Event.ENTER_FRAME,ufoFlyOut);
                  disposed = true;
               }
            });
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         if(this.§`%G§ != null)
         {
            this.§`%G§.stop();
            this.§`%G§ = null;
         }
         this.owner = null;
         this.onEnterCallback = null;
      }
   }
}

