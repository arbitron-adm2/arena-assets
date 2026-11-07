package ru.pragmatix.wormix.weapons
{
   import § %"§.ShurikenSaw;
   import § %f§.§"#J§;
   import § %f§.§6&4§;
   import § %f§.GasGrenade;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §%$n§.§&!M§;
   import §%&3§.§]"e§;
   import §%&6§.§+%D§;
   import §%&6§.§0%2§;
   import §%&6§.§2"A§;
   import §%&6§.§6%v§;
   import §&"c§.§!!q§;
   import §'T§.§0L§;
   import §+5§.§5%d§;
   import §+5§.§6%#§;
   import §+5§.§7$`§;
   import §+5§.§8$W§;
   import §+5§.§="M§;
   import §,"`§.§;8§;
   import §-8§.GasCloud;
   import §-8§.§[$!§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §02§.§#$%§;
   import §02§.§<!v§;
   import §2#i§.§+%z§;
   import §2#i§.§6§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5$]§.§-$Z§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §7$1§.§1&0§;
   import §7$1§.§;#&§;
   import §7$1§.§[#m§;
   import §9%W§.§!"G§;
   import §<!^§.§'$e§;
   import §<!^§.§+$B§;
   import §<!^§.§4Y§;
   import §<!^§.§9"A§;
   import §<%k§.§`!v§;
   import §>">§.§@&+§;
   import §?o§.§!%I§;
   import §?o§.StuffedBouncingGrenade;
   import §@<§.§+%]§;
   import §[#I§.§2&=§;
   import §]#b§.§["J§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§0#Z§;
   import §^4§.§0#q§;
   import §`%&§.§3!D§;
   import §`%&§.§`§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   
   public class Grenade extends §,%r§ implements §3N§
   {
      
      public static const §`&#§:§&$2§ = new §&$2§(30);
      
      protected static const §2;§:Number = 0.5;
      
      private var §[$E§:§&$2§ = new §&$2§(5);
      
      private var §@!K§:§&$2§ = new §&$2§(1);
      
      private var explodeOnDemand:§?"&§ = new §?"&§(false);
      
      private var hasTimer:§?"&§ = new §?"&§(true);
      
      protected var § %m§:§&$2§ = new §&$2§(90);
      
      protected var ammo:§!%I§;
      
      private var dontSpendTurn:Boolean;
      
      public function Grenade()
      {
         super();
         §"#z§ = 5;
         §2$"§ = 45;
      }
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new §`§(§"#z§,§2$"§,50);
      }
      
      protected function §6#N§(param1:Number) : Boolean
      {
         if(Boolean(getProperty("unspendingTurn")) && Boolean(§9$h§.§!%w§(owner)) || (Boolean(getProperty("consumable") || getProperty("seasonal"))) && Boolean(§?!P§.§!%w§(owner)))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         this.§8$[§();
         if(getProperty("explodeOnDemand"))
         {
            this.explodeOnDemand.value = §3"N§("explodeOnDemand").value;
         }
         if(getProperty("hasTimer"))
         {
            this.hasTimer.value = §3"N§("hasTimer").value;
         }
         if(getProperty("dontSpendTurn"))
         {
            this.dontSpendTurn = true;
            §^&I§.value = false;
         }
      }
      
      protected function §8$[§() : void
      {
         var _loc1_:§!"G§ = new §!"G§();
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
      }
      
      override public function activate() : void
      {
         if(!§?"'§)
         {
            super.activate();
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.§"#W§(this.§[$E§.value);
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         if(this.ammo)
         {
            this.ammo.removeEventListener(§0%v§.DISPOSED,this.§[#7§);
            this.ammo = null;
         }
         if(this.explodeOnDemand.value)
         {
            §?"'§ = false;
            §+# §.§@%V§.deactivate();
         }
      }
      
      override public function §"#W§(param1:uint) : void
      {
         this.§[%=§(this.hasTimer.value ? int(param1) : 0);
      }
      
      private function §[%=§(param1:int) : void
      {
         this.§ %m§.value = §`&#§.value * param1;
         shotParams.timer = param1;
         if(param1 > 0)
         {
            §>&-§.§[$9§(§0%§.format(§0$N§.GRENADE_TIMER,{"counter":param1}),true);
         }
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:§]$;§ = null;
         this.§]"b§();
         var _loc1_:Class = getProperty("ammoClass") as Class;
         this.ammo = new _loc1_(owner,paramSet,this.§ %m§.value,shotParams.angle,§-&I§(shotParams.power),§2;§,getProperty("blinkClassName"));
         if(this.ammo is StuffedBouncingGrenade)
         {
            if(getProperty("multiBurst"))
            {
               StuffedBouncingGrenade(this.ammo).setMiniExplosions(getProperty("multiBurst").value);
            }
            if(getProperty("cripple"))
            {
               StuffedBouncingGrenade(this.ammo).setCripple();
            }
         }
         if(getProperty("explodeOnCollide"))
         {
            this.ammo.§^"S§();
         }
         if(getProperty("explodeOnStopMoving"))
         {
            this.ammo.explodeOnStopMoving();
         }
         if(this.§ %m§.value <= 0)
         {
            this.ammo.§^&&§();
         }
         if(getProperty("unspendingTurn"))
         {
            §9$h§.update(owner);
         }
         if(Boolean(getProperty("consumable")) || Boolean(getProperty("seasonal")))
         {
            §?!P§.update(owner);
         }
         if(getProperty("trailWidth"))
         {
            this.ammo.trailWidth = property["trailWidth"];
         }
         if(getProperty("trailColor"))
         {
            this.ammo.trailColor = this.ammo.§?$z§ = property["trailColor"];
         }
         this.ammo.§6"9§();
         this.§>&%§();
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
      
      protected function §]"b§() : void
      {
         if(shotParams.isAlternate)
         {
            this.§[%=§(this.§@!K§.value);
         }
      }
      
      protected function §>&%§() : void
      {
         if(!this.explodeOnDemand.value)
         {
            this.§?!K§();
            return;
         }
         this.ammo.addEventListener(§0%v§.DISPOSED,this.§[#7§,false,§[!F§.§6#@§);
         §+# §.§@%V§.activate();
         owner.§4%Y§(clip);
         active.value = true;
         §?"'§ = true;
      }
      
      private function §[#7§(param1:Event) : void
      {
         this.§?!K§();
      }
      
      public function weaponCharge() : void
      {
         if(Boolean(this.ammo) && !this.ammo.disposed)
         {
            this.ammo.explode();
         }
      }
      
      override public function shootWithParams(param1:§!!q§) : void
      {
         if(param1.timer > 0)
         {
            this.§[%=§(param1.timer);
         }
         super.shootWithParams(param1);
      }
   }
}

