package ru.pragmatix.wormix.weapons
{
   import § "d§.§,!c§;
   import § &5§.§=#P§;
   import §&!?§.§@&@§;
   import §-%B§.*;
   import §1#p§.§"Z§;
   import §3#a§.§-!`§;
   import §5!,§.§?!P§;
   import §5#`§.§%&5§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §@!i§.§<!9§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class DeepFreezeTome extends §,%r§
   {
      
      public function DeepFreezeTome()
      {
         super();
         §7&§(new §&!P§(this.§6#N§,true));
         §-g§ = new §@&@§();
      }
      
      private function §6#N§() : Boolean
      {
         if(§?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      override protected function §`%V§() : void
      {
         §%&5§.§]!g§(owner,Application.scene.§@$I§.§;%a§.§1!n§(),paramSet);
         §?!P§.update(owner);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}

