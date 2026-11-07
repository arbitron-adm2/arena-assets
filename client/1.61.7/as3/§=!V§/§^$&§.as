package §=!V§
{
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §7!B§.§&"T§;
   import flash.events.Event;
   import flash.ui.Keyboard;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   import ru.pragmatix.wormix.weapons.interfaces.§&$+§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   import ru.pragmatix.wormix.weapons.interfaces.§^"L§;
   
   public class §^$&§ extends §!%T§
   {
      
      private var §=!J§:Boolean;
      
      private var §,%v§:Boolean;
      
      private var §7$%§:Boolean;
      
      private var §2#h§:Boolean;
      
      private var §]t§:Boolean;
      
      public function §^$&§()
      {
         var _loc1_:Object = {};
         _loc1_[§@#n§.LEFT] = [Keyboard.LEFT,§]2§.A,Keyboard.NUMPAD_4];
         _loc1_[§@#n§.RIGHT] = [Keyboard.RIGHT,§]2§.D,Keyboard.NUMPAD_6];
         _loc1_[§@#n§.UP] = [Keyboard.UP,§]2§.W,Keyboard.NUMPAD_8];
         _loc1_[§@#n§.DOWN] = [Keyboard.DOWN,§]2§.S,Keyboard.NUMPAD_2];
         _loc1_[§@#n§.§]#z§] = [Keyboard.SPACE,Keyboard.NUMPAD_5];
         _loc1_[§@#n§.§?#i§] = [§3!f§.§6!T§];
         super(_loc1_);
      }
      
      override public function activate() : void
      {
         if(Boolean(state == §8!V§) && Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            super.activate();
            this.§=!J§ = false;
            this.§,%v§ = false;
            this.§7$%§ = false;
            this.§2#h§ = false;
            this.§2#h§ = false;
            this.§]t§ = false;
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc3_:Vector.<§&"T§> = null;
         var _loc2_:§&$+§ = §8"%§.§?!W§.§4"m§.activeUnit.weapon;
         if(§7#r§(§@#n§.UP) && _loc2_ is §=!s§ && this.§=!J§)
         {
            this.§=!J§ = false;
            §#!Z§.fire(§#!Z§.§@%%§);
         }
         if(§7#r§(§@#n§.DOWN) && _loc2_ is §=!s§ && this.§,%v§)
         {
            this.§,%v§ = false;
            §#!Z§.fire(§#!Z§.§@R§);
         }
         if(§7#r§(§@#n§.LEFT) && _loc2_ is §##=§ && this.§7$%§)
         {
            this.§7$%§ = false;
            §#!Z§.fire(§#!Z§.§5$5§);
         }
         if(§7#r§(§@#n§.RIGHT) && _loc2_ is §##=§ && this.§2#h§)
         {
            this.§2#h§ = false;
            §#!Z§.fire(§#!Z§.§`!O§);
         }
         if(§7#r§(§@#n§.§?#i§) && _loc2_ is §^"L§ && this.§]t§)
         {
            this.§]t§ = false;
         }
         if(isPressed(§@#n§.UP) && _loc2_ is §=!s§ && !this.§=!J§)
         {
            this.§=!J§ = true;
            §#!Z§.fire(§#!Z§.§+!X§);
         }
         if(isPressed(§@#n§.DOWN) && _loc2_ is §=!s§ && !this.§,%v§)
         {
            this.§,%v§ = true;
            §#!Z§.fire(§#!Z§.§]$E§);
         }
         if(isPressed(§@#n§.LEFT) && _loc2_ is §##=§ && !this.§7$%§)
         {
            this.§7$%§ = true;
            §#!Z§.fire(§#!Z§.§2^§);
         }
         if(isPressed(§@#n§.RIGHT) && _loc2_ is §##=§ && !this.§2#h§)
         {
            this.§2#h§ = true;
            §#!Z§.fire(§#!Z§.§4t§);
         }
         if(isPressed(§@#n§.§]#z§) && _loc2_ is §3N§ && !§-#0§[§@#n§.§]#z§])
         {
            §#!Z§.fire(§#!Z§.§ #I§);
         }
         if(isPressed(§@#n§.§?#i§) && _loc2_ is §^"L§ && !this.§]t§)
         {
            this.§]t§ = true;
            _loc3_ = §7z§.§0&1§(§^"L§(_loc2_),false);
            §#!Z§.fire(§#!Z§.§"#t§,_loc3_.length ? _loc3_[0].getId() : 0);
         }
         super.onFrame(param1);
      }
   }
}

