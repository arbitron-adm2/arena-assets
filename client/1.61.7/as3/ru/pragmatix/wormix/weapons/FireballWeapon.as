package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §4!!§.§!$j§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §`%&§.§=B§;
   
   public class FireballWeapon extends §,%r§
   {
      
      public function FireballWeapon()
      {
         super();
         §"#z§ = §2$"§ = 12;
         §7&§(new §!7§());
         §-g§ = new §=B§(75,§"#z§,700);
      }
      
      override protected function §`%V§() : void
      {
         §@%;§.play(§`!v§.§>#+§);
         new §!$j§(owner,paramSet,shotParams.angle,§"#z§);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

