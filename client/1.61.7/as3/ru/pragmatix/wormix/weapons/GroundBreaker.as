package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §2#i§.§+%z§;
   import §]$v§.§5"R§;
   import §`%&§.§5$1§;
   
   public class GroundBreaker extends Bazooka
   {
      
      public function GroundBreaker()
      {
         super();
         §-g§ = new §5$1§(100,true,0.3);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§5"R§ = new §5"R§(owner,paramSet,shotParams.angle,§-&I§(shotParams.power));
         if(owner.squad.isLocal())
         {
            _loc1_.customSource = §<$c§.§ !=§(§+%z§.§'#?§);
         }
         if(property["reduceRandom"])
         {
            _loc1_.reduceRandom();
         }
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

