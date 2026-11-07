package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §&!?§.§,#s§;
   import §+%S§.KamikazeBuff;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class KamikazeDynamite extends §,%r§
   {
      
      public function KamikazeDynamite()
      {
         super();
         §^&I§.value = false;
         §-g§ = new §,#s§();
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      override protected function §`%V§() : void
      {
         owner.buffs.place(new KamikazeBuff(paramSet));
         §9$h§.update(owner);
         §?!K§();
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
      }
      
      private function §6#N§() : Boolean
      {
         if(§9$h§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         if(owner.buffs.hasBuff(KamikazeBuff.NAME))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.KAMIKAZE_ALREADY_ACTIVATED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
   }
}

