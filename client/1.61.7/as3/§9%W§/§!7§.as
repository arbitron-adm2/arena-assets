package §9%W§
{
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§!!q§;
   import §+$=§.§6#A§;
   import §0!§.§7`§;
   import §0!§.§8$Y§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §1#p§.§"Z§;
   import §2!-§.§'5§;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §!7§ extends §9#"§
   {
      
      public static const §'$+§:Number = Math.PI / 72;
      
      public static const §2F§:uint = 4;
      
      public static const §@$>§:uint = 100;
      
      public static const PI_HALF:Number = Math.PI / 2;
      
      public static const PI2:Number = Math.PI * 2;
      
      protected var dist:uint;
      
      protected var §&G§:Number;
      
      protected var §8";§:Number;
      
      protected var §>%[§:Number;
      
      protected var §?b§:Number;
      
      protected var §"#8§:MovieClip;
      
      public var baseX:int;
      
      public var baseY:int;
      
      private var §&"e§:Number;
      
      protected var frames:§&$2§ = new §&$2§(0);
      
      protected var §'k§:§`"i§;
      
      private var §4%[§:uint = 0;
      
      private var lastFrame:uint = 0;
      
      public function §!7§(param1:Number = 0.04363323129985824, param2:Number = 1.5707963267948966, param3:Number = 1.5707963267948966, param4:uint = 100)
      {
         super();
         this.§>%[§ = param1;
         this.§?b§ = §2F§ * param1;
         this.§&G§ = param2;
         this.§8";§ = param3;
         this.dist = param4;
         §;!G§ = [§#!Z§.§^!x§,§#!Z§.§3"E§,§#!Z§.§#B§];
         this.§"#8§ = §6#A§.§!&6§(§+"'§.§;$O§);
      }
      
      protected function §&#k§() : void
      {
         Application.scene.addChild(this.§"#8§);
      }
      
      public function §'"`§() : void
      {
         this.§"#8§.x = this.baseX + this.dist * Math.cos(this.§&"e§);
         this.§"#8§.y = this.baseY + this.dist * Math.sin(this.§&"e§);
         §,%r§(unit.weapon).rotateWeaponClip(this.§&"e§);
      }
      
      protected function §<#S§() : void
      {
         if(Application.scene != null)
         {
            Application.scene.removeChild(this.§"#8§);
         }
      }
      
      override public function activate(param1:§+%]§) : void
      {
         if(!isActive() && Boolean(param1))
         {
            this.§4%[§ = 0;
            this.lastFrame = 0;
            super.activate(param1);
            this.§&#k§();
            this.baseX = param1.x;
            this.baseY = param1.y;
            this.§&"e§ = param1.§4#§;
            if(param1.direction == -1 && Math.abs(this.§&"e§) < PI_HALF || param1.direction == 1 && Math.abs(this.§&"e§) > PI_HALF)
            {
               this.§&"e§ = this.§&"e§ == 0 ? Math.PI : §^$y§.sign(this.§&"e§) * Math.PI - this.§&"e§;
            }
            this.§5"?§();
            this.§8#F§();
            this.§'"`§();
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §+# §.§"$T§.activate();
            }
            if(§`"i§.§9!e§(param1))
            {
               this.§'k§ = new §`"i§(param1,this);
               this.§'k§.§4%@§();
            }
         }
      }
      
      override public function deactivate() : void
      {
         if(isActive())
         {
            unit.§4#§ = this.§&"e§;
            this.§<#S§();
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §+# §.§"$T§.deactivate();
            }
            if(this.§'k§)
            {
               this.§'k§.deactivate();
               this.§'k§ = null;
            }
            super.deactivate();
         }
      }
      
      public function getAngle() : Number
      {
         return this.§&"e§;
      }
      
      public function §=%`§() : Number
      {
         return this.§>%[§;
      }
      
      override public function §"$Z§(param1:Boolean = false) : void
      {
         var _loc2_:Number = NaN;
         if(this.§<#>§())
         {
            _loc2_ = param1 ? this.§?b§ : this.§>%[§;
            this.§&"e§ -= unit.direction * _loc2_;
            if(Math.abs(this.§&"e§) > Math.PI)
            {
               this.§&"e§ -= (this.§&"e§ > 0 ? 1 : -1) * PI2;
            }
            this.§5"?§();
            this.§'"`§();
         }
      }
      
      public function §5"?§() : void
      {
         if(this.§&"e§ < 0)
         {
            if(unit.direction == -1 && this.§&"e§ > -Math.PI + this.§&G§)
            {
               this.§&"e§ = -Math.PI + this.§&G§;
            }
            else if(unit.direction == 1 && this.§&"e§ < -this.§&G§)
            {
               this.§&"e§ = -this.§&G§;
            }
         }
      }
      
      override public function §3$b§(param1:Boolean = false) : void
      {
         var _loc2_:Number = NaN;
         if(this.§<#>§())
         {
            _loc2_ = param1 ? this.§?b§ : this.§>%[§;
            this.§&"e§ += unit.direction * _loc2_;
            if(Math.abs(this.§&"e§) > Math.PI)
            {
               this.§&"e§ -= (this.§&"e§ > 0 ? 1 : -1) * PI2;
            }
            this.§8#F§();
            this.§'"`§();
         }
      }
      
      public function §8#F§() : void
      {
         if(this.§&"e§ > 0)
         {
            if(unit.direction == -1 && this.§&"e§ < Math.PI - this.§8";§)
            {
               this.§&"e§ = Math.PI - this.§8";§;
            }
            else if(unit.direction == 1 && this.§&"e§ > this.§8";§)
            {
               this.§&"e§ = this.§8";§;
            }
         }
      }
      
      override public function setValue(param1:int) : void
      {
         this.§&"e§ = param1 * this.§>%[§;
         this.§'"`§();
      }
      
      private function §<#>§() : Boolean
      {
         var _loc1_:uint = 1;
         var _loc2_:Boolean = false;
         var _loc3_:uint = uint(Application.scene.§@$I§.§<#[§());
         if(_loc3_ - this.lastFrame == 1)
         {
            ++this.lastFrame;
         }
         else
         {
            this.lastFrame = this.§4%[§;
         }
         if(_loc3_ - this.§4%[§ > _loc1_)
         {
            if(this.lastFrame != _loc3_)
            {
               this.§4%[§ = _loc3_;
               this.lastFrame = _loc3_;
            }
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override public function charge(param1:Boolean) : void
      {
         var _loc2_:§!!q§ = null;
         if(isActive())
         {
            if(§&K§ != null && !§&K§(this.§&"e§))
            {
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  §@%;§.play(§`!v§.§2$e§);
                  §#!Z§.fire(§#!Z§.§[!E§);
               }
               return;
            }
            this.deactivate();
            _loc2_ = new §!!q§();
            _loc2_.angle = this.§&"e§;
            _loc2_.isAlternate = param1;
            dispatchEvent(new §'5§(_loc2_));
         }
      }
      
      public function §7$d§() : void
      {
      }
      
      public function get angle() : Number
      {
         return this.§&"e§;
      }
      
      public function set angle(param1:Number) : void
      {
         this.§&"e§ = param1;
      }
   }
}

