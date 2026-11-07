package ru.pragmatix.wormix.weapons
{
   import § !P§.§9%Z§;
   import § &5§.§=#P§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §'!Z§.§2!H§;
   import §,#_§.FrameTimer;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.DamageEvent;
   import §2"L§.§!#H§;
   import §2"L§.§^$y§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7$t§.§9#x§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   import ru.pragmatix.wormix.weapons.interfaces.§50§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class Jetpack extends §,%r§ implements §3N§, §##=§, §=!s§, §-$2§, §50§
   {
      
      private static const §%"z§:int = 12;
      
      private static const §<"C§:Number = 1.5;
      
      private static const §9%O§:Number = 0.5;
      
      private static const §3$o§:§&$2§ = new §&$2§(1800);
      
      private static const §<T§:int = 1;
      
      private static const §!$e§:uint = 6;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private var §@!!§:§]%G§;
      
      private var §0#h§:int;
      
      private var §2"D§:int;
      
      private var maxFuel:int;
      
      private var §>!4§:int;
      
      private var §<$P§:Boolean = false;
      
      private var counter:§%%a§;
      
      private var §`"7§:FrameTimer;
      
      private var §=#0§:§!#H§;
      
      private var §%6§:§7#P§;
      
      private var distance:uint;
      
      private var § !R§:Point;
      
      public function Jetpack()
      {
         super();
         this.maxFuel = §3$o§.value;
         §^&I§.value = false;
         §7&§(new §&!P§(this.§6#N§));
      }
      
      public function §6#N§(param1:§+%]§ = null) : Boolean
      {
         if(§8"%§.§?!W§.§4"m§.§'%i§().§9"c§)
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.TIME_IS_OUT,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         if(§9$h§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         return true;
      }
      
      public function jumpShoot(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         if(this.§6#N§() && §8"%§.§?!W§.§4"m§.§#"G§())
         {
            _loc2_ = owner.speedY > 5 ? 5 : owner.speedY;
            owner.setSpeedXY(owner.speedX / 2,_loc2_);
            shootWithParams(§!!q§.EMPTY);
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.maxFuel = this.§%"&§();
         this.§>!4§ = this.maxFuel / 100;
      }
      
      override public function §?!K§() : void
      {
         if(this.§<$P§)
         {
            this.§`"7§.stop();
            if(!this.counter.§9$s§())
            {
               this.counter.§?!K§();
            }
            this.stop();
         }
         if(Boolean(this.§=#0§) && this.§=#0§.§&#4§())
         {
            this.§=#0§.stop();
            this.§=#0§ = null;
         }
         if(§8"%§.§?!W§.§4"m§.activeSquad.isLocal())
         {
            this.§6-§();
         }
         super.§?!K§();
      }
      
      private function §6-§() : void
      {
         var _loc1_:int = this.distance / §<H§.§3r§;
         if(_loc1_ > 0)
         {
            §8"%§.§?!W§.§7%@§.increment(§!$L§.§3%X§,_loc1_);
            if(§8"%§.§?!W§.§7%@§.§"!k§() && !§9%Z§.§9$s§(§!$L§.§3%X§))
            {
               §2!H§.§'!i§(_loc1_.toString(),"0x5C98EF",owner.x + §<H§.§@% §,owner.y + §<H§.§-#C§);
            }
         }
         this.distance = 0;
      }
      
      override protected function §`%V§() : void
      {
         this.§<$P§ = true;
         this.§0#h§ = this.maxFuel;
         this.§2"D§ = 0;
         this.distance = 0;
         this.§ !R§ = new Point(owner.x,owner.y);
         owner.graphics.jetpack();
         owner.§7#f§();
         this.§@!!§ = new §]%G§(§]%G§.§0U§,-PI_HALF,0.75 * §]%G§.§5$r§.§'u§);
         owner.physParams.addForce(this.§@!!§);
         owner.stable = false;
         owner.keepUnstable = true;
         owner.§4%Y§(clip);
         owner.attachTrail();
         §+# §.§9! §.deactivate();
         §+# §.§@%V§.activate();
         this.counter = new §%%a§(this.maxFuel / this.§>!4§);
         this.counter.attach(owner);
         this.§`"7§ = new FrameTimer(§<T§);
         this.§`"7§.addEventListener(FrameTimerEvent.§8$`§,function(param1:Event):void
         {
            if(owner != null)
            {
               §5!l§();
            }
         });
         this.§`"7§.start();
         this.§=#0§ = §8$a§.§&!#§(owner,§0%v§.§&!D§,function(param1:DamageEvent):void
         {
            release();
         });
         §@%;§.play(§`!v§.§6%;§);
         this.§%6§ = §@%;§.play(§`!v§.§+"v§,true);
         §9$h§.update(owner);
      }
      
      private function stop() : void
      {
         this.§<$P§ = false;
         this.§`"7§.stop();
         §+# §.§@%V§.deactivate();
         if(!owner.disposed)
         {
            owner.physParams.§"%<§(§]%G§.§0U§);
            if(!§8"%§.§?!W§.§4"m§.§1"3§())
            {
               §+# §.§9! §.activate();
            }
            owner.keepUnstable = false;
         }
         if(this.§%6§ != null)
         {
            this.§%6§.stop();
         }
         §@%;§.play(§`!v§.§6#O§);
      }
      
      private function §5!l§() : void
      {
         this.§0#h§ -= §!$e§;
         this.§2"D§ += §!$e§;
         if(this.§2"D§ < this.maxFuel + 200)
         {
            this.distance += §^$y§.distance(owner.x - this.§ !R§.x,owner.y - this.§ !R§.y);
            this.§ !R§.x = owner.x;
            this.§ !R§.y = owner.y;
            if(owner.speed > §%"z§)
            {
               owner.§^"F§(owner.angle,§%"z§);
            }
            this.counter.update(this.§0#h§ / this.§>!4§);
            if(this.§0#h§ <= 0)
            {
               this.release();
            }
         }
         else if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"jetpack fuel hacked"));
         }
      }
      
      public function §%"&§() : int
      {
         var _loc1_:int = owner.bonuses.getStatValue(Bonus.§<$H§,100);
         return §-q§.§'%$§(_loc1_,§3$o§.value);
      }
      
      public function isUsed() : Boolean
      {
         return this.§<$P§;
      }
      
      public function weaponCharge() : void
      {
         this.release();
      }
      
      private function release() : void
      {
         var _loc1_:§+%]§ = owner;
         this.§?!K§();
         if(§8"%§.§?!W§.§4"m§.§#"G§())
         {
            _loc1_.§#&5§();
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §8"%§.§?!W§.§4"m§.§%!J§(true);
            }
         }
      }
      
      public function weaponLeftPressed() : void
      {
         owner.turn(§+%]§.LEFT);
         if(this.§@!!§.ax > -§<"C§)
         {
            this.§@!!§.ax -= §9%O§;
         }
      }
      
      public function weaponLeftReleased() : void
      {
         if(this.§@!!§.ax < §<"C§)
         {
            this.§@!!§.ax += §9%O§;
         }
      }
      
      public function weaponRightPressed() : void
      {
         owner.turn(§+%]§.RIGHT);
         if(this.§@!!§.ax < §<"C§)
         {
            this.§@!!§.ax += §9%O§;
         }
      }
      
      public function weaponRightReleased() : void
      {
         if(this.§@!!§.ax > -§<"C§)
         {
            this.§@!!§.ax -= §9%O§;
         }
      }
      
      public function weaponUpPressed() : void
      {
         if(this.§@!!§.ay > -§<"C§)
         {
            this.§@!!§.ay -= §9%O§;
         }
      }
      
      public function weaponUpReleased() : void
      {
         if(this.§@!!§.ay < §<"C§)
         {
            this.§@!!§.ay += §9%O§;
         }
      }
      
      public function weaponDownPressed() : void
      {
         if(this.§@!!§.ay < §<"C§)
         {
            this.§@!!§.ay += §9%O§;
         }
      }
      
      public function weaponDownReleased() : void
      {
         if(this.§@!!§.ay > -§<"C§)
         {
            this.§@!!§.ay -= §9%O§;
         }
      }
   }
}

