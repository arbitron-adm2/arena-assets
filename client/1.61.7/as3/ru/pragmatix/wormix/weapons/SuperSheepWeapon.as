package ru.pragmatix.wormix.weapons
{
   import § !P§.§9%Z§;
   import § &5§.§=#P§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §'!Z§.§2!H§;
   import §+5§.§5"<§;
   import §0"L§.§+# §;
   import §4$b§.§8D§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   import ru.pragmatix.wormix.weapons.interfaces.§50§;
   
   public class SuperSheepWeapon extends §,%r§ implements §##=§, §-$2§, §50§
   {
      
      protected const §3$o§:int = 450;
      
      private var counter:§%%a§;
      
      protected var §#n§:§5"<§;
      
      protected var §1!M§:Boolean = true;
      
      protected var rolling:int;
      
      protected var frames:int;
      
      protected var distance:uint;
      
      protected var maxFuel:int;
      
      public function SuperSheepWeapon()
      {
         super();
         §7&§(new §&!P§());
      }
      
      public function jumpShoot(param1:Boolean) : void
      {
         if(!§8"%§.§?!W§.§4"m§.§1"3§())
         {
            shootWithParams(§!!q§.EMPTY);
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.maxFuel = this.§%"&§();
      }
      
      override public function activate() : void
      {
         if(this.§#n§ == null)
         {
            super.activate();
         }
      }
      
      override public function §?!K§() : void
      {
         if(owner == null)
         {
            return;
         }
         if(this.§#n§ != null && !this.§1!M§)
         {
            this.§%%c§(true);
         }
         super.§?!K§();
      }
      
      override protected function §`%V§() : void
      {
         owner.§4%Y§(clip);
         this.rolling = 0;
         this.frames = 0;
         this.distance = 0;
         var _loc1_:Array = getProperty("clips") ? getProperty("clips") as Array : [§8D§.§8X§,§8D§.§;$r§,§8D§.§,%!§];
         this.§#n§ = new §5"<§(owner,paramSet,_loc1_);
         this.§#n§.§0!i§(getProperty("groundBreaks") ? uint(getProperty("groundBreaks").value) : 0);
         this.§#n§.§6$v§(getProperty("damagePerSupply") ? uint(getProperty("damagePerSupply").value) : 0);
         this.§#n§.§`%4§(getProperty("flySpeedPercent") ? getProperty("flySpeedPercent").value * 0.01 : 1);
         this.counter = new §%%a§(this.maxFuel / 30);
         this.counter.attach(this.§#n§);
         this.§1!M§ = false;
         §+# §.§9! §.deactivate();
         §+# §.§@%V§.activate();
         §?"'§ = true;
         owner.graphics.§9!I§(true);
         startFrameListening();
         if(getProperty("cripple"))
         {
            this.§#n§.setCripple();
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:uint = 0;
         if(this.§#n§ != null && owner != null)
         {
            ++this.frames;
            this.counter.tick(1 / 30);
            if(this.§#n§.disposed)
            {
               this.§%%c§(false);
               this.§?!K§();
            }
            else
            {
               _loc2_ = this.distance;
               this.distance += this.§#n§.§3"%§;
               if(§8"%§.§?!W§.§7%@§.§"!k§() && !§9%Z§.§9$s§(§!$L§.§3%X§) && uint(this.distance / §<H§.§3r§ / 5) > uint(_loc2_ / §<H§.§3r§ / 5))
               {
                  §2!H§.§'!i§("5","0x5C98EF",this.§#n§.x,this.§#n§.y);
               }
               if(this.rolling < 0)
               {
                  this.§#n§.§4%P§();
               }
               else if(this.rolling > 0)
               {
                  this.§#n§.§>g§();
               }
               if(this.frames == this.maxFuel)
               {
                  this.§%%c§(true);
                  this.§?!K§();
               }
            }
         }
      }
      
      public function §%"&§() : int
      {
         var _loc1_:int = owner.bonuses.getStatValue(Bonus.§<$H§,100);
         var _loc2_:int = getProperty("flyTimeBonusSeconds") ? int(getProperty("flyTimeBonusSeconds").value * 30) : 0;
         return §-q§.§'%$§(_loc1_,this.§3$o§ + _loc2_);
      }
      
      private function §%%c§(param1:Boolean) : void
      {
         §?"'§ = false;
         §2#G§();
         §+# §.§@%V§.deactivate();
         §+# §.§9! §.activate();
         if(param1 && !this.§#n§.disposed)
         {
            this.§#n§.explode();
         }
         if(§8"%§.§?!W§.§4"m§.activeSquad.isLocal())
         {
            §8"%§.§?!W§.§7%@§.increment(§!$L§.§3%X§,this.distance / §<H§.§3r§);
         }
         this.§#n§ = null;
         §=#P§.§6+§();
         this.§1!M§ = true;
      }
      
      public function weaponLeftPressed() : void
      {
         --this.rolling;
      }
      
      public function weaponLeftReleased() : void
      {
         ++this.rolling;
      }
      
      public function weaponRightPressed() : void
      {
         ++this.rolling;
      }
      
      public function weaponRightReleased() : void
      {
         --this.rolling;
      }
   }
}

