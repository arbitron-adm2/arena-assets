package §[$P§
{
   import §"!C§.§3#n§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §0!§.§[k§;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §6$z§.§!"§;
   import §6$z§.BonusStat;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §[%§.Dragon;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §3%v§ extends §+H§
   {
      
      private static const NONE:§&$2§ = new §&$2§(0);
      
      private static const §^%@§:§&$2§ = new §&$2§(1);
      
      private static const §0&8§:§&$2§ = new §&$2§(2);
      
      private static const §!"q§:§&$2§ = new §&$2§(2);
      
      private static const §,%f§:§&$2§ = new §&$2§(5);
      
      private static const §'%t§:§&$2§ = new §&$2§(6);
      
      private static const §^V§:§&$2§ = new §&$2§(20);
      
      private static const §"$M§:§&$2§ = new §&$2§(-5);
      
      private static const §7L§:§&$2§ = new §&$2§(20);
      
      private static const §?"`§:§&$2§ = new §&$2§(28);
      
      private static const §"!J§:§&$2§ = new §&$2§(8);
      
      private static const §1$=§:int = 1;
      
      private var §4$N§:§?"&§ = new §?"&§();
      
      private var curDelay:int = -1;
      
      private var §]"V§:Boolean;
      
      private var §2%=§:int = 0;
      
      private var §8"8§:Number = 1;
      
      private var §1$j§:int;
      
      private var §8#A§:uint = 0;
      
      private var §!";§:uint = 0;
      
      private var §%!k§:int = 0;
      
      private var §%&?§:Number = 0;
      
      private var §2!$§:int = 0;
      
      private var §%$;§:int = 0;
      
      private var §"$4§:int = 0;
      
      private var §`%G§:§7#P§;
      
      private var §7!F§:Dragon;
      
      private var distance:uint;
      
      private var § !R§:Point;
      
      public function §3%v§(param1:Dragon, param2:§+H§)
      {
         super(param1,param2);
         this.§7!F§ = param1;
         this.§3$s§();
      }
      
      private static function §1"M§() : Boolean
      {
         return §8"%§.§?!W§.§4"m§.§'U§() == false;
      }
      
      override protected function jump(param1:Number, param2:uint, param3:Boolean, param4:Boolean = false) : void
      {
         this.§4$N§.value = true;
         super.jump(param1,param2,param3,param4);
      }
      
      override protected function extraJump(param1:Number, param2:Number, param3:Boolean = true, param4:Boolean = false) : void
      {
         if(§,%#§.value > 1 && §#$9§.value > §4!+§)
         {
            super.extraJump(param1,param2,true,param4);
         }
         else if(§+!H§ && this.§4$N§.value && !owner.isImmobile())
         {
            this.§?$G§(§,%#§.value > 0);
            §,%#§.value = 0;
            this.§4$N§.value = false;
         }
      }
      
      override public function § %Q§() : Boolean
      {
         var _loc1_:uint = uint(Application.scene.§@$I§.§<#[§());
         return §+!H§ && _loc1_ - §"$&§ >= §'#O§.value && (§,%#§.value > 0 || this.§4$N§.value);
      }
      
      override public function §["9§() : void
      {
         super.§["9§();
         this.§4$N§.value = false;
      }
      
      public function §?$G§(param1:Boolean) : void
      {
         var extraUpflightBonus:§!"§;
         var speedBonus:BonusStat;
         var normalSpeedX:int;
         var speedX:int;
         var extraUpflightTime:Boolean = param1;
         §8$a§.§&!#§(this.§7!F§,§0%v§.§3G§,function stabilize(param1:Event):void
         {
            §'!b§();
         });
         this.§1$j§ = §^%@§.value;
         this.curDelay = 0;
         this.§]"V§ = true;
         extraUpflightBonus = this.§7!F§.bonuses.§'"S§(Bonus.EXTRA_DRAGON_FLY_UPSWING);
         speedBonus = this.§7!F§.bonuses.§'"S§(Bonus.DRAGON_FLY_SPEED) as BonusStat;
         this.§2%=§ = extraUpflightBonus ? int(Math.min(§1$=§,extraUpflightBonus.getCount())) : 0;
         this.§"$4§ = 0;
         this.distance = 0;
         this.§ !R§ = new Point(owner.x,owner.y);
         this.§8"8§ = 1 * this.§7!F§.attributes.§8$e§.value / §[k§.§ $e§.value;
         normalSpeedX = §'%t§.value * (1 + (speedBonus ? speedBonus.getValue() * 0.01 : 0));
         this.§%!k§ = this.§8"8§ < 1.1 ? int(Math.round(this.§8"8§ * normalSpeedX)) : normalSpeedX;
         this.§%&?§ = this.§8"8§ < 1 ? 1 * §!"q§.value / this.§8"8§ : 1 * §!"q§.value;
         this.§8#A§ = extraUpflightTime ? uint(int(§?"`§.value)) : uint(§7L§.value);
         if(this.§8"8§ < 1)
         {
            this.§8#A§ = int(Math.round(this.§8"8§ * this.§8#A§));
         }
         this.§!";§ = this.§8#A§;
         §+# §.§9! §.deactivate();
         §+# §.§'&#§.activate();
         §8"%§.§?!W§.§4"m§.§%!J§(false);
         this.§7!F§.§7#f§();
         this.§7!F§.graphics.§6w§(Dragon.§&%v§,true);
         this.§7!F§.physParams.§"%<§(§]%G§.§5$r§.name);
         this.§7!F§.stable = false;
         speedX = §^$y§.sign(this.§7!F§.speedX) == this.§7!F§.direction ? int(this.§7!F§.direction * this.§%!k§) : 0;
         this.§4I§(speedX,§"$M§.value);
         if(this.§`%G§ == null)
         {
            this.§`%G§ = §@%;§.play(§`!v§.§"#M§,true);
         }
      }
      
      public function §!!>§() : void
      {
         if(this.§1$j§ != NONE.value)
         {
            this.§'"!§();
         }
         if(this.curDelay != -1 && this.curDelay < §^V§.value)
         {
            ++this.curDelay;
         }
      }
      
      private function §'"!§() : void
      {
         ++this.§"$4§;
         this.distance += §^$y§.distance(owner.x - this.§ !R§.x,owner.y - this.§ !R§.y);
         this.§ !R§.x = owner.x;
         this.§ !R§.y = owner.y;
         if(this.§"$4§ == §"!J§.value && this.§1$j§ == §^%@§.value)
         {
            this.§4I§(this.§7!F§.speedX,this.§%&?§);
         }
         if(this.§1$j§ == §0&8§.value)
         {
            if(this.§"$4§ == this.§!";§)
            {
               this.§1$j§ = §^%@§.value;
               this.§4I§(this.§2!$§,this.§%&?§);
            }
            if(this.§7!F§.speedY != §"$M§.value)
            {
               this.§1$j§ = §^%@§.value;
               this.§4I§(0,this.§%&?§);
            }
         }
         this.§7!F§.setSpeedXY(this.§2!$§,this.§%$;§);
      }
      
      public function §'!b§() : void
      {
         var _loc1_:§]$;§ = null;
         var _loc2_:int = 0;
         if(this.§ %y§)
         {
            return;
         }
         this.§3$s§();
         §+# §.§'&#§.deactivate();
         if(!this.§7!F§.disposed)
         {
            _loc1_ = §8"%§.§?!W§.§4"m§;
            if(!_loc1_.§1"3§() && !_loc1_.§[!W§() && !_loc1_.§"$6§())
            {
               if(this.§7!F§.weapon == null)
               {
                  this.§7!F§.§#&5§();
               }
               if(_loc1_.§=%g§())
               {
                  _loc1_.§%!J§(true);
               }
            }
            this.§4I§(0,0);
            this.§8"8§ = 1;
            this.§7!F§.physParams.addForce(§]%G§.§5$r§);
            §+# §.§9! §.activate();
            this.§7!F§.graphics.§34§();
            this.§7!F§.§2!W§();
         }
         if(this.§`%G§ != null)
         {
            this.§`%G§.stop();
            this.§`%G§ = null;
         }
         if(Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.activeSquad.isLocal())
         {
            _loc2_ = this.distance / §<H§.§3r§;
            if(_loc2_ > 0)
            {
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§ N§,_loc2_);
            }
         }
      }
      
      private function §4I§(param1:int, param2:int) : void
      {
         this.§2!$§ = param1;
         this.§%$;§ = param2;
      }
      
      public function §3$s§() : void
      {
         this.§1$j§ = NONE.value;
      }
      
      public function flyLeftPressed() : void
      {
         this.§4I§(-this.§%!k§,this.§%$;§);
      }
      
      public function flyLeftReleased() : void
      {
         this.§4I§(0,this.§%$;§);
      }
      
      public function flyRightPressed() : void
      {
         this.§4I§(this.§%!k§,this.§%$;§);
      }
      
      public function flyRightReleased() : void
      {
         this.§4I§(0,this.§%$;§);
      }
      
      public function flyDownPressed() : void
      {
         this.§4I§(this.§2!$§,§,%f§.value);
      }
      
      public function flyDownReleased() : void
      {
         this.§4I§(this.§2!$§,this.§%&?§);
      }
      
      public function flyUpReleased() : void
      {
         if(this.§2%=§ > 0 && !this.§]"V§)
         {
            --this.§2%=§;
            this.§]"V§ = true;
         }
      }
      
      public function flyUpPressed() : void
      {
         var _loc1_:int = 0;
         if(this.§]"V§)
         {
            this.§]"V§ = false;
            _loc1_ = this.§8"8§ < 1.1 ? int(Math.round(this.§8"8§ * §"$M§.value)) : §"$M§.value;
            this.§4I§(this.§7!F§.speedX,_loc1_);
            this.§7!F§.setSpeedXY(this.§7!F§.speedX,_loc1_);
            this.§!";§ = this.§"$4§ + this.§8#A§;
            this.§1$j§ = §0&8§.value;
         }
      }
      
      public function jumpPressed() : void
      {
         if(this.curDelay >= §^V§.value)
         {
            this.curDelay = -1;
            this.§'!b§();
         }
      }
      
      public function get § %y§() : Boolean
      {
         return this.§1$j§ == NONE.value;
      }
      
      public function get §9%Y§() : Boolean
      {
         return this.§1$j§ != NONE.value;
      }
      
      public function § "]§() : Boolean
      {
         return this.§]"V§;
      }
   }
}

