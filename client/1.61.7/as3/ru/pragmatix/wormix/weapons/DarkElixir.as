package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §'!Z§.§2!H§;
   import §+%S§.§;%l§;
   import §2#i§.§+%z§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   
   public class DarkElixir extends §,%r§
   {
      
      private static const §%i§:Number = 0.2;
      
      private static const §[#,§:§&$2§ = new §&$2§(10);
      
      public function DarkElixir()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:int = int(Math.floor((owner.record.stats.§8+§.value + owner.record.stats.§3$L§.value) * §%i§));
         owner.attributes.hp.change(-_loc1_);
         §2!H§.§'!i§(_loc1_.toString(),§2!H§.§8"<§,owner.x,owner.y - 10,20);
         §@%;§.play(§`!v§.ANTIFREEZE);
         owner.buffs.place(new §;%l§(§[#,§.value));
         if(!§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §`%u§.§0!1§(§+%z§.§"A§,owner);
         }
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
         if(owner.bonuses.§^#5§(Bonus.§!$=§))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.HAVE_WATER_PROTECTION,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         if(owner.hp <= int(Math.floor((owner.record.stats.§8+§.value + owner.record.stats.§3$L§.value) * §%i§)))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.HP_NOT_EXIST_FOR_ACTIVATE,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
   }
}

