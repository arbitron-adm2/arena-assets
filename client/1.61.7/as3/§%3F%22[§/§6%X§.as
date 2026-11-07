package §?"[§
{
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&$Y§.§5%]§;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%[§.§]2§;
   import §0%[§.§^"5§;
   import §2#s§.BankMenu;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§^%%§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §=!p§.§1e§;
   import §@<§.§+%]§;
   import §[%§.Dragon;
   import flash.events.Event;
   import flash.ui.Keyboard;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§8"'§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.messages.server.AwardedFriendsComeback;
   import ru.pragmatix.wormix.messages.server.NeedMoneyResult;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §6%X§ extends §5%]§
   {
      
      public static const §@K§:uint = 40;
      
      public static const §"#m§:§1e§ = §1e§.§3#]§(§@K§,0,0,20,§+$A§.REAL);
      
      private var bankMenu:BankMenu;
      
      private var moneyType:§+$A§;
      
      private const §=%$§:Array = [§1e§.§3#]§(1,6,1,20,§+$A§.REAL),§1e§.§3#]§(2,15,3,50,§+$A§.REAL),§1e§.§3#]§(3,30,8,100,§+$A§.REAL),§1e§.§3#]§(4,50,18,175,§+$A§.REAL),§1e§.§3#]§(5,100,40,350,§+$A§.REAL),§1e§.§3#]§(6,200,100,700,§+$A§.REAL),§1e§.§3#]§(7,400,300,1400,§+$A§.REAL),§1e§.§3#]§(41,18,6,50,§+$A§.REAL),§1e§.§3#]§(42,38,12,100,§+$A§.REAL),§1e§.§3#]§(43,140,42,350,§+$A§.REAL),§1e§.§3#]§(44,300,90,700,§+$A§.REAL)];
      
      private const §@"&§:Array = [§1e§.§3#]§(11,600,100,20,§+$A§.INGAME),§1e§.§3#]§(12,1500,300,50,§+$A§.INGAME),§1e§.§3#]§(13,3000,800,100,§+$A§.INGAME),§1e§.§3#]§(14,5000,1800,175,§+$A§.INGAME),§1e§.§3#]§(15,10000,4000,350,§+$A§.INGAME),§1e§.§3#]§(16,20000,10000,700,§+$A§.INGAME),§1e§.§3#]§(17,40000,30000,1400,§+$A§.INGAME)];
      
      private var §&%9§:Boolean = false;
      
      public function §6%X§()
      {
         var _loc1_:§1e§ = null;
         super();
         for each(_loc1_ in this.§=%$§)
         {
            this.§["6§(_loc1_,"");
         }
         for each(_loc1_ in this.§@"&§)
         {
            this.§["6§(_loc1_,"");
         }
         §%%w§.§##$§(NeedMoneyResult,this.onNeedMoneyResult);
      }
      
      override public function getRealPaymentOptions() : Array
      {
         return this.§=%$§;
      }
      
      override public function §^#p§() : §1e§
      {
         if(!§"#m§.name)
         {
            §"#m§.name = §0$N§.WIPE_PROFILE_TITLE;
         }
         return §"#m§;
      }
      
      override protected function §["6§(param1:§1e§, param2:String, param3:String = "") : void
      {
         var _loc4_:uint = 0;
         _loc4_ = param1.count + param1.bonus;
         var _loc5_:String = _loc4_ + " " + (param1.moneyType == §+$A§.REAL ? Social.§-%c§.§4!]§(_loc4_,§0$N§.RUBY_PLURALS) : Social.§-%c§.§4!]§(_loc4_,§0$N§.FUZY_PLURALS));
         var _loc6_:String = Social.§-%c§.§4!]§(param1.price,§0$N§.CURRENCY_PLURALS);
         param1.name = §0%§.format(§0$N§.§%! §("BANK_CELL_TEXT"),{
            "count":_loc5_,
            "price":param1.price.toString() + " " + _loc6_
         });
      }
      
      override public function openBank(param1:String = "", param2:Boolean = false, param3:int = -1) : void
      {
         if(!this.bankMenu)
         {
            this.bankMenu = new BankMenu(this.§=%$§,this.§@"&§,§0$N§.MM_CURRENCY);
         }
         if(param3 > -1)
         {
            this.bankMenu.§4$?§(param3,true);
         }
         this.§%$&§ = param2;
         this.bankMenu.show();
      }
      
      override public function callPayController(param1:§1e§) : void
      {
         if(!this.§&%9§)
         {
            this.§&%9§ = true;
            this.moneyType = param1.moneyType;
            (§8"%§.§[f§ as §8"'§).pay(param1,this.§+!A§);
         }
      }
      
      override protected function §+!A§(param1:§,$2§) : void
      {
         this.§&%9§ = false;
         log.info("onPaymentComplete: response=" + param1);
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
               Application.userProfile.§2Z§(_loc3_.value,this.moneyType);
               Application.§5!>§.§8$w§();
         }
         new §,#W§(§0$N§.TITLE_BUY,_loc2_,§,#W§.§6!m§).show();
      }
   }
}

