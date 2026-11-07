package §'"N§
{
   import § !8§.§`!d§;
   import §!$D§.§2$^§;
   import §!$D§.§[?§;
   import §!$d§.§<$c§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!m§.§;#[§;
   import §&§.§,%C§;
   import §&§.§0"v§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#a§.§>!o§;
   import §8#a§.§@#c§;
   import §8#a§.ShopMenu;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.client.GetVipSubscription;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.server.ItemGranted;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.VipSubscriptionResponse;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §4&5§
   {
      
      public static const log:§&`§ = new §&`§(§4&5§);
      
      public static const SUBSCRIPTION_RESPONSE:String = "SUBSCRIPTION_RESPONSE";
      
      public static const §`$J§:uint = 100;
      
      private static const §"3§:uint = 5 * §0#2§.§,!@§;
      
      private var §%"?§:int = 0;
      
      private var §?%2§:int = 0;
      
      private var bundles:Array = [];
      
      private var §6!`§:Array = [];
      
      private var shopMenu:ShopMenu;
      
      private var §&"X§:Object;
      
      private var §0K§:int;
      
      private var §2#F§:int;
      
      private var callback:Function;
      
      private var dialog:§,%C§;
      
      public function §4&5§()
      {
         super();
         this.reset();
         §%%w§.§##$§(ShopResult,this.§8!N§);
         §%%w§.§##$§(ItemGranted,this.§%$1§);
         if(Social.settings.§"#k§())
         {
            §%%w§.§##$§(VipSubscriptionResponse,this.§ $m§);
         }
      }
      
      private function §%#^§() : void
      {
         this.shopMenu = new ShopMenu();
         this.shopMenu.addEventListener(§4#4§.TRY_BUY,this.§"#v§);
         this.shopMenu.addEventListener(§]#@§.BUY_ITEM,this.§`&1§);
      }
      
      private function §"#v§(param1:§4#4§) : void
      {
         var _loc2_:§&!e§ = param1.item as §&!e§;
         this.§&4§(_loc2_);
      }
      
      public function §5S§(param1:§&!e§) : Boolean
      {
         var _loc2_:UserProfile = null;
         var _loc3_:§'"-§ = null;
         var _loc5_:Boolean = false;
         _loc2_ = Application.userProfile;
         _loc3_ = _loc2_.§3%^§();
         var _loc4_:BackpackItem = _loc3_.§8&E§(param1.getId());
         if(param1 is §;#_§)
         {
            _loc5_ = §@#c§(this.shopMenu.§="<§(param1)).isExist;
            if(param1.getInfinite())
            {
               if(Boolean(_loc4_) && Boolean(_loc4_.§8"I§()) || _loc5_)
               {
                  return true;
               }
            }
            else if(_loc5_)
            {
               return true;
            }
         }
         else
         {
            if(param1 is §=?§ && (Boolean(_loc2_.§,%o§().§!%0§(param1.getId())) || Boolean(this.§&"X§[param1.getId()])))
            {
               return true;
            }
            if(param1 is §2& §)
            {
               return false;
            }
         }
         return false;
      }
      
      private function §&4§(param1:§&!e§) : void
      {
         this.dialog = new §0"v§();
         §""n§.single(this.dialog,§]#@§.BUY_ITEM,this.§`&1§);
         var _loc2_:UserProfile = Application.userProfile;
         this.dialog.open(param1,_loc2_.§#!G§() - this.§0K§,_loc2_.§@$D§() - this.§2#F§);
      }
      
      private function §`&1§(param1:§]#@§, param2:Boolean = true) : void
      {
         var _loc7_:Boolean = false;
         var _loc9_:Boolean = false;
         this.dialog = null;
         var _loc3_:§&!e§ = param1.item as §&!e§;
         var _loc4_:UserProfile = Application.userProfile;
         var _loc5_:Boolean = true;
         if(param1.moneyType == §+$A§.REAL)
         {
            if(_loc4_.§@$D§() - this.§2#F§ < _loc3_.getRealPrice())
            {
               _loc5_ = false;
            }
         }
         else if(_loc4_.§#!G§() - this.§0K§ < _loc3_.§4$n§())
         {
            _loc5_ = false;
         }
         if(!_loc5_)
         {
            new §>!o§().show();
            return;
         }
         if(_loc3_ is §2"y§)
         {
            _loc9_ = !this.§="2§(_loc3_ as §2"y§);
            if(_loc9_)
            {
               return;
            }
         }
         var _loc6_:ShopItemStructure = this.§&"X§[_loc3_.getId()] || new ShopItemStructure();
         _loc6_.id = _loc3_.getId();
         this.§&"X§[_loc3_.getId()] = _loc6_;
         if(param1.count + _loc6_.count > §`$J§)
         {
            param1.count = §`$J§ - _loc6_.count;
         }
         if(param1.moneyType == §+$A§.REAL)
         {
            _loc6_.moneyType = ShopItemStructure.REAL_MONEY;
            this.§2#F§ += _loc3_.getRealPrice() * param1.count;
            Application.§5!>§.§&!s§(_loc4_.§@$D§() - this.§2#F§);
         }
         else
         {
            _loc6_.moneyType = ShopItemStructure.MONEY;
            this.§0K§ += _loc3_.§4$n§() * param1.count;
            Application.§5!>§.§?%5§(_loc4_.§#!G§() - this.§0K§);
         }
         _loc7_ = _loc3_ is §;#_§;
         var _loc8_:Boolean = (_loc7_) && §;#_§(_loc3_).isComplex();
         if(_loc3_.getInfinite() && !(_loc7_ && _loc8_))
         {
            _loc6_.count = -1;
         }
         else
         {
            _loc6_.count += param1.count;
         }
         if(param2 && (!_loc7_ || (!_loc8_ || §1!S§.§9!M§(_loc3_.getId()) == 1)))
         {
            Social.§!g§.§^$G§(_loc3_);
         }
         §@%;§.play(§`!v§.§=#2§);
         this.§'$z§();
      }
      
      private function §="2§(param1:§2"y§) : Boolean
      {
         var _loc5_:§2"y§ = null;
         var _loc2_:§2"y§ = §2$^§.§#3§(param1,this.§&"X§);
         var _loc3_:Vector.<§2"y§> = §2$^§.§[!b§(param1,this.§&"X§);
         var _loc4_:§[?§ = §2$^§.§,%z§(param1,this.§&"X§);
         for each(_loc5_ in _loc4_.§98§)
         {
            this.shopMenu.§4#Y§(_loc5_);
         }
         this.§2#F§ -= _loc4_.§1#<§;
         this.§0K§ -= _loc4_.§`!M§;
         if(_loc2_)
         {
            §,#W§.§6!P§(§0$N§.TITLE_BUY,§0%§.format(§0$N§.MORE_LONGLASTING_BOOSTER_EXIST,{"boosterName":_loc2_.§7%z§()}));
            return false;
         }
         if(Boolean(_loc3_) && Boolean(_loc3_.length))
         {
            §,#W§.§6!P§(§0$N§.TITLE_BUY,§0%§.format(§0$N§.MORE_POWERFUL_BOOSTER_EXIST,{"boosterName":_loc3_[0].§7%z§()}));
            return false;
         }
         return true;
      }
      
      public function showShopMenu() : void
      {
         this.reset();
         if(!this.shopMenu)
         {
            this.§%#^§();
         }
         this.§`3§();
         this.shopMenu.show();
      }
      
      public function §2$X§() : void
      {
         if(!this.shopMenu)
         {
            this.showShopMenu();
         }
         else if(!this.shopMenu.isShown())
         {
            this.shopMenu.show();
         }
         this.shopMenu.§1%x§();
      }
      
      public function §4%a§() : void
      {
         if(!this.shopMenu)
         {
            this.showShopMenu();
         }
         else if(!this.shopMenu.isShown())
         {
            this.shopMenu.show();
         }
         this.shopMenu.§`&A§();
      }
      
      public function §`3§() : void
      {
         var _loc1_:int = getTimer();
         if(this.§%"?§ == 0 || _loc1_ - this.§%"?§ > §"3§)
         {
            if(!§%%w§.§`$8§(GetBundlesResult))
            {
               §%%w§.§##$§(GetBundlesResult,this.§5#e§);
            }
            §%%w§.§,U§(new GetBundles());
            if(Boolean(this.shopMenu) && this.shopMenu.isShown())
            {
               §[&G§.§8"&§.show();
            }
            this.§%"?§ = _loc1_;
         }
      }
      
      public function §5#e§(param1:§9$v§) : void
      {
         var _loc3_:BundleStructure = null;
         var _loc4_:int = 0;
         var _loc5_:§9#x§ = null;
         var _loc6_:§2& § = null;
         §%%w§.§-"j§(GetBundlesResult,this.§5#e§);
         var _loc2_:GetBundlesResult = GetBundlesResult(param1.message);
         this.bundles = [];
         this.§6!`§ = [];
         for each(_loc3_ in _loc2_.bundles)
         {
            _loc4_ = int(_loc3_.code);
            if(§]&C§.§7$W§(_loc4_))
            {
               _loc5_ = §9#x§.§+"D§(_loc3_);
               if(_loc5_)
               {
                  this.bundles.push(_loc5_);
               }
            }
            else if(§=$h§.§`"P§(_loc4_))
            {
               _loc6_ = §2& §.§+"D§(_loc3_);
               if(_loc6_)
               {
                  this.§6!`§.push(_loc6_);
               }
            }
         }
         §;#[§.§^'§(this.bundles);
         §;#[§.§]%D§(this.§6!`§);
         if(Boolean(this.shopMenu) && this.shopMenu.isShown())
         {
            §[&G§.§8"&§.hide();
            this.shopMenu.§2#S§();
         }
      }
      
      public function §=i§() : void
      {
         log.info(" subscriptionRequest " + Social.§-%=§.§@#i§() + " " + Social.§-%=§.§]"R§());
         var _loc1_:int = getTimer();
         if(this.§?%2§ == 0 || _loc1_ - this.§?%2§ > §"3§)
         {
            this.§?%2§ = _loc1_;
            if(Social.§-%=§.§@#i§())
            {
               log.info(" subscriptionRequest >> ");
               §%%w§.§,U§(new GetVipSubscription(Social.§-%=§.§@#i§()));
            }
         }
      }
      
      private function § $m§(param1:§9$v§) : void
      {
         var _loc2_:VipSubscriptionResponse = VipSubscriptionResponse(param1.message);
         Social.§-%=§.§4%g§(_loc2_.subscription);
         log.info(".onVipSubscriptionResponse: subscription=" + _loc2_.subscription);
         Application.instance.dispatchEvent(new Event(SUBSCRIPTION_RESPONSE));
      }
      
      public function §8!N§(param1:§9$v§) : void
      {
         var _loc2_:String = null;
         var _loc4_:Object = null;
         var _loc5_:WeaponStructure = null;
         var _loc6_:int = 0;
         var _loc7_:TemporalStuffStructure = null;
         var _loc8_:§,#W§ = null;
         §[&G§.§8"&§.hide();
         var _loc3_:ShopResult = ShopResult(param1.message);
         switch(_loc3_.result)
         {
            case ShopResult.SUCCESS:
               if(this.§0K§ > 0 || this.§2#F§ > 0)
               {
                  if(this.§0K§ > 0)
                  {
                     Application.userProfile.§^<§(Application.userProfile.§#!G§() - this.§0K§);
                     §8"%§.§@1§.increase([§!$L§.§0"K§],[this.§0K§]);
                  }
                  if(this.§2#F§ > 0)
                  {
                     Application.userProfile.§]!c§(Application.userProfile.§@$D§() - this.§2#F§);
                     §8"%§.§@1§.increase([§!$L§.§`&0§],[this.§2#F§]);
                  }
                  _loc4_ = {};
                  for each(_loc5_ in _loc3_.weapons)
                  {
                     _loc4_[_loc5_.getId()] = _loc5_.getCount();
                  }
                  for each(_loc6_ in _loc3_.stuff)
                  {
                     _loc4_[_loc6_] = -1;
                  }
                  for each(_loc7_ in _loc3_.temporalStuff)
                  {
                     _loc4_[_loc7_.stuffId] = _loc7_.expireDate;
                  }
                  this.§@!2§(_loc4_);
               }
               else
               {
                  _loc2_ = §0$N§.ERROR_HACKING_ATTEMPT;
               }
               break;
            case ShopResult.MIN_REQUIREMENTS_ERROR:
               _loc2_ = §0$N§.ERROR_HACKING_ATTEMPT;
               break;
            case ShopResult.NOT_ENOUGH_MONEY:
               _loc2_ = §0$N§.ERROR_HACKING_ATTEMPT;
               break;
            default:
               _loc2_ = §0$N§.ERROR_SAVING;
         }
         Application.§5!>§.§8$w§();
         if(_loc2_)
         {
            _loc8_ = new §,#W§(§0$N§.TITLE_BUY,_loc2_,§,#W§.§6!m§);
            _loc8_.show();
         }
         this.reset();
      }
      
      private function §%$1§(param1:§9$v§) : void
      {
         var _loc2_:ItemGranted = ItemGranted(param1.message);
         var _loc3_:Object = {};
         _loc3_[_loc2_.itemId] = _loc2_.itemCount;
         this.§@!2§(_loc3_);
         if(this.shopMenu)
         {
            this.shopMenu.update();
         }
      }
      
      private function §@!2§(param1:Object) : void
      {
         var _loc6_:String = null;
         var _loc7_:§&!e§ = null;
         var _loc8_:§;#_§ = null;
         var _loc9_:§'"-§ = null;
         var _loc10_:BackpackItem = null;
         var _loc11_:uint = 0;
         var _loc12_:uint = 0;
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         var _loc4_:UserProfile = Application.userProfile;
         var _loc5_:§#A§ = Application.§5!>§;
         for(_loc6_ in param1)
         {
            _loc7_ = §<$c§.§8&E§(parseInt(_loc6_),_loc4_.getRace());
            if(_loc7_.getInfinite())
            {
               _loc2_.push(_loc7_);
            }
            if(_loc7_ is §;#_§)
            {
               _loc8_ = _loc7_ as §;#_§;
               _loc9_ = _loc4_.§3%^§();
               if(_loc9_.§ %n§(_loc7_.getId()) == 0)
               {
                  _loc3_.push(_loc7_.getId());
               }
               if(_loc8_.getInfinite())
               {
                  if(_loc8_.isComplex())
                  {
                     _loc10_ = _loc9_.§8&E§(_loc7_.getId());
                     _loc11_ = (Boolean(_loc10_)) && _loc10_.isInfinite() ? _loc10_.getLevel() : 0;
                     _loc9_.§0%8§(_loc8_,-1,_loc8_.§]!C§(),_loc11_ + param1[_loc6_]);
                  }
                  else
                  {
                     _loc9_.§0%8§(_loc8_,-1,_loc8_.§]!C§());
                  }
               }
               else
               {
                  _loc12_ = uint(_loc9_.§ %n§(_loc8_.getId()));
                  _loc9_.§0%8§(_loc8_,param1[_loc6_] + _loc12_,_loc8_.§]!C§());
               }
            }
            else if(_loc7_ is §=?§)
            {
               _loc4_.§,%o§().§,%T§(_loc7_,int(param1[_loc6_]));
               if(_loc7_ is §^$E§)
               {
                  if(§8"%§.§&S§.§+$@§())
                  {
                     _loc4_.§7"i§(_loc7_ as §^$E§);
                  }
               }
               else if(_loc7_ is §^%%§)
               {
                  if(§8"%§.§&S§.§+$@§())
                  {
                     _loc4_.§;"U§(_loc7_ as §^%%§);
                  }
               }
               else if(_loc7_ is §2"y§)
               {
                  _loc5_.§[!l§(!_loc5_.§^P§.isShown());
                  _loc5_.§0"'§();
                  _loc5_.§8$w§();
               }
            }
         }
         §@$l§.§0$=§(_loc3_);
         Social.§!g§.§=#X§(_loc2_);
         if(Boolean(this.shopMenu) && this.shopMenu.isShown())
         {
            this.shopMenu.§!%t§(_loc7_);
         }
      }
      
      private function reset() : void
      {
         this.§&"X§ = {};
         this.§0K§ = 0;
         this.§2#F§ = 0;
         if(this.callback != null)
         {
            this.callback();
            this.callback = null;
         }
      }
      
      private function §'$z§() : void
      {
         var _loc2_:ShopItemStructure = null;
         var _loc1_:BuyShopItems = new BuyShopItems();
         for each(_loc2_ in this.§&"X§)
         {
            _loc1_.shopItems.push(_loc2_);
         }
         if(_loc1_.shopItems.length > 0)
         {
            §[&G§.§8"&§.show();
            §%%w§.§,U§(_loc1_);
         }
      }
      
      public function §=j§(param1:§&!e§) : Boolean
      {
         if(param1 != null)
         {
            return this.§&"X§[param1.getId()] != null;
         }
         return false;
      }
      
      public function §3J§(param1:§&!e§, param2:Function = null, param3:int = 1, param4:String = "", param5:String = "") : void
      {
         this.callback = param2;
         this.dialog = new §,%C§();
         §""n§.single(this.dialog,§]#@§.BUY_ITEM,this.§3!#§);
         this.dialog.§?"l§(param3);
         this.dialog.open(param1,Application.userProfile.§#!G§() - this.§0K§,Application.userProfile.§@$D§() - this.§2#F§);
         if(param4)
         {
            this.dialog.§ !"§(param4);
         }
         if(param5)
         {
            this.dialog.§ h§(param5);
         }
      }
      
      private function §3!#§(param1:§]#@§) : void
      {
         this.§`&1§(param1,false);
      }
      
      public function §0!r§() : ShopMenu
      {
         return this.shopMenu;
      }
      
      public function §0!c§() : Array
      {
         return this.bundles;
      }
      
      public function §<r§() : Array
      {
         return this.§6!`§;
      }
      
      public function §8#l§(param1:String) : §9#x§
      {
         var _loc2_:§9#x§ = null;
         for each(_loc2_ in this.bundles)
         {
            if(_loc2_.getCode() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §4H§() : Array
      {
         var _loc2_:§9#x§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.bundles)
         {
            if(_loc2_.§=&>§().length > 0 && _loc2_.§?#1§)
            {
               if(!_loc2_.§%#+§() || !§#&>§.§1_§(_loc2_.§%#+§()))
               {
                  _loc1_.push(_loc2_);
               }
            }
         }
         return _loc1_;
      }
      
      public function §#"w§() : §9#x§
      {
         var _loc1_:Array = this.§4H§();
         return _loc1_[int(Math.random() * _loc1_.length)];
      }
      
      public function §]&2§(param1:int, param2:int) : §9#x§
      {
         var _loc4_:§9#x§ = null;
         var _loc5_:Vector.<§7,§> = null;
         var _loc6_:§7,§ = null;
         var _loc3_:Array = this.§0!c§();
         loop0:
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = _loc4_.§=&>§();
            var _loc9_:int = 0;
            var _loc10_:* = _loc5_;
            do
            {
               for each(_loc6_ in _loc10_)
               {
               }
               continue loop0;
            }
            while(!(_loc6_.getId() == param1 && (param2 > 0 && _loc4_.§%#+§() == param2)));
            return _loc4_;
         }
         return null;
      }
      
      public function §`"!§(param1:int) : §2& §
      {
         var _loc2_:§2& § = null;
         for each(_loc2_ in this.§6!`§)
         {
            if(_loc2_.getCode() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §&""§(param1:int) : void
      {
         var _loc2_:§2& § = this.§`"!§(param1);
         if(!_loc2_)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ERROR,"VIP not found " + param1);
            return;
         }
         var _loc3_:Object = §2$^§.§ 9§(_loc2_.§,#Q§(),_loc2_.§8!t§());
         this.§@!2§(_loc3_);
         §@%;§.play(§`!v§.§=#2§);
         this.§5#K§();
      }
      
      public function §'o§(param1:String) : void
      {
         var _loc4_:UserProfile = null;
         var _loc10_:§`!d§ = null;
         var _loc11_:§7,§ = null;
         var _loc12_:§`!d§ = null;
         var _loc13_:§`%g§ = null;
         var _loc14_:§;#_§ = null;
         var _loc15_:int = 0;
         var _loc16_:BackpackItem = null;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:uint = 0;
         var _loc22_:BackpackItem = null;
         var _loc23_:int = 0;
         var _loc2_:§9#x§ = this.§8#l§(param1);
         if(!_loc2_)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ERROR,"Bundle not found " + param1);
            return;
         }
         var _loc3_:Vector.<§7,§> = _loc2_.§=&>§();
         _loc4_ = Application.userProfile;
         var _loc5_:§`!d§ = Application.userProfile.getRace();
         var _loc6_:§'"-§ = _loc4_.§3%^§();
         var _loc7_:Array = [];
         var _loc8_:Array = [];
         var _loc9_:int = 0;
         for each(_loc11_ in _loc3_)
         {
            if(_loc11_ is §%&G§)
            {
               _loc9_++;
               _loc12_ = Race.§3!4§(_loc11_.getId());
               _loc4_.§&$g§(_loc12_);
               _loc10_ = Boolean(_loc10_) && _loc10_.§,X§() > _loc12_.§,X§() ? _loc10_ : _loc12_;
            }
            else if(_loc11_ is §6#v§)
            {
               _loc8_.push(_loc11_.getId());
            }
            else if(_loc11_ is §]$X§)
            {
               §#&>§.§4%5§(_loc11_.getId(),true,true);
            }
            else if(_loc11_ is §`%g§)
            {
               _loc13_ = §`%g§(_loc11_);
               _loc14_ = §<$c§.§ !=§(_loc13_.getId());
               _loc15_ = _loc13_.getCount();
               if(_loc14_.isComplex() && _loc15_ > 0)
               {
                  _loc16_ = _loc6_.§8&E§(_loc13_.getId());
                  _loc17_ = (Boolean(_loc16_)) && _loc16_.isInfinite() ? int(_loc16_.getLevel()) : 0;
                  _loc18_ = Boolean(_loc16_) && _loc16_.§8"I§() ? _loc17_ : int(_loc17_ + _loc15_);
                  _loc6_.§0%8§(_loc14_,-1,_loc14_.§]!C§(),_loc18_);
               }
               else
               {
                  _loc19_ = _loc6_.§ %n§(_loc13_.getId());
                  _loc20_ = _loc15_ == -1 || _loc19_ == -1 ? -1 : int(_loc15_ + _loc19_);
                  _loc21_ = _loc20_ == -1 ? _loc14_.getMaxLevel() : 1;
                  _loc22_ = _loc6_.§0%8§(_loc14_,_loc20_,_loc14_.§]!C§(),_loc21_);
                  if(_loc22_)
                  {
                     _loc7_.push(_loc22_.getId());
                  }
               }
            }
         }
         if(_loc10_)
         {
            §8"%§.§@1§.increase([§!$L§.§%%3§],[_loc9_]);
            if(Application.userProfile.§;$F§().indexOf(_loc5_) == -1)
            {
               _loc4_.§&$g§(_loc5_);
            }
            else
            {
               _loc4_.§&$g§(_loc10_);
            }
         }
         if(_loc8_.length)
         {
            §8"%§.§@1§.increase([§!$L§.§4#J§],[_loc8_.length]);
            for each(_loc23_ in _loc8_)
            {
               _loc4_.§+&!§(_loc23_);
            }
         }
         if(_loc7_.length)
         {
            §@$l§.§0$=§(_loc7_);
         }
         Application.§5!>§.§8$w§();
         §@%;§.play(§`!v§.§=#2§);
         if(!this.§5#K§())
         {
            Application.§5!>§.§^P§.§6X§();
         }
      }
      
      private function §5#K§() : Boolean
      {
         if(Boolean(this.shopMenu) && this.shopMenu.isShown())
         {
            this.shopMenu.hide();
            §1%"§.delay(function():void
            {
               showShopMenu();
            },this,1);
            return true;
         }
         return false;
      }
      
      public function §-#D§(param1:int = 1, param2:int = 30) : Array
      {
         var _loc5_:§^$E§ = null;
         var _loc3_:Array = [];
         var _loc4_:Array = §<$c§.§ !^§(Race.§+#T§.§]!D§());
         for each(_loc5_ in _loc4_)
         {
            if(!_loc5_.getHideInShop() && _loc5_.§,X§() >= param1 && param2 <= _loc5_.§,X§())
            {
               _loc3_[_loc3_.length] = _loc5_.getId();
            }
         }
         return _loc3_;
      }
      
      public function §`r§(param1:int = 0, param2:int = 30) : Array
      {
         var _loc4_:§^%%§ = null;
         var _loc3_:Array = [];
         var _loc5_:int = 0;
         var _loc6_:* = §<$c§.§0$^§();
         for each(_loc5_ in _loc6_)
         {
            var _temp_1:* = _loc5_;
            _loc4_ = _loc5_;
            if(!_loc4_.getHideInShop() && _loc4_.§,X§() >= param1 && param2 <= _loc4_.§,X§())
            {
               _loc3_[_loc3_.length] = _loc4_.getId();
            }
         }
         return _loc3_;
      }
      
      public function § !g§() : Boolean
      {
         return Boolean(this.shopMenu) && this.shopMenu.isShown();
      }
   }
}

