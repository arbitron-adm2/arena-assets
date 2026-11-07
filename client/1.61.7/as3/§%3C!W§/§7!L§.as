package §<!W§
{
   import § #g§.*;
   import § $q§.§3U§;
   import §"!C§.§3#n§;
   import §"$+§.§^$`§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.*;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §+%S§.§ #R§;
   import §+%S§.KamikazeBuff;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §2"L§.*;
   import §4u§.ReagentHint;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7"Q§.§7o§;
   import §<"L§.*;
   import §<%E§.*;
   import §=!p§.§8#x§;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7!L§ extends §%%o§
   {
      
      public static const NAME:String = "UNDERWATER_BREATH_PLACER_BUFF";
      
      private static const §,!M§:Array = [NAME,§ #R§.NAME];
      
      private const §&%#§:uint = 1;
      
      private var §]"P§:§+%]§;
      
      public function §7!L§(param1:§+%]§)
      {
         super(NAME,§-"^§);
         this.§]"P§ = param1;
      }
      
      override protected function §5#F§() : void
      {
         super.§5#F§();
         if(!this.§]"P§.disposed && !unit.buffs.hasBuff(§ #R§.NAME))
         {
            unit.buffs.place(new § #R§(§-"^§));
            this.§]"P§.addEventListener(§0%v§.DISPOSED,this.§9"'§);
         }
      }
      
      private function §9"'§(param1:Event) : void
      {
         if(unit.buffs.hasBuff(§ #R§.NAME))
         {
            unit.buffs.§6C§(§ #R§.NAME);
         }
         clear();
      }
      
      override protected function §0&"§() : void
      {
         super.§0&"§();
         Application.scene.removeEventListener(§0%v§.UNIT_DEACTIVATION,this.§?!>§);
         if(this.§]"P§)
         {
            this.§]"P§.removeEventListener(§0%v§.DISPOSED,this.§9"'§);
            this.§]"P§ = null;
         }
      }
      
      override protected function §7$d§() : void
      {
         if(§8"%§.§?!W§.§4"m§.activeUnit == unit)
         {
            unit.buffs.replace(new § #R§(this.§&%#§));
            Application.scene.addEventListener(§0%v§.UNIT_DEACTIVATION,this.§?!>§);
         }
      }
      
      private function §?!>§(param1:Event) : void
      {
         if(unit.buffs.hasBuff(§ #R§.NAME))
         {
            unit.buffs.§6C§(§ #R§.NAME);
         }
         clear();
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §7!L§(this.§]"P§));
      }
   }
}

