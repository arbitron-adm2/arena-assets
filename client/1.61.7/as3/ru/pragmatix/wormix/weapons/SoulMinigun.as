package ru.pragmatix.wormix.weapons
{
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §4!!§.§6$V§;
   import §4'§.§`"q§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§3#b§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class SoulMinigun extends Minigun
   {
      
      protected static const § "[§:Number = 4 * Math.PI / 180;
      
      private static const §#!=§:Number = Math.PI / 4;
      
      private static const §`J§:uint = 700;
      
      private static const §6%9§:§&$2§ = new §&$2§(8);
      
      private static const §>!B§:§&$2§ = new §&$2§(3);
      
      private static const FREEZE_DURATION:§&$2§ = new §&$2§(3);
      
      private static const § !6§:§&$2§ = new §&$2§(5);
      
      protected var §2$K§:uint = 700;
      
      protected var targets:Vector.<§+%]§>;
      
      private var damage:§&$2§ = new §&$2§(0);
      
      private var §?J§:§7#P§;
      
      private var §4"?§:Dictionary;
      
      private var §^!H§:Boolean;
      
      private var §!"'§:Boolean;
      
      private var §8#g§:Boolean;
      
      private var §^9§:Boolean;
      
      private var allyHealing:Boolean;
      
      private var §+O§:Vector.<§6$V§>;
      
      private var §&#B§:§+%]§;
      
      public function SoulMinigun()
      {
         super();
         §"#z§ = §2$"§ = 15;
         §-&2§ = new §&$2§(4);
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         if(param1["distanceBonus"])
         {
            this.§2$K§ += §`J§ * param1["distanceBonus"];
         }
         if(Boolean(param1["seasonal"]) || Boolean(param1["consumable"]))
         {
            §8!2§.§9&;§(this.§6#N§);
         }
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
      
      override public function §2#v§() : void
      {
         super.§2#v§();
         §-g§ = new §3#b§(75,§"#z§,this.§2$K§);
      }
      
      private function §7$B§(param1:Number) : Vector.<§&"T§>
      {
         return §<H§.§9#!§(owner.x,owner.y,this.§2$K§,param1,§#!=§,this.getTargets());
      }
      
      protected function getTargets() : Vector.<§&"T§>
      {
         return Application.scene.§@$I§.§;%a§.§'#&§(§<#`§.§[;§);
      }
      
      override protected function §`%V§() : void
      {
         this.targets = new Vector.<§+%]§>(0);
         this.§^9§ = shotParams.isAlternate;
         this.allyHealing = Boolean(property["allyHealing"]) && §?"&§(property["allyHealing"]).value;
         var _loc1_:Vector.<§&"T§> = this.§7$B§(shotParams.angle);
         this.§<!1§(_loc1_,this.allyHealing && this.§^9§);
         if(this.allyHealing && this.§^9§ && this.targets.length == 0)
         {
            this.§<!1§(_loc1_);
         }
         var _loc2_:int = owner.attributes.hp.§#&"§();
         var _loc3_:int = 5 + (property["multiplyDamageBonus"] ? §&$2§(property["multiplyDamageBonus"]).value : 0);
         var _loc4_:uint = paramSet.damage.value + uint(Math.max(0,_loc2_ - owner.hp) / _loc2_ * _loc3_);
         this.damage.value = Math.min(_loc4_,§6%9§.value + (property["maxDamageBonus"] ? §&$2§(property["maxDamageBonus"]).value : 0));
         this.§+O§ = new Vector.<§6$V§>(0);
         super.§`%V§();
         this.§>#B§();
      }
      
      private function §<!1§(param1:Vector.<§&"T§>, param2:Boolean = false) : void
      {
         var _loc3_:§&"T§ = null;
         var _loc4_:§+%]§ = null;
         for each(_loc3_ in param1)
         {
            _loc4_ = §+%]§(_loc3_);
            if(!_loc4_.disposed && _loc4_ != owner)
            {
               if(!param2 || owner.§+&,§(_loc4_))
               {
                  this.targets.push(_loc4_);
               }
            }
         }
      }
      
      override protected function §-"%§() : void
      {
         if(Boolean(getProperty("seasonal")) || Boolean(getProperty("consumable")))
         {
            §?!P§.update(owner);
         }
         super.§-"%§();
      }
      
      override protected function §<%8§(param1:Number) : void
      {
         var _loc3_:Point = null;
         this.§;#8§();
         var _loc2_:§+%]§ = this.targets.length > 0 ? this.targets[int(§8"%§.randomSeed.§,!q§(0,this.targets.length - 1))] : owner;
         _loc3_ = getBarrelPoint(param1);
         var _loc4_:§6$V§ = new §6$V§(owner,_loc3_.x,_loc3_.y,_loc2_,this.damage.value,§2$"§,1,this.allyHealing);
         if(Boolean(property["firstTargetPoison"]) && §?"&§(property["firstTargetPoison"]).value)
         {
            _loc4_.damageType = §&!E§.POISON;
            _loc4_.§`# §(735246,270854);
         }
         else if(Boolean(property["firstTargetFreeze"]) && §?"&§(property["firstTargetFreeze"]).value)
         {
            _loc4_.damageType = §&!E§.COLD;
            _loc4_.§`# §(38326,33182);
         }
         else if(this.allyHealing)
         {
            _loc4_.§`# §(12722987,11278368);
         }
         else if(property["distanceBonus"])
         {
            _loc4_.§`# §(328975,0);
         }
         else
         {
            _loc4_.§`# §(1052009,591693);
         }
         _loc4_.§^"F§(param1,§2$"§);
         _loc4_.homingFeat.§<$1§ = § "[§;
         if(owner.squad.isLocal())
         {
            _loc4_.customSource = §<$c§.§ !=§(§+%z§.SOUL_GUN);
         }
         this.§+O§.push(_loc4_);
         this.§^!g§(§`!v§.§'7§);
      }
      
      protected function §^!g§(param1:§=#?§) : void
      {
         if(this.§?J§)
         {
            this.§?J§.stop();
         }
         this.§?J§ = §@%;§.play(param1);
      }
      
      protected function §;#8§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         for each(_loc2_ in this.targets)
         {
            if(_loc2_.disposed)
            {
               _loc2_.removeEventListener(§0%v§.§&!D§,this.§'$7§);
            }
            else
            {
               _loc1_.push(_loc2_);
            }
         }
         this.targets = _loc1_;
      }
      
      private function §[!h§(param1:Event) : void
      {
         var _loc2_:* = 0;
         if(this.§8#g§)
         {
            _loc2_ = int(this.§+O§.length - 1);
            while(_loc2_ > -1)
            {
               if(this.§+O§[_loc2_].disposed)
               {
                  this.§+O§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            if(!§3$i§ && this.§+O§.length == 0)
            {
               this.§?& §();
            }
         }
      }
      
      protected function §>#B§() : void
      {
         var _loc1_:§+%]§ = null;
         this.§8#g§ = true;
         this.§&#B§ = owner;
         this.§&#B§.addEventListener(§0%v§.§&!D§,this.§'$7§);
         this.§4"?§ = new Dictionary();
         this.§4"?§[this.§&#B§] = 0;
         for each(_loc1_ in this.targets)
         {
            _loc1_.addEventListener(§0%v§.§&!D§,this.§'$7§);
            if(Boolean(this.allyHealing && property["firstTargetHealing"]) && Boolean(§?"&§(property["firstTargetHealing"]).value) && this.§&#B§.§+&,§(_loc1_))
            {
               _loc1_.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            }
            this.§4"?§[_loc1_] = 0;
         }
         Application.scene.addEventListener(§0%v§.FRAME,this.§[!h§);
      }
      
      protected function §?& §() : void
      {
         var _loc1_:§+%]§ = null;
         if(this.§4"?§)
         {
            this.§4"?§[this.§&#B§] = 0;
         }
         for each(_loc1_ in this.targets)
         {
            _loc1_.removeEventListener(§0%v§.§&!D§,this.§'$7§);
            if(Boolean(this.allyHealing && property["firstTargetHealing"]) && Boolean(§?"&§(property["firstTargetHealing"]).value) && this.§&#B§.§+&,§(_loc1_))
            {
               _loc1_.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            }
            if(this.§4"?§)
            {
               this.§4"?§[_loc1_] = 0;
            }
         }
         Application.scene.removeEventListener(§0%v§.FRAME,this.§[!h§);
         this.§&#B§.removeEventListener(§0%v§.§&!D§,this.§'$7§);
         this.§&#B§ = null;
         this.§8#g§ = false;
         this.§^!H§ = false;
         this.§!"'§ = false;
      }
      
      private function §3"M§(param1:HpChangeEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(Boolean(param1.§=#r§) && param1.§=#r§ is §6$V§)
         {
            _loc2_ = §+%]§(param1.§ %M§);
            if(!this.§!"'§ && !_loc2_.disposed && this.§&#B§ != _loc2_ && this.§&#B§.§+&,§(_loc2_))
            {
               ++this.§4"?§[_loc2_];
               if(this.§4"?§[_loc2_] == §>!B§.value)
               {
                  this.§!"'§ = true;
                  _loc3_ = this.§&#B§.bonuses.getStatValue(Bonus.§;#-§);
                  _loc4_ = this.damage.value * 5;
                  _loc4_ = _loc4_ + §-q§.§8$G§(_loc3_,_loc4_);
                  _loc5_ = _loc2_.attributes.hp.§#1§(_loc4_);
                  if(_loc5_ > 0 && _loc2_.squad.isLocal())
                  {
                     §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§,%R§,_loc5_);
                  }
               }
            }
         }
      }
      
      private function §'$7§(param1:DamageEvent) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§6$V§ = null;
         var _loc2_:§+%]§ = §+%]§(param1.victim);
         if(param1.source is §6$V§)
         {
            _loc3_ = param1.source.owner;
            _loc4_ = int(§<H§.§-#C§);
            _loc5_ = §<H§.§,%P§ * 0.75;
            _loc6_ = this.damage.value * 5;
            for each(_loc9_ in this.§+O§)
            {
               if(!_loc9_.disposed && _loc9_ != §6$V§(param1.source))
               {
                  _loc9_.homingFeat.ammoSpeed *= 1.1;
                  _loc9_.homingFeat.§<$1§ *= 1.1;
               }
            }
            if(Boolean(!this.§^!H§ && !_loc2_.disposed) && Boolean(property["firstTargetDamage"]) && §?"&§(property["firstTargetDamage"]).value)
            {
               ++this.§4"?§[_loc2_];
               if(this.§4"?§[_loc2_] == §>!B§.value)
               {
                  this.§^!H§ = true;
                  §'"$§.§]#I§(_loc3_,_loc2_.x,_loc2_.y,_loc2_,_loc6_,_loc4_ + 5,_loc4_,false,true,null,true,false,false);
                  §1"-§.explode(§;n§.§8!-§,param1.source.x,param1.source.y,_loc5_,§`!v§.§["s§);
               }
            }
            if(Boolean(!this.§^!H§ && !_loc2_.disposed) && Boolean(property["firstTargetPoison"]) && §?"&§(property["firstTargetPoison"]).value)
            {
               var _loc10_:Dictionary = this.§4"?§;
               var _loc11_:§+%]§;
               var _loc12_:Number = _loc10_[_loc11_ = _loc2_] + 1;
               _loc10_[_loc11_] = _loc12_;
               if(this.§4"?§[_loc2_] == §>!B§.value)
               {
                  this.§^!H§ = true;
                  §'"$§.§]#I§(_loc3_,_loc2_.x,_loc2_.y,_loc2_,_loc6_,_loc4_ + 5,_loc4_,false,false,§&!E§.POISON,true,false,false);
                  §1"-§.explode(§;n§.§8%a§,param1.source.x,param1.source.y,_loc5_,§`!v§.§>l§);
                  _loc7_ = _loc3_ ? _loc3_.bonuses.getStatValue(Bonus.POISONING_ADDITION) : 0;
                  _loc8_ = § !6§.value + _loc7_;
                  §7%g§.§>!%§(_loc2_,_loc3_,_loc8_);
               }
            }
            if(Boolean(!this.§^!H§ && !_loc2_.disposed) && Boolean(property["firstTargetFreeze"]) && §?"&§(property["firstTargetFreeze"]).value)
            {
               ++this.§4"?§[_loc2_];
               if(this.§4"?§[_loc2_] == §>!B§.value)
               {
                  this.§^!H§ = true;
                  §'"$§.§]#I§(_loc3_,_loc2_.x,_loc2_.y,_loc2_,_loc6_,_loc4_ + 5,_loc4_,false,false,§&!E§.COLD,true,false,false);
                  §1"-§.explode(§;n§.§-" §,param1.source.x,param1.source.y,_loc5_,§`!v§.§>l§);
                  _loc7_ = _loc3_ ? _loc3_.bonuses.getStatValue(Bonus.IMMOBILITY_ADDITION) : 0;
                  _loc8_ = FREEZE_DURATION.value + _loc7_;
                  _loc2_.buffs.place(new §+m§(_loc3_,_loc8_));
               }
            }
         }
         if(_loc2_.disposed)
         {
            _loc2_.removeEventListener(§0%v§.§&!D§,this.§'$7§);
            if(Boolean(this.allyHealing && property["firstTargetHealing"]) && Boolean(§?"&§(property["firstTargetHealing"]).value) && param1.source.owner.§+&,§(_loc2_))
            {
               _loc2_.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            }
         }
      }
   }
}

