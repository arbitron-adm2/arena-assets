package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §'!Z§.§1"-§;
   import §+"m§.§3#[§;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §8#a§.ShopMenu;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class ArtilleryWeapon extends §,%r§
   {
      
      protected var mark:MovieClip;
      
      public function ArtilleryWeapon()
      {
         super(§ #i§);
         §7&§(new §8#p§());
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      private function §6#N§(param1:§+%]§ = null) : Boolean
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
         new §3#[§(owner,paramSet,shotParams.point);
         §?!P§.update(owner);
         this.§?!K§();
         §=#P§.§6+§();
      }
      
      override protected function §7k§(param1:int) : void
      {
         if(param1 == 0)
         {
            this.mark = §1"-§.§##7§(shotParams.point.x,shotParams.point.y);
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.mark = null;
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         if(this.mark != null)
         {
            Application.scene.removeChild(this.mark);
         }
      }
   }
}

