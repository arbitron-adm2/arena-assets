package ru.pragmatix.wormix.gui
{
   import §"!C§.*;
   import §#"V§.§8"@§;
   import §&#h§.§-"F§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §7$t§.§&!e§;
   import §?"[§.*;
   import §@<§.§+%]§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §"%Z§
   {
      
      public function §"%Z§()
      {
         super();
      }
      
      public static function §&$p§(param1:§,#W§, param2:int) : void
      {
         var msg:§,#W§ = param1;
         var seconds:int = param2;
         if(seconds < 0)
         {
            return;
         }
         seconds--;
         §1%"§.delay(function onDelay(param1:Event = null):void
         {
            if(Boolean(msg) && msg.isShown())
            {
               if(seconds > -1)
               {
                  msg.§##b§(§0$N§.BUTTON_OK + " (" + seconds + "...)");
                  §&$p§(msg,seconds);
               }
               else
               {
                  msg.hide();
               }
            }
         },null,1000);
      }
   }
}

