package §=!V§
{
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §4!K§.§^%A§;
   import §9%W§.§`"y§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.ui.Keyboard;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.Bat;
   import ru.pragmatix.wormix.weapons.BlowTorch;
   
   public class §8%u§ extends §!%T§
   {
      
      private const §#@§:Array = [BlowTorch,Bat];
      
      public function §8%u§()
      {
         var _loc1_:Object = {};
         _loc1_[§@#n§.LEFT] = [Keyboard.LEFT,§]2§.A];
         _loc1_[§@#n§.RIGHT] = [Keyboard.RIGHT,§]2§.D];
         _loc1_[§@#n§.UP] = [Keyboard.UP,§]2§.W];
         _loc1_[§@#n§.DOWN] = [Keyboard.DOWN,§]2§.S];
         _loc1_[§@#n§.§]#z§] = [Keyboard.SPACE,Keyboard.NUMPAD_5];
         _loc1_[§@#n§.§2%"§] = [Keyboard.SHIFT];
         super(_loc1_);
      }
      
      override public function activate() : void
      {
         if(Boolean(state == §8!V§) && Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            super.activate();
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc5_:uint = 0;
         _loc2_ = §8"%§.§?!W§.§4"m§.activeUnit;
         var _loc3_:§`"y§ = _loc2_.weapon.§;#x§();
         if(§7#r§(§@#n§.§]#z§) && _loc3_.§>#G§(§#!Z§.§=$l§) && _loc3_.§%1§())
         {
            if(_loc3_.isActive())
            {
               §#!Z§.fire(§#!Z§.§=$l§);
            }
         }
         var _loc4_:int = isPressed(§@#n§.§2%"§) ? 1 : 0;
         if(isPressed(§@#n§.LEFT) && _loc3_.§>#G§(§#!Z§.§=&A§) && !§-#0§[§@#n§.LEFT])
         {
            §#!Z§.fire(§#!Z§.§=&A§);
         }
         if(isPressed(§@#n§.RIGHT) && _loc3_.§>#G§(§#!Z§.§]$P§) && !§-#0§[§@#n§.RIGHT])
         {
            §#!Z§.fire(§#!Z§.§]$P§);
         }
         if(isPressed(§@#n§.UP) && _loc3_.§>#G§(§#!Z§.§3"E§))
         {
            if(!§""L§.§'!8§(_loc2_.weapon,this.§#@§) || !§-#0§[§@#n§.UP])
            {
               §#!Z§.fire(§#!Z§.§3"E§,_loc4_);
            }
         }
         if(isPressed(§@#n§.DOWN) && _loc3_.§>#G§(§#!Z§.§^!x§))
         {
            if(!§""L§.§'!8§(_loc2_.weapon,this.§#@§) || !§-#0§[§@#n§.DOWN])
            {
               §#!Z§.fire(§#!Z§.§^!x§,_loc4_);
            }
         }
         if(isPressed(§@#n§.§]#z§) && _loc3_.§>#G§(§#!Z§.§#B§) && !_loc3_.§%1§() && !§-#0§[§@#n§.§]#z§])
         {
            §#!Z§.fire(§#!Z§.§#B§,_loc4_);
         }
         for each(_loc5_ in §]"'§.counter)
         {
            if(§8"%§.key.§;"M§(_loc5_) && _loc3_.§>#G§(§#!Z§.§'$u§))
            {
               §#!Z§.fire(§#!Z§.§'$u§,_loc5_ - §]"'§.counter[0] + 1);
               break;
            }
         }
         super.onFrame(param1);
      }
   }
}

