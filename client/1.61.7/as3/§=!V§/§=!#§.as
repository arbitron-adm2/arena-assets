package §=!V§
{
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §[%§.Dragon;
   import flash.events.Event;
   import flash.ui.Keyboard;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §=!#§ extends §!%T§
   {
      
      private var §7$%§:Boolean;
      
      private var §2#h§:Boolean;
      
      private var §,%v§:Boolean;
      
      private var §=!J§:Boolean;
      
      private var §4!7§:Boolean = false;
      
      public function §=!#§()
      {
         var _loc1_:Object = {};
         _loc1_[§@#n§.LEFT] = [Keyboard.LEFT,§]2§.A];
         _loc1_[§@#n§.RIGHT] = [Keyboard.RIGHT,§]2§.D];
         _loc1_[§@#n§.DOWN] = [Keyboard.DOWN,§]2§.S];
         _loc1_[§@#n§.UP] = [Keyboard.UP,§]2§.W];
         _loc1_[§@#n§.§'"E§] = [Keyboard.ENTER,§]2§.F];
         super(_loc1_);
      }
      
      override public function activate() : void
      {
         if(Boolean(state == §8!V§) && Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            super.activate();
            this.§7$%§ = false;
            this.§2#h§ = false;
            this.§4!7§ = isPressed(§@#n§.§'"E§);
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         if(!(§8"%§.§?!W§.§4"m§.activeUnit is Dragon))
         {
            return;
         }
         var _loc2_:Dragon = Dragon(§8"%§.§?!W§.§4"m§.activeUnit);
         if(§7#r§(§@#n§.§'"E§) && this.§4!7§)
         {
            this.§4!7§ = false;
         }
         if(isPressed(§@#n§.§'"E§))
         {
            if(!this.§4!7§)
            {
               this.§4!7§ = true;
               §#!Z§.fire(§#!Z§.§?"f§);
            }
         }
         if(§7#r§(§@#n§.LEFT) && this.§7$%§)
         {
            this.§7$%§ = false;
            if(!this.§2#h§)
            {
               §#!Z§.fire(§#!Z§.§,$4§);
            }
         }
         if(isPressed(§@#n§.LEFT) && !this.§7$%§)
         {
            this.§7$%§ = true;
            §#!Z§.fire(§#!Z§.§4$f§);
         }
         if(§7#r§(§@#n§.RIGHT) && this.§2#h§)
         {
            this.§2#h§ = false;
            if(!this.§7$%§)
            {
               §#!Z§.fire(§#!Z§.§=%6§);
            }
         }
         if(isPressed(§@#n§.RIGHT) && !this.§2#h§)
         {
            this.§2#h§ = true;
            §#!Z§.fire(§#!Z§.§-%h§);
         }
         if(§7#r§(§@#n§.DOWN) && this.§,%v§)
         {
            this.§,%v§ = false;
            if(!this.§,%v§)
            {
               §#!Z§.fire(§#!Z§.§]"t§);
            }
         }
         if(isPressed(§@#n§.DOWN) && !this.§,%v§)
         {
            this.§,%v§ = true;
            §#!Z§.fire(§#!Z§.§%!Z§);
         }
         if(§7#r§(§@#n§.UP) && this.§=!J§)
         {
            this.§=!J§ = false;
            if(!this.§=!J§)
            {
               §#!Z§.fire(§#!Z§.§&##§);
            }
         }
         if(isPressed(§@#n§.UP) && !this.§=!J§ && _loc2_.§ "]§())
         {
            this.§=!J§ = true;
            §#!Z§.fire(§#!Z§.§ %1§);
         }
         super.onFrame(param1);
      }
   }
}

