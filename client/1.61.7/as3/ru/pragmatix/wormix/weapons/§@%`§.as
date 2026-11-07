package ru.pragmatix.wormix.weapons
{
   import § !P§.§9%Z§;
   import § &5§.§=#P§;
   import §!L§.§`#p§;
   import §%"1§.§@%;§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §&"c§.§5$n§;
   import §'!Z§.§2!H§;
   import §+%S§.§2&>§;
   import §0!§.§7`§;
   import §0!§.§8$Y§;
   import §0"L§.§+# §;
   import §2"L§.§^$y§;
   import §2#H§.§,"R§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §9"-§.§?!s§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §?>§.§0!7§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.Socket;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   import ru.pragmatix.wormix.weapons.interfaces.§50§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class §@%`§ extends §,%r§ implements §##=§, §=!s§, §50§
   {
      
      private static const §3$o§:int = 1800;
      
      private static const §!$e§:uint = 7;
      
      protected const §-S§:String = "vehicle_force";
      
      private var maxFuel:uint;
      
      private var §]!L§:uint;
      
      private var §0!U§:Number;
      
      private var §%!1§:Number;
      
      protected var §0#h§:int;
      
      private var f:§]%G§;
      
      private var §>!4§:uint;
      
      private var distance:uint;
      
      private var § !R§:Point;
      
      private var counter:§%%a§;
      
      protected var §["i§:§6#I§ = null;
      
      private var §-$p§:Class;
      
      protected var §1!M§:Boolean = true;
      
      protected var §1=§:Boolean;
      
      public function §@%`§(param1:Class, param2:uint = 1800, param3:uint = 8, param4:Number = 1.5, param5:Number = 0.5)
      {
         super();
         this.§-$p§ = param1;
         this.maxFuel = param2;
         this.§]!L§ = param3;
         this.§0!U§ = param4;
         this.§%!1§ = param5;
         this.§>!4§ = param2 / 100;
         §7&§(new §&!P§());
      }
      
      override public function activate() : void
      {
         if(this.§["i§ == null)
         {
            super.activate();
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         var _loc2_:§&$2§ = property["maxFuel"] as §&$2§;
         this.maxFuel = _loc2_ ? uint(_loc2_.value) : this.maxFuel;
         super.attach(param1);
      }
      
      override public function §?!K§() : void
      {
         if(owner == null)
         {
            return;
         }
         if(this.§["i§ != null && !this.§1!M§)
         {
            this.§]"q§(true);
         }
         super.§?!K§();
      }
      
      override protected function §`%V§() : void
      {
         owner.§4%Y§(clip);
         this.§["i§ = new this.§-$p§(owner);
         if(this.§["i§ is §8%f§)
         {
            §8%f§(this.§["i§).init(paramSet,paramSetEx);
         }
         else if(this.§["i§ is §<"p§)
         {
            §<"p§(this.§["i§).init(paramSet);
         }
         this.§0#h§ = this.§%"&§();
         this.distance = 0;
         this.§ !R§ = new Point(this.§["i§.x,this.§["i§.y);
         this.f = new §]%G§(this.§-S§,-Math.PI / 2,§]%G§.§5$r§.§'u§ / 4 * 3);
         this.§["i§.physParams.addForce(this.f);
         this.counter = new §%%a§(this.maxFuel / this.§>!4§);
         this.counter.attach(this.§["i§);
         this.§1!M§ = false;
         this.§1=§ = true;
         §+# §.§9! §.deactivate();
         §+# §.§@%V§.activate();
         startFrameListening();
      }
      
      protected function §]"q§(param1:Boolean) : void
      {
         §2#G§();
         §+# §.§@%V§.deactivate();
         §+# §.§9! §.activate();
         if(param1 && !this.§["i§.disposed)
         {
            this.§#-§();
         }
         if(§8"%§.§?!W§.§4"m§.activeSquad.isLocal())
         {
            §8"%§.§?!W§.§7%@§.increment(§!$L§.§3%X§,this.distance / §<H§.§3r§);
         }
         §=#P§.§6+§();
         this.§1!M§ = true;
         this.§1=§ = false;
         this.§["i§ = null;
         this.§?!K§();
      }
      
      protected function §#-§() : void
      {
      }
      
      override protected function onFrame(param1:Event) : void
      {
         if(!this.§["i§ || !owner)
         {
            return;
         }
         if(this.§["i§.disposed)
         {
            this.§]"q§(false);
            return;
         }
         this.§0#h§ -= §!$e§;
         var _loc2_:uint = this.distance;
         this.distance += §^$y§.distance(this.§["i§.x - this.§ !R§.x,this.§["i§.y - this.§ !R§.y);
         if(!§9%Z§.§9$s§(§!$L§.§3%X§) && uint(this.distance / §<H§.§3r§ / 5) > uint(_loc2_ / §<H§.§3r§ / 5) && §8"%§.§?!W§.§7%@§.§"!k§())
         {
            §2!H§.§'!i§("5","0x5C98EF",this.§["i§.x,this.§["i§.y);
         }
         this.§ !R§.x = this.§["i§.x;
         this.§ !R§.y = this.§["i§.y;
         if(this.§["i§.speed > this.§]!L§)
         {
            this.§["i§.§^"F§(this.§["i§.angle,this.§]!L§);
         }
         var _loc3_:int = int(this.§0#h§ / this.§>!4§);
         this.counter.update(_loc3_);
         if(this.§0#h§ <= 0)
         {
            this.§]"q§(true);
         }
         else if(_loc3_ > 150 && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"launchpad fuel hacked"));
         }
      }
      
      public function isLaunched() : Boolean
      {
         return this.§1=§;
      }
      
      public function §%"&§() : int
      {
         var _loc1_:int = 0;
         _loc1_ = owner.bonuses.getStatValue(Bonus.§<$H§,100);
         var _loc2_:int = _loc1_ > 0 ? int(§-q§.§'%$§(_loc1_,this.maxFuel)) : int(this.maxFuel);
         this.§>!4§ = _loc2_ / 100;
         return _loc2_;
      }
      
      public function weaponLeftPressed() : void
      {
         if(this.f.ax > -this.§0!U§)
         {
            this.f.ax -= this.§%!1§;
         }
      }
      
      public function weaponLeftReleased() : void
      {
         if(this.f.ax < this.§0!U§)
         {
            this.f.ax += this.§%!1§;
         }
      }
      
      public function weaponRightPressed() : void
      {
         if(this.f.ax < this.§0!U§)
         {
            this.f.ax += this.§%!1§;
         }
      }
      
      public function weaponRightReleased() : void
      {
         if(this.f.ax > -this.§0!U§)
         {
            this.f.ax -= this.§%!1§;
         }
      }
      
      public function weaponUpPressed() : void
      {
         if(this.f.ay > -this.§0!U§)
         {
            this.f.ay -= this.§%!1§;
         }
      }
      
      public function weaponUpReleased() : void
      {
         if(this.f.ay < this.§0!U§)
         {
            this.f.ay += this.§%!1§;
         }
      }
      
      public function weaponDownPressed() : void
      {
         if(this.f.ay < this.§0!U§)
         {
            this.f.ay += this.§%!1§;
         }
      }
      
      public function weaponDownReleased() : void
      {
         if(this.f.ay > -this.§0!U§)
         {
            this.f.ay -= this.§%!1§;
         }
      }
   }
}

