package ru.pragmatix.wormix.weapons
{
   import § %f§.VacuumGrenade;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §2#i§.§+%z§;
   import §5%S§.§>&-§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class VacuumGrenadeWeapon extends Grenade
   {
      
      public static const §^#g§:uint = 30;
      
      public static const §[!Y§:uint = §%G§.§>%@§ * 1.6;
      
      public function VacuumGrenadeWeapon()
      {
         super();
      }
      
      override protected function §8$[§() : void
      {
         var _loc1_:§%G§ = null;
         if(Boolean(getProperty("trajectoryCrosshair")) && §3"N§("trajectoryCrosshair").value)
         {
            §§push(§§findproperty(§"#z§));
            §§push(§§findproperty(§2$"§));
            var _temp_2:* = §8$ §("power").value;
            §§pop().§"#z§ = §§pop().§2$"§ = §8$ §("power").value;
            §§push(§§findproperty(§%G§));
            §§push(§2$"§);
            var _temp_3:* = new <§]%G§>[§]%G§.§5$r§];
            _loc1_ = new §§pop().§%G§(§§pop(),new <§]%G§>[§]%G§.§5$r§],§[!Y§);
            _loc1_.§9&;§(this.§@%@§);
            §7&§(_loc1_);
         }
         else
         {
            super.§8$[§();
         }
      }
      
      private function §@%@§(param1:Number) : Boolean
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §<H§.§5"]§(owner.x,owner.y,§^#g§);
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.squad.getTeamId() != owner.squad.getTeamId())
            {
               _loc3_ = _loc4_;
               break;
            }
         }
         if(_loc3_)
         {
            return true;
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§() && !_loc3_)
         {
            §>&-§.§[$9§(§0$N§.NOT_FOUND_UNITS_NEARBY,true);
            §@%;§.play(§`!v§.§2$e§);
         }
         return false;
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         if(!getProperty("maxActivationRadius"))
         {
         }
      }
      
      private function §&%S§(param1:Event) : void
      {
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
      }
      
      override protected function §`%V§() : void
      {
         this.§]"b§();
         var _loc1_:int = getProperty("lifetime") ? §8$ §("lifetime").value : 0;
         var _loc2_:Class = getProperty("ammoClass") as Class;
         ammo = new _loc2_(owner,paramSet,§ %m§.value,shotParams.angle,§-&I§(shotParams.power),§2;§,getProperty("blinkClassName"),_loc1_);
         var _loc3_:VacuumGrenade = VacuumGrenade(ammo);
         if(owner.squad.isLocal())
         {
            ammo.customSource = §<$c§.§ !=§(§+%z§.VACUUM_GRENADE);
         }
         if(getProperty("ignoreAttackPower"))
         {
            _loc3_.ignoreAttackPower = true;
         }
         if(getProperty("ignoreFortitude"))
         {
            _loc3_.ignoreFortitude = true;
         }
         if(getProperty("startActivationRadius"))
         {
            _loc3_.§##G§(§8$ §("startActivationRadius").value);
         }
         if(getProperty("maxActivationRadius"))
         {
            _loc3_.§9">§(§8$ §("maxActivationRadius").value);
         }
         if(getProperty("activationDuration"))
         {
            _loc3_.§?%M§(§8$ §("activationDuration").value);
         }
         if(getProperty("funnelClip"))
         {
            _loc3_.§%%T§(String(getProperty("funnelClip")));
         }
         if(getProperty("funnelFadeClip"))
         {
            _loc3_.§0$e§(String(getProperty("funnelFadeClip")));
         }
         if(getProperty("groundBreak"))
         {
            _loc3_.§<#b§();
         }
         if(getProperty("releaseOnThreshold"))
         {
            _loc3_.§5%<§();
         }
         if(getProperty("explodeOnCollide"))
         {
            ammo.§^"S§();
         }
         if(getProperty("explodeOnStopMoving"))
         {
            ammo.explodeOnStopMoving();
         }
         if(§ %m§.value <= 0)
         {
            ammo.§^&&§();
         }
         if(property["trailLength"])
         {
            _loc3_.trailLength = property["trailLength"];
         }
         if(property["trailWidth"])
         {
            _loc3_.trailWidth = property["trailWidth"];
         }
         if(property["trailColor"])
         {
            _loc3_.trailColor = _loc3_.§?$z§ = property["trailColor"];
         }
         _loc3_.§6"9§();
         §>&%§();
         §=#P§.§6+§();
      }
      
      override protected function §]"b§() : void
      {
         if(!(!getProperty("hasTimer") || !§3"N§("hasTimer").value))
         {
            super.§]"b§();
         }
      }
      
      override public function weaponCharge() : void
      {
         if(!getProperty("explodeOnDemand") || !§3"N§("explodeOnDemand").value)
         {
            return;
         }
         super.weaponCharge();
      }
   }
}

