package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §""8§.§,"z§;
   import §9%W§.§!"G§;
   import §`%&§.§`§;
   
   public class StickyGrenade extends §,%r§
   {
      
      public function StickyGrenade()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §7&§(new §!"G§());
         §-g§ = new §`§(§"#z§,§2$"§,65,false);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:Class = getProperty("ammoClass") as Class;
         var _loc2_:§,"z§ = new _loc1_(owner,paramSet,paramSetEx,getProperty("blinkClassName"),getProperty("quantityShards"),getProperty("shardClass"),shotParams.angle,§-&I§(shotParams.power));
         if(getProperty("trailColor"))
         {
            _loc2_.trailColor = _loc2_.§?$z§ = property["trailColor"];
         }
         _loc2_.§6"9§();
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

