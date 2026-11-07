package ru.pragmatix.wormix.weapons
{
   import § %f§.GasGrenade;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §-8§.GasCloud;
   import §2#i§.§+%z§;
   import §4$b§.§2m§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class GasGrenadeWeapon extends Grenade
   {
      
      private var §3m§:MovieClip;
      
      public function GasGrenadeWeapon()
      {
         super();
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new §`§(§"#z§,§2$"§,150,true,paramSet.damageRadius.value);
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
      }
      
      private function §&%S§(param1:Event) : void
      {
         if(!owner || owner.disposed)
         {
            this.§3m§.removeEventListener(Event.ENTER_FRAME,this.§&%S§);
            return;
         }
         this.§3m§.visible = owner.stable && !owner.crawling && owner.speed == 0;
      }
      
      override public function §?!K§() : void
      {
         if(this.§3m§)
         {
            this.§3m§.removeEventListener(Event.ENTER_FRAME,this.§&%S§);
         }
         if(Boolean(owner) && Boolean(this.§3m§) && Boolean(this.§3m§.parent))
         {
            owner.graphics.detachClip(this.§3m§,§2m§.§-w§);
         }
         super.§?!K§();
      }
      
      override protected function §`%V§() : void
      {
         §]"b§();
         var _loc1_:Class = property["cloudClass"] ? property["cloudClass"] : GasCloud;
         ammo = new GasGrenade(owner,paramSet,paramSetEx,§ %m§.value,shotParams.angle,§-&I§(shotParams.power),§2;§,property["cloudClipName"],_loc1_);
         if(owner.squad.isLocal())
         {
            ammo.customSource = §<$c§.§ !=§(§+%z§.GAS_GRENADE);
         }
         if(getProperty("explodeOnStopMoving"))
         {
            ammo.explodeOnStopMoving();
         }
         if(property["armorReduction"])
         {
            GasGrenade(ammo).setArmorReduction(§&$2§(property["armorReduction"]).value);
         }
         if(property["maxPoisonDamage"])
         {
            GasGrenade(ammo).serMaxPoisonDamage(property["maxPoisonDamage"]);
         }
         if(property["cloudRadius"])
         {
            GasGrenade(ammo).setCloudRadius(property["cloudRadius"]);
         }
         if(property["slowing"])
         {
            GasGrenade(ammo).setSlowing(property["slowing"]);
         }
         if(getProperty("explodeDamage"))
         {
            GasGrenade(ammo).setExplodeDamage(§&$2§(property["explodeDamage"]).value);
         }
         if(getProperty("explodeDamageType"))
         {
            ammo.damageType = property["explodeDamageType"];
         }
         if(getProperty("onExplodePoisoningReduce"))
         {
            GasGrenade(ammo).setOnExplodePoisoningReduce();
         }
         §>&%§();
         §=#P§.§6+§();
      }
   }
}

