package §8$V§
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&%X§.§5F§;
   import §,$J§.§0%G§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §1#p§.*;
   import §4#`§.§+!l§;
   import §6%2§.§#"B§;
   import §7$t§.§;#_§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §?$L§.§0"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import avmplus.getQualifiedClassName;
   import config.achievements.§!$L§;
   import flash.errors.IllegalOperationError;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.TracePublisher;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.AssembleEquip;
   import ru.pragmatix.wormix.messages.client.DowngradeWeapon;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.client.OpenChest;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §`"k§
   {
      
      public static const §@!?§:Number = 0.8;
      
      private var downgradesLeft:int;
      
      public function §`"k§()
      {
         super();
      }
      
      private static function §8!'§(param1:§9$v§, param2:uint, param3:uint, param4:Function) : void
      {
         var _loc5_:UpgradeWeaponResult = null;
         var _loc7_:§#$s§ = null;
         var _loc8_:§;#_§ = null;
         var _loc9_:§;#_§ = null;
         var _loc10_:§#$s§ = null;
         var _loc11_:§;#_§ = null;
         var _loc12_:§#$s§ = null;
         var _loc13_:int = 0;
         var _loc14_:§-$6§ = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         _loc5_ = UpgradeWeaponResult(param1.message);
         var _loc6_:Boolean = _loc5_.result == UpgradeWeaponResult.SUCCESS && param2 == _loc5_.recipeId;
         if(_loc6_)
         {
            _loc7_ = §1@§.§2"C§(_loc5_.recipeId);
            _loc8_ = §<$c§.§ !=§(§1!S§.§[!r§(_loc7_.upgradeId));
            _loc9_ = §<$c§.§ !=§(_loc7_.upgradeId);
            _loc10_ = §1!S§.§?!4§(_loc7_.upgradeId);
            _loc11_ = §<$c§.§ !=§(_loc7_.prevUpgradeId);
            _loc12_ = §1!S§.§!$Q§(_loc7_.prevUpgradeId);
            _loc13_ = §+!l§.§5w§(_loc11_.getId());
            if(_loc13_ > -1)
            {
               §+!l§.§@$[§(_loc13_,_loc9_.getId());
               §+!l§.§7#§();
            }
            if(_loc8_.isComplex() || _loc8_.getInfinite())
            {
               Application.userProfile.§3%^§().§2$I§(_loc7_.prevUpgradeId,-1,false);
               §1!S§.§?!a§(_loc7_.upgradeId,Application.userProfile);
               Application.userProfile.§ !>§().§8&E§(_loc7_.getId()).setCount(1);
               §8"%§.§@1§.increase([§!$L§.§!"4§],[1]);
            }
            else
            {
               _loc15_ = Application.userProfile.§3%^§().§ %n§(_loc8_.getId());
               Application.userProfile.§3%^§().§0%8§(_loc8_,_loc15_ + _loc7_.getCount(),_loc8_.§]!C§());
            }
            for each(_loc14_ in _loc7_.reagents)
            {
               §1!S§.§<$7§(_loc14_.id,_loc14_.quantity);
            }
            if(param3 != 0)
            {
               _loc16_ = Application.userProfile.§@$D§() - param3;
               Application.userProfile.§]!c§(_loc16_);
               Application.§5!>§.§&!s§(_loc16_);
               §8"%§.§@1§.increase([§!$L§.§`&0§],[param3]);
            }
            §@%;§.play(§`!v§.§-%D§);
         }
         else
         {
            §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.ERROR_SAVING + " (" + _loc5_.result + ")");
         }
         param4(_loc6_);
      }
      
      public static function §"$-§(param1:int) : §#$s§
      {
         var _loc3_:§-$6§ = null;
         var _loc4_:uint = 0;
         var _loc2_:§#$s§ = §1@§.§2"C§(param1);
         Application.userProfile.§3%^§().§2$I§(_loc2_.upgradeId,-1,false);
         Application.userProfile.§ !>§().§8&E§(_loc2_.getId()).setCount(-1);
         for each(_loc3_ in _loc2_.reagents)
         {
            _loc4_ = uint(_loc3_.quantity * §@!?§);
            if(_loc4_ != 0)
            {
               §1!S§.§ #+§(_loc3_.id,_loc4_);
            }
         }
         return _loc2_;
      }
      
      private static function §+!B§(param1:§9$v§, param2:§+$A§, param3:Function) : void
      {
         var _loc4_:AssembleStuffResult = null;
         var _loc6_:UserProfile = null;
         var _loc7_:§;! § = null;
         var _loc8_:CraftedEquipFamily = null;
         var _loc9_:int = 0;
         var _loc10_:Boolean = false;
         var _loc11_:UserProfile = null;
         var _loc12_:Vector.<§-$6§> = null;
         var _loc13_:§-$6§ = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         _loc4_ = AssembleStuffResult(param1.message);
         var _loc5_:int = _loc4_.equipId;
         if(_loc4_.result == AssembleStuffResult.SUCCESS)
         {
            _loc6_ = Application.userProfile;
            _loc7_ = _loc6_.§,%o§();
            _loc8_ = §<$c§.§3"d§(_loc4_.familyId);
            _loc9_ = §#&>§.§1_§(_loc4_.familyId);
            _loc10_ = _loc9_ == -1;
            _loc11_ = _loc9_ != -1 ? §#&>§.§0!<§(_loc9_) : null;
            if(_loc9_ != -1)
            {
               _loc7_.§2$I§(_loc9_);
            }
            _loc12_ = _loc9_ == -1 || !_loc8_.§=%k§() ? _loc8_.§]#x§() : _loc8_.§=%k§();
            for each(_loc13_ in _loc12_)
            {
               if(_loc13_.id >= §0%G§.§;9§)
               {
                  if(_loc9_ == -1)
                  {
                     if(§!#^§.§3&5§(_loc13_.id) || §!#^§.§7%#§(_loc13_.id))
                     {
                        _loc15_ = §#&>§.§3Q§(_loc13_.id).getId();
                        _loc7_.§2$I§(§#&>§.§1_§(_loc15_));
                     }
                     else
                     {
                        _loc7_.§2$I§(_loc13_.id);
                     }
                  }
               }
               else
               {
                  §1!S§.§<$7§(_loc13_.id,_loc13_.quantity);
               }
            }
            if(§#&>§.§^7§(_loc5_))
            {
               §8"%§.§@1§.increase([§!$L§.CRAFT_LEGENDARY],[1]);
            }
            if(param2.value == §+$A§.REAL.value)
            {
               _loc14_ = _loc10_ ? int(_loc8_.§%"]§().realPrice) : int(_loc8_.§>"+§().realPrice);
               _loc6_.§]!c§(_loc6_.§@$D§() - _loc14_);
               Application.§5!>§.§&!s§(_loc6_.§@$D§());
               §8"%§.§@1§.increase([§!$L§.§`&0§],[_loc14_]);
            }
            else
            {
               _loc14_ = _loc10_ ? int(_loc8_.§%"]§().ingamePrice) : int(_loc8_.§>"+§().ingamePrice);
               _loc6_.§^<§(_loc6_.§#!G§() - _loc14_);
               Application.§5!>§.§?%5§(_loc6_.§#!G§());
               §8"%§.§@1§.increase([§!$L§.§0"K§],[_loc14_]);
            }
            if(Boolean(_loc11_) && Boolean(_loc11_ != _loc6_) && _loc5_ == _loc9_)
            {
               §#&>§.§4%5§(_loc5_,false);
               §#&>§.§?T§(_loc11_,_loc5_);
            }
            else
            {
               §#&>§.§4%5§(_loc5_);
            }
            §@%;§.play(§`!v§.§-%D§);
         }
         if(param3 != null)
         {
            param3(_loc4_.result,_loc5_);
         }
         §[&G§.§3$5§.hide();
      }
      
      public function §0$!§(param1:Function) : void
      {
         §^"5§.§?%D§(§%%w§.§7F§,[OpenChestResult],§1%"§.§]$<§(this.§2"J§,this,[param1],true));
         §%%w§.§,U§(new OpenChest());
      }
      
      private function §2"J§(param1:§9$v§, param2:Function) : void
      {
         var _loc4_:§6#Q§ = null;
         var _loc5_:§;#_§ = null;
         var _loc6_:§'"-§ = null;
         var _loc7_:uint = 0;
         var _loc3_:OpenChestResult = OpenChestResult(param1.message);
         if(_loc3_.result == ShopResult.SUCCESS)
         {
            _loc4_ = Application.userProfile.§2!>§();
            if(_loc4_.§ %n§(§#"B§.§;#%§) == 0)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"chest result modified"));
               return;
            }
            _loc4_.§!&G§(§#"B§.§;#%§,-1);
            if(_loc3_.weaponId > 0)
            {
               _loc5_ = §<$c§.§ !=§(_loc3_.weaponId);
               _loc6_ = Application.userProfile.§3%^§();
               _loc7_ = _loc6_.§ %n§(_loc3_.weaponId) + _loc3_.weaponCount;
               _loc6_.§0%8§(_loc5_,_loc7_,_loc5_.§]!C§());
               §@$l§.§0$=§([_loc5_.getId()]);
            }
            else if(_loc3_.equipId > 0)
            {
               §#&>§.§4%5§(_loc3_.equipId,true,true);
            }
            else if(_loc3_.medalCount > 0)
            {
               _loc4_.§!&G§(§#"B§.BADGE,_loc3_.medalCount,true);
            }
            else if(_loc3_.mutagenCount > 0)
            {
               _loc4_.§!&G§(§#"B§.MUTAGEN,_loc3_.mutagenCount,true);
            }
         }
         else
         {
            §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.NO_CHRISTMAS_GIFTS);
         }
         if(param2 != null)
         {
            param2(_loc3_);
         }
      }
      
      public function §`g§(param1:uint, param2:uint, param3:Function) : void
      {
         §^"5§.§?%D§(§%%w§.§7F§,[UpgradeWeaponResult],§1%"§.§]$<§(§8!'§,this,[param1,param2,param3],true));
         §%%w§.§,U§(new UpgradeWeapon(param1));
      }
      
      public function §8$N§(param1:uint, param2:Function) : void
      {
         §^"5§.§?%D§(§%%w§.§7F§,[DowngradeWeaponResult],§1%"§.§]$<§(this.§%%9§,this,[param1,param2],true));
         §%%w§.§,U§(new DowngradeWeapon(param1));
      }
      
      private function §%%9§(param1:§9$v§, param2:uint, param3:Function) : void
      {
         var _loc4_:DowngradeWeaponResult = null;
         var _loc5_:int = 0;
         var _loc7_:§#$s§ = null;
         var _loc8_:§;#_§ = null;
         var _loc9_:§;#_§ = null;
         var _loc10_:§#$s§ = null;
         var _loc11_:§;#_§ = null;
         var _loc12_:§#$s§ = null;
         var _loc13_:int = 0;
         _loc4_ = DowngradeWeaponResult(param1.message);
         _loc5_ = _loc4_.recipeId;
         var _loc6_:Boolean = _loc4_.result == DowngradeWeaponResult.SUCCESS && param2 == _loc5_;
         if(_loc6_)
         {
            _loc7_ = §"$-§(_loc5_);
            §1!S§.§?!a§(_loc7_.prevUpgradeId,Application.userProfile);
            _loc8_ = §<$c§.§ !=§(§1!S§.§[!r§(_loc7_.upgradeId));
            _loc9_ = §<$c§.§ !=§(_loc7_.upgradeId);
            _loc10_ = §1!S§.§?!4§(_loc7_.upgradeId);
            _loc11_ = §<$c§.§ !=§(_loc7_.prevUpgradeId);
            _loc12_ = §1!S§.§!$Q§(_loc7_.prevUpgradeId);
            _loc13_ = §+!l§.§5w§(_loc9_.getId());
            if(_loc13_ > -1)
            {
               §+!l§.§@$[§(_loc13_,_loc11_.getId());
               §+!l§.§7#§();
            }
            --this.downgradesLeft;
            §@%;§.play(§`!v§.§7D§);
         }
         else
         {
            §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.ERROR_SAVING + " (" + _loc4_.result + ")");
         }
         param3(_loc6_);
      }
      
      public function §],§(param1:int, param2:§+$A§, param3:Function) : void
      {
         §[&G§.§3$5§.show();
         §^"5§.§?%D§(§%%w§.§7F§,[AssembleStuffResult],§1%"§.§]$<§(§+!B§,this,[param2,param3],true));
         §%%w§.§,U§(new AssembleEquip(param1,param2.value));
      }
      
      public function §&"d§(param1:int) : void
      {
         this.downgradesLeft = param1;
      }
      
      public function §0$@§() : int
      {
         return this.downgradesLeft;
      }
   }
}

