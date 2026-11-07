package ru.pragmatix.wormix.weapons
{
   import § %f§.§;$y§;
   import § &5§.§=#P§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   
   public class Molotov extends Grenade
   {
      
      public static const §1%t§:§&$2§ = new §&$2§(36);
      
      public function Molotov()
      {
         super();
         §-g§ = new §`§(§"#z§,§2$"§,120,false);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§&$2§ = property["fireCount"];
         ammo = new §;$y§(owner,paramSet,shotParams.angle,§-&I§(shotParams.power),_loc1_);
         if(getProperty("trailWidth"))
         {
            ammo.trailWidth = property["trailWidth"];
         }
         if(getProperty("trailColor"))
         {
            ammo.trailColor = ammo.§?$z§ = property["trailColor"];
         }
         ammo.§6"9§();
         §>&%§();
         §=#P§.§6+§();
      }
   }
}

