package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §3#T§.§8w§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class DiscLauncher extends §,%r§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const §0"?§:int = 35;
      
      private static const §7$P§:int = 10;
      
      public function DiscLauncher()
      {
         super();
         §2$"§ = §"#z§ = 50;
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(Boolean(param1["trajectoryCrosshair"]) && Boolean(param1["trajectoryCrosshair"].value))
         {
            §§push(§§findproperty(§7&§));
            §§push(§§findproperty(§%G§));
            §§push(§2$"§);
            var _temp_2:* = new <§]%G§>[§]%G§.§5$r§];
            §§pop().§7&§(new §§pop().§%G§(§§pop(),new <§]%G§>[§]%G§.§5$r§],§0"?§,PI_HALF,PI_HALF,§7$P§,param1["ricochetsCrosshair"]));
         }
         else
         {
            §7&§(new §!7§());
         }
      }
      
      override protected function §`%V§() : void
      {
         new §8w§(owner,paramSet,shotParams.angle,§2$"§,§&$2§(getProperty("totalBonusDamage")).value);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

