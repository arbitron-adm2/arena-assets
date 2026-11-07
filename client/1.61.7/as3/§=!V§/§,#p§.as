package §=!V§
{
   import §0!Y§.§#!Z§;
   import §0"L§.§!%T§;
   import §0"L§.§@#n§;
   import §0%[§.§]2§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §="z§.§1!c§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.ui.Keyboard;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   
   public class §,#p§ extends §!%T§
   {
      
      private static const §'%T§:uint = 1;
      
      private static const §5!O§:uint = 0;
      
      private var §?"'§:Boolean = false;
      
      private var §]$_§:Boolean = false;
      
      private var §'3§:Boolean = false;
      
      private var step:int = 0;
      
      public function §,#p§()
      {
         var _loc1_:Object = {};
         _loc1_[§@#n§.LEFT] = [Keyboard.LEFT,§3!f§.LEFT,Keyboard.NUMPAD_4];
         _loc1_[§@#n§.RIGHT] = [Keyboard.RIGHT,§3!f§.RIGHT,Keyboard.NUMPAD_6];
         _loc1_[§@#n§.§[$o§] = [Keyboard.ENTER,§]2§.F];
         _loc1_[§@#n§.§9$u§] = [Keyboard.BACKSPACE,§]2§.R];
         _loc1_[§@#n§.§>x§] = [Keyboard.SPACE,Keyboard.NUMPAD_5];
         _loc1_[§@#n§.§ !X§] = [Keyboard.SHIFT];
         _loc1_[§@#n§.§?#i§] = [§3!f§.§6!T§];
         super(_loc1_);
      }
      
      override public function activate() : void
      {
         var _loc1_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(Boolean(state == §8!V§ && _loc1_ && _loc1_.§=%g§()) && Boolean(!_loc1_.activeUnit.disposed) && !_loc1_.§[!W§())
         {
            super.activate();
            this.§?"'§ = isPressed(§@#n§.§>x§);
            this.step = 0;
            this.§'3§ = false;
         }
      }
      
      override public function deactivate() : void
      {
         var _loc1_:§]$;§ = null;
         if(state == §;U§)
         {
            super.deactivate();
            _loc1_ = §8"%§.§?!W§.§4"m§;
            if(Boolean(_loc1_ && _loc1_.§=%g§()) && Boolean(!_loc1_.activeUnit.disposed) && _loc1_.activeUnit.crawling != 0)
            {
               §#!Z§.fire(§#!Z§.§0"i§);
            }
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:§]$;§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:Vector.<§&"T§> = null;
         var _loc7_:§,%r§ = null;
         _loc2_ = §8"%§.§?!W§.§4"m§;
         var _loc3_:§+%]§ = _loc2_.activeUnit;
         if(_loc3_.aiArsenal != null)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"unit actions on AI turn"));
         }
         if(!_loc3_.disposed)
         {
            _loc4_ = isPressed(§@#n§.§ !X§);
            _loc5_ = _loc4_ ? 1 : 0;
            if(§7#r§(§@#n§.LEFT) && _loc3_.crawling < 0 || §7#r§(§@#n§.RIGHT) && _loc3_.crawling > 0)
            {
               §#!Z§.fire(§#!Z§.§0"i§);
            }
            if(§7#r§(§@#n§.§>x§) && this.§?"'§)
            {
               this.§?"'§ = false;
            }
            if(_loc3_.stable || _loc3_.attributes.jump.§ %Q§())
            {
               if(isPressed(§@#n§.§[$o§) || isPressed(§@#n§.§9$u§))
               {
               }
               if(isPressed(§@#n§.§[$o§) && !this.§]$_§)
               {
                  §#!Z§.fire(§#!Z§.§<$T§,_loc5_);
               }
               if(isPressed(§@#n§.§9$u§))
               {
                  §#!Z§.fire(§#!Z§.§@!I§,_loc5_);
               }
            }
            if(_loc3_.stable)
            {
               if(!_loc4_)
               {
                  this.step = 0;
               }
               if(!isPressed(§@#n§.LEFT) && this.step == §+%]§.LEFT)
               {
                  this.step = 0;
               }
               if(!isPressed(§@#n§.RIGHT) && this.step == §+%]§.RIGHT)
               {
                  this.step = 0;
               }
               if(isPressed(§@#n§.LEFT) && §7#r§(§@#n§.RIGHT) && (!_loc3_.isImmobile() || _loc3_.direction == §+%]§.RIGHT))
               {
                  if(_loc3_.crawling >= 0)
                  {
                     this.§'3§ = _loc4_;
                     if(!this.§'3§ || this.step == 0)
                     {
                        if(this.§'3§ && _loc3_.direction == §+%]§.RIGHT)
                        {
                           this.step = §+%]§.LEFT;
                        }
                        §#!Z§.fire(§#!Z§.§!c§,this.§'3§ ? §'%T§ : §5!O§);
                     }
                  }
                  else if(this.§'3§ != _loc4_)
                  {
                     this.§'3§ = _loc4_;
                     §#!Z§.fire(§#!Z§.§!c§,this.§'3§ ? §'%T§ : §5!O§);
                  }
               }
               if(isPressed(§@#n§.RIGHT) && §7#r§(§@#n§.LEFT) && (!_loc3_.isImmobile() || _loc3_.direction == §+%]§.LEFT))
               {
                  if(_loc3_.crawling <= 0)
                  {
                     this.§'3§ = _loc4_;
                     if(!this.§'3§ || this.step == 0)
                     {
                        if(this.§'3§ && _loc3_.direction == §+%]§.LEFT)
                        {
                           this.step = §+%]§.RIGHT;
                        }
                        §#!Z§.fire(§#!Z§.§%H§,this.§'3§ ? §'%T§ : §5!O§);
                     }
                  }
                  else if(this.§'3§ != _loc4_)
                  {
                     this.§'3§ = _loc4_;
                     §#!Z§.fire(§#!Z§.§%H§,this.§'3§ ? §'%T§ : §5!O§);
                  }
               }
               if(isPressed(§@#n§.§?#i§))
               {
                  _loc6_ = §7z§.§'$i§(_loc3_);
                  if(_loc6_.length > 0)
                  {
                     if(_loc3_.§0!e§)
                     {
                        §#!Z§.fire(§#!Z§.§"#t§,_loc6_[0].getId());
                     }
                     else
                     {
                        §>&-§.§[$9§(§0$N§.§%! §("CANT_WEAR_HAT"),true);
                     }
                  }
               }
            }
            else if(isPressed(§@#n§.§>x§))
            {
               _loc7_ = _loc3_.weapon;
               if(Boolean((_loc7_) && !_loc7_.§92§()) && Boolean(_loc7_ is §-$2§) && !this.§?"'§)
               {
                  this.§?"'§ = true;
                  §#!Z§.fire(§#!Z§.§!&,§,_loc5_);
               }
            }
            if(_loc3_.physicModel is §1!c§)
            {
               this.§]$_§ = isPressed(§@#n§.§[$o§);
            }
            else
            {
               this.§]$_§ = false;
            }
         }
         super.onFrame(param1);
      }
   }
}

