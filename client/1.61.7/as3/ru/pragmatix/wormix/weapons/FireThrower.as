package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §9%W§.§!7§;
   import §<!G§.§5b§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§>"$§;
   import §`"p§.*;
   import §`%&§.§,%§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class FireThrower extends §5b§
   {
      
      private const §#"J§:§&$2§ = new §&$2§(4);
      
      private const §1!&§:§&$2§ = new §&$2§(3);
      
      private const §9#K§:§&$2§ = new §&$2§(4);
      
      private const §%$o§:§&$2§ = new §&$2§(1480);
      
      private var §<#6§:§&$2§ = new §&$2§(0);
      
      private var weaponControlEnabled:§?"&§ = new §?"&§(false);
      
      private var bullets:§&$2§ = new §&$2§(12);
      
      public function FireThrower()
      {
         super();
         §7&§(new §!7§());
         §-g§ = new §,%§(140,25,0.1,true);
      }
      
      override protected function §`%V§() : void
      {
         this.weaponControlEnabled.value = property["weaponControlEnabled"].value;
         this.bullets.value = property["bullets"].value;
         super.§`%V§();
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(owner != null)
         {
            ++frames.value;
            if(frames.value == this.§<#6§.value)
            {
               _loc2_ = §8"%§.randomSeed.§,!q§(-5,5) * Math.PI / this.§%$o§.value;
               angle += _loc2_;
               this.§<#6§.value = frames.value + this.§1!&§.value;
               if(§<$-§.value % this.§#"J§.value == 0)
               {
                  this.§<#6§.value += this.§9#K§.value;
               }
            }
            if(frames.value % 3 == 0)
            {
               new §>"$§(owner,getBarrelPoint(shotParams.angle),paramSet,angle,15 + §<$-§.value * 2);
               ++§<$-§.value;
            }
            if(frames.value % 6 == 0)
            {
               §@%;§.play(§`!v§.§[$y§);
            }
            super.onFrame(param1);
            if(§<$-§.value == this.bullets.value)
            {
               §?!K§();
            }
         }
      }
      
      override public function weaponUpPressed() : void
      {
         if(this.weaponControlEnabled.value)
         {
            super.weaponUpPressed();
         }
      }
      
      override public function weaponUpReleased() : void
      {
         if(this.weaponControlEnabled.value)
         {
            super.weaponUpReleased();
         }
      }
      
      override public function weaponDownPressed() : void
      {
         if(this.weaponControlEnabled.value)
         {
            super.weaponDownPressed();
         }
      }
      
      override public function weaponDownReleased() : void
      {
         if(this.weaponControlEnabled.value)
         {
            super.weaponDownReleased();
         }
      }
   }
}

