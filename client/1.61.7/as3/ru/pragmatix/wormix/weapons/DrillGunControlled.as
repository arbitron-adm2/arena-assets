package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<!G§.§5b§;
   import §<%k§.§`!v§;
   import §]$v§.§1>§;
   import §^#[§.§&$2§;
   import §`%&§.§,L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class DrillGunControlled extends §5b§
   {
      
      public function DrillGunControlled()
      {
         var _loc1_:Number = NaN;
         §"#z§ = 15;
         §2$"§ = 45;
         _loc1_ = Math.PI / 2 - Math.PI / 6;
         super(Math.PI / 360,_loc1_);
         var _loc2_:§!"G§ = new §!"G§(null,§!7§.§'$+§,Math.PI / 2,_loc1_);
         _loc2_.§9&;§(this.§6#N§);
         §7&§(_loc2_);
      }
      
      private function §6#N§(param1:Number) : Boolean
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
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new §,L§(80);
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         §@%;§.play(§`!v§.§["p§);
         var _loc1_:§1>§ = new §1>§(owner,paramSet,shotParams.angle,§-&I§(shotParams.power));
         if(Boolean(property["drillLength"]) && Boolean(property["drillRadius"]))
         {
            _loc2_ = §&$2§(property["drillLength"]).value;
            _loc3_ = §&$2§(property["drillRadius"]).value;
            _loc1_.§+"E§(_loc2_,_loc3_);
         }
         §?!P§.update(owner);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

