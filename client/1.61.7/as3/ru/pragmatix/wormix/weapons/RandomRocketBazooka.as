package ru.pragmatix.wormix.weapons
{
   import § &5§.§=#P§;
   import §&"c§.§5$n§;
   import §'T§.§!$C§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0"L§.§+# §;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§;#_§;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import §]$v§.§5"R§;
   import §]$v§.§]%_§;
   import §]$v§.§`0§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class RandomRocketBazooka extends Bazooka
   {
      
      private static const §4%#§:int = 2;
      
      private static const §%!$§:int = 2;
      
      private static const §-C§:int = 10;
      
      §§push(§§findproperty(§?$x§));
      var _temp_4:* = new <int>[§+%z§.BAZOOKA,§+%z§.CARPET_BAZOOKA,§+%z§.§8#d§,§+%z§.§6&8§,§+%z§.§!`§,§+%z§.§'#?§,§+%z§.SUPER_DRILL_MISSILE];
      
      private static const §?$x§:Vector.<int> = new <int>[§+%z§.BAZOOKA,§+%z§.CARPET_BAZOOKA,§+%z§.§8#d§,§+%z§.§6&8§,§+%z§.§!`§,§+%z§.§'#?§,§+%z§.SUPER_DRILL_MISSILE];
      
      private var §!"o§:Vector.<BackpackItem>;
      
      private var §@#j§:int = 0;
      
      private var frames:int;
      
      public function RandomRocketBazooka()
      {
         super();
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         this.§@#j§ = 0;
         if(!this.§>!J§())
         {
            this.§?!K§();
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.NO_NECESSARY_WEAPONS_IN_BAG,true);
            }
         }
      }
      
      override public function §?!K§() : void
      {
         if(§?"'§)
         {
            §?"'§ = false;
            §+# §.§9! §.activate();
            §2#G§();
            §=#P§.§6+§();
         }
         super.§?!K§();
      }
      
      override protected function §`%V§() : void
      {
         this.§60§();
         if(getProperty("seasonal"))
         {
            §?!P§.update(owner);
         }
         if(this.§@#j§ < §%!$§ && this.§>!J§())
         {
            §?"'§ = true;
            §+# §.§9! §.deactivate();
            startFrameListening();
            this.frames = 0;
         }
         else
         {
            this.§?!K§();
            §=#P§.§6+§();
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         if(owner != null)
         {
            var _loc2_:RandomRocketBazooka = this;
            var _loc3_:Number = _loc2_.frames + 1;
            _loc2_.frames = _loc3_;
            if(this.frames % §-C§ == 0)
            {
               this.§60§();
            }
            if(this.§@#j§ >= §%!$§)
            {
               this.§?!K§();
            }
         }
      }
      
      private function §>!J§() : Boolean
      {
         var _loc2_:BackpackItem = null;
         this.§!"o§ = new Vector.<BackpackItem>();
         var _loc1_:Vector.<BackpackItem> = owner.squad.§?"#§().getBattleBackpack().getOrderedWeapons();
         for each(_loc2_ in _loc1_)
         {
            if(Boolean(_loc2_ && !_loc2_.isEmpty()) && Boolean(!_loc2_.§1!9§) && §?$x§.indexOf(§1!S§.§[!r§(_loc2_.getId())) != -1)
            {
               this.§!"o§.push(_loc2_);
            }
         }
         return this.§!"o§.length > 0;
      }
      
      private function §60§() : void
      {
         var _loc1_:BackpackItem = null;
         var _loc2_:§;#_§ = null;
         var _loc5_:Class = null;
         var _loc6_:§]%_§ = null;
         var _loc7_:Array = null;
         var _loc8_:Class = null;
         var _loc9_:§!$C§ = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§5"R§ = null;
         var _loc13_:int = 0;
         var _loc14_:§1>§ = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         _loc1_ = this.§!"o§[§8"%§.randomSeed.§,!q§(0,this.§!"o§.length - 1)];
         _loc2_ = §;#_§(_loc1_.getRecord());
         var _loc3_:§5$n§ = _loc2_.§<$4§.clone();
         var _loc4_:Boolean = _loc1_.getId() >= §9##§.§;9§;
         if(_loc2_.§=%i§ == Bazooka)
         {
            _loc5_ = _loc2_.property["ammoClass"] as Class;
            new _loc5_(owner,_loc3_,shotParams.angle,§-&I§(shotParams.power));
         }
         else if(_loc2_.§=%i§ == FreezingBazooka)
         {
            _loc6_ = new §]%_§(owner,new Point(owner.x,owner.y),_loc3_,shotParams.angle,§-&I§(shotParams.power));
            _loc7_ = [];
            if(_loc2_.property["bonusOnFrozen"])
            {
               _loc7_.push(§+m§.NAME);
            }
            if(_loc2_.property["bonusOnSlowed"])
            {
               _loc7_.push(§[&;§.NAME);
            }
            if(_loc7_.length > 0)
            {
               _loc6_.§;&'§(_loc7_);
            }
            if(Boolean(_loc2_.property["bonusFreezeFirstShot"]) && this.§@#j§ == 0)
            {
               _loc6_.§8$z§(_loc2_.property["bonusFreezeFirstShot"]);
            }
            if(_loc2_.property["bonusDamage"])
            {
               _loc6_.§3%<§(_loc2_.property["bonusDamage"]);
            }
            if(_loc2_.property["bonusFreeze"])
            {
               _loc6_.§1!v§(_loc2_.property["bonusFreeze"]);
            }
            if(_loc2_.property["targetSearch"])
            {
               _loc6_.§"%B§();
            }
         }
         else if(_loc2_.§=%i§ == CarpetBazooka)
         {
            _loc8_ = _loc2_.property["classCarpet"] as Class;
            _loc9_ = new _loc8_(owner,_loc3_,0,0,0,0);
            _loc10_ = _loc2_.property["maxBounce"] ? §&$2§(_loc2_.property["maxBounce"]).value : -1;
            _loc11_ = _loc2_.property["damageForBounce"] ? §&$2§(_loc2_.property["damageForBounce"]).value : -1;
            if(_loc2_.property["autoTargeting"])
            {
               _loc9_.§`%!§();
            }
            _loc9_.§2W§(_loc10_,_loc11_);
            _loc9_.x = owner.x + Math.cos(shotParams.angle) * 25;
            _loc9_.y = owner.y + Math.sin(shotParams.angle) * 25;
            _loc9_.§^"F§(shotParams.angle,§-&I§(shotParams.power));
         }
         else if(_loc2_.§=%i§ == GroundBreaker)
         {
            _loc12_ = new §5"R§(owner,_loc3_,shotParams.angle,§-&I§(shotParams.power));
            if(_loc2_.property["reduceRandom"])
            {
               _loc12_.reduceRandom();
            }
         }
         else if(_loc2_.§=%i§ == DrillGun || _loc2_.§=%i§ == DrillGunControlled)
         {
            _loc13_ = _loc2_.property["armorReduction"] ? int(_loc2_.property["armorReduction"].value) : 0;
            if(Boolean(_loc2_.property["homingEnabled"]) && §?"&§(_loc2_.property["homingEnabled"]).value)
            {
               new §`0§(owner,_loc3_,shotParams.angle,§-&I§(shotParams.power));
            }
            else
            {
               _loc14_ = new §1>§(owner,_loc3_,shotParams.angle,§-&I§(shotParams.power),_loc13_);
               if(Boolean(_loc2_.property["drillLength"]) && Boolean(_loc2_.property["drillRadius"]))
               {
                  _loc15_ = §&$2§(_loc2_.property["drillLength"]).value;
                  _loc16_ = §&$2§(_loc2_.property["drillRadius"]).value;
                  _loc14_.§+"E§(_loc15_,_loc16_);
               }
            }
         }
         ++this.§@#j§;
         _loc1_.§[!e§();
         _loc1_.§=%;§(§4%#§);
         if(!_loc4_ && !_loc1_.isInfinite())
         {
            §8"%§.§?!W§.§4"m§.§!!I§(_loc1_.getId(),owner.squad.§?"#§());
         }
      }
   }
}

