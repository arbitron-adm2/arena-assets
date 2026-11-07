package §?"q§
{
   import § &5§.§=#P§;
   import §""8§.§]#g§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§;n§;
   import §+%S§.§2$#§;
   import §,!f§.*;
   import §0"L§.§+# §;
   import §4%_§.ZombieGrave;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$K§.§`""§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §^#[§.§&$2§;
   import flash.geom.ColorTransform;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §""?§ extends §]#g§
   {
      
      public function §""?§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4);
         §7"A§ = §;n§.§8%a§;
      }
      
      override public function attachTrail() : void
      {
         if(§8"%§.§&S§.§-p§())
         {
            ammoTrail = §,$n§.§&#z§(this,false,4,8,16711680,16711680,1);
         }
      }
      
      override protected function trigger(param1:§+%]§) : void
      {
         if(!param1.buffs.hasBuff(§`""§.NAME))
         {
            param1.buffs.place(new §2$#§());
         }
      }
   }
}

