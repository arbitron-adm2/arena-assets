package ru.pragmatix.wormix.weapons
{
   import §3#T§.§5!M§;
   import §7!B§.§&"T§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   import ru.pragmatix.wormix.weapons.interfaces.§^"L§;
   
   public class UfoPad extends §@%`§ implements §3N§, §^"L§
   {
      
      public function UfoPad()
      {
         super(§5!M§);
      }
      
      override protected function §`%V§() : void
      {
         super.§`%V§();
         if(getProperty("canCarryUnits"))
         {
            §5!M§(§["i§).setCanCarryUnit();
         }
      }
      
      override protected function §#-§() : void
      {
         §5!M§(§["i§).explode();
      }
      
      public function weaponCharge() : void
      {
         §5!M§(§["i§).attack();
      }
      
      public function weaponUse(param1:int) : void
      {
         §5!M§(§["i§).pickUp(param1);
      }
      
      public function getTargets() : Vector.<§&"T§>
      {
         return §5!M§(§["i§).getTargets();
      }
      
      public function getTargetUnits() : Vector.<§&"T§>
      {
         return §5!M§(§["i§).getTargetUnits();
      }
      
      public function §#X§() : Number
      {
         return §5!M§(§["i§).x;
      }
      
      public function §5#g§() : Number
      {
         return §5!M§(§["i§).y;
      }
   }
}

