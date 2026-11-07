package ru.pragmatix.wormix.weapons
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§#%X§;
   import §+%S§.§[&;§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §?#g§.Race;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Bat extends §<"e§
   {
      
      private static const HIT_POWER:§&$2§ = new §&$2§(28);
      
      private static const §-#]§:§&$2§ = new §&$2§(26);
      
      private static const §9""§:uint = 6;
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const §2!g§:Number = Math.PI / 6;
      
      private static const §&$G§:Number = Math.PI / 18;
      
      private var ch:§!7§;
      
      private var hasAffected:Boolean;
      
      private var weaponById:§;#_§;
      
      public function Bat()
      {
         super(§<H§.§@k§);
         this.ch = new §!7§(§2!g§,§2!g§,§2!g§);
         this.ch.§9&;§(this.§6#N§);
         §7&§(this.ch);
      }
      
      private function §6#N§(param1:Number) : Boolean
      {
         if((Boolean(getProperty("seasonal")) || Boolean(getProperty("consumable"))) && §?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      override public function attach(param1:§+%]§) : void
      {
         param1.§4#§ = 0;
         super.attach(param1);
      }
      
      override public function §?!K§() : void
      {
         this.hasAffected = false;
         owner.§4#§ = 0;
         if(§?"'§)
         {
            §?"'§ = false;
            if(Boolean(getProperty("seasonal")) || Boolean(getProperty("consumable")))
            {
               §?!P§.update(owner);
            }
            §=#P§.§6+§();
         }
         super.§?!K§();
      }
      
      override protected function pickTargets() : Vector.<§+%]§>
      {
         var _loc1_:int = owner.x + §-T§ * Math.cos(this.ch.getAngle());
         var _loc2_:int = owner.y + §-T§ * Math.sin(this.ch.getAngle());
         if(_loc2_ > owner.y)
         {
            _loc2_ = owner.y;
         }
         return §<H§.§5"]§(_loc1_,_loc2_,paramSet.damageRadius.value);
      }
      
      override protected function §`%V§() : void
      {
         this.weaponById = §<$c§.§ !=§(recordId.value == §+%z§.THUNDER_HAMMER ? int(§+%z§.SLEDGEHAMMER) : int(§+%z§.BAT));
         if(§-q§.§[!d§(shotParams.angle,0) || §-q§.§[!d§(shotParams.angle,Math.PI))
         {
            shotParams.angle = §^$y§.§ !Q§(shotParams.angle,-PI_HALF,§&$G§);
         }
         else if(§-q§.§[!d§(shotParams.angle,§2!g§) || §-q§.§[!d§(shotParams.angle,5 * §2!g§))
         {
            shotParams.angle = §^$y§.§ !Q§(shotParams.angle,-PI_HALF,§2!g§);
         }
         §+# §.§9! §.deactivate();
         owner.§4%Y§(clip);
         §8$a§.§%!E§(20,this.§-!v§);
         this.§1!2§();
      }
      
      private function §-!v§() : void
      {
         if(owner != null)
         {
            §@%;§.play(§`!v§.§8x§);
         }
      }
      
      private function §1!2§() : void
      {
         var frames:uint = 0;
         if(owner != null)
         {
            §?"'§ = true;
            frames = uint(owner.graphics.bat(paramSet.ammoClassName).totalFrames);
            §8$a§.§%!E§(§-#]§.value,function():void
            {
               var _loc1_:§+%]§ = null;
               var _loc2_:Boolean = false;
               var _loc3_:Vector.<§+%]§> = null;
               var _loc4_:Number = NaN;
               var _loc5_:Boolean = false;
               var _loc6_:Boolean = false;
               var _loc7_:uint = 0;
               var _loc8_:§+%]§ = null;
               var _loc9_:§+%]§ = null;
               var _loc10_:§;#_§ = null;
               var _loc11_:Number = NaN;
               if(owner != null)
               {
                  _loc1_ = owner;
                  _loc2_ = owner.squad.isLocal();
                  _loc3_ = pickTargets();
                  _loc4_ = §'"$§.§ &0§(owner);
                  _loc7_ = 0;
                  for each(_loc9_ in _loc3_)
                  {
                     if(_loc9_ != _loc1_)
                     {
                        _loc7_++;
                        _loc5_ = _loc9_.§="r§;
                        _loc6_ = _loc9_.buffs.hasBuff(§=z§.NAME);
                        _loc10_ = _loc2_ && !_loc1_.§+&,§(_loc9_) ? weaponById : null;
                        §'"$§.§]#I§(_loc1_,_loc9_.x,_loc9_.y,_loc9_,paramSet.damage.value,0,paramSet.explosionRadius.value,false,false,null,true,true,true,true,_loc10_);
                        if(!_loc6_)
                        {
                           §'"$§.§@$t§(_loc9_,shotParams.angle,HIT_POWER.value,false,_loc4_);
                        }
                        if(Boolean(_loc5_ && !hasAffected && property["changeRace"]) && Boolean(§?"&§(property["changeRace"]).value) && !_loc9_.attributes.hp.§?!H§)
                        {
                           hasAffected = true;
                           _loc11_ = §'"$§.§##%§(_loc9_);
                           _loc8_ = changeToZombie(_loc9_);
                           if(!_loc6_ && _loc8_ != _loc9_)
                           {
                              _loc9_ = _loc8_;
                              _loc9_.§^"F§(shotParams.angle,_loc11_ * HIT_POWER.value + _loc4_);
                              _loc9_.rotateUntilStable();
                           }
                        }
                        if(Boolean(_loc5_ && !hasAffected) && Boolean(property["knockHat"]) && §?"&§(property["knockHat"]).value)
                        {
                           hasAffected = true;
                           _loc9_.§=D§(_loc9_.direction * -§8"%§.randomSeed.§,!q§(0,5),-§8"%§.randomSeed.§,!q§(4,8));
                        }
                        if(!_loc6_)
                        {
                           if(Boolean(property["groundBreak"]) && !shotParams.isAlternate)
                           {
                              §-#M§.§^&?§(_loc1_,_loc9_);
                           }
                           if(property["groundHitDamage"])
                           {
                              explodeOnCollide(_loc9_);
                           }
                        }
                     }
                  }
                  if(_loc7_ > 0)
                  {
                     §@%;§.play(§`!v§.§5$"§);
                  }
               }
            });
            §8$a§.§%!E§(frames,function():void
            {
               if(owner != null)
               {
                  owner.§2!W§();
                  §?!K§();
                  §+# §.§9! §.activate();
               }
            });
         }
      }
      
      private function explodeOnCollide(param1:§+%]§) : void
      {
         var tmpOwner:§+%]§ = null;
         var unit:§+%]§ = param1;
         tmpOwner = owner;
         var onCollide:Function = function(param1:CollisionEvent):void
         {
            var _loc2_:Number = unit.speedX;
            §'"$§.§]#I§(tmpOwner,unit.x,unit.y,unit,§&$2§(property["groundHitDamage"]).value,§&$2§(property["groundHitDamageRadius"]).value,§&$2§(property["groundHitDamageRadius"]).value + 5,true,false,§&!E§.§=$-§);
            §1"-§.explode(§;n§.§1"E§,unit.x,unit.y,§&$2§(property["groundHitDamageRadius"]).value - 15,§`!v§.§["s§);
            unit.buffs.place(new §[&;§());
            unit.setSpeedXY(-_loc2_ * 0.25,-5);
         };
         §8$a§.§&!#§(unit,§0%v§.§+&=§,onCollide);
      }
      
      private function changeToZombie(param1:§+%]§) : §+%]§
      {
         var _loc3_:§#%X§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:§+%]§ = null;
         var _loc6_:§#%X§ = null;
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().battleType == §&$a§.§5!w§ && param1.squad.isAi();
         if(!_loc2_ && !param1.disposed)
         {
            §@%;§.play(§`!v§.§'7§);
            §1"-§.§`$Q§(param1.x,param1.y,param1.record.getRace().soulType,0.035,false);
            _loc3_ = param1.buffs.getBuff(§#%X§.NAME) as §#%X§;
            _loc4_ = param1.isRevived() && param1.record.getRace().getId() == Race.§"$H§.§]!D§().getId();
            if(_loc3_)
            {
               _loc3_.§7%?§(§9""§);
            }
            if(!_loc4_)
            {
               _loc5_ = §5"O§.changeRace(param1,Race.§"$H§.§]!D§(),0,§;n§.§6#B§);
               _loc5_.§;!s§();
               _loc5_.§=%P§();
               _loc6_ = _loc5_.buffs.getBuff(§#%X§.NAME) as §#%X§;
               if(!_loc6_)
               {
                  _loc5_.buffs.place(new §#%X§(_loc3_ ? _loc3_.getRace() : param1.record.getRace(),_loc3_ ? _loc3_.§9K§() : param1.record.§5"L§().§7"=§(),_loc3_ ? _loc3_.§;!a§() : param1.isRevived(),_loc3_ ? _loc3_.§8#z§() : int(§9""§)));
               }
               return _loc5_;
            }
         }
         else
         {
            §1"-§.explode(§;n§.§6#B§,param1.x,param1.y,10,§`!v§.§5%;§);
         }
         return param1;
      }
   }
}

