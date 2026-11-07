package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class OpenSpaceDevicePlacer extends §,%r§
   {
      
      private var position:Point;
      
      public function OpenSpaceDevicePlacer()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      private function §6#N§() : Boolean
      {
         var _loc1_:Point = null;
         var _loc3_:String = null;
         if(§9$h§.§!%w§(owner) || §?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc3_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(owner))
               {
                  _loc3_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(owner))
               {
                  _loc3_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc3_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         _loc1_ = new Point(owner.x + §<H§.§@% § * owner.direction,owner.y);
         var _loc2_:Point = §>#9§.§>@§(_loc1_.x,_loc1_.y,0,-_loc1_.y);
         this.position = §>#9§.§>@§(_loc1_.x,_loc1_.y,0,§<H§.§,%P§);
         if(§8"%§.§?!W§.§4"m§.§=%g§() && (Boolean(!this.position) || Boolean(_loc2_)))
         {
            §>&-§.§[$9§(§0$N§.OPEN_SPACE_DEVICE_USELESS,true);
         }
         return this.position != null && !_loc2_;
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:Class = getProperty("ammoClass") as Class;
         new _loc1_(this.position,owner);
         §9$h§.update(owner);
         §?!P§.update(owner);
         this.§?!K§();
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         this.position = null;
      }
   }
}

