package ru.pragmatix.wormix.weapons
{
   import §2#i§.§+%z§;
   import §<$q§.*;
   import §=$#§.§`%u§;
   import §`%&§.§ !j§;
   import flash.text.TextField;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class AirBlockerWeapon extends Bazooka
   {
      
      public function AirBlockerWeapon()
      {
         super();
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new § !j§(§"#z§,§2$"§,80);
      }
      
      override protected function §`%V§() : void
      {
         if(!§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §`%u§.§0!1§(§+%z§.AIR_BLOCKER,owner);
         }
         super.§`%V§();
      }
   }
}

