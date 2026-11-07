package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §2#i§.§+%z§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§""N§;
   import §<!^§.§71§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import §`%&§.§,%§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class HandicraftedSniperRifle extends §,%r§
   {
      
      public static const §7$#§:§&$2§ = new §&$2§(15);
      
      public static const §1u§:§&$2§ = new §&$2§(15);
      
      public static const §'"g§:Number = Math.PI / 144;
      
      public static const §&!O§:§&$2§ = new §&$2§(400);
      
      public static const §;"V§:uint = 6732595;
      
      public function HandicraftedSniperRifle()
      {
         super();
         §"#z§ = §2$"§ = 100;
         var _loc1_:§""N§ = new §""N§(§&!O§.value,§'"g§,§7$#§.value,§1u§.value,§;"V§);
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
         §-g§ = new §,%§(110,§"#z§,0.1,false,0,true,true);
         §,%§(§,!"§).minDistance = 100;
      }
      
      private function §6#N§(param1:Number) : Boolean
      {
         if(§?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§71§ = new §71§(owner,owner.x,owner.y,shotParams.angle,§2$"§);
         if(owner.squad.isLocal())
         {
            _loc1_.customSource = §<$c§.§ !=§(§+%z§.SNIPER_RIFLE);
         }
         §@%;§.play(§`!v§.§?#§);
         if(shotsLeft.value == 0)
         {
            §?!P§.update(owner);
            §?!K§();
            §=#P§.§6+§();
         }
      }
   }
}

