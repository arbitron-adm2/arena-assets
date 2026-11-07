package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §+%S§.§ #R§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   
   public class UnderwaterBreathPotion extends §,%r§
   {
      
      public static const §&%#§:§&$2§ = new §&$2§(4);
      
      public function UnderwaterBreathPotion()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      override protected function §`%V§() : void
      {
         owner.buffs.place(new § #R§(§&%#§.value));
         §9$h§.update(owner);
         §?!P§.update(owner);
         §?!K§();
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
      }
      
      private function §6#N§() : Boolean
      {
         if(§9$h§.§!%w§(owner) || §?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         if(owner.bonuses.§^#5§(Bonus.§&$x§))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.UNDERWATER_BREATH_POTION_USELESS,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
   }
}

