package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §9%W§.§%G§;
   import §]$v§.§]%_§;
   import §`%&§.§5$1§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class FreezingBazooka extends Bazooka
   {
      
      private static const §[M§:uint = 30;
      
      public function FreezingBazooka()
      {
         super();
         §-g§ = new §5$1§(90,true,0);
      }
      
      override public function §""2§(param1:Object) : void
      {
         if(param1["trajectoryCrosshair"])
         {
            §"#>§.length = 0;
            §7&§(new §%G§(§[M§,new <§]%G§>[§]%G§.§5$r§,§]%G§.§-4§]));
         }
         super.§""2§(param1);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:uint = property["trajectoryCrosshair"] ? §[M§ : §-&I§(shotParams.power);
         var _loc2_:§]%_§ = new §]%_§(owner,getBarrelPoint(shotParams.angle),paramSet,shotParams.angle,_loc1_);
         var _loc3_:Array = [];
         if(property["bonusOnFrozen"])
         {
            _loc3_.push(§+m§.NAME);
         }
         if(property["bonusOnSlowed"])
         {
            _loc3_.push(§[&;§.NAME);
         }
         if(_loc3_.length > 0)
         {
            _loc2_.§;&'§(_loc3_);
         }
         if(Boolean(property["bonusFreezeFirstShot"]) && shotsLeft.value + 1 == shots.value)
         {
            _loc2_.§8$z§(property["bonusFreezeFirstShot"]);
         }
         if(property["bonusDamage"])
         {
            _loc2_.§3%<§(property["bonusDamage"]);
         }
         if(property["bonusFreeze"])
         {
            _loc2_.§1!v§(property["bonusFreeze"]);
         }
         if(property["targetSearch"])
         {
            _loc2_.§"%B§();
         }
         if(shotsLeft.value == 0)
         {
            §?!K§();
            §=#P§.§6+§();
         }
      }
   }
}

