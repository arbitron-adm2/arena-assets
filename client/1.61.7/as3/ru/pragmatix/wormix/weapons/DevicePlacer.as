package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §-%B§.§-"o§;
   import §0"L§.§+# §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<"?§.§7!@§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=$#§.§1!$§;
   import §=&!§.§]$d§;
   import §?$7§.§+#N§;
   import §?%J§.§7"h§;
   import §@"!§.§`<§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import config.§;"I§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class DevicePlacer extends §,%r§
   {
      
      protected var position:Point;
      
      public function DevicePlacer()
      {
         super();
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§,true));
      }
      
      protected function §6#N§() : Boolean
      {
         var _loc2_:Point = null;
         var _loc4_:Point = null;
         var _loc5_:String = null;
         var _loc1_:Boolean = !getProperty("dontSpendTurn") || getProperty("dontSpendTurn") == false;
         if(!_loc1_ && §9$h§.§!%w§(owner) || Boolean(getProperty("seasonal")) && Boolean(§?!P§.§!%w§(owner)))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc5_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(owner))
               {
                  _loc5_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(owner))
               {
                  _loc5_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc5_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         _loc2_ = new Point(owner.x + §<H§.§@% § * owner.direction,owner.y);
         var _loc3_:Boolean = §>#9§.§+%Y§(_loc2_.x,_loc2_.y,10);
         if(getProperty("barrierHeight"))
         {
            _loc4_ = §>#9§.§>@§(_loc2_.x,_loc2_.y,0,-int(getProperty("barrierHeight")));
         }
         this.position = §>#9§.§>@§(_loc2_.x,_loc2_.y,0,§<H§.§,%P§);
         if(§8"%§.§?!W§.§4"m§.§=%g§() && (Boolean(!this.position || _loc3_) || Boolean(_loc4_)))
         {
            §>&-§.§[$9§(_loc4_ ? §0$N§.OPEN_SPACE_DEVICE_USELESS : §0$N§.CAN_NOT_PLACE_DEVICE,true);
         }
         return this.position != null && !_loc3_ && !_loc4_;
      }
      
      override protected function §`%V§() : void
      {
         this.§!!M§();
         var _loc1_:Boolean = !getProperty("dontSpendTurn") || getProperty("dontSpendTurn") == false;
         if(!_loc1_)
         {
            §9$h§.update(owner);
         }
         if(getProperty("seasonal"))
         {
            §?!P§.update(owner);
         }
         this.§?!K§();
         if(_loc1_)
         {
            if(Boolean(getProperty("canRunAway")) && !property["canRunAway"].value)
            {
               §+# §.§9! §.deactivate();
            }
            §=#P§.§6+§();
         }
         else if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
      }
      
      protected function §!!M§() : void
      {
         var _loc1_:Class = getProperty("ammoClass") as Class;
         new _loc1_(this.position,owner);
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         this.position = null;
      }
   }
}

