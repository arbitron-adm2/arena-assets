package ru.pragmatix.wormix.weapons
{
   import § %f§.§=%f§;
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §`%&§.§5$1§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class PumpkinWeapon extends §,%r§
   {
      
      public function PumpkinWeapon()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §-g§ = new §5$1§(90,false,0);
         var _loc1_:§!"G§ = new §!"G§();
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
      }
      
      protected function §6#N§(param1:Number) : Boolean
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
         §@%;§.play(§`!v§.§7#O§);
         new §=%f§(owner,owner.x,owner.y,paramSet,shotParams.angle,§-&I§(shotParams.power));
         §?!P§.update(owner);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

