package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §9%W§.§!"G§;
   import §]$v§.§+"Q§;
   import §`%&§.§5$1§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   
   public class FrozenOrbWeapon extends §,%r§
   {
      
      public function FrozenOrbWeapon()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 30;
         §7&§(new §!"G§());
         §-g§ = new §5$1§(50,true);
      }
      
      override protected function §`%V§() : void
      {
         new §+"Q§(owner,paramSet,shotParams.angle,§-&I§(shotParams.power),paramSetEx);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

