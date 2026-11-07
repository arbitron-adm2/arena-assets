package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §0"L§.§+# §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §[%'§.§<"G§;
   import §`%&§.§5$1§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class Bazooka extends §,%r§
   {
      
      private var dontSpendTurn:Boolean;
      
      public function Bazooka()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §-g§ = new §5$1§(50,true);
         var _loc1_:§!"G§ = new §!"G§();
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
      }
      
      protected function §6#N§(param1:Number) : Boolean
      {
         var _loc2_:String = null;
         if(Boolean(getProperty("unspendingTurn")) && Boolean(§9$h§.§!%w§(owner)) || (Boolean(getProperty("consumable") || getProperty("seasonal"))) && Boolean(§?!P§.§!%w§(owner)))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc2_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(owner))
               {
                  _loc2_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(owner))
               {
                  _loc2_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc2_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(getProperty("dontSpendTurn"))
         {
            this.dontSpendTurn = true;
            §^&I§.value = false;
         }
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:§]$;§ = null;
         var _loc1_:Class = getProperty("ammoClass") as Class;
         new _loc1_(owner,paramSet,shotParams.angle,§-&I§(shotParams.power));
         if(getProperty("unspendingTurn"))
         {
            §9$h§.update(owner);
         }
         if(Boolean(getProperty("consumable")) || Boolean(getProperty("seasonal")))
         {
            §?!P§.update(owner);
         }
         §?!K§();
         if(this.dontSpendTurn)
         {
            _loc2_ = §8"%§.§?!W§.§4"m§;
            if(Boolean(_loc2_) && Boolean(_loc2_.§#"G§()) && _loc2_.§=%g§())
            {
               §+# §.§9! §.activate();
               §8"%§.§?!W§.§4"m§.§%!J§(true);
            }
         }
         else
         {
            §=#P§.§6+§();
         }
      }
   }
}

