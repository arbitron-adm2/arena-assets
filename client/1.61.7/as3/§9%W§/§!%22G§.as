package §9%W§
{
   import §!L§.§+"'§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §+$=§.§6#A§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.§'5§;
   import §<%k§.§`!v§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §!"G§ extends §!7§ implements §`"y§
   {
      
      public static const §""g§:int = 40;
      
      public static const §+!p§:int = 20;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      protected var §3#"§:FrameTimer;
      
      protected var power:Number;
      
      private var §?"+§:Boolean = false;
      
      private var isAlternate:Boolean = false;
      
      private var §0$6§:Boolean = false;
      
      private var §;$a§:MovieClip = §6#A§.§!&6§(§+"'§.§?%'§);
      
      private var §0$x§:§7#P§;
      
      private var §6#U§:Function;
      
      public function §!"G§(param1:Function = null, param2:Number = 0.04363323129985824, param3:Number = 1.5707963267948966, param4:Number = 1.5707963267948966)
      {
         super(param2,param3,param4,§@$>§);
         this.§6#U§ = param1;
         §;!G§ = [§#!Z§.§^!x§,§#!Z§.§3"E§,§#!Z§.§#B§,§#!Z§.§=$l§];
      }
      
      override public function deactivate() : void
      {
         var _loc1_:§]$;§ = null;
         if(isActive())
         {
            super.deactivate();
            this.§?"+§ = false;
            if(this.§3#"§ != null)
            {
               this.§3#"§.stop();
               this.§3#"§.removeEventListener(TimerEvent.TIMER,this.§!8§);
               this.§3#"§ = null;
            }
            if(this.§;$a§.parent != null)
            {
               Application.scene.removeChild(this.§;$a§);
            }
            if(this.§0$x§)
            {
               this.§0$x§.stop();
            }
            _loc1_ = §8"%§.§?!W§.§4"m§;
            if(Boolean(!this.§0$6§ && !_loc1_.§'%i§().timer) && Boolean(_loc1_.§-"H§) && _loc1_.§-"H§.running)
            {
               _loc1_.§?"+§ = false;
               §#!Z§.fire(§#!Z§.§8%S§);
            }
         }
      }
      
      override public function charge(param1:Boolean) : void
      {
         var _loc2_:§]$;§ = null;
         if(!this.§?"+§)
         {
            if(§&K§ != null && !§&K§(angle))
            {
               if(§8"%§.§?!W§.§4"m§.§=%g§())
               {
                  §@%;§.play(§`!v§.§2$e§);
                  §#!Z§.fire(§#!Z§.§[!E§);
               }
               return;
            }
            this.§?"+§ = true;
            this.isAlternate = param1;
            this.power = 1;
            this.§;$a§.gotoAndStop(0);
            this.§3#"§ = new FrameTimer(§""g§ / §+!p§);
            this.§3#"§.addEventListener(FrameTimerEvent.§8$`§,this.§!8§);
            this.§3#"§.start();
            this.§0$x§ = §@%;§.play(§`!v§.§2%U§);
            _loc2_ = §8"%§.§?!W§.§4"m§;
            if(!_loc2_.§'%i§().isStopped && unit.weapon.stopsTimer())
            {
               _loc2_.§?"+§ = true;
            }
         }
      }
      
      override public function §%1§() : Boolean
      {
         return this.§?"+§;
      }
      
      private function §!8§(param1:Event) : void
      {
         var _loc2_:Point = null;
         if(!unit || unit.disposed)
         {
            §#!Z§.fire(§#!Z§.§[!E§);
            return;
         }
         ++this.power;
         if(this.power >= §+!p§)
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §#!Z§.fire(§#!Z§.§=$l§);
            }
            this.trigger();
         }
         else
         {
            if(this.§6#U§ != null)
            {
               this.§6#U§(angle,this.power);
            }
            _loc2_ = §,%r§(unit.weapon).getBarrelPoint(angle);
            this.§;$a§.x = _loc2_.x;
            this.§;$a§.y = _loc2_.y;
            this.§;$a§.rotation = angle * 180 / Math.PI;
            this.§;$a§.gotoAndStop(int(1 + this.power));
            if(this.§;$a§.parent == null)
            {
               Application.scene.addChild(this.§;$a§);
            }
         }
      }
      
      override public function release() : void
      {
         if(this.§?"+§ && isActive())
         {
            this.trigger();
         }
      }
      
      private function trigger() : void
      {
         this.§0$6§ = true;
         this.deactivate();
         var _loc1_:§!!q§ = new §!!q§();
         _loc1_.angle = angle;
         _loc1_.power = this.power;
         _loc1_.isAlternate = this.isAlternate;
         if(this.§0$x§)
         {
            this.§0$x§.stop();
         }
         dispatchEvent(new §'5§(_loc1_));
      }
   }
}

