package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §4#`§.BattleInterface;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §^"y§.§]#i§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   
   public class CooldownResetWeapon extends §,%r§
   {
      
      private var weapons:Vector.<BackpackItem>;
      
      public function CooldownResetWeapon()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      private function §6#N§() : Boolean
      {
         var _loc2_:BackpackItem = null;
         var _loc3_:String = null;
         if(§9$h§.§!%w§(owner) || §?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc3_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(owner))
               {
                  _loc3_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(owner))
               {
                  _loc3_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc3_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         this.weapons = new Vector.<BackpackItem>(0);
         var _loc1_:Vector.<BackpackItem> = owner.squad.§?"#§().getBattleBackpack().getOrderedWeapons();
         for each(_loc2_ in _loc1_)
         {
            if(Boolean(_loc2_) && Boolean(_loc2_.§1!9§) && !_loc2_.isEmpty())
            {
               this.weapons.push(_loc2_);
            }
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§() && this.weapons.length == 0)
         {
            §>&-§.§[$9§(§0$N§.COOLDOWN_RESET_USELESS,true);
         }
         return this.weapons.length > 0;
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:int = 0;
         _loc1_ = §8"%§.randomSeed.§,!q§(0,this.weapons.length - 1);
         var _loc2_:int = this.weapons[_loc1_].§&">§() + 1;
         this.weapons[_loc1_].§=%;§(-1);
         var _loc3_:uint = uint(this.weapons[_loc1_].getId());
         §7%g§.§`%i§(owner,new <int>[_loc3_],new <int>[_loc2_],false);
         §9$h§.update(owner);
         §?!P§.update(owner);
         this.§?!K§();
         BattleInterface.§?#"§(_loc3_);
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
         §@%;§.play(§`!v§.TELEPORT);
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         this.weapons = null;
      }
   }
}

