package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §&"c§.§!!q§;
   import §9%W§.§&!P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   
   public class SpiderWeapon extends §,%r§ implements §-$2§
   {
      
      public function SpiderWeapon()
      {
         super();
         §7&§(new §&!P§());
      }
      
      public function jumpShoot(param1:Boolean) : void
      {
         if(!§8"%§.§?!W§.§4"m§.§1"3§())
         {
            shootWithParams(§!!q§.EMPTY);
         }
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:Class = getProperty("classMine") as Class;
         new _loc1_(owner,paramSet,owner.x,owner.y,owner.direction);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

