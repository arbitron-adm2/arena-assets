package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §&!?§.§0%W§;
   import §+%S§.§@#s§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class Antitoxin extends §,%r§
   {
      
      private const § &G§:§&$2§ = new §&$2§(6);
      
      public function Antitoxin()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
         §-g§ = new §0%W§();
      }
      
      override protected function §`%V§() : void
      {
         §@%;§.play(§`!v§.ANTITOXIN);
         owner.buffs.place(new §@#s§(paramSet.damage.value,this.§ &G§.value));
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
         var _loc1_:String = null;
         if(§9$h§.§!%w§(owner) || §?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc1_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(owner))
               {
                  _loc1_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(owner))
               {
                  _loc1_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc1_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         if(owner.buffs.hasBuff(§@#s§.NAME))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.ALREADY_ANTITOXIN,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
   }
}

