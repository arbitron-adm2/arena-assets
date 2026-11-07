package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §&"c§.§!!q§;
   import §+5§.§8#%§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.events.EventPhase;
   import flash.events.MouseEvent;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   
   use namespace gestouch_internal;
   
   public class SnowballWeapon extends §,%r§ implements §-$2§
   {
      
      protected static const § &G§:§&$2§ = new §&$2§(120);
      
      private var §3#$§:§8#%§;
      
      protected var frames:§&$2§;
      
      public function SnowballWeapon()
      {
         super();
         §7&§(new §&!P§(this.§6#N§,true));
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
      
      override public function activate() : void
      {
         if(this.§3#$§ == null)
         {
            super.activate();
         }
      }
      
      public function jumpShoot(param1:Boolean) : void
      {
         if(this.§6#N§() && !§8"%§.§?!W§.§4"m§.§1"3§() && this.§3#$§ == null)
         {
            shootWithParams(§!!q§.EMPTY);
         }
      }
      
      override public function §?!K§() : void
      {
         if(owner == null)
         {
            return;
         }
         if(this.§3#$§ != null && !this.§3#$§.disposed)
         {
            this.§5#?§(true);
         }
         super.§?!K§();
      }
      
      override protected function §`%V§() : void
      {
         owner.§4%Y§(clip);
         this.frames = new §&$2§(0);
         this.§3#$§ = new §8#%§(owner,paramSet,paramSetEx);
         §?"'§ = true;
         startFrameListening();
         §?!P§.update(owner);
      }
      
      override protected function onFrame(param1:Event) : void
      {
         if(this.§3#$§ != null && owner != null)
         {
            ++this.frames.value;
            if(this.§3#$§.disposed)
            {
               this.§5#?§(false);
               this.§?!K§();
            }
            else if(this.frames.value == § &G§.value)
            {
               this.§5#?§(true);
               this.§?!K§();
            }
         }
      }
      
      protected function §5#?§(param1:Boolean) : void
      {
         §?"'§ = false;
         §2#G§();
         if(param1)
         {
            this.§3#$§.explode();
         }
         this.§3#$§ = null;
         §=#P§.§6+§();
      }
   }
}

