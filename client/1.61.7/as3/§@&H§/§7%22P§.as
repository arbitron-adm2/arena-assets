package §@&H§
{
   import §!L§.§+"'§;
   import §"%H§.§6$3§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"Z§.§2"B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.*;
   import §+$=§.*;
   import §+%S§.§"$7§;
   import §+%S§.§+m§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#H§.§+N§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §7"P§ extends §,%r§
   {
      
      public function §7"P§(param1:§+%]§, param2:§;#_§)
      {
         super();
         this.owner = param1;
         if(param2.property["quantityShots"])
         {
            shots.value = param2.property["quantityShots"].value;
         }
         shotsLeft.value = shots.value;
         recordId = new §&$2§(param2.getId());
      }
      
      override protected function §`%V§() : void
      {
         --shotsLeft.value;
         owner.dispatchEvent(new WeaponShootEvent(recordId.value,false,shotsLeft.value > 0));
      }
      
      public function §=$V§() : void
      {
         this.§`%V§();
      }
   }
}

