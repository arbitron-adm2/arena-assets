package §!$D§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §-"N§.§+#R§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#T§.Boomerang;
   import §4#`§.BattleInterface;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §7$t§.§2"y§;
   import §8#o§.§#$s§;
   import §8$V§.§1!q§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=#g§.*;
   import §=&!§.§4$z§;
   import §@!N§.§""L§;
   import §@!i§.§5&4§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §2$^§
   {
      
      public function §2$^§()
      {
         super();
      }
      
      public static function §;!;§() : Boolean
      {
         var _loc2_:uint = 0;
         var _loc1_:§;! § = Application.userProfile.§,%o§();
         for each(_loc2_ in §##L§.§"%7§())
         {
            if(_loc1_.§?!M§(_loc2_).length > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §#3§(param1:§2"y§, param2:Object) : §2"y§
      {
         var _loc3_:UserProfile = null;
         var _loc6_:ShopItemStructure = null;
         var _loc7_:§'$2§ = null;
         var _loc8_:§2"y§ = null;
         var _loc9_:§2"y§ = null;
         _loc3_ = Application.userProfile;
         var _loc4_:§`!d§ = _loc3_.getRace();
         var _loc5_:Vector.<§2"y§> = _loc3_.§,%o§().§?!M§(param1.getType());
         for each(_loc6_ in param2)
         {
            _loc9_ = §<$c§.§8&E§(_loc6_.id,_loc4_) as §2"y§;
            if((Boolean(_loc9_)) && _loc9_.getType() == param1.getType())
            {
               _loc5_.push(_loc9_);
            }
         }
         _loc7_ = param1.§%"]§();
         for each(_loc8_ in _loc5_)
         {
            if(§5&4§.§=#+§(_loc8_.§%"]§()) >= §5&4§.§=#+§(_loc7_))
            {
               return _loc8_;
            }
         }
         return null;
      }
      
      public static function §,%z§(param1:§2"y§, param2:Object) : §[?§
      {
         var _loc6_:ShopItemStructure = null;
         var _loc7_:Vector.<§2"y§> = null;
         var _loc8_:§2"y§ = null;
         var _loc9_:§2"y§ = null;
         var _loc3_:§[?§ = new §[?§();
         var _loc4_:UserProfile = Application.userProfile;
         var _loc5_:§'$2§ = param1.§%"]§();
         for each(_loc6_ in param2)
         {
            _loc9_ = §<$c§.§8&E§(_loc6_.id,_loc4_.getRace()) as §2"y§;
            if((Boolean(_loc9_)) && Boolean(_loc9_.getType() == param1.getType()) && §5&4§.§=#+§(_loc9_.§%"]§()) < §5&4§.§=#+§(_loc5_))
            {
               delete param2[_loc6_.id];
               if(_loc6_.moneyType == §+$A§.REAL.value)
               {
                  _loc3_.§1#<§ += _loc9_.getRealPrice();
               }
               else
               {
                  _loc3_.§`!M§ += _loc9_.§4$n§();
               }
               _loc3_.§98§.push(_loc9_);
            }
         }
         _loc7_ = _loc4_.§,%o§().§?!M§(param1.getType());
         for each(_loc8_ in _loc7_)
         {
            if(§5&4§.§=#+§(_loc8_.§%"]§()) < §5&4§.§=#+§(_loc5_))
            {
               _loc4_.§,%o§().§2$I§(_loc8_.getId());
               _loc3_.§98§.push(_loc8_);
            }
         }
         return _loc3_;
      }
      
      public static function §;%K§(param1:§4$z§) : void
      {
         var _loc4_:§2"y§ = null;
         var _loc2_:Number = 1;
         var _loc3_:Vector.<§2"y§> = Application.userProfile.§,%o§().§?!M§(§##L§.§7%i§);
         for each(_loc4_ in _loc3_)
         {
            _loc2_ *= _loc4_.getValue();
         }
         param1.exp *= _loc2_;
         param1.money *= _loc2_;
      }
      
      public static function §^!n§(param1:UserProfile) : int
      {
         var _loc2_:§;! § = null;
         _loc2_ = param1.§,%o§();
         var _loc3_:Vector.<§2"y§> = _loc2_.§?!M§(§##L§.REACTION_SMALL);
         var _loc4_:Vector.<§2"y§> = _loc2_.§?!M§(§##L§.REACTION_LARGE);
         var _loc5_:int = §@$&§.§#!F§(param1.§=u§());
         var _loc6_:int = 0;
         if(_loc3_.length)
         {
            _loc6_ = _loc5_ < _loc3_[0].getValue() ? int(_loc3_[0].getValue() - _loc5_) : int(_loc3_[0].§&";§());
         }
         if(_loc4_.length)
         {
            _loc6_ = _loc5_ < _loc4_[0].getValue() ? int(_loc4_[0].getValue() - _loc5_) : int(_loc4_[0].§&";§());
         }
         return _loc6_;
      }
      
      public static function §[!b§(param1:§2"y§, param2:Object) : Vector.<§2"y§>
      {
         var _loc3_:UserProfile = null;
         var _loc6_:ShopItemStructure = null;
         var _loc7_:§2"y§ = null;
         if(param1.getType() != §##L§.REACTION_SMALL)
         {
            return null;
         }
         _loc3_ = Application.userProfile;
         var _loc4_:§`!d§ = _loc3_.getRace();
         var _loc5_:Vector.<§2"y§> = _loc3_.§,%o§().§?!M§(§##L§.REACTION_LARGE);
         for each(_loc6_ in param2)
         {
            _loc7_ = §<$c§.§8&E§(_loc6_.id,_loc4_) as §2"y§;
            if((Boolean(_loc7_)) && _loc7_.getType() == §##L§.REACTION_LARGE)
            {
               _loc5_.push(_loc7_);
            }
         }
         if(_loc5_.length)
         {
            return _loc5_;
         }
         return null;
      }
      
      public static function §<"T§(param1:uint) : String
      {
         var _loc2_:String = Social.§-%c§.§4!]§(param1,§0$N§.DAY_PLURALS);
         return §0$N§.§%! §("DURATION_LABEL") + ": " + param1 + " " + _loc2_;
      }
      
      public static function § 9§(param1:Array, param2:uint) : Object
      {
         var _loc4_:§;! § = null;
         var _loc7_:§2"y§ = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:Vector.<§2"y§> = null;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc3_:uint = §0#2§.§@&6§();
         _loc4_ = Application.userProfile.§,%o§();
         var _loc5_:Vector.<§2"y§> = _loc4_.§?!M§(§##L§.REACTION_SMALL);
         var _loc6_:Object = {};
         for each(_loc7_ in param1)
         {
            _loc8_ = param2 * §0#2§.§>!U§;
            _loc9_ = _loc7_.getType() == §##L§.REACTION_LARGE;
            _loc10_ = _loc4_.§?!M§(_loc7_.getType());
            _loc11_ = _loc10_.length > 0;
            if(Boolean(_loc9_) && Boolean(_loc5_.length) && !_loc11_)
            {
               _loc12_ = _loc4_.§6# §(_loc5_[0].getId());
               _loc4_.§2$I§(_loc5_[0].getId());
               _loc6_[_loc7_.getId()] = _loc12_ + _loc8_;
            }
            else if(_loc11_)
            {
               _loc12_ = _loc4_.§6# §(_loc10_[0].getId());
               _loc4_.§2$I§(_loc10_[0].getId());
               _loc6_[_loc7_.getId()] = _loc12_ + _loc8_;
            }
            else
            {
               _loc6_[_loc7_.getId()] = _loc3_ + _loc8_;
            }
         }
         return _loc6_;
      }
      
      public static function isVipExist() : Boolean
      {
         return §=%l§(Application.userProfile);
      }
      
      public static function §=%l§(param1:UserProfile) : Boolean
      {
         return param1.§,%o§().§?!M§(§##L§.VIP).length > 0;
      }
   }
}

