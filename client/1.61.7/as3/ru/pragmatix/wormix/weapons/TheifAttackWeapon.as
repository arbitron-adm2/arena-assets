package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §4!!§.§2$a§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§9#"§;
   import §<%k§.§`!v§;
   import §`%&§.§,%§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class TheifAttackWeapon extends §,%r§
   {
      
      public function TheifAttackWeapon()
      {
         super();
         §"#z§ = §2$"§ = 100;
         §-g§ = new §,%§(65,§"#z§);
      }
      
      override public function §""2§(param1:Object) : void
      {
         var _loc2_:§9#"§ = null;
         if(Boolean(param1["trajectoryCrosshair"]) && Boolean(param1["trajectoryCrosshair"].value))
         {
            _loc2_ = new §%G§(§"#z§,new <§]%G§>[§]%G§.§5$r§],§%G§.§4"<§);
         }
         else
         {
            _loc2_ = new §!7§();
         }
         §7&§(_loc2_);
         _loc2_.§9&;§(this.§6#N§);
         super.§""2§(param1);
         §^&I§.value = false;
      }
      
      private function §6#N§(param1:Number) : Boolean
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
         var ammo:§2$a§ = null;
         §@%;§.play(§`!v§.§'7§);
         ammo = new §2$a§(owner,getBarrelPoint(shotParams.angle),paramSet,shotParams.angle,§"#z§);
         if(property["trailColor"])
         {
            ammo.attachTrail(property["trailColor"]);
         }
         else
         {
            ammo.attachTrail();
         }
         if(property["extraDamage"])
         {
            ammo.§>!R§();
         }
         if(property["blockIncreaseAttack"])
         {
            ammo.§=$c§();
         }
         if(Boolean(property["inverse"]) && !shotParams.isAlternate)
         {
            ammo.§!$3§();
         }
         ammo.§>"t§(property["durationDirect"],property["durationArea"]);
         ammo.addEventListener(§0%v§.DISPOSED,function(param1:Event):void
         {
            var _loc2_:§]$;§ = null;
            if(ammo.§=$Q§)
            {
               §8"%§.§?!W§.§4"m§.§-"M§(true);
               §=#P§.§6+§();
            }
            else
            {
               _loc2_ = §8"%§.§?!W§.§4"m§;
               if(Boolean(_loc2_) && Boolean(_loc2_.§#"G§()) && _loc2_.§=%g§())
               {
                  §+# §.§9! §.activate();
                  §8"%§.§?!W§.§4"m§.§%!J§(true);
               }
            }
         });
         §9$h§.update(owner);
         §?!K§();
      }
   }
}

