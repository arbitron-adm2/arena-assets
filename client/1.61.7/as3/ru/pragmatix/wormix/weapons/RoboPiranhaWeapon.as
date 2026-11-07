package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §&!?§.§!b§;
   import §0!§.§6#z§;
   import §2!-§.HpChangeEvent;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9"-§.§5#-§;
   import §9%W§.§&!P§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class RoboPiranhaWeapon extends §,%r§
   {
      
      public function RoboPiranhaWeapon()
      {
         super();
         §7&§(new §&!P§(this.§6#N§,true));
         §-g§ = new §!b§();
      }
      
      private function §6#N§() : Boolean
      {
         if(§?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      override protected function §`%V§() : void
      {
         new §5#-§(owner,paramSet);
         §=#P§.§6+§();
         §?!P§.update(owner);
         §?!K§();
      }
   }
}

