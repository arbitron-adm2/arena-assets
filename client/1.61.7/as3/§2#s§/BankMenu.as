package §2#s§
{
   import §!L§.§+"'§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §4!x§.§@& §;
   import §=!p§.§1e§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §]$&§.§2&2§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.social.Social;
   
   public class BankMenu extends §@& §
   {
      
      protected var buttons:Array;
      
      protected var currencyText:String;
      
      protected var daily:§7"N§;
      
      protected var star:MovieClip;
      
      protected var labelBest:MovieClip;
      
      protected var §3%D§:int = -1;
      
      protected var §1$M§:int = 7;
      
      private var §"!2§:int;
      
      public function BankMenu(param1:Array, param2:Array, param3:String)
      {
         super(§6#A§.§!&6§(§+"'§.§%#@§));
         this.init(param3,param1,param2);
      }
      
      protected function init(param1:String, param2:Array, param3:Array) : void
      {
         this.currencyText = param1;
         this.embedFonts();
         this.buttons = [];
         var _loc4_:MovieClip = MovieClip(getChildByName("bankBtns_ruby"));
         this.§]Z§(_loc4_,param2);
         var _loc5_:MovieClip = MovieClip(getChildByName("bankBtns_fuzy"));
         this.§]Z§(_loc5_,param3);
         this.§ %%§();
         this.daily = new §7"N§(§'$a§("daily"));
      }
      
      protected function § %%§() : void
      {
         this.star = §'$a§("star");
         this.labelBest = §'$a§("labelBest");
         this.§"!2§ = §#!`§().getChildIndex(this.labelBest);
         var _loc1_:TextField = this.labelBest.getChildByName("text") as TextField;
         §&$9§.§>&F§(_loc1_,§"-§.§+$m§,§0$N§.§%! §("BANK_BEST_BUY"));
         _removeChild(this.labelBest);
         this.§[D§();
      }
      
      protected function embedFonts() : void
      {
         §&$9§.§>&F§(TextField(getChildByName("title_ruby")),§"-§.§+$m§,§0$N§.RUBY_QTIP);
         §&$9§.§>&F§(TextField(getChildByName("title_coin")),§"-§.§+$m§,§0$N§.FUZY_QTIP);
      }
      
      protected function §]Z§(param1:MovieClip, param2:Array) : void
      {
         var _loc4_:uint = 0;
         var _loc5_:String = null;
         var _loc3_:uint = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = this.buttons.length;
            _loc5_ = this.currencyText.indexOf("{currency}") == -1 ? this.currencyText : §0%§.format(this.currencyText,{"currency":Social.§-%c§.§4!]§(§1e§(param2[_loc3_]).price,§0$N§.CURRENCY_PLURALS)});
            this.buttons[_loc4_] = new §2&2§();
            §2&2§(this.buttons[_loc4_]).init(param1.getChildAt(_loc3_) as SimpleButton,param2[_loc3_],_loc5_);
            _loc3_++;
         }
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(this.star.isPlaying && this.§3%D§ > -1 && this.§3%D§ < this.§1$M§)
         {
            §?!C§(this.labelBest);
            §#!`§().setChildIndex(this.labelBest,this.§"!2§);
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < this.buttons.length)
         {
            this.buttons[_loc1_].destroy();
            _loc1_++;
         }
         this.buttons = null;
         super.destroy();
      }
      
      protected function §[D§() : void
      {
         var _loc1_:§2&2§ = null;
         for each(_loc1_ in this.buttons)
         {
            _loc1_.highlightAnimate(false);
         }
         this.star.stop();
         this.star.visible = false;
         if(this.labelBest.parent)
         {
            _removeChild(this.labelBest);
         }
         this.§3%D§ = -1;
      }
      
      public function §4$?§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:SimpleButton = null;
         if(param1 > -1)
         {
            this.buttons[param1].highlightAnimate(param2);
            this.star.play();
            this.star.visible = this.labelBest.visible = true;
            _loc3_ = §2&2§(this.buttons[param1]).getButton();
            this.star.y = _loc3_.y + _loc3_.parent.y;
            this.star.x = _loc3_.x + _loc3_.parent.x - this.star.width * 0.35;
            this.labelBest.y = _loc3_.y + _loc3_.parent.y + 1;
            this.labelBest.x = _loc3_.x + _loc3_.parent.x - this.labelBest.width + 5;
            this.§3%D§ = param1;
         }
         else
         {
            this.§[D§();
         }
      }
      
      override public function hide() : void
      {
         this.§[D§();
         super.hide();
      }
   }
}

