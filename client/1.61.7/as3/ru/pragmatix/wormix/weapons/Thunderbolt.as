package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §9%W§.§!"G§;
   import §`%&§.§5$1§;
   
   public class Thunderbolt extends §,%r§
   {
      
      public function Thunderbolt()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §-g§ = new §5$1§(100,true);
         §7&§(new §!"G§());
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:Class = Class(getProperty("ammoClass"));
         new _loc1_(owner,paramSet,paramSetEx,shotParams.angle,§-&I§(shotParams.power));
         owner.rolling = -owner.direction * 25;
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

