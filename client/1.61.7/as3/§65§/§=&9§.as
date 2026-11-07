package §65§
{
   import §%"1§.§@%;§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4&F§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.*;
   import §=#g§.*;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.globalization.DateTimeFormatter;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §=&9§ extends §`"C§
   {
      
      public function §=&9§(param1:String, param2:uint, param3:int)
      {
         super(param1,param2,param3);
      }
      
      override public function place(param1:§+%]§) : void
      {
         super.place(param1);
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      override public function clear() : void
      {
         if(!§&%M§)
         {
            super.clear();
            Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         }
      }
      
      private function onFrame(param1:Event) : void
      {
         ++counter.value;
         this.§7$d§();
         if(counter.value == duration.value)
         {
            this.clear();
         }
      }
      
      protected function §7$d§() : void
      {
      }
   }
}

