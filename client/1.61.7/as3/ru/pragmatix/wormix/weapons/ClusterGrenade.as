package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §5!,§.§?!P§;
   import §<!^§.§]#u§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   
   public class ClusterGrenade extends Grenade
   {
      
      public function ClusterGrenade()
      {
         super();
         §-g§ = new §`§(§"#z§,§2$"§,75);
      }
      
      override protected function §`%V§() : void
      {
         §]"b§();
         var _loc1_:Class = getProperty("ammoClass") as Class;
         var _loc2_:§]#u§ = new §]#u§(owner,paramSetEx,§&$2§(getProperty("shardQuantity")),getProperty("shardClass") as Class);
         ammo = new _loc1_(owner,paramSet,_loc2_,§ %m§.value,shotParams.angle,§-&I§(shotParams.power),§2;§,getProperty("blinkClassName"));
         if(getProperty("explodeOnStopMoving"))
         {
            ammo.explodeOnStopMoving();
         }
         if(Boolean(getProperty("hasTimer")) && Boolean(!getProperty("hasTimer").value) && !shotParams.isAlternate)
         {
            ammo.§^&&§();
         }
         if(property["trailWidth"])
         {
            ammo.trailWidth = property["trailWidth"];
         }
         if(property["trailColor"])
         {
            ammo.trailColor = ammo.§?$z§ = property["trailColor"];
         }
         ammo.§6"9§();
         if(getProperty("seasonal"))
         {
            §?!P§.update(owner);
         }
         §>&%§();
         §=#P§.§6+§();
      }
   }
}

