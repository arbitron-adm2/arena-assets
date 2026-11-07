package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §"!C§.§3#n§;
   import §%"1§.§@%;§;
   import §&!?§.§6!=§;
   import §+%S§.§"$7§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class AntifreezePotion extends §,%r§
   {
      
      public function AntifreezePotion()
      {
         super();
         §7&§(new §&!P§());
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new §6!=§(§?"&§(getProperty("poisonProtection")).value);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:int = paramSet.damage.value;
         var _loc2_:int = owner.bonuses.getStatValue(Bonus.§;#-§);
         _loc1_ += §-q§.§8$G§(_loc2_,_loc1_);
         var _loc3_:int = owner.attributes.hp.§#1§(_loc1_,true);
         if(_loc3_ > 0 && owner.squad.isLocal())
         {
            §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§ %X§,_loc3_);
            §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,%R§,_loc3_);
         }
         owner.buffs.place(new §"$7§(2,§?"&§(getProperty("poisonProtection")).value,§&$2§(getProperty("burstAttack")).value,§&$2§(getProperty("burstArmor")).value));
         §@%;§.play(§`!v§.ANTIFREEZE);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

