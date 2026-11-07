package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0"L§.§+# §;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §9"-§.AnchorTeleportMark;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class AnchorTeleportWeapon extends §,%r§
   {
      
      public function AnchorTeleportWeapon(param1:uint = 0)
      {
         super(param1);
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         if(§9$h§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§]$;§ = §8"%§.§?!W§.§4"m§;
         var _loc2_:int = int(property["lifetime"].value);
         new AnchorTeleportMark(owner,owner.x,owner.y,paramSet,_loc2_);
         §9$h§.update(owner);
         §?!K§();
         if(Boolean(_loc1_) && Boolean(_loc1_.§#"G§()) && _loc1_.§=%g§())
         {
            §+# §.§9! §.activate();
            _loc1_.§%!J§(true);
         }
      }
   }
}

