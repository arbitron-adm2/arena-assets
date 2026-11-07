package §?"q§
{
   import §""8§.§]#g§;
   import §&"c§.§5$n§;
   import §'!Z§.§;n§;
   import §+%S§.§%!%§;
   import §0%[§.*;
   import §65§.§6%E§;
   import §?$K§.§`""§;
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class LullabyElixir extends §]#g§
   {
      
      public function LullabyElixir(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4);
         §7"A§ = §;n§.§1&>§;
      }
      
      override public function attachTrail() : void
      {
         if(§8"%§.§&S§.§-p§())
         {
            ammoTrail = §,$n§.§&#z§(this,false,4,8,4285363,4285363,1);
         }
      }
      
      override protected function trigger(param1:§+%]§) : void
      {
         var _loc2_:§6%E§ = param1.buffs;
         if(!_loc2_.hasBuff(§`""§.NAME))
         {
            _loc2_.place(new §%!%§());
         }
      }
   }
}

