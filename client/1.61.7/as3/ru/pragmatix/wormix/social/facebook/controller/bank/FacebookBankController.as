package ru.pragmatix.wormix.social.facebook.controller.bank
{
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §"%H§.§6$3§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §#$e§.§0!g§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.*;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&$Y§.§5%]§;
   import §&&6§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2$#§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-&5§.*;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§]2§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §0&F§.§`"^§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#s§.BankMenu;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4#2§.§,%g§;
   import §4'§.§#"l§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §6$0§.§![§;
   import §6$0§.§%$z§;
   import §6$0§.§<!o§;
   import §6%2§.§#"B§;
   import §6_§.§5#t§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7"Q§.*;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §9&+§.§>&5§;
   import §<"L§.*;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §=!p§.§&&0§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §=#g§.*;
   import §=$#§.§1!$§;
   import §?$7§.§+#N§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§-!Y§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[!`§.ArcticTorch;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.setTimeout;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.NeedMoneyResult;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§3!=§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class FacebookBankController extends §5%]§
   {
      
      private static const REFERENCE_PRICES:Array = [1,2,5,8,15];
      
      private static const MAX_OPTIONS_COUNT:uint = 5;
      
      private static const RUBY_USD_EXCHANGE:uint = 5;
      
      private static const PRICE_POINTS_EXPIRED_ERROR_ID:uint = 1383104;
      
      private var bankMenu:§5#t§;
      
      private var currency:§<!o§;
      
      private var currentPayment:§1e§;
      
      private var paymentId:int;
      
      private var isMobilePayment:Boolean = false;
      
      private const FB_REALPRICE_OPTIONS:Array = [§1e§.§3#]§(0,15,2,0.79,§+$A§.REAL),§1e§.§3#]§(1,30,5,1.59,§+$A§.REAL),§1e§.§3#]§(2,75,15,3.99,§+$A§.REAL),§1e§.§3#]§(3,150,50,7.99,§+$A§.REAL),§1e§.§3#]§(4,300,120,15.99,§+$A§.REAL),§1e§.§3#]§(5,750,400,39.99,§+$A§.REAL),§1e§.§3#]§(6,1500,1200,79.99,§+$A§.REAL),§1e§.§3#]§(40,90,27,3.99,§+$A§.REAL),§1e§.§3#]§(41,200,60,7.99,§+$A§.REAL),§1e§.§3#]§(42,420,126,15.99,§+$A§.REAL),§1e§.§3#]§(43,1150,345,39.99,§+$A§.REAL)];
      
      private const FB_INGAME_PRICE_OPTION:Array = [§1e§.§3#]§(0,1500,200,0.79,§+$A§.INGAME),§1e§.§3#]§(1,3000,500,1.59,§+$A§.INGAME),§1e§.§3#]§(2,7500,1500,3.99,§+$A§.INGAME),§1e§.§3#]§(3,15000,5000,7.99,§+$A§.INGAME),§1e§.§3#]§(4,30000,12000,15.99,§+$A§.INGAME),§1e§.§3#]§(5,75000,40000,39.99,§+$A§.INGAME),§1e§.§3#]§(6,150000,120000,79.99,§+$A§.INGAME)];
      
      private var countries:Dictionary = new Dictionary();
      
      private var currencyRealPriceOptions:Array = [];
      
      private var currencyInGameOptions:Array = [];
      
      public function FacebookBankController()
      {
         super();
         §!a§(§8"%§.§[f§).getCurrency(this.onGetCurrency);
         §%%w§.§##$§(FbRegisterPaymentResult,this.onFbRegisterPayment);
         §%%w§.§##$§(NeedMoneyResult,this.onNeedMoneyResult);
      }
      
      private static function getBonusCoeff(param1:uint) : Number
      {
         if(param1 >= 500)
         {
            return 0.2;
         }
         if(param1 >= 250)
         {
            return 0.14;
         }
         if(param1 >= 100)
         {
            return 0.12;
         }
         if(param1 >= 50)
         {
            return 0.1;
         }
         if(param1 >= 25)
         {
            return 0.08;
         }
         return 0;
      }
      
      override public function getRealPaymentOptions() : Array
      {
         return this.currencyRealPriceOptions.length ? this.currencyRealPriceOptions : this.FB_REALPRICE_OPTIONS;
      }
      
      override public function openBank(param1:String = "", param2:Boolean = false, param3:int = -1) : void
      {
         if(!this.bankMenu)
         {
            this.bankMenu = new §5#t§(this.currencyRealPriceOptions,this.currencyInGameOptions,this.getUserCurrency());
         }
         if(§-!Y§.§&%Y§(this.countries) > 0)
         {
            this.bankMenu.§5$y§(this.countries);
         }
         if(param3 > -1)
         {
            this.bankMenu.§4$?§(param3,true);
         }
         this.§%$&§ = param2;
         this.bankMenu.show();
      }
      
      private function onGetCurrency(param1:§<!o§) : void
      {
         var response:§<!o§ = param1;
         this.currency = response;
         this.calculatePrices();
         setTimeout(function():void
         {
            §!a§(§8"%§.§[f§).getMobilePricePoints(onGetMobilePricePoints);
         },4000);
      }
      
      private function calculatePrices() : void
      {
         var _loc1_:§1e§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:§1e§ = null;
         for each(_loc3_ in this.FB_REALPRICE_OPTIONS)
         {
            _loc2_ = this.calculateCurrencyByPriceUSD(_loc3_.price);
            _loc1_ = §1e§.§3#]§(_loc3_.code,_loc3_.count,_loc3_.bonus,_loc2_,_loc3_.moneyType,_loc3_.name,_loc3_.icon);
            this.currencyRealPriceOptions.push(_loc1_);
            §["6§(_loc1_,"");
         }
         for each(_loc3_ in this.FB_INGAME_PRICE_OPTION)
         {
            _loc2_ = this.calculateCurrencyByPriceUSD(_loc3_.price);
            _loc1_ = §1e§.§3#]§(_loc3_.code,_loc3_.count,_loc3_.bonus,_loc2_,_loc3_.moneyType,_loc3_.name,_loc3_.icon);
            this.currencyInGameOptions.push(_loc1_);
            §["6§(_loc1_,"");
         }
      }
      
      public function calculateCurrencyByPriceUSD(param1:Number) : Number
      {
         var _loc2_:int = this.getUserCurrency() == "RUB" || this.getUserCurrency() == "UAH" ? 0 : 2;
         return §-q§.§-&%§(param1 * this.getUsdExchangeInverse(),_loc2_);
      }
      
      public function getUserCurrency() : String
      {
         return this.currency ? this.currency.user_currency : "$";
      }
      
      public function getUsdExchange() : Number
      {
         return this.currency ? this.currency.§`!G§ : 1;
      }
      
      public function getUsdExchangeInverse() : Number
      {
         return this.currency ? this.currency.§,%-§ : 1;
      }
      
      private function onGetMobilePricePoints(param1:§![§) : void
      {
         var _loc3_:§%$z§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc11_:§%$z§ = null;
         var _loc12_:§%$z§ = null;
         var _loc13_:Number = NaN;
         var _loc14_:§%$z§ = null;
         var _loc2_:Dictionary = new Dictionary();
         for each(_loc3_ in param1.pricePoints)
         {
            _loc5_ = _loc3_.country;
            if(_loc3_.payout_base_amount * this.getUsdExchange() >= 1)
            {
               if(!_loc2_[_loc5_])
               {
                  _loc2_[_loc5_] = [];
               }
               _loc2_[_loc5_].push(_loc3_);
            }
         }
         for(_loc4_ in _loc2_)
         {
            _loc6_ = [];
            _loc7_ = _loc2_[_loc4_];
            if(_loc7_.length > MAX_OPTIONS_COUNT)
            {
               _loc8_ = 0;
               _loc10_ = 999999;
               for each(_loc12_ in _loc7_)
               {
                  _loc9_ = uint(REFERENCE_PRICES[_loc8_]);
                  _loc13_ = Math.abs(_loc9_ - _loc12_.payout_base_amount);
                  if(_loc13_ <= _loc10_)
                  {
                     _loc10_ = _loc13_;
                     _loc11_ = _loc12_;
                  }
                  else if(_loc13_ > _loc10_)
                  {
                     _loc6_.push(this.createCountryPaymentObject(_loc11_));
                     if(_loc6_.length == MAX_OPTIONS_COUNT)
                     {
                        break;
                     }
                     _loc10_ = 999999;
                     _loc8_++;
                  }
               }
            }
            else
            {
               for each(_loc14_ in _loc7_)
               {
                  _loc6_.push(this.createCountryPaymentObject(_loc14_));
               }
            }
            this.countries[_loc4_] = _loc6_;
         }
         if(this.bankMenu)
         {
            if(§-!Y§.§&%Y§(this.countries) > 0)
            {
               this.bankMenu.§5$y§(this.countries);
            }
         }
      }
      
      private function createCountryPaymentObject(param1:§%$z§) : Object
      {
         var _loc2_:uint = 0;
         _loc2_ = Math.floor(param1.payout_base_amount * this.getUsdExchange() * RUBY_USD_EXCHANGE);
         var _loc3_:uint = Math.floor(_loc2_ * getBonusCoeff(_loc2_));
         var _loc4_:String = param1.pricepoint_id;
         var _loc5_:Number = param1.payer_amount;
         var _loc6_:String = param1.currency;
         return {
            "realPrice":new §&&0§(_loc4_,_loc2_,_loc3_,_loc5_,§+$A§.REAL,_loc6_),
            "ingamePrice":new §&&0§(_loc4_,_loc2_ * 100,_loc3_ * 100,_loc5_,§+$A§.INGAME,_loc6_)
         };
      }
      
      override public function callPayController(param1:§1e§) : void
      {
         var _loc2_:String = null;
         this.currentPayment = param1;
         this.isMobilePayment = false;
         if(param1.name == §#"l§.BUNDLE.name || param1.name == §#"l§.BUNDLE_VIP.name)
         {
            _loc2_ = param1.code.toString();
         }
         else
         {
            _loc2_ = (param1.moneyType == §+$A§.INGAME ? "1" : "") + String(param1.code + 1);
         }
         log.info(this + ".callPayController: paymentCode=" + _loc2_ + " payment.code=" + param1.code + " payment.name=" + param1.name,§!a§.FB);
         var _loc3_:FbRegisterPayment = new FbRegisterPayment();
         _loc3_.itemId = _loc2_;
         _loc3_.sessionKey = §%%w§.§7F§.§?$X§();
         §%%w§.§,U§(_loc3_);
      }
      
      public function callPayControllerMobile(param1:§&&0§) : void
      {
         this.currentPayment = param1;
         this.isMobilePayment = true;
         var _loc2_:FbRegisterMobilePayment = new FbRegisterMobilePayment();
         _loc2_.pricepointId = param1.§-""§;
         _loc2_.moneyType = param1.moneyType.value;
         _loc2_.amount = param1.count + param1.bonus;
         _loc2_.cost_USD = param1.price * this.getUsdExchange();
         _loc2_.sessionKey = §%%w§.§7F§.§?$X§();
         §%%w§.§,U§(_loc2_);
      }
      
      private function onFbRegisterPayment(param1:§9$v§) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         if(param1.message.result == 0)
         {
            this.paymentId = FbRegisterPaymentResult(param1.message).paymentId;
            _loc2_ = FbRegisterPaymentResult(param1.message).itemId;
            if(this.currentPayment.name == §#"l§.BUNDLE.name || this.currentPayment.name == §#"l§.BUNDLE_VIP.name)
            {
               _loc4_ = this.currentPayment.name.toLocaleLowerCase();
            }
            else
            {
               _loc4_ = this.currentPayment.moneyType == §+$A§.INGAME ? "fuzy" : "ruby";
            }
            _loc5_ = {
               "method":"pay",
               "action":"purchaseitem",
               "request_id":param1.message.paymentId
            };
            if(this.isMobilePayment)
            {
               this.isMobilePayment = false;
               _loc6_ = §-q§.§!&&§(this.currentPayment.price * this.getUsdExchange(),2);
               _loc3_ = "http://rmart.ru/fb/wormix_payments_2.3.6/" + _loc4_ + ".php?amount=" + _loc6_;
               _loc5_.pricepoint_id = param1.message.itemId;
            }
            else
            {
               _loc7_ = "https://ssl.rmart.ru/wormix_facebook5/payments_2.3.6/og/";
               _loc3_ = _loc7_ + _loc4_ + "_" + this.currentPayment.code + ".html";
               log.info(this + ".onFbRegisterPayment:" + " price=" + this.currentPayment.price + " paymentId=" + this.paymentId + " itemId=" + param1.message.itemId + " usd_exchange=" + this.getUsdExchange() + " productUrl=" + _loc3_,§!a§.FB);
            }
            _loc5_.product = _loc3_;
            §0!g§.ui(_loc5_,this.onFacebookPayCallback);
         }
         else
         {
            new §,#W§(§0$N§.TITLE_BUY,§0$N§.ERROR_BANK_FAIL,§,#W§.§6!m§).show();
         }
      }
      
      private function onFacebookPayCallback(param1:Object) : void
      {
         var _loc2_:FbFulfillPayment = null;
         var _loc3_:String = null;
         log.info(this + ".onFacebookPayCallback: response=" + JSON.stringify(param1),§!a§.FB);
         if(param1.status == "completed")
         {
            _loc2_ = new FbFulfillPayment();
            _loc2_.paymentId = this.paymentId;
            _loc2_.signedRequest = param1.signed_request;
            _loc2_.sessionKey = §%%w§.§7F§.§?$X§();
            §%%w§.§7F§.send(_loc2_);
            if(Boolean(§%$&§) && Boolean(this.bankMenu) && this.bankMenu.isVisible())
            {
               §%$&§ = false;
               this.bankMenu.hide();
            }
         }
         else
         {
            _loc3_ = §0$N§.ERROR_BANK_FAIL + " (" + param1.status + "; " + (param1.error_message ? param1.error_message : "no error") + ")";
            new §,#W§(§0$N§.TITLE_ERROR,_loc3_,§,#W§.§6!m§).show();
         }
      }
      
      private function onNeedMoneyResult(param1:§9$v§) : void
      {
         this.bankMenu.hide();
         var _loc2_:String = "";
         var _loc3_:NeedMoneyResult = NeedMoneyResult(param1.message);
         switch(_loc3_.result)
         {
            case NeedMoneyResult.ERROR:
               _loc2_ = §0$N§.ERROR_SAVING;
               break;
            case NeedMoneyResult.NOT_ENOUGH_MONEY:
               _loc2_ = §0$N§.ERROR_BANK_FAIL;
               break;
            case NeedMoneyResult.SUCCESS:
               _loc2_ = §0$N§.BUY_RUBIES_SUCCESSFULL;
         }
         new §,#W§(§0$N§.TITLE_BUY,_loc2_,§,#W§.§6!m§).show();
      }
   }
}

