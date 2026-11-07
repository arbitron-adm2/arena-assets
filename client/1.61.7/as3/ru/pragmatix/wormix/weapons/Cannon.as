package ru.pragmatix.wormix.weapons
{
   import § %f§.§##d§;
   import § &5§.§=#P§;
   import §0"L§.§+# §;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §`%&§.§`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class Cannon extends §,%r§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const §@%S§:Number = PI_HALF - §!7§.§'$+§;
      
      private static const §0"?§:int = 35;
      
      private static const §7$P§:int = 10;
      
      public function Cannon()
      {
         super();
         §"#z§ = §2$"§ = 35;
         §-g§ = new §`§(§"#z§ - 5,§2$"§ + 5,130,false);
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(param1["trajectoryCrosshair"].value)
         {
            §§push(§§findproperty(§7&§));
            §§push(§§findproperty(§%G§));
            §§push(§2$"§);
            §§pop().§7&§(new §§pop().§%G§(§§pop(),new <§]%G§>[§]%G§.§5$r§],§%G§.§>%@§,§@%S§,§@%S§,§%G§.§7$P§,param1["ricochetsCrosshair"]));
         }
         else
         {
            §7&§(new §!7§(§!7§.§'$+§,§@%S§,§@%S§));
         }
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§##d§ = new §##d§(owner,paramSet,shotParams.angle,§2$"§);
         if(!getProperty("moveAfterShot"))
         {
            §+# §.§9! §.deactivate();
         }
         if(getProperty("slowing"))
         {
            _loc1_.§9#-§();
         }
         if(Boolean(getProperty("stickyAmmo")) && !shotParams.isAlternate)
         {
            _loc1_.§0#d§();
         }
         if(getProperty("trailLength"))
         {
            _loc1_.trailLength = property["trailLength"];
         }
         if(getProperty("trailWidth"))
         {
            _loc1_.trailWidth = property["trailWidth"];
         }
         if(getProperty("trailColor"))
         {
            _loc1_.trailColor = _loc1_.§?$z§ = property["trailColor"];
         }
         _loc1_.§6"9§();
         if(shotsLeft.value == 0)
         {
            §?!K§();
            §=#P§.§6+§();
         }
      }
   }
}

