package §+%S§
{
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§'$T§;
   import §0%z§.BossAchieveHint;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§]$d§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §?3§ extends §`"C§
   {
      
      public static const NAME:String = "BANDAGED";
      
      public function §?3§()
      {
         super(NAME,-1,0);
      }
      
      override protected function §5#F§() : void
      {
         unit.graphics.colorTransform(-20,-20,-20);
      }
      
      override protected function §0&"§() : void
      {
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §?3§());
      }
   }
}

