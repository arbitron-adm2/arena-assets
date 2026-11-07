package § "L§
{
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §%Q§.§<&A§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-"Q§.*;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4!!§.§2&F§;
   import §5#`§.§7%g§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §<!^§.§?$W§;
   import §<%k§.§`!v§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§0#q§;
   import §^4§.§@#J§;
   import §^4§.§]"8§;
   import §^4§.§^"Y§;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.HomingMinigun;
   import ru.pragmatix.wormix.weapons.Kalash;
   import ru.pragmatix.wormix.weapons.Minigun;
   import ru.pragmatix.wormix.weapons.Rifle;
   import ru.pragmatix.wormix.weapons.SniperRifle;
   import ru.pragmatix.wormix.weapons.Uzi;
   
   public class FirearmTurret extends §1%b§ implements §^%c§
   {
      
      private static const §@!9§:String = "FirearmTurret";
      
      §§push(§§findproperty(§2&<§));
      var _temp_3:* = new <int>[§+%z§.MINIGUN,§+%z§.AK_47,§+%z§.UZI,§+%z§.RIFLE,§+%z§.SNIPER_RIFLE];
      
      private static const §2&<§:Vector.<int> = new <int>[§+%z§.MINIGUN,§+%z§.AK_47,§+%z§.UZI,§+%z§.RIFLE,§+%z§.SNIPER_RIFLE];
      
      private static const §3&A§:Vector.<int> = new <int>[§+%z§.AK_47_UPG_1B_SNOWBALL,§+%z§.AK_47_UPG_2B_MOROZKO];
      
      private var §"#d§:int = 0;
      
      private var §<$-§:int = 0;
      
      private var §<"6§:int = 0;
      
      private var §=%9§:int = 0;
      
      private var §5]§:int = 0;
      
      private var §7"v§:int = 0;
      
      private var pushForce:int = 0;
      
      private var angleFluct:Number = 0.017453292519943295;
      
      private var straightBullets:uint = 0;
      
      private var §#j§:Class;
      
      private var trailColor:uint;
      
      private var §?"'§:Boolean = false;
      
      public function FirearmTurret(param1:Point, param2:§+%]§, param3:int = -1)
      {
         super(param1,param2,§0$N§.§6#[§,param3);
      }
      
      override protected function §8&8§() : void
      {
         clipName = §@!9§;
         super.§8&8§();
      }
      
      override protected function §`%V§() : void
      {
         var _loc2_:BackpackItem = null;
         var _loc5_:Object = null;
         var _loc1_:Vector.<BackpackItem> = new Vector.<BackpackItem>(0);
         var _loc3_:int = 0;
         var _loc4_:Vector.<BackpackItem> = owner.squad.§?"#§().getBattleBackpack().getOrderedWeapons();
         for each(_loc2_ in _loc4_)
         {
            if(Boolean(_loc2_ && !_loc2_.§1!9§) && Boolean(§3&A§.indexOf(_loc2_.getId()) == -1) && §2&<§.indexOf(§1!S§.§[!r§(_loc2_.getId())) != -1)
            {
               if(!_loc2_.isEmpty())
               {
                  _loc1_.push(_loc2_);
               }
               else
               {
                  _loc3_++;
               }
            }
         }
         if(_loc3_ == §2&<§.length)
         {
            disposed = true;
         }
         else if(_loc1_.length > 0)
         {
            _loc2_ = _loc1_[§8"%§.randomSeed.§,!q§(0,_loc1_.length - 1)];
            weapon = §;#_§(_loc2_.getRecord());
            _loc5_ = §<&A§(weapon.getWeapon().§,!"§).test(owner,x,y,§&>§);
            if(_loc5_)
            {
               §>%M§ = _loc5_.angle;
               this.§?"'§ = true;
               this.§<$-§ = 0;
               this.straightBullets = 0;
               this.§5]§ = 0;
               this.§=%9§ = 0;
               this.pushForce = 0;
               this.trailColor = §]"8§.§@%§;
               if(weapon.§=%i§ == Minigun || weapon.§=%i§ == HomingMinigun)
               {
                  this.§<"6§ = weapon.property["quantityBullets"].value;
                  this.angleFluct = weapon.property["angleFluct"];
                  this.§#j§ = weapon.property["classBullet"];
                  this.trailColor = weapon.property["trailColor"] ? uint(weapon.property["trailColor"]) : §]"8§.§@%§;
                  this.straightBullets = weapon.property["straightBullets"] ? uint(weapon.property["straightBullets"]) : 0;
                  this.§"#d§ = weapon.§=%i§ == Minigun ? Minigun.§1!&§.value : HomingMinigun.§1!&§.value;
                  paramSet = weapon.§<$4§;
                  this.§7"v§ = 100;
                  this.pushForce = 1;
               }
               else if(weapon.§=%i§ == Kalash)
               {
                  this.§=%9§ = weapon.property["bullets"] ? int(weapon.property["bullets"].value) : int(Kalash.§<$I§);
                  this.§<"6§ = weapon.shotsPerTurn.value * this.§=%9§;
                  this.angleFluct = Kalash.§%$o§;
                  this.§#j§ = §^"Y§;
                  this.trailColor = weapon.property["trailColor"] ? uint(weapon.property["trailColor"]) : §]"8§.§@%§;
                  this.§"#d§ = Kalash.§>&G§.value;
                  this.§5]§ = 5;
                  paramSet = weapon.§<$4§;
                  this.§7"v§ = 80;
                  this.pushForce = 2;
               }
               else if(weapon.§=%i§ == Uzi)
               {
                  this.§<"6§ = Uzi.§>%#§.value;
                  this.angleFluct = Uzi.§%$o§.value;
                  this.§#j§ = §]"8§;
                  this.trailColor = weapon.property["trailColor"] ? uint(weapon.property["trailColor"]) : §]"8§.§@%§;
                  this.§"#d§ = Uzi.§1!&§.value;
                  this.§5]§ = Uzi.§9#K§.value;
                  this.§=%9§ = Uzi.§#"J§.value;
                  paramSet = weapon.§<$4§;
                  this.§7"v§ = 150;
                  this.pushForce = Uzi.§>$w§;
               }
               else if(weapon.§=%i§ == Rifle)
               {
                  this.§<"6§ = 2;
                  this.§#j§ = weapon.property["classBullet"] || §]"8§;
                  this.§"#d§ = Rifle.§>&G§.value;
                  paramSet = weapon.§<$4§;
                  this.§7"v§ = 100;
                  this.pushForce = Rifle.§>$w§;
               }
               else if(weapon.§=%i§ == SniperRifle)
               {
                  this.§<"6§ = 1;
                  this.§#j§ = §@#J§;
                  this.angleFluct = weapon.property["angleFluct"] ? Number(weapon.property["angleFluct"]) : Math.PI / 144;
                  paramSet = weapon.§<$4§;
                  this.§7"v§ = 100;
               }
               dummy = Application.scene.§,$z§();
               _loc2_.§[!e§();
               _loc2_.§2#"§();
               if(!owner.squad.isAi() && !_loc2_.isEmpty() && _loc2_.§&">§() > 0)
               {
                  §§push(§7%g§);
                  §§push(owner);
                  §§push(new <int>[_loc2_.getId()]);
                  var _temp_10:* = new <int>[_loc2_.§&">§()];
                  §§pop().§`%i§(§§pop(),§§pop(),new <int>[_loc2_.§&">§()]);
               }
               _loc2_.§-&H§ = true;
               --shotsLeft;
            }
         }
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:Number = NaN;
         super.§!!>§();
         if(!disposed && this.§?"'§ && this.§<$-§ < this.§<"6§ && frames >= §<#6§)
         {
            §<#6§ = frames + this.§"#d§;
            if(this.§<$-§ > this.straightBullets)
            {
               _loc1_ = §8"%§.randomSeed.§,!q§(-5,5) * (weapon.§=%i§ == Uzi ? Math.PI / this.angleFluct : this.angleFluct);
               §>%M§ += _loc1_;
            }
            if(this.§<$-§ % this.§=%9§ == 0)
            {
               §<#6§ += this.§5]§;
            }
            this.§<%8§();
            var _temp_5:* = this.§<$-§ + 1;
            if(++this.§<$-§ >= this.§<"6§)
            {
               dummy.disposed = true;
               this.§?"'§ = false;
               §<#h§();
            }
         }
      }
      
      override protected function §<%8§() : void
      {
         var _loc2_:§6#I§ = null;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:§]"8§ = null;
         super.§<%8§();
         barrel.rotation = head.rotation = §-q§.§%%>§(§>%M§ + Math.PI / 2);
         var _loc1_:Point = getBarrelPoint(§>%M§ + Math.PI / 2);
         if(weapon.§=%i§ == HomingMinigun)
         {
            _loc2_ = new §?$W§(owner,_loc1_.x,_loc1_.y,§>%M§,40,paramSet);
            _loc2_.mindAttack = false;
            §@%;§.play(§`!v§.§]#Y§);
         }
         else
         {
            _loc3_ = weapon.§=%i§ == Rifle;
            _loc4_ = weapon.§=%i§ == SniperRifle;
            _loc5_ = weapon.§=%i§ == Kalash;
            _loc6_ = weapon.property["armorReduction"] ? §&$2§(weapon.property["armorReduction"]).value : 0;
            _loc7_ = new this.§#j§(owner,_loc1_,paramSet,§>%M§,this.§7"v§,this.pushForce,false,false,true,true);
            _loc7_.mindAttack = false;
            _loc7_.§>#7§(this.trailColor);
            _loc7_.§>#[§(_loc3_ ? Rifle.§?"H§ : Minigun.§?"H§);
            if(_loc7_ is §0#q§ && (weapon.§=%i§ == Minigun || _loc3_))
            {
               §0#q§(_loc7_).setArmorReduce(§&$2§(weapon.property["reduceAmount"]));
            }
            if(_loc6_ > 0)
            {
               if(_loc5_)
               {
                  §^"Y§(_loc7_).setArmorReduction(_loc6_);
               }
               if(_loc4_)
               {
                  §@#J§(_loc7_).setArmorReductionPc(_loc6_);
               }
            }
            if(_loc5_)
            {
               if(weapon.property["slowing"])
               {
                  §^"Y§(_loc7_).setSlowing();
               }
               if(weapon.property["notPenetrate"])
               {
                  §^"Y§(_loc7_).setNotPenetrate();
               }
            }
            if(_loc4_)
            {
               if(Boolean(weapon.property["antidodge"]) && §?"&§(weapon.property["antidodge"]).value)
               {
                  §@#J§(_loc7_).setAntidodge();
               }
               if(Boolean(weapon.property["alwaysCrit"]) && §?"&§(weapon.property["alwaysCrit"]).value)
               {
                  §@#J§(_loc7_).setAlwaysCritical();
               }
               if(weapon.property["drillDistance"])
               {
                  §@#J§(_loc7_).setDrillDistance(§&$2§(weapon.property["drillDistance"]).value);
               }
               if(Boolean(weapon.property["minDamageDist"]) && Boolean(weapon.property["maxDamageDist"]))
               {
                  §@#J§(_loc7_).setDamageDistances(weapon.property["minDamageDist"],weapon.property["maxDamageDist"]);
               }
            }
            if(_loc5_)
            {
               if(paramSet.ammoClassName == "AmSnowball")
               {
                  §@%;§.play(§`!v§.§"m§);
               }
               else if(paramSet.ammoClassName == "AmIcicle")
               {
                  §@%;§.play(§`!v§.§?&$§);
               }
               else
               {
                  §@%;§.play(§`!v§.§&#?§);
               }
            }
            if(_loc3_)
            {
               §@%;§.play(§`!v§.§,!3§);
            }
            if(_loc4_)
            {
               §@%;§.play(§`!v§.§?#§);
            }
         }
      }
   }
}

