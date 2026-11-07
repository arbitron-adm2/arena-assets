package ru.pragmatix.wormix.weapons
{
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'T§.§!$C§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3#T§.AtomBomb;
   import §3#T§.Meteor;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §;$%§.§#&H§;
   import §;$%§.§'%W§;
   import §;$%§.§0%%§;
   import §<!G§.§&!;§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §^#[§.§?"&§;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class MessyBombardment extends §&!;§
   {
      
      private static const §##X§:int = 100;
      
      private static const §,!y§:int = 8;
      
      §§push(§§findproperty(§?$x§));
      var _temp_2:* = new <int>[§+%z§.BUNKER_BUSTER,§+%z§.NAPALM_STRIKE,§+%z§.AIR_STRIKE,§+%z§.SNOWFLAKE_STRIKE,§+%z§.METEOR,§+%z§.CARPET_STRIKE,§+%z§.§5-§,§+%z§.§!%D§];
      var _temp_5:* = new <int>[§+%z§.BUNKER_BUSTER,§+%z§.NAPALM_STRIKE,§+%z§.AIR_STRIKE,§+%z§.SNOWFLAKE_STRIKE,§+%z§.METEOR,§+%z§.CARPET_STRIKE,§+%z§.§5-§,§+%z§.§!%D§];
      
      private static const §?$x§:Vector.<int> = new <int>[§+%z§.BUNKER_BUSTER,§+%z§.NAPALM_STRIKE,§+%z§.AIR_STRIKE,§+%z§.SNOWFLAKE_STRIKE,§+%z§.METEOR,§+%z§.CARPET_STRIKE,§+%z§.§5-§,§+%z§.§!%D§];
      
      private var §!"o§:Vector.<BackpackItem>;
      
      private var missiles:Dictionary;
      
      public function MessyBombardment()
      {
         super();
      }
      
      override public function attach(param1:§+%]§) : void
      {
         var _loc3_:BackpackItem = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:§;#_§ = null;
         super.attach(param1);
         this.§!"o§ = new Vector.<BackpackItem>(0);
         this.missiles = new Dictionary();
         var _loc2_:Vector.<BackpackItem> = owner.squad.§?"#§().getBattleBackpack().getOrderedWeapons();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_)
            {
               _loc4_ = §1!S§.§[!r§(_loc3_.getId());
               _loc5_ = §?$x§.indexOf(_loc4_) != -1 || §?$x§.indexOf(_loc3_.getId()) != -1;
               if(!_loc3_.isEmpty() && !_loc3_.§1!9§ && _loc5_)
               {
                  _loc6_ = §;#_§(_loc3_.getRecord());
                  this.§!"o§.push(_loc3_);
                  this.missiles[_loc3_.getId()] = _loc6_.property["missiles"] ? _loc6_.property["missiles"].value : 1;
               }
            }
         }
         if(this.§!"o§.length == 0)
         {
            §?!K§();
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.NO_NECESSARY_WEAPONS_IN_BAG,true);
            }
         }
      }
      
      override protected function §3$>§() : void
      {
         var _loc1_:Number = §^M§(shotParams.§3f§,shotParams.point.x,shotParams.point.y);
         this.§2",§(owner,paramSet,_loc1_,§?$a§,shotParams.§3f§ * §6&?§,0);
      }
      
      override protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
         var _loc10_:BackpackItem = null;
         var _loc11_:§;#_§ = null;
         var _loc12_:Boolean = false;
         var _loc13_:int = 0;
         var _loc14_:Object = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:§+%n§ = null;
         var _loc18_:Boolean = false;
         var _loc19_:§!!q§ = null;
         var _loc20_:int = 0;
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = false;
         var _loc23_:§#&H§ = null;
         var _loc24_:Object = null;
         var _loc25_:int = 0;
         var _loc26_:§?"&§ = null;
         var _loc27_:Boolean = false;
         super.§2",§(param1,param2,param3,param4,param5,param6);
         var _loc8_:Vector.<BackpackItem> = new Vector.<BackpackItem>();
         var _loc9_:int = -(§,!y§ >> 1);
         while(_loc9_ < §,!y§ >> 1 && this.§!"o§.length > 0)
         {
            _loc10_ = this.§!"o§[§8"%§.randomSeed.§,!q§(0,this.§!"o§.length - 1)];
            _loc11_ = §;#_§(_loc10_.getRecord());
            _loc12_ = _loc10_.getId() >= §9##§.§;9§;
            _loc13_ = param3 + §##X§ * _loc9_;
            _loc14_ = _loc11_.property;
            if(_loc11_.§=%i§ == BunkerBuster)
            {
               _loc15_ = _loc14_["counter"] ? int(_loc14_["counter"].value) : int(BunkerBuster.§8V§);
               _loc16_ = _loc14_["armorReduction"] ? int(_loc14_["armorReduction"].value) : 0;
               _loc17_ = new §+%n§(param1,_loc11_.§<$4§,_loc11_.§^%1§,_loc13_,param4,_loc15_,_loc16_);
               if(_loc14_["cripple"])
               {
                  _loc17_.setCripple();
               }
               _loc17_.setSpeedXY(param5,param6);
            }
            else if(_loc11_.§=%i§ == NapalmStrike)
            {
               new §'%W§(param1,_loc11_.§<$4§,_loc13_,param4,param5,param6);
            }
            else if(_loc11_.§=%i§ == AirStrike)
            {
               _loc18_ = §?"&§(_loc14_["isHoming"]).value;
               _loc19_ = _loc18_ ? shotParams : null;
               new §0%%§(param1,_loc11_.§<$4§,_loc13_,param4,param5,param6,_loc19_);
            }
            else if(_loc11_.§=%i§ == SnowflakeStrike)
            {
               _loc20_ = int(_loc14_["freezingDuration"].value);
               _loc21_ = _loc14_["dontMindWind"] ? !_loc14_["dontMindWind"].value : true;
               _loc22_ = _loc14_["ignoreMagnet"] ? Boolean(_loc14_["ignoreMagnet"].value) : false;
               _loc23_ = new §#&H§(param1,_loc11_.§<$4§,_loc13_,param4,_loc21_);
               _loc23_.§;";§(_loc20_);
               if(_loc22_)
               {
                  _loc23_.§8%t§(true);
               }
               if(_loc14_["trailLength"])
               {
                  _loc23_.trailLength = _loc14_["trailLength"];
               }
               if(_loc14_["trailWidth"])
               {
                  _loc23_.trailWidth = _loc14_["trailWidth"];
               }
               if(_loc14_["trailColor"])
               {
                  _loc23_.trailColor = _loc23_.§?$z§ = _loc14_["trailColor"];
               }
               _loc23_.attachTrail();
            }
            else if(_loc11_.§=%i§ == MeteorStrike)
            {
               _loc24_ = shotParams.additionalParams ? shotParams.additionalParams : MeteorStrike.§2"k§(shotParams.point.x,shotParams.point.y,MeteorStrike.§@!q§);
               _loc25_ = _loc14_["shards"] ? int(_loc14_["shards"].value) : int(Meteor.§-#o§);
               new Meteor(param1,_loc11_.§<$4§,_loc13_,param4,param5,param6,_loc25_);
            }
            else if(_loc11_.§=%i§ == CarpetStrike)
            {
               new §!$C§(param1,_loc11_.§<$4§,_loc13_,param4,param5,param6,§&!E§.AIR);
            }
            else if(_loc11_.§=%i§ == AtomBombWeapon)
            {
               _loc26_ = _loc14_["fakeExplosion"] as §?"&§;
               _loc27_ = _loc26_ ? _loc26_.value : false;
               new AtomBomb(param1,_loc11_.§<$4§,_loc13_,param4,param5,param6,_loc27_);
            }
            if(--this.missiles[_loc10_.getId()] <= 0)
            {
               this.§!"o§.splice(this.§!"o§.indexOf(_loc10_),1);
            }
            if(_loc8_.indexOf(_loc10_) == -1)
            {
               _loc8_.push(_loc10_);
               _loc10_.§[!e§();
               _loc10_.§2#"§();
               if(!param1.squad.isAi() && !_loc10_.isEmpty() && _loc10_.§&">§() > 0)
               {
                  §7%g§.§`%i§(param1,new <int>[_loc10_.getId()],new <int>[_loc10_.§&">§()]);
               }
               _loc10_.§-&H§ = true;
               if(!_loc12_ && !_loc10_.isInfinite())
               {
                  §8"%§.§?!W§.§4"m§.§!!I§(_loc10_.getId(),param1.squad.§?"#§());
               }
            }
            _loc9_++;
         }
      }
   }
}

