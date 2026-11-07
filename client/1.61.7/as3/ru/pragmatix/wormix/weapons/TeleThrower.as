package ru.pragmatix.wormix.weapons
{
   import § %f§.§]%f§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   
   public class TeleThrower extends §,%r§ implements §3N§
   {
      
      private static const §2&+§:§&$2§ = new §&$2§(26);
      
      private var §+$]§:Class = null;
      
      private var §]#]§:§?"&§ = new §?"&§(false);
      
      private var §<!,§:§]%f§;
      
      public function TeleThrower()
      {
         super();
         §"#z§ = 15;
         §2$"§ = 45;
         §^&I§.value = false;
         var _loc1_:§!"G§ = new §!"G§();
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(param1["blinkClassName"])
         {
            this.§+$]§ = §6#A§.getClass(param1["blinkClassName"]);
         }
         if(param1["teleportOnButton"])
         {
            this.§]#]§ = §?"&§(param1["teleportOnButton"]);
         }
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
         this.§<!,§ = new §]%f§(owner,paramSet,shotParams.angle,§-&I§(shotParams.power),this.§+$]§);
         this.§<!,§.addEventListener(§0%v§.DISPOSED,this.§2#z§,false,§[!F§.§6#@§);
         §+# §.§9! §.deactivate();
         if(this.§]#]§.value)
         {
            §+# §.§@%V§.activate();
         }
         owner.§4%Y§(clip);
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         if(this.§<!,§)
         {
            this.§<!,§.removeEventListener(§0%v§.DISPOSED,this.§2#z§);
            this.§<!,§ = null;
         }
         if(this.§]#]§.value)
         {
            §+# §.§@%V§.deactivate();
         }
      }
      
      private function §2#z§(param1:Event) : void
      {
         var _loc3_:§+%]§ = null;
         if(owner)
         {
            _loc3_ = owner;
            §9$h§.update(owner);
            this.§?!K§();
            _loc3_.§#&5§();
         }
         var _loc2_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(Boolean(_loc2_) && Boolean(_loc2_.§#"G§()) && _loc2_.§=%g§())
         {
            §+# §.§9! §.activate();
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
      }
      
      public function weaponCharge() : void
      {
         if(Boolean(this.§<!,§) && !this.§<!,§.disposed)
         {
            this.§<!,§.§0$t§(§2&+§.value);
         }
      }
   }
}

