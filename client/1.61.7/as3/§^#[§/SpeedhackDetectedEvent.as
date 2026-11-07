package §^#[§
{
   import § $q§.§-%f§;
   import §"$+§.§ G§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §'!Z§.§6S§;
   import §4$b§.§2m§;
   import §4'§.§`"q§;
   import §5"J§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §^"<§.§?"h§;
   import §^"y§.§]#i§;
   import §`%&§.§@&,§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class SpeedhackDetectedEvent extends Event
   {
      
      public static const §7# §:String = "SpeedhackDetected";
      
      public function SpeedhackDetectedEvent(param1:Boolean = false, param2:Boolean = true)
      {
         super(§7# §,param1,param2);
      }
      
      override public function clone() : Event
      {
         return new SpeedhackDetectedEvent(bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("SpeedhackDetectedEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}

