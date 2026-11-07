package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §8$V§.§^#§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§;!K§;
   import §`%&§.§8U§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class EnergyGun extends §,%r§
   {
      
      public function EnergyGun()
      {
         super();
         §"#z§ = §2$"§ = 50;
         §-g§ = new §8U§(90,§"#z§);
      }
      
      override public function §""2§(param1:Object) : void
      {
         if(Boolean(param1["trajectoryCrosshair"]) && §?"&§(param1["trajectoryCrosshair"]).value)
         {
            §7&§(new §%G§(§"#z§,new <§]%G§>[§]%G§.§5$r§],§%G§.§4"<§));
         }
         else
         {
            §7&§(new §!7§());
         }
         super.§""2§(param1);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§;!K§ = new §;!K§(owner,getBarrelPoint(shotParams.angle),paramSet,shotParams.angle,§"#z§);
         if(property["bounces"])
         {
            _loc1_.§="0§(§&$2§(property["bounces"]).value);
         }
         if(property["bounceDamage"])
         {
            _loc1_.§3j§(§&$2§(property["bounceDamage"]).value);
         }
         if(shotsLeft.value == 0)
         {
            §?!K§();
            §=#P§.§6+§();
         }
      }
   }
}

