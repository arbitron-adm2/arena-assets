package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §&"c§.§!!q§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§6#I§;
   import §9%W§.§&!P§;
   import §>">§.§@&+§;
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   
   public class Dynamite extends §,%r§ implements §-$2§
   {
      
      public function Dynamite()
      {
         super();
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         if(Boolean(getProperty("seasonal")) && §?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      public function jumpShoot(param1:Boolean) : void
      {
         if(this.§6#N§() && !§8"%§.§?!W§.§4"m§.§1"3§())
         {
            shootWithParams(§!!q§.EMPTY);
         }
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:Class = getProperty("classDynamite") as Class;
         var _loc2_:§6#I§ = new _loc1_(owner,owner.x,owner.y,paramSet);
         if(_loc2_ is §@&+§)
         {
            §@&+§(_loc2_).setParamSetEx(paramSetEx);
         }
         §?!P§.update(owner);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

