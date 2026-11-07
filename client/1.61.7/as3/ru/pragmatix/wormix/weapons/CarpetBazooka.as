package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §'T§.§!$C§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import flash.events.Event;
   
   public class CarpetBazooka extends Bazooka
   {
      
      public function CarpetBazooka()
      {
         super();
         §-g§ = new §5$1§(105,false,0.5);
      }
      
      override protected function §`%V§() : void
      {
         §@%;§.play(§`!v§.§;!w§);
         var _loc1_:Class = getProperty("classCarpet") as Class;
         var _loc2_:§!$C§ = new _loc1_(owner,paramSet,0,0,0,0);
         var _loc3_:int = getProperty("maxBounce") ? §&$2§(getProperty("maxBounce")).value : -1;
         var _loc4_:int = getProperty("damageForBounce") ? §&$2§(getProperty("damageForBounce")).value : -1;
         if(getProperty("autoTargeting"))
         {
            _loc2_.§`%!§();
         }
         _loc2_.§2W§(_loc3_,_loc4_);
         _loc2_.x = owner.x + Math.cos(shotParams.angle) * 25;
         _loc2_.y = owner.y + Math.sin(shotParams.angle) * 25;
         _loc2_.§^"F§(shotParams.angle,§-&I§(shotParams.power));
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

