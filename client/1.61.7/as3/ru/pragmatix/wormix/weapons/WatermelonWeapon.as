package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §5!,§.§?!P§;
   import §`%&§.§`§;
   
   public class WatermelonWeapon extends Grenade
   {
      
      public static const §2;§:Number = 0.7;
      
      public function WatermelonWeapon()
      {
         super();
         §"#z§ = 5;
         §2$"§ = 35;
         §-g§ = new §`§(§"#z§,§2$"§,90);
      }
      
      override protected function §`%V§() : void
      {
         §]"b§();
         var _loc1_:Class = getProperty("ammoClass") as Class;
         ammo = new _loc1_(owner,paramSet,paramSetEx,§ %m§.value,shotParams.angle,§-&I§(shotParams.power),§2;§);
         if(getProperty("consumable"))
         {
            §?!P§.update(owner);
         }
         §>&%§();
         §=#P§.§6+§();
      }
   }
}

