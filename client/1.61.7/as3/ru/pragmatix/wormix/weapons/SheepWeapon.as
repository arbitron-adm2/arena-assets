package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §&"c§.§!!q§;
   import §+5§.§7!U§;
   import §0"L§.§+# §;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.interfaces.§-$2§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   import ru.pragmatix.wormix.weapons.interfaces.§50§;
   
   public class SheepWeapon extends §,%r§ implements §3N§, §-$2§, §50§
   {
      
      protected static const §3$o§:§&$2§ = new §&$2§(300);
      
      protected var §#n§:§7!U§;
      
      protected var frames:§&$2§;
      
      private var counter:§%%a§;
      
      protected var maxFuel:int;
      
      public function SheepWeapon()
      {
         super();
         §7&§(new §&!P§());
      }
      
      public function jumpShoot(param1:Boolean) : void
      {
         if(!§8"%§.§?!W§.§4"m§.§1"3§() && this.§#n§ == null)
         {
            shootWithParams(§!!q§.EMPTY);
         }
      }
      
      override public function activate() : void
      {
         if(this.§#n§ == null)
         {
            super.activate();
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.maxFuel = this.§%"&§();
      }
      
      override public function §?!K§() : void
      {
         if(owner == null)
         {
            return;
         }
         if(this.§#n§ != null && !this.§#n§.disposed)
         {
            this.§%%c§(true);
         }
         super.§?!K§();
      }
      
      override protected function §`%V§() : void
      {
         owner.§4%Y§(clip);
         this.frames = new §&$2§(0);
         var _loc1_:Class = getProperty("classSheep") as Class;
         this.§#n§ = new _loc1_(owner,paramSet,paramSetEx);
         if(property["bounceSounds"])
         {
            this.§#n§.bounceSounds = property["bounceSounds"];
         }
         this.counter = new §%%a§(this.maxFuel / 30);
         this.counter.attach(this.§#n§);
         §+# §.§@%V§.activate();
         §?"'§ = true;
         startFrameListening();
      }
      
      override protected function onFrame(param1:Event) : void
      {
         if(this.§#n§ != null && owner != null)
         {
            var _loc2_:§&$2§ = this.frames;
            var _loc3_:Number = _loc2_.value + 1;
            _loc2_.value = _loc3_;
            this.counter.tick(1 / 30);
            if(this.§#n§.disposed)
            {
               this.§%%c§(false);
               this.§?!K§();
            }
            else if(this.frames.value == this.maxFuel)
            {
               this.§%%c§(true);
               this.§?!K§();
            }
         }
      }
      
      public function §%"&§() : int
      {
         var _loc1_:int = owner.bonuses.getStatValue(Bonus.§<$H§,100);
         return §-q§.§'%$§(_loc1_,§3$o§.value);
      }
      
      public function weaponCharge() : void
      {
         this.§%%c§(true);
         this.§?!K§();
      }
      
      protected function §%%c§(param1:Boolean) : void
      {
         §?"'§ = false;
         §2#G§();
         §+# §.§@%V§.deactivate();
         if(param1)
         {
            this.§#n§.explode();
         }
         this.§#n§ = null;
         §=#P§.§6+§();
      }
   }
}

