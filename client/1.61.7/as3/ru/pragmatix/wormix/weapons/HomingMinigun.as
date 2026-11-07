package ru.pragmatix.wormix.weapons
{
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §2#i§.§+%z§;
   import §<!^§.§?$W§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import flash.geom.Point;
   
   public class HomingMinigun extends Minigun
   {
      
      public static const §1!&§:§&$2§ = new §&$2§(4);
      
      public function HomingMinigun()
      {
         super();
         §"#z§ = §2$"§ = 40;
         §-&2§ = new §&$2§(§1!&§.value);
      }
      
      override protected function §<%8§(param1:Number) : void
      {
         var _loc2_:Point = null;
         _loc2_ = getBarrelPoint(param1);
         var _loc3_:§?$W§ = new §?$W§(owner,_loc2_.x,_loc2_.y,param1,§"#z§,paramSet);
         if(owner.squad.isLocal())
         {
            _loc3_.customSource = §<$c§.§ !=§(§+%z§.MINIGUN);
         }
         §@%;§.play(§`!v§.§]#Y§);
      }
   }
}

