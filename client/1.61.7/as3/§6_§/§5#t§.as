package §6_§
{
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §0%z§.§,$h§;
   import §2#s§.§7"N§;
   import §2#s§.BankMenu;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §=!p§.§&&0§;
   import §@!N§.§-!Y§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §[%'§.§<"G§;
   import §]$&§.§2&2§;
   import §^#[§.§&$2§;
   import config.achievements.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §5#t§ extends BankMenu
   {
      
      public static const §5I§:String = "paymentsGroupBtn";
      
      private var paymentsBtn:§8"@§;
      
      private var mobilePaymentsBtn:§8"@§;
      
      private var §,#y§:Dictionary;
      
      private var priceContainer:Sprite;
      
      private var §^W§:Sprite;
      
      private var selectCountryMenu:§9%$§;
      
      private var §0i§:Array = [];
      
      public function §5#t§(param1:Array, param2:Array, param3:String)
      {
         super(param1,param2,param3);
      }
      
      override protected function init(param1:String, param2:Array, param3:Array) : void
      {
         this.currencyText = param1;
         buttons = [];
         this.priceContainer = §'$a§("paymentsContainer");
         this.§^W§ = §'$a§("mobilePaymentsContainer");
         this.§^W§.visible = false;
         this.selectCountryMenu = new §9%$§(this.§^W§.getChildByName("selectCountryMenu") as MovieClip);
         this.selectCountryMenu.addEventListener(§!&"§.§5$B§,this.§1$s§);
         this.paymentsBtn = §!&5§.§;#z§(getChildByName("paymentsBtn"),§5I§);
         this.paymentsBtn.setText(§0$N§.BANK_TITLE,§"-§.§+$m§);
         this.paymentsBtn.§[!u§(this.§+![§);
         this.paymentsBtn.setPressed(true);
         this.mobilePaymentsBtn = §!&5§.§;#z§(getChildByName("mobilePaymentsBtn"),§5I§);
         this.mobilePaymentsBtn.setText(§<"G§.§%! §("MOBILE_PAYMENTS"),§"-§.§+$m§);
         this.mobilePaymentsBtn.setVisible(false);
         this.mobilePaymentsBtn.setDisabled(true);
         var _loc4_:MovieClip = this.priceContainer.getChildByName("bankBtns_ruby") as MovieClip;
         this.§]Z§(_loc4_,param2);
         var _loc5_:MovieClip = this.priceContainer.getChildByName("bankBtns_fuzy") as MovieClip;
         this.§]Z§(_loc5_,param3);
         § %%§();
         daily = new §7"N§(§'$a§("daily"));
      }
      
      override protected function §]Z§(param1:MovieClip, param2:Array) : void
      {
         var _loc4_:int = 0;
         var _loc3_:uint = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = int(buttons.length);
            buttons[_loc4_] = new §#"+§();
            buttons[_loc4_].init(param1.getChildAt(_loc3_) as SimpleButton,param2[_loc3_],currencyText);
            _loc3_++;
         }
      }
      
      public function §5$y§(param1:Dictionary) : void
      {
         this.§,#y§ = param1;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         var usdRef:String = null;
         var firstCountryKey:String = null;
         var showModal:Boolean = param1;
         if(this.§,#y§)
         {
            if(§-!Y§.§&%Y§(this.§,#y§) > 1)
            {
               this.selectCountryMenu.setVisible(true);
               this.§^W§.y = 105;
            }
            else
            {
               this.selectCountryMenu.setVisible(false);
               this.§^W§.y = 51;
            }
            this.selectCountryMenu.§1%Q§(this.§,#y§);
            usdRef = "USD";
            if(currencyText.indexOf(usdRef) != -1)
            {
               this.§9$D§(this.§,#y§["US"]);
               this.selectCountryMenu.§5&%§("US");
               this.mobilePaymentsBtn.setDisabled(false);
               this.mobilePaymentsBtn.setVisible(true);
            }
            else
            {
               firstCountryKey = this.selectCountryMenu.§5!2§();
               if(firstCountryKey)
               {
                  try
                  {
                     this.§9$D§(this.§,#y§[firstCountryKey]);
                     this.mobilePaymentsBtn.setDisabled(false);
                     this.mobilePaymentsBtn.setVisible(true);
                  }
                  catch(error:ArgumentError)
                  {
                     Application.§%%F§(this + " " + error);
                     mobilePaymentsBtn.setDisabled(true);
                     mobilePaymentsBtn.setVisible(false);
                  }
               }
               else
               {
                  this.mobilePaymentsBtn.setDisabled(true);
                  this.mobilePaymentsBtn.setVisible(false);
               }
            }
         }
         else
         {
            this.mobilePaymentsBtn.setDisabled(true);
            this.mobilePaymentsBtn.setVisible(false);
         }
         super.show(showModal);
      }
      
      private function §9$D§(param1:Array) : void
      {
         this.§"E§();
         this.§"#N§(this.§^W§.getChildByName("bankBtns_ruby") as DisplayObjectContainer,param1,§+$A§.REAL);
         this.§"#N§(this.§^W§.getChildByName("bankBtns_fuzy") as DisplayObjectContainer,param1,§+$A§.INGAME);
      }
      
      private function §"E§() : void
      {
         var _loc1_:§&$6§ = null;
         for each(_loc1_ in this.§0i§)
         {
            _loc1_.destroy();
         }
         this.§0i§ = [];
      }
      
      private function §"#N§(param1:DisplayObjectContainer, param2:Array, param3:§+$A§) : void
      {
         var _loc4_:§&&0§ = null;
         var _loc5_:int = 0;
         var _loc8_:SimpleButton = null;
         var _loc9_:§&$6§ = null;
         _loc5_ = param1.numChildren;
         var _loc6_:int = Math.min(_loc5_,param2.length);
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_)
         {
            _loc8_ = param1.getChildAt(_loc7_) as SimpleButton;
            if(_loc7_ < _loc6_)
            {
               _loc9_ = new §&$6§();
               if(param3 == §+$A§.REAL)
               {
                  _loc4_ = param2[_loc7_].realPrice;
               }
               else
               {
                  _loc4_ = param2[_loc7_].ingamePrice;
               }
               _loc8_.visible = true;
               _loc9_.init(_loc8_,_loc4_,currencyText);
               this.§0i§.push(_loc9_);
            }
            else
            {
               _loc8_.visible = false;
            }
            _loc7_++;
         }
      }
      
      private function §1$s§(param1:§!&"§) : void
      {
         this.§9$D§(this.§,#y§[param1.§]$z§]);
      }
      
      private function §+![§(param1:Event) : void
      {
         this.priceContainer.visible = true;
         this.§^W§.visible = false;
      }
      
      private function §>!Q§(param1:Event) : void
      {
         this.priceContainer.visible = false;
         this.§^W§.visible = true;
      }
      
      override public function destroy() : void
      {
         this.§"E§();
         super.destroy();
      }
      
      override protected function §[D§() : void
      {
         super.§[D§();
         if(this.mobilePaymentsBtn.isVisible())
         {
            this.mobilePaymentsBtn.setDisabled(false);
            this.mobilePaymentsBtn.§[!u§(this.§>!Q§);
         }
      }
      
      override public function §4$?§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:SimpleButton = null;
         super.§4$?§(param1,param2);
         if(param1 > -1)
         {
            _loc3_ = §2&2§(buttons[param1]).getButton();
            star.y = _loc3_.y + this.priceContainer.y + _loc3_.parent.y;
            star.x = _loc3_.x + this.priceContainer.x + _loc3_.parent.x - star.width * 0.35;
            labelBest.y = _loc3_.y + this.priceContainer.y + _loc3_.parent.y + 1;
            labelBest.x = _loc3_.x + this.priceContainer.x + _loc3_.parent.x - labelBest.width + 5;
            if(this.mobilePaymentsBtn.isVisible())
            {
               this.mobilePaymentsBtn.setDisabled(true);
               this.mobilePaymentsBtn.removeHandler(this.§>!Q§);
            }
         }
      }
   }
}

