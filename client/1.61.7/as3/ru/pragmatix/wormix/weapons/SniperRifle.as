package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §2#i§.§+%z§;
   import §9%W§.§""N§;
   import §<%k§.§`!v§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§@#J§;
   import §`%&§.§,%§;
   import flash.geom.Point;
   
   public class SniperRifle extends §,%r§
   {
      
      public static const §7$#§:§&$2§ = new §&$2§(10);
      
      public static const §1u§:§&$2§ = new §&$2§(10);
      
      private var damageReduction:§&$2§ = new §&$2§(0);
      
      private var armorReduction:§&$2§ = new §&$2§(0);
      
      private var drillDistance:§&$2§ = new §&$2§(0);
      
      private var antidodge:§?"&§ = new §?"&§(false);
      
      private var alwaysCrit:§?"&§ = new §?"&§(false);
      
      public function SniperRifle()
      {
         super();
         §"#z§ = §2$"§ = 100;
         §-g§ = new §,%§(110,§"#z§,0.8,false,0,false,true);
         §,%§(§,!"§).minDistance = 400;
      }
      
      override public function §""2§(param1:Object) : void
      {
         §7&§(new §""N§(§&$2§(param1["rayLength"]).value,param1["angleFluct"],param1["periodFluct"] ? uint(§&$2§(param1["periodFluct"]).value) : uint(§7$#§.value),param1["delayFluct"] ? uint(§&$2§(param1["delayFluct"]).value) : uint(§1u§.value),param1["colorLaser"]));
         if(param1["damageReduction"])
         {
            this.damageReduction.value = §&$2§(param1["damageReduction"]).value;
         }
         if(param1["armorReduction"])
         {
            this.armorReduction.value = §&$2§(param1["armorReduction"]).value;
         }
         if(param1["drillDistance"])
         {
            this.drillDistance.value = §&$2§(param1["drillDistance"]).value;
         }
         if(param1["antidodge"])
         {
            this.antidodge.value = §?"&§(param1["antidodge"]).value;
         }
         if(param1["alwaysCrit"])
         {
            this.alwaysCrit.value = §?"&§(param1["alwaysCrit"]).value;
         }
         super.§""2§(param1);
      }
      
      override protected function §`%V§() : void
      {
         var _loc1_:§@#J§ = new §@#J§(owner,new Point(owner.x,owner.y),paramSet,shotParams.angle,§"#z§);
         _loc1_.§>#7§();
         if(owner.squad.isLocal())
         {
            _loc1_.customSource = §<$c§.§ !=§(§+%z§.SNIPER_RIFLE);
         }
         if(this.damageReduction.value > 0)
         {
            _loc1_.§?#=§(this.damageReduction.value);
         }
         if(this.armorReduction.value > 0)
         {
            _loc1_.setArmorReductionPc(this.armorReduction.value);
         }
         if(this.drillDistance.value > 0)
         {
            _loc1_.setDrillDistance(this.drillDistance.value);
         }
         if(this.antidodge.value)
         {
            _loc1_.setAntidodge();
         }
         if(this.alwaysCrit.value)
         {
            _loc1_.setAlwaysCritical();
         }
         if(Boolean(property["minDamageDist"]) && Boolean(property["maxDamageDist"]))
         {
            _loc1_.setDamageDistances(property["minDamageDist"],property["maxDamageDist"]);
         }
         §?!K§();
         §=#P§.§6+§();
         §@%;§.play(§`!v§.§?#§);
      }
   }
}

