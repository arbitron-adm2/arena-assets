package ru.pragmatix.wormix.gui.menu.rating
{
   import §!$d§.*;
   import §"#x§.§'"$§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §5#`§.§7%g§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §<K§.§@&§;
   import §<K§.RankTabProgress;
   import §<K§.RatingTabDaily;
   import §>!_§.§'!&§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §<$_§ extends §8L§
   {
      
      public function §<$_§()
      {
         super();
      }
      
      override public function §7!g§(param1:§&#>§) : void
      {
         super.§7!g§(param1);
         this.§2Q§();
      }
      
      public function §2Q§() : void
      {
         var _loc1_:§&#>§ = this.§#M§;
         if(_loc1_ is §@&§)
         {
            §@&§(_loc1_).loadIfNeeded();
         }
         else if(_loc1_ is RatingTabDaily)
         {
            RatingTabDaily(_loc1_).activate();
         }
         else if(_loc1_ is RankTabProgress)
         {
            RankTabProgress(_loc1_).activate();
            RatingWindow.§0"F§().setVisible(false);
         }
      }
      
      override protected function §?x§(param1:§8"@§, param2:§&#>§) : void
      {
         this.§7!g§(param2);
      }
   }
}

