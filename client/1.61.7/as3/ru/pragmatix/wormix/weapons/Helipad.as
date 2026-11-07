package ru.pragmatix.wormix.weapons
{
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.SupplyPickedUpEvent;
   import §3#T§.Helicopter;
   import §=;§.§@§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   
   public class Helipad extends §@%`§ implements §3N§
   {
      
      private static const §3$o§:§&$2§ = new §&$2§(3000);
      
      private static const §!"k§:§&$2§ = new §&$2§(4);
      
      private static const § #u§:uint = 1;
      
      private static const §+%w§:uint = 200;
      
      private var §1$d§:§&$2§ = new §&$2§(0);
      
      private var §`$q§:§&$2§ = new §&$2§(0);
      
      private var canBeDamaged:§?"&§ = new §?"&§(true);
      
      private var pickupOnlyAmmo:§?"&§ = new §?"&§(false);
      
      private var §+%C§:§%%a§;
      
      public function Helipad()
      {
         super(Helicopter,§3$o§.value);
      }
      
      override protected function §`%V§() : void
      {
         super.§`%V§();
         this.§1$d§.value = 0;
         §["i§.canBeDamaged = this.canBeDamaged.value;
         if(§8"%§.§&S§.§'`§())
         {
            this.§+%C§ = new §%%a§(this.§`$q§.value,1);
            this.§+%C§.attach(§["i§,0,-65);
         }
      }
      
      override protected function §#-§() : void
      {
         §["i§.physParams.§"%<§(§-S§);
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.§;%k§(§["i§,§;n§.§7q§,10);
         }
         Helicopter(§["i§).explodeOnCollide();
      }
      
      override protected function onFrame(param1:Event) : void
      {
         super.onFrame(param1);
         if(!§["i§ || !owner || §["i§.disposed)
         {
            return;
         }
         if(this.§+%C§)
         {
            this.§+%C§.update(this.§`$q§.value - this.§1$d§.value);
         }
      }
      
      public function weaponCharge() : void
      {
         if(this.§1$d§.value >= this.§`$q§.value)
         {
            §]"q§(true);
         }
         else
         {
            ++this.§1$d§.value;
            Helicopter(§["i§).attack();
         }
      }
      
      override public function weaponLeftPressed() : void
      {
         Helicopter(§["i§).turnLeft();
         super.weaponLeftPressed();
      }
      
      override public function weaponRightPressed() : void
      {
         Helicopter(§["i§).turnRight();
         super.weaponRightPressed();
      }
      
      private function §&w§(param1:SupplyPickedUpEvent) : void
      {
         if(param1.picker == §["i§ && param1.supply is §@#3§)
         {
            if(!this.pickupOnlyAmmo.value)
            {
               §0#h§ += §+%w§;
            }
            this.§`$q§.value += § #u§;
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         var _loc2_:§?"&§ = property["pickupOnlyAmmo"] as §?"&§;
         this.pickupOnlyAmmo.value = _loc2_ ? _loc2_.value : this.pickupOnlyAmmo.value;
         var _loc3_:§?"&§ = property["canBeDamaged"] as §?"&§;
         this.canBeDamaged.value = _loc3_ ? _loc3_.value : this.canBeDamaged.value;
         var _loc4_:§&$2§ = property["extraMissiles"] as §&$2§;
         this.§`$q§.value = §!"k§.value + (_loc4_ ? _loc4_.value : 0);
         Application.scene.addEventListener(§0%v§.SUPPLY_PICKED_UP,this.§&w§);
         super.attach(param1);
      }
      
      override public function §?!K§() : void
      {
         Application.scene.removeEventListener(§0%v§.SUPPLY_PICKED_UP,this.§&w§);
         super.§?!K§();
      }
   }
}

