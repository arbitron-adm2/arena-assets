package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class Crossbow extends §,%r§
   {
      
      public function Crossbow()
      {
         super();
         §"#z§ = §2$"§ = 50;
         §7&§(new §!7§());
         §-g§ = new §8U§(110,§"#z§,true,220,100);
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         §@%;§.play(§`!v§.§#%u§);
         var _loc1_:Class = getProperty("classBolt") as Class;
         if(getProperty("quantityBolt").value > 1)
         {
            _loc2_ = (§&$2§(getProperty("quantityBolt")).value - 1) / 2;
            _loc3_ = -_loc2_;
            while(_loc3_ <= _loc2_)
            {
               new _loc1_(owner,paramSet,shotParams.angle + _loc3_ * Math.PI / 60,§2$"§ + §8"%§.randomSeed.§,!q§(-4,4));
               _loc3_++;
            }
         }
         else
         {
            new _loc1_(owner,paramSet,shotParams.angle + Math.PI / 60,§2$"§);
         }
         if(shotsLeft.value == 0)
         {
            §?!K§();
            §=#P§.§6+§();
         }
      }
   }
}

