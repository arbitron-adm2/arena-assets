package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §3#T§.Mole;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class MoleWeapon extends §,%r§
   {
      
      public function MoleWeapon()
      {
         super();
         var _loc1_:§!7§ = new §!7§();
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
      }
      
      private function §6#N§(param1:Number) : Boolean
      {
         var _loc2_:Point = null;
         if(§?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         _loc2_ = getBarrelPoint(param1);
         var _loc3_:Boolean = §>#9§.point(_loc2_.x,_loc2_.y);
         if(§8"%§.§?!W§.§4"m§.§=%g§() && !_loc3_)
         {
            §>&-§.§[$9§(§0$N§.MOLE_USELESS,true);
         }
         return _loc3_;
      }
      
      override protected function §`%V§() : void
      {
         new Mole(owner,paramSet,shotParams.angle);
         §?!P§.update(owner);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

