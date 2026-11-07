package §=&6§
{
   import § "d§.§,!c§;
   import § #9§.§"$t§;
   import § #m§.§[&H§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&$Y§.§5%]§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,$J§.§,$O§;
   import §-"Q§.*;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §1!#§.§-e§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4$b§.§6!G§;
   import §4u§.§[%u§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§1e§;
   import §=#g§.§%!x§;
   import §=$#§.*;
   import §=&!§.§<$Z§;
   import §=7§.*;
   import §>%S§.§^!V§;
   import §?"[§.*;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §@!N§.§2"e§;
   import §@<§.§+%]§;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§8"'§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.client.GetMercenariesDefs;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.NeedMoneyResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §3#B§ extends §5%]§
   {
      
      public static const §@K§:uint = 40;
      
      public static const §]!9§:§1e§ = §1e§.§3#]§(§@K§,0,0,20,§+$A§.REAL);
      
      private var bankMenu:§-e§;
      
      private var moneyType:§+$A§;
      
      private const §>$Y§:Array = [§1e§.§3#]§(1,6,1,20,§+$A§.REAL),§1e§.§3#]§(2,15,3,50,§+$A§.REAL),§1e§.§3#]§(3,30,8,100,§+$A§.REAL),§1e§.§3#]§(4,50,18,175,§+$A§.REAL),§1e§.§3#]§(5,100,40,350,§+$A§.REAL),§1e§.§3#]§(6,200,100,700,§+$A§.REAL),§1e§.§3#]§(7,400,300,1400,§+$A§.REAL),§1e§.§3#]§(41,18,6,50,§+$A§.REAL),§1e§.§3#]§(42,38,12,100,§+$A§.REAL),§1e§.§3#]§(43,140,42,350,§+$A§.REAL),§1e§.§3#]§(44,300,90,700,§+$A§.REAL)];
      
      private const §=$N§:Array = [§1e§.§3#]§(11,600,100,20,§+$A§.INGAME),§1e§.§3#]§(12,1500,300,50,§+$A§.INGAME),§1e§.§3#]§(13,3000,800,100,§+$A§.INGAME),§1e§.§3#]§(14,5000,1800,175,§+$A§.INGAME),§1e§.§3#]§(15,10000,4000,350,§+$A§.INGAME),§1e§.§3#]§(16,20000,10000,700,§+$A§.INGAME),§1e§.§3#]§(17,40000,30000,1400,§+$A§.INGAME)];
      
      private var §&%9§:Boolean = false;
      
      public function §3#B§()
      {
         var _loc1_:§1e§ = null;
         super();
         for each(_loc1_ in this.§>$Y§)
         {
            this.§["6§(_loc1_,"");
         }
         for each(_loc1_ in this.§=$N§)
         {
            this.§["6§(_loc1_,"");
         }
         §%%w§.§##$§(NeedMoneyResult,this.onNeedMoneyResult);
      }
      
      override public function getRealPaymentOptions() : Array
      {
         return this.§>$Y§;
      }
      
      override protected function §["6§(param1:§1e§, param2:String, param3:String = "") : void
      {
         var _loc4_:uint = 0;
         var _loc6_:String = null;
         _loc4_ = param1.count + param1.bonus;
         var _loc5_:String = _loc4_ + " " + (param1.moneyType == §+$A§.REAL ? Social.§-%c§.§4!]§(_loc4_,§0$N§.RUBY_PLURALS) : Social.§-%c§.§4!]§(_loc4_,§0$N§.FUZY_PLURALS));
         _loc6_ = Social.§-%c§.§4!]§(param1.price,§0$N§.CURRENCY_PLURALS);
         var _loc7_:Object = {
            "count":_loc5_,
            "price":param1.price.toString() + " " + _loc6_
         };
         param1.name = §0%§.format(§0$N§.§%! §("BANK_CELL_TEXT"),_loc7_);
      }
      
      override public function openBank(param1:String = "", param2:Boolean = false, param3:int = -1) : void
      {
         if(!this.bankMenu)
         {
            this.bankMenu = new §-e§(this.§>$Y§,this.§=$N§,§0$N§.OK_CURRENCY);
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
         this.moneyType = param1.moneyType;
         (§8"%§.§[f§ as §8"'§).pay(param1,this.§+!A§);
      }
      
      override protected function §+!A§(param1:§,$2§) : void
      {
         log.info("onPaymentComplete: response=" + param1);
         if(Boolean(§%$&§) && Boolean(this.bankMenu) && this.bankMenu.isVisible())
         {
            §%$&§ = false;
            this.bankMenu.hide();
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
               Application.userProfile.§2Z§(_loc3_.value,this.moneyType);
               Application.§5!>§.§8$w§();
         }
         new §,#W§(§0$N§.TITLE_BUY,_loc2_,§,#W§.§6!m§).show();
      }
   }
}

