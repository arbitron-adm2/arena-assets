package §@#K§
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §1#0§.§;4§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §3#a§.§-#M§;
   import §4'§.§`"q§;
   import §7!B§.§6#I§;
   import §7$t§.§^%%§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3&2§ extends §-#8§
   {
      
      private var §`e§:Boolean = false;
      
      private var §`"?§:§+%]§;
      
      private var §2$J§:uint;
      
      private var §^y§:uint;
      
      private var §3H§:uint;
      
      private var _damageType:§&!E§;
      
      private var § #`§:uint = 0;
      
      public function §3&2§(param1:int, param2:int, param3:String, param4:String, param5:uint, param6:uint, param7:§&!E§)
      {
         super(param1,param2,param3,param4);
         this.§2$J§ = param5;
         this.§^y§ = param6;
         this._damageType = param7;
         this.§3H§ = param6 + 20;
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         setSpeedXY(speedX,-10);
         if(!this.§`e§)
         {
            this.§`e§ = true;
            physParams.§5N§ += §9%1§.§@%h§;
            this.§`"?§ = §6#I§(param1.source).owner;
            this.§ #`§ = Math.abs(speed);
         }
         stable = false;
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         super.onCollide(param1);
         if(this.§`e§ && (param1.other == null || param1.other is §+%]§))
         {
            §-#M§.§^%v§(x,y,this.§^y§ * 2);
            §'"$§.§]#I§(this.§`"?§,x,y,param1.other,this.§2$J§,this.§3H§,this.§^y§,true,this._damageType != §&!E§.§!?§,this._damageType);
            if(Boolean(this.§`"?§) && this.§`"?§.squad.isLocal())
            {
               §8"%§.§?!W§.§7%@§.increment(§;4§.DESTROYED_SUPPLIES);
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§3!P§);
            }
            this.§`"?§ = null;
            this.disposed = true;
            §1"-§.explode(this.§3H§ <= 50 ? §;n§.MEDIUM : §;n§.§@%d§,this.x,this.y,this.§3H§,this.§2$J§ <= 25 ? §`!v§.§>l§ : §`!v§.§["s§);
         }
      }
      
      override protected function §'"Z§() : void
      {
         if(this.§`e§)
         {
            clip.rotation += §^$y§.sign(speedX) * this.§ #`§;
         }
         else
         {
            super.§'"Z§();
         }
      }
      
      public function setExplosive(param1:Boolean) : void
      {
         this.§`e§ = param1;
      }
      
      override protected function §!&<§() : void
      {
         super.§!&<§();
      }
      
      public function set damage(param1:uint) : void
      {
         this.§2$J§ = param1;
      }
      
      public function set damageType(param1:§&!E§) : void
      {
         this._damageType = param1;
      }
      
      public function set activator(param1:§+%]§) : void
      {
         this.§`"?§ = param1;
      }
      
      public function get damageRadius() : uint
      {
         return this.§3H§;
      }
      
      public function set damageRadius(param1:uint) : void
      {
         this.§3H§ = param1;
      }
      
      public function get radius() : uint
      {
         return this.§^y§;
      }
      
      public function set radius(param1:uint) : void
      {
         this.§^y§ = param1;
      }
   }
}

