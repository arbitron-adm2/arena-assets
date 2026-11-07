package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §&!?§.§+" §;
   import §+%S§.§?3§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import flash.display.DisplayObject;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class Bandage extends §,%r§
   {
      
      public static const §8$"§:Number = 0.5;
      
      public static const §+"X§:uint = 10;
      
      public function Bandage()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
         §-g§ = new §+" §();
      }
      
      private function §6#N§() : Boolean
      {
         var _loc2_:String = null;
         if(§9$h§.§!%w§(owner) || §?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc2_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(owner))
               {
                  _loc2_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(owner))
               {
                  _loc2_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc2_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         var _loc1_:Boolean = §-#M§.§1$a§(§2$v§,owner,false) != null;
         if(owner.buffs.hasBuff(§?3§.NAME))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.ALREADY_BANDAGED,true);
            }
            return false;
         }
         if(owner.attributes.hp.§4$M§() < §+"X§ || _loc1_)
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.BANDAGE_USELESS,true);
            }
            return false;
         }
         return true;
      }
      
      override protected function §`%V§() : void
      {
         §@%;§.play(§`!v§.BANDAGE);
         owner.buffs.place(new §?3§());
         owner.buffs.§6C§(§#&#§.NAME);
         var _loc1_:int = owner.attributes.hp.§4$M§() * §8$"§;
         var _loc2_:int = owner.bonuses.getStatValue(Bonus.§;#-§);
         _loc1_ += §-q§.§8$G§(_loc2_,_loc1_);
         owner.attributes.hp.§#1§(_loc1_);
         §9$h§.update(owner);
         §?!P§.update(owner);
         §?!K§();
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
      }
   }
}

