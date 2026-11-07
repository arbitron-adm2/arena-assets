package §2!-§
{
   import §"$+§.§@C§;
   import §%"1§.§@%;§;
   import §0&F§.§`"^§;
   import §4&F§.*;
   import §4'§.§`"q§;
   import §8#o§.§#$s§;
   import §9%W§.§!7§;
   import §<%k§.*;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §`%&§.§,%§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §<%;§ extends Event
   {
      
      public var delta:int;
      
      public function §<%;§(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(§`"^§.GROUND_LEVEL_CHANGED,param2,param3);
         this.delta = param1;
      }
      
      override public function clone() : Event
      {
         return new §<%;§(this.delta,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WaterLevelChangedEvent","type","bubbles","cancelable","delta");
      }
   }
}

