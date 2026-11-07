package ru.pragmatix.wormix.weapons
{
   import § %f§.§ "r§;
   import § %f§.§=!z§;
   import § %f§.GasGrenade;
   import § %f§.VacuumGrenade;
   import § &5§.§=#P§;
   import §&"c§.§!!q§;
   import §,!f§.*;
   import §,"`§.§9#s§;
   import §-8§.GasCloud;
   import §0"L§.§+# §;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<!^§.§]#u§;
   import §?o§.§!%I§;
   import §?o§.StuffedBouncingGrenade;
   import §@<§.§+%]§;
   import §[#I§.§`"O§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.utils.getDefinitionByName;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   
   public class GrenadeBunch extends §,%r§ implements §3N§
   {
      
      §§push(§§findproperty(§2$M§));
      var _temp_4:* = new <int>[§+%z§.GRENADE,§+%z§.GAS_GRENADE,§+%z§.STICKY_GRENADE,§+%z§.HOLY_GRENADE,§+%z§.§4"k§,§+%z§.VACUUM_GRENADE,§+%z§.NAIL_GRENADE];
      var _temp_7:* = new <int>[§+%z§.GRENADE,§+%z§.GAS_GRENADE,§+%z§.STICKY_GRENADE,§+%z§.HOLY_GRENADE,§+%z§.§4"k§,§+%z§.VACUUM_GRENADE,§+%z§.NAIL_GRENADE];
      
      private static const §2$M§:Vector.<int> = new <int>[§+%z§.GRENADE,§+%z§.GAS_GRENADE,§+%z§.STICKY_GRENADE,§+%z§.HOLY_GRENADE,§+%z§.§4"k§,§+%z§.VACUUM_GRENADE,§+%z§.NAIL_GRENADE];
      
      private static const §2;§:Number = 0.5;
      
      private static const §`&#§:§&$2§ = new §&$2§(30);
      
      private static const §&#$§:Number = Math.PI / 64;
      
      private var §[$E§:§&$2§ = new §&$2§(5);
      
      private var §@!K§:§&$2§ = new §&$2§(1);
      
      private var hasTimer:§?"&§ = new §?"&§(true);
      
      private var §`"3§:Vector.<BackpackItem>;
      
      protected var § %m§:§&$2§ = new §&$2§(90);
      
      protected var ammo:§!%I§;
      
      protected var §2§:int = 0;
      
      protected var §^E§:int;
      
      public function GrenadeBunch()
      {
         super();
         §"#z§ = 5;
         §2$"§ = 45;
         var _loc1_:§!"G§ = new §!"G§(null,§!7§.§'$+§,Math.PI / 4);
         _loc1_.§9&;§(this.§6#N§);
         §7&§(_loc1_);
      }
      
      private function §6#N§(param1:Number = 0) : Boolean
      {
         if(§?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         this.§^E§ = getProperty("grenadesAmount") ? int(getProperty("grenadesAmount")) : 0;
      }
      
      override public function activate() : void
      {
         if(!§?"'§)
         {
            super.activate();
         }
      }
      
      override public function attach(param1:§+%]§) : void
      {
         var _loc4_:BackpackItem = null;
         var _loc7_:int = 0;
         super.attach(param1);
         this.§2§ = 0;
         this.§"#W§(this.§[$E§.value);
         this.§`"3§ = new Vector.<BackpackItem>();
         var _loc2_:Vector.<BackpackItem> = new Vector.<BackpackItem>();
         var _loc3_:Vector.<BackpackItem> = owner.squad.§?"#§().getBattleBackpack().getOrderedWeapons();
         for each(_loc4_ in _loc3_)
         {
            if(Boolean(_loc4_ && !_loc4_.isEmpty()) && Boolean(!_loc4_.§1!9§) && §2$M§.indexOf(§1!S§.§[!r§(_loc4_.getId())) != -1)
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > 0)
         {
            this.swapClip(param1,§;#_§(_loc2_[0].getRecord()));
         }
         else
         {
            this.§?!K§();
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.NO_NECESSARY_WEAPONS_IN_BAG,true);
            }
         }
         var _loc5_:int = Math.min(this.§^E§,_loc2_.length);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = §8"%§.randomSeed.§,!q§(0,_loc2_.length - 1);
            this.§`"3§.push(_loc2_[_loc7_]);
            _loc2_.splice(_loc7_,1);
            if(_loc2_.length == 0)
            {
               break;
            }
            _loc6_++;
         }
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
         this.ammo = null;
      }
      
      override public function §"#W§(param1:uint) : void
      {
         this.§[%=§(this.hasTimer.value ? int(param1) : 0);
      }
      
      private function §[%=§(param1:int) : void
      {
         this.§ %m§.value = §`&#§.value * param1;
         shotParams.timer = param1;
         if(param1 > 0)
         {
         }
      }
      
      override protected function §`%V§() : void
      {
         §?"'§ = true;
         this.§]"b§();
         §?!P§.update(owner);
         shotParams.angle += §-q§.§4&8§() * §&#$§ * §8"%§.randomSeed.§,!q§(1,10);
         §+# §.§9! §.deactivate();
         this.§1#s§();
      }
      
      override public function shootWithParams(param1:§!!q§) : void
      {
         if(this.§6#N§())
         {
            if(param1.timer > 0)
            {
               this.§[%=§(param1.timer);
            }
            super.shootWithParams(param1);
         }
      }
      
      private function §1#s§() : void
      {
         var _loc1_:BackpackItem = null;
         var _loc2_:§;#_§ = null;
         var _loc3_:Object = null;
         var _loc6_:§=!z§ = null;
         var _loc7_:GasGrenade = null;
         var _loc8_:§9#s§ = null;
         var _loc9_:§ "r§ = null;
         var _loc10_:§`"O§ = null;
         var _loc11_:VacuumGrenade = null;
         var _loc12_:Boolean = false;
         if(!owner)
         {
            return;
         }
         _loc1_ = this.§`"3§[this.§2§];
         _loc2_ = §;#_§(_loc1_.getRecord());
         _loc3_ = _loc2_.property;
         var _loc4_:Class = _loc3_["ammoClass"] as Class;
         var _loc5_:Boolean = _loc1_.getId() >= §9##§.§;9§;
         if(_loc2_.§=%i§ == GasGrenadeWeapon)
         {
            this.ammo = new _loc4_(owner,_loc2_.§<$4§,_loc2_.§^%1§,this.§ %m§.value,shotParams.angle,§-&I§(shotParams.power),§2;§,_loc3_["cloudClipName"],_loc3_["cloudClass"] ? _loc3_["cloudClass"] : GasCloud);
            _loc7_ = GasGrenade(this.ammo);
            if(_loc3_["armorReduction"])
            {
               _loc7_.setArmorReduction(§&$2§(_loc3_["armorReduction"]).value);
            }
            if(_loc3_["maxPoisonDamage"])
            {
               _loc7_.serMaxPoisonDamage(_loc3_["maxPoisonDamage"]);
            }
            if(_loc3_["cloudRadius"])
            {
               _loc7_.setCloudRadius(_loc3_["cloudRadius"]);
            }
            if(_loc3_["slowing"])
            {
               _loc7_.setSlowing(_loc3_["slowing"]);
            }
            if(_loc3_["explodeDamage"])
            {
               _loc7_.setExplodeDamage(§&$2§(_loc3_["explodeDamage"]).value);
            }
            if(_loc3_["explodeDamageType"])
            {
               _loc7_.damageType = _loc3_["explodeDamageType"];
            }
            if(_loc3_["onExplodePoisoningReduce"])
            {
               _loc7_.setOnExplodePoisoningReduce();
            }
         }
         else if(_loc2_.§=%i§ == StickyGrenade)
         {
            _loc8_ = new _loc4_(owner,_loc2_.§<$4§,_loc2_.§^%1§,_loc3_["blinkClassName"],_loc3_["quantityShards"],_loc3_["shardClass"],shotParams.angle,§-&I§(shotParams.power)) as §9#s§;
            if(_loc3_["trailLength"])
            {
               _loc8_.trailLength = _loc3_["trailLength"];
            }
            if(_loc3_["trailWidth"])
            {
               _loc8_.trailWidth = _loc3_["trailWidth"];
            }
            if(_loc3_["trailColor"])
            {
               _loc8_.trailColor = _loc8_.§?$z§ = _loc3_["trailColor"];
            }
            _loc8_.§6"9§();
         }
         else if(_loc2_.§=%i§ == HolyGrenade)
         {
            _loc9_ = new _loc4_(owner,_loc2_.§<$4§,shotParams.angle,§-&I§(shotParams.power));
            if(_loc3_["healing"])
            {
               _loc9_.§8#P§();
            }
            if(_loc3_["freezing"])
            {
               _loc9_.§[_§();
            }
         }
         else if(_loc2_.§=%i§ == ClusterGrenade)
         {
            _loc6_ = this.ammo = new _loc4_(owner,_loc2_.§<$4§,new §]#u§(owner,_loc2_.§^%1§,§&$2§(_loc3_["shardQuantity"]),_loc3_["shardClass"] as Class),this.§ %m§.value,shotParams.angle,§-&I§(shotParams.power),§2;§,_loc3_["blinkClassName"]);
            _loc10_ = §`"O§(this.ammo);
         }
         else if(_loc2_.§=%i§ == VacuumGrenadeWeapon)
         {
            _loc6_ = this.ammo = new _loc4_(owner,_loc2_.§<$4§,this.§ %m§.value,shotParams.angle,§-&I§(shotParams.power),§2;§,_loc3_["blinkClassName"]);
            _loc11_ = VacuumGrenade(this.ammo);
            if(_loc3_["ignoreAttackPower"])
            {
               _loc11_.ignoreAttackPower = true;
            }
            if(_loc3_["ignoreFortitude"])
            {
               _loc11_.ignoreFortitude = true;
            }
            if(_loc3_["startActivationRadius"])
            {
               _loc11_.§##G§(_loc3_["startActivationRadius"].value);
            }
            if(_loc3_["maxActivationRadius"])
            {
               _loc11_.§9">§(_loc3_["maxActivationRadius"].value);
            }
            if(_loc3_["funnelClip"])
            {
               _loc11_.§%%T§(String(_loc3_["funnelClip"]));
            }
            if(_loc3_["funnelFadeClip"])
            {
               _loc11_.§0$e§(String(_loc3_["funnelFadeClip"]));
            }
            _loc11_.§^&&§();
         }
         else
         {
            _loc6_ = this.ammo = new _loc4_(owner,_loc2_.§<$4§,this.§ %m§.value,shotParams.angle,§-&I§(shotParams.power),§2;§,_loc3_["blinkClassName"]);
         }
         if(this.ammo)
         {
            if(_loc3_["multiBurst"])
            {
               StuffedBouncingGrenade(this.ammo).setMiniExplosions(_loc3_["multiBurst"].value);
            }
            if(_loc3_["cripple"])
            {
               StuffedBouncingGrenade(this.ammo).setCripple();
            }
            if(_loc3_["explodeOnCollide"])
            {
               this.ammo.§^"S§();
            }
            if(_loc3_["explodeOnStopMoving"])
            {
               this.ammo.explodeOnStopMoving();
            }
            if(this.§ %m§.value <= 0)
            {
               this.ammo.§^&&§();
            }
            if(_loc6_)
            {
               if(_loc3_["trailLength"])
               {
                  _loc6_.trailLength = _loc3_["trailLength"];
                  _loc12_ = true;
               }
               if(_loc3_["trailWidth"])
               {
                  _loc6_.trailWidth = _loc3_["trailWidth"];
                  _loc12_ = true;
               }
               if(_loc3_["trailColor"])
               {
                  _loc6_.trailColor = this.ammo.§?$z§ = _loc3_["trailColor"];
                  _loc12_ = true;
               }
               if(_loc12_)
               {
                  this.ammo.§6"9§();
               }
            }
         }
         _loc1_.§[!e§();
         _loc1_.§2#"§();
         if(!owner.squad.isAi() && !_loc1_.isEmpty() && _loc1_.§&">§() > 0)
         {
            §7%g§.§`%i§(owner,new <int>[_loc1_.getId()],new <int>[_loc1_.§&">§()]);
         }
         _loc1_.§-&H§ = true;
         if(!_loc5_ && !_loc1_.isInfinite())
         {
            §8"%§.§?!W§.§4"m§.§!!I§(_loc1_.getId(),owner.squad.§?"#§());
         }
         ++this.§2§;
         shotParams.angle += this.§2§ * §&#$§ * (this.§2§ % 2 == 0 ? 1 : -1);
         if(this.§2§ < this.§`"3§.length)
         {
            this.§1#s§();
         }
         else
         {
            this.§?!K§();
            §=#P§.§6+§();
         }
      }
      
      protected function §]"b§() : void
      {
         if(shotParams.isAlternate)
         {
            this.§[%=§(this.§@!K§.value);
         }
      }
      
      private function swapClip(param1:§+%]§, param2:§;#_§) : void
      {
         var _loc3_:Object = param2.§]"1§();
         var _loc4_:Object = param2.§9%f§();
         §&&E§.deactivate(param1);
         §&&E§.activate(param1);
      }
      
      public function weaponCharge() : void
      {
         if(Boolean(this.ammo) && !this.ammo.disposed)
         {
            this.ammo.explode();
         }
      }
   }
}

