package §^"<§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §4!x§.§@& §;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §"&C§ extends §@& §
   {
      
      private var realPriceClanBtn:§?%>§;
      
      private var realPriceBtn:§?%>§;
      
      private var closeBtn:§?%>§;
      
      private var backPanel:MovieClip;
      
      private var §7"x§:String;
      
      protected var price:§'$2§;
      
      private var message:TextField;
      
      private var submessage:TextField;
      
      private var submessage2:TextField;
      
      protected var callback:Function;
      
      protected var §!!5§:Boolean;
      
      public function §"&C§(param1:§'$2§, param2:Function = null, param3:String = "")
      {
         super(§6#A§.§!&6§(§+"'§.§@"9§));
         this.callback = param2;
         this.backPanel = §'$a§("backPanel");
         this.realPriceClanBtn = §!&5§.§7#[§(getChildByName("realPriceClanBtn"));
         this.realPriceBtn = §!&5§.§7#[§(getChildByName("realPriceBtn"));
         this.closeBtn = §!&5§.§7#[§(getChildByName("closeBtn"));
         this.realPriceClanBtn.§[!u§(this.§"!V§);
         this.realPriceBtn.§[!u§(this.§'"F§);
         this.closeBtn.§[!u§(§0!j§);
         this.realPriceClanBtn.§00§(§`!v§.§=#2§);
         this.realPriceBtn.§00§(§`!v§.§=#2§);
         this.message = §'%s§("msg");
         this.submessage = §'%s§("msgSelf");
         this.submessage2 = §'%s§("msgClan");
         §&$9§.§>&F§(§]"a§,§"-§.§+$m§,param3 == "" ? §0$N§.§%! §("CLAN_OP_TITLE_DEFAULT") : param3);
         §&$9§.§>&F§(this.message,§"-§.§+$m§,§0$N§.§%! §("CLAN_OP_WALLET_SELECT"));
         §&$9§.§>&F§(this.submessage,§"-§.§+$m§,§0$N§.§%! §("CLAN_OP_WALLET_SELF"));
         §&$9§.§>&F§(this.submessage2,§"-§.§+$m§,§0$N§.§%! §("CLAN_OP_WALLET_TREASURY"));
         this.§8&;§(param1);
      }
      
      override protected function §%&9§() : void
      {
         this.§7"x§ = §0$N§.BUTTON_BUY;
         §<"b§ = true;
         super.§%&9§();
      }
      
      protected function §"!V§(param1:Event) : void
      {
         this.§`&1§(true);
      }
      
      protected function §'"F§(param1:Event) : void
      {
         this.§`&1§();
      }
      
      protected function §`&1§(param1:Boolean = false) : void
      {
      }
      
      protected function §,e§(param1:Boolean = false) : void
      {
         if(this.§!!5§)
         {
            if(param1)
            {
               §]#i§.userClan.treasury -= this.price.realPrice;
            }
         }
         if(!this.§!!5§ || param1)
         {
            §@%;§.play(§`!v§.§=#2§);
         }
         if(this.callback != null)
         {
            this.callback();
         }
         hide();
      }
      
      public function §8&;§(param1:§'$2§) : void
      {
         this.realPriceBtn.setText(String(param1.realPrice),§"-§.§6"j§);
         this.realPriceClanBtn.setText(String(param1.realPrice),§"-§.§6"j§);
         §4"0§.§@"T§(this.realPriceClanBtn);
         §4"0§.§@"T§(this.realPriceBtn);
         var _loc2_:DisplayObjectContainer = (getChildByName("realPriceClanBtn") as DisplayObjectContainer).getChildByName("disabled") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = (getChildByName("realPriceBtn") as DisplayObjectContainer).getChildByName("disabled") as DisplayObjectContainer;
         §4"0§.§5%o§(_loc2_);
         §4"0§.§5%o§(_loc3_);
         this.price = param1;
         this.realPriceClanBtn.setDisabled(§]#i§.§6"t§() < param1.realPrice);
      }
      
      override public function destroy() : void
      {
         this.realPriceClanBtn.destroy();
         this.realPriceBtn.destroy();
         this.closeBtn.destroy();
         super.destroy();
      }
   }
}

