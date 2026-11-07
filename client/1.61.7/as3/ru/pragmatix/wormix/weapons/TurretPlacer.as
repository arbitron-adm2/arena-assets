package ru.pragmatix.wormix.weapons
{
   import §5%S§.§>&-§;
   import §@<§.§+%]§;
   import flash.utils.getDefinitionByName;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class TurretPlacer extends DevicePlacer
   {
      
      public function TurretPlacer()
      {
         super();
      }
      
      override public function attach(param1:§+%]§) : void
      {
         var _loc3_:Vector.<BackpackItem> = null;
         var _loc4_:Array = null;
         var _loc5_:BackpackItem = null;
         var _loc6_:BackpackItem = null;
         var _loc7_:int = 0;
         super.attach(param1);
         var _loc2_:Array = property["usingWeapons"];
         if(Boolean(_loc2_) && Boolean(_loc2_.length))
         {
            _loc3_ = owner.squad.§?"#§().getBattleBackpack().getOrderedWeapons();
            _loc4_ = property["excludedWeapons"] || [];
            for each(_loc6_ in _loc3_)
            {
               if(Boolean(_loc6_ && !_loc6_.§1!9§ && !_loc6_.isEmpty()) && Boolean(_loc4_.indexOf(_loc6_.getId()) == -1) && _loc2_.indexOf(§1!S§.§[!r§(_loc6_.getId())) != -1)
               {
                  _loc5_ = _loc6_;
                  break;
               }
            }
            if(_loc5_ == null)
            {
               §?!K§();
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  §>&-§.§[$9§(§0$N§.NO_NECESSARY_WEAPONS_IN_BAG,true);
               }
            }
         }
         if(property["minUnits"])
         {
            _loc7_ = int(property["minUnits"]);
            if(§8"%§.§?!W§.§4"m§.§6"M§(owner).length < _loc7_)
            {
               §?!K§();
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  §>&-§.§[$9§(§0$N§.NO_NECESSARY_UNITS_IN_TEAMS,true);
               }
            }
         }
      }
      
      override protected function §!!M§() : void
      {
         var _loc1_:Class = getProperty("ammoClass") as Class;
         new _loc1_(position,owner,property["maximumShots"]);
      }
   }
}

