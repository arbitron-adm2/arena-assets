package §0!§
{
   import §%&6§.§2$v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+%S§.§=$2§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1&-§.§'$y§;
   import §1&-§.§'%3§;
   import §1&-§.§]%4§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.UnitKilledEvent;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §8$Y§ extends §7`§
   {
      
      public static const §6"y§:int = -1;
      
      public static const §<#9§:int = 0;
      
      public static const §^$]§:int = 1;
      
      public var §?!H§:Boolean = false;
      
      private var owner:§&"T§;
      
      private var §=",§:§&$2§ = new §&$2§(0);
      
      private var §'%h§:uint = 0;
      
      private var §3&?§:int = 0;
      
      private var §%!8§:int;
      
      public function §8$Y§(param1:§&"T§, param2:int)
      {
         this.owner = param1;
         super(param2);
         this.§=",§.value = param2;
         this.§%!8§ = param2;
         param1.addEventListener(§0%v§.§&!D§,this.§?$u§);
      }
      
      override protected function update() : void
      {
         var _loc4_:int = 0;
         var _loc1_:Number = this.§9"H§();
         super.update();
         var _loc2_:int = Math.floor(total.value * _loc1_);
         var _loc3_:int = _loc2_ - this.§=",§.value;
         if(_loc3_ < 0)
         {
            _loc4_ = this.§=",§.value + _loc3_;
            if(_loc4_ <= 0)
            {
               _loc3_ = _loc3_ - _loc4_ + 1;
            }
         }
         this.change(_loc3_);
      }
      
      override public function get value() : int
      {
         return this.§=",§.value;
      }
      
      public function §#&"§() : int
      {
         return total.value;
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc6_:§"Z§ = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:§'%3§ = null;
         var _loc10_:§'$y§ = null;
         if(Boolean(param1.source.owner) && !param1.source.owner.squad)
         {
            this.§3&?§ = Math.ceil(param1.power);
            this.change(-this.§3&?§);
            return;
         }
         var _loc2_:Number = param1.power;
         if(this.§?!H§)
         {
            _loc2_ *= §]%4§.§;&D§;
         }
         this.§3&?§ = Math.ceil(_loc2_);
         var _loc3_:§]$;§ = §8"%§.§?!W§.§4"m§;
         if(_loc3_ != null)
         {
            if(this.§3&?§ > 0)
            {
               _loc4_ = false;
               if(this.owner is §+%]§)
               {
                  _loc9_ = §'%3§(§+%]§(this.owner).buffs.getBuff(§'%3§.NAME));
                  if((Boolean(_loc9_)) && Boolean(param1.source.§1!e§) && param1.source.damageType == §&!E§.§!?§)
                  {
                     _loc9_.§0;§();
                     if(_loc9_.isBlocked)
                     {
                        this.§3&?§ = Math.max(1,_loc2_ - _loc9_.getValue());
                        _loc4_ = true;
                     }
                  }
               }
               this.§'%h§ += this.§3&?§;
               _loc5_ = this.value;
               this.change(-this.§3&?§,§6#z§.DMG_TAKEN,param1);
               if(_loc5_ > 0 && this.value <= 0)
               {
                  this.owner.§8%w§ = param1.source.damageType == §&!E§.POISON ? UnitDeathV2.CAUSE_POISON : UnitDeathV2.CAUSE_DAMAGE;
                  this.owner.§+S§ = _loc5_;
                  this.owner.killerWeaponId = param1.source.§`#=§;
                  if(Boolean(_loc3_.activeUnit) && _loc3_.activeUnit != this.owner)
                  {
                     _loc3_.activeUnit.dispatchEvent(new UnitKilledEvent(this.owner));
                  }
               }
               if(param1.source.§5#C§ && Boolean(param1.source.owner))
               {
                  _loc10_ = §'$y§.§-0§(param1.source);
               }
               _loc6_ = _loc3_.§?%j§(Application.userProfile);
               _loc7_ = (Boolean(_loc6_)) && Boolean(this.owner is §+%]§) && §+%]§(this.owner).squad.getTeamId() == _loc6_.getTeamId() ? §2!H§.§4">§ : §2!H§.§8"<§;
               _loc8_ = this.§3&?§.toString() + (Boolean(_loc10_) && _loc10_.§%&0§ ? "!" : "");
               if(this.§?!H§ || _loc4_)
               {
                  _loc8_ = "(" + _loc8_ + ")";
               }
               §2!H§.§;!x§(_loc8_,_loc7_,this.owner.x,this.owner.y - 10,20);
            }
            if((this.§3&?§.toString().length > 5 || this.§3&?§ > 14000) && _loc3_.§=%g§() && !param1.source.owner.squad.isAi())
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"damage too high \'" + this.§3&?§ + "\'"));
            }
         }
      }
      
      public function §#1§(param1:uint, param2:Boolean = false, param3:Number = 1, param4:§6#z§ = null, param5:int = 0, param6:String = "0x99CC99", param7:Object = null) : int
      {
         var _loc8_:§+%]§ = null;
         var _loc9_:§2$v§ = null;
         var _loc10_:§=$2§ = null;
         _loc8_ = this.owner as §+%]§;
         _loc9_ = §-#M§.§1$a§(§2$v§,_loc8_,false) as §2$v§;
         _loc10_ = §=$2§(_loc8_.buffs.getBuff(§=$2§.NAME));
         var _loc11_:Boolean = Boolean(_loc9_) || Boolean(_loc10_);
         var _loc12_:Number = param1 * param3;
         var _loc13_:uint = param3 > 0 ? uint((_loc9_ ? _loc12_ : 0) + (_loc10_ ? _loc12_ : 0)) : 0;
         if(param3 > 0)
         {
            if(_loc10_)
            {
               _loc10_.§7$p§(_loc12_);
            }
            if(_loc9_)
            {
               _loc9_.§7$p§(_loc8_);
            }
            if(_loc11_ && param3 == 1)
            {
               return 0;
            }
         }
         var _loc14_:uint = param1 - _loc13_;
         if(!param2)
         {
            _loc14_ = this.§#&"§() >= this.value + _loc14_ ? _loc14_ : uint(Math.max(this.§#&"§() - this.value,0));
         }
         if(_loc14_ > 0)
         {
            if(param4 != §6#z§.LEECH && param4 != §6#z§.THEFT)
            {
               this.§>X§(_loc8_);
            }
            if(param5 != §6"y§)
            {
               if(param5 == §<#9§)
               {
                  §1"-§.heal(_loc14_,this.owner);
               }
               else if(param5 == §^$]§)
               {
                  §2!H§.§;!x§("+" + _loc14_,param6,this.owner.x,this.owner.y - 10,20);
               }
            }
            this.change(_loc14_,param4 == §6#z§.THEFT ? §6#z§.THEFT : §6#z§.HEAL,param7);
            return _loc14_;
         }
         return 0;
      }
      
      private function §>X§(param1:§+%]§) : void
      {
         var _loc3_:§=$2§ = null;
         var _loc4_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = param1.squad.§1!n§();
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_ != param1)
            {
               _loc3_ = §=$2§(_loc4_.buffs.getBuff(§=$2§.NAME));
               if(Boolean(_loc3_) && _loc3_.§<#V§)
               {
                  _loc3_.§^!%§();
               }
            }
         }
      }
      
      public function change(param1:int, param2:§6#z§ = null, param3:Object = null) : void
      {
         if(this.§%!8§ != this.§=",§.value)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"damage negated"));
         }
         this.§%!8§ = this.§=",§.value + param1;
         this.§=",§.value += param1;
         if(this.§=",§.value <= 0)
         {
            this.owner.disposed = true;
         }
         this.owner.dispatchEvent(new HpChangeEvent(this.owner,param1,param2,param3));
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.owner.removeEventListener(§0%v§.§&!D§,this.§?$u§);
         this.owner = null;
      }
      
      public function §9"H§() : Number
      {
         return this.§=",§.value / total.value;
      }
      
      public function §#%#§() : void
      {
         this.§'%h§ = 0;
      }
      
      public function §4$M§() : uint
      {
         return this.§'%h§;
      }
      
      public function §@#§(param1:int) : void
      {
         this.§'%h§ += param1;
      }
      
      public function §@#@§() : uint
      {
         return this.§3&?§;
      }
   }
}

