package §9%W§
{
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§!!q§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0"L§.§@#n§;
   import §0&F§.§0%v§;
   import §2!-§.§'5§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §="z§.§1!c§;
   import §?o§.StuffedBouncingGrenade;
   import §@!i§.§5&4§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   
   public class §&!P§ extends §9#"§
   {
      
      private var playSound:Boolean;
      
      public function §&!P§(param1:Function = null, param2:Boolean = false)
      {
         super();
         §&K§ = param1;
         this.playSound = param2;
         §;!G§ = [§#!Z§.§#B§];
      }
      
      override public function activate(param1:§+%]§) : void
      {
         if(!isActive())
         {
            super.activate(param1);
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §+# §.§"$T§.activate();
            }
            if(param1.direction == §+%]§.LEFT)
            {
               §,%r§(param1.weapon).rotateWeaponClip(Math.PI);
            }
            else
            {
               §,%r§(param1.weapon).rotateWeaponClip(0);
            }
         }
      }
      
      override public function deactivate() : void
      {
         if(isActive())
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §+# §.§"$T§.deactivate();
            }
            super.deactivate();
         }
      }
      
      override public function charge(param1:Boolean) : void
      {
         var _loc2_:§!!q§ = null;
         if(isActive())
         {
            if(§&K§ != null && !§&K§())
            {
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  if(this.playSound)
                  {
                     §@%;§.play(§`!v§.§2$e§);
                  }
                  §#!Z§.fire(§#!Z§.§[!E§);
               }
               return;
            }
            this.deactivate();
            _loc2_ = new §!!q§();
            _loc2_.isAlternate = param1;
            dispatchEvent(new §'5§(_loc2_));
         }
      }
      
      public function §+!w§() : Object
      {
         return {"charge":this.charge};
      }
      
      public function setPlaySound(param1:Boolean) : void
      {
         this.playSound = param1;
      }
   }
}

