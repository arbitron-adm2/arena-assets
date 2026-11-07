package ru.pragmatix.wormix.weapons
{
   import §+5§.§7!U§;
   import §0"L§.§+# §;
   import §5%S§.§>&-§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class ControlledSheepWeapon extends SheepWeapon implements §##=§, §=!s§
   {
      
      public function ControlledSheepWeapon()
      {
         super();
      }
      
      override protected function §`%V§() : void
      {
         super.§`%V§();
         §+# §.§9! §.deactivate();
      }
      
      override protected function §%%c§(param1:Boolean) : void
      {
         super.§%%c§(param1);
         §+# §.§9! §.activate();
      }
      
      public function weaponLeftPressed() : void
      {
         §7!U§(§#n§).run(-1);
      }
      
      public function weaponLeftReleased() : void
      {
      }
      
      public function weaponRightPressed() : void
      {
         §7!U§(§#n§).run(1);
      }
      
      public function weaponRightReleased() : void
      {
      }
      
      public function weaponUpPressed() : void
      {
         §7!U§(§#n§).jump();
      }
      
      public function weaponUpReleased() : void
      {
      }
      
      public function weaponDownPressed() : void
      {
      }
      
      public function weaponDownReleased() : void
      {
      }
   }
}

