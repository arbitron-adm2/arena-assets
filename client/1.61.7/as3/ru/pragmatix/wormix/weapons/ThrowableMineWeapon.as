package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §%Q§.§?!L§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.NewUnitEvent;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §`%&§.§6#"§;
   import §`%&§.§`§;
   import com.greensock.events.LoaderEvent;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   
   public class ThrowableMineWeapon extends DefaultMineWeapon implements §3N§
   {
      
      private var ammo:§;$n§;
      
      public function ThrowableMineWeapon(param1:Class = null)
      {
         super(param1,0,false);
         §"#>§ = [];
         §"#z§ = 15;
         §2$"§ = 45;
         var _loc2_:§!"G§ = new §!"G§();
         _loc2_.§9&;§(this.§1$r§);
         §7&§(_loc2_);
      }
      
      private function §1$r§(param1:Number) : Boolean
      {
         var _loc2_:String = null;
         if(§9$h§.§!%w§(owner) || (Boolean(getProperty("consumable") || getProperty("seasonal"))) && Boolean(§?!P§.§!%w§(owner)))
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
      
      override public function §2#v§() : void
      {
         §-g§ = Boolean(getProperty("isDefensive")) && getProperty("isDefensive") == true ? new §6#"§(§"#z§,§2$"§,80) : new §`§(§"#z§,§2$"§,50);
      }
      
      override public function jumpShoot(param1:Boolean) : void
      {
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §#!Z§.fire(§#!Z§.§[!E§);
         }
      }
      
      override protected function §3t§() : void
      {
         if(!property["staticPlacement"])
         {
            super.§3t§();
            return;
         }
         this.§5#$§();
      }
      
      protected function §5#$§() : void
      {
         this.ammo.addEventListener(§0%v§.DISPOSED,this.§[#7§,false,§[!F§.§6#@§);
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §+# §.§@%V§.activate();
         }
         owner.§4%Y§(clip);
         §?"'§ = true;
      }
      
      private function §[#7§(param1:Event) : void
      {
         this.§?!K§();
      }
      
      override protected function §6%U§() : §;$n§
      {
         var _loc2_:§;#&§ = null;
         var _loc1_:§;$n§ = super.§6%U§();
         if(_loc1_ is §;#&§)
         {
            _loc2_ = §;#&§(_loc1_);
            _loc2_.§0!x§();
            if(property["invertedForce"])
            {
               _loc2_.§4#D§();
            }
            if(property["increasedForce"])
            {
               _loc2_.§0$K§();
            }
            if(property["activatedAmmoClipName"])
            {
               _loc2_.§0X§(String(property["activatedAmmoClipName"]));
            }
            if(property["fieldClipName"])
            {
               _loc2_.§'"j§(String(property["fieldClipName"]));
            }
            this.ammo = _loc1_;
         }
         if(getProperty("trailWidth"))
         {
            _loc1_.trailWidth = property["trailWidth"];
         }
         if(getProperty("trailColor"))
         {
            _loc1_.trailColor = _loc1_.§?$z§ = property["trailColor"];
         }
         _loc1_.§6"9§();
         _loc1_.§^"F§(shotParams.angle,§-&I§(shotParams.power));
         return _loc1_;
      }
      
      public function weaponCharge() : void
      {
         if(property["staticPlacement"])
         {
            if(Boolean(this.ammo) && !this.ammo.disposed)
            {
               this.ammo.explode();
            }
         }
      }
      
      override public function §?!K§() : void
      {
         if(!owner)
         {
            return;
         }
         super.§?!K§();
         if(this.ammo)
         {
            this.ammo.removeEventListener(§0%v§.DISPOSED,this.§[#7§);
            if(this.ammo is §;#&§)
            {
               if(§8"%§.§?!W§.§4"m§.§=%g§() && §8"%§.§?!W§.§4"m§.§'%i§().isStopped)
               {
                  §+# §.§@%V§.deactivate();
               }
            }
            this.ammo = null;
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §+# §.§@%V§.deactivate();
            }
         }
         if(property["staticPlacement"])
         {
            §?"'§ = false;
         }
      }
   }
}

