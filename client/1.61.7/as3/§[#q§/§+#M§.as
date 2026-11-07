package §[#q§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "I§.§,!D§;
   import § #m§.§;#^§;
   import §!!i§.§'"m§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#"V§.§?%>§;
   import §##j§.§!%&§;
   import §##j§.§7,§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%&3§.§'C§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §&$Y§.§5%]§;
   import §&&6§.*;
   import §'!Z§.§6S§;
   import §+$=§.*;
   import §,#A§.*;
   import §-%B§.*;
   import §-&5§.*;
   import §-8§.§3!x§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §4!!§.§#Z§;
   import §5o§.§0!$§;
   import §6"'§.§9$Z§;
   import §6"'§.§=$@§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7$t§.§??§;
   import §7$t§.§^%%§;
   import §8$V§.§`"c§;
   import §9&+§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §=!p§.§&&0§;
   import §=!p§.§1e§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.*;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§5&4§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%c§.§"[§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.plugins.*;
   import config.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.social.controller.§8"'§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.CraftRoom;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.server.NeedMoneyResult;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §+#M§ extends §5%]§
   {
      
      private static const §^!!§:Array = [§1e§.§3#]§(21,6,1,3,§+$A§.REAL),§1e§.§3#]§(22,10,2,5,§+$A§.REAL),§1e§.§3#]§(23,20,6,10,§+$A§.REAL),§1e§.§3#]§(24,40,15,20,§+$A§.REAL),§1e§.§3#]§(25,100,40,50,§+$A§.REAL),§1e§.§3#]§(26,200,100,100,§+$A§.REAL),§1e§.§3#]§(27,400,300,200,§+$A§.REAL),§1e§.§3#]§(41,26,8,10,§+$A§.REAL),§1e§.§3#]§(42,55,17,20,§+$A§.REAL),§1e§.§3#]§(43,140,42,50,§+$A§.REAL),§1e§.§3#]§(44,300,90,100,§+$A§.REAL)];
      
      private static const §4§:Array = [§1e§.§3#]§(31,600,100,3,§+$A§.INGAME),§1e§.§3#]§(32,1000,200,5,§+$A§.INGAME),§1e§.§3#]§(33,2000,600,10,§+$A§.INGAME),§1e§.§3#]§(34,4000,1500,20,§+$A§.INGAME),§1e§.§3#]§(35,10000,4000,50,§+$A§.INGAME),§1e§.§3#]§(36,20000,10000,100,§+$A§.INGAME),§1e§.§3#]§(37,40000,30000,200,§+$A§.INGAME)];
      
      private var moneyType:§+$A§;
      
      private var bankMenu:§"[§;
      
      private var §3"<§:Dictionary = new Dictionary();
      
      private var §&%9§:Boolean = false;
      
      public function §+#M§()
      {
         var _loc1_:§1e§ = null;
         super();
         for each(_loc1_ in §^!!§)
         {
            this.§["6§(_loc1_,§0$N§.VOTES);
         }
         for each(_loc1_ in §4§)
         {
            this.§["6§(_loc1_,§0$N§.VOTES);
         }
      }
      
      override public function getRealPaymentOptions() : Array
      {
         return §^!!§;
      }
      
      override public function openBank(param1:String = "", param2:Boolean = false, param3:int = -1) : void
      {
         if(!this.bankMenu)
         {
            this.bankMenu = new §"[§(§^!!§,§4§,§0$N§.VOTES,this.§3"<§);
         }
         if(param3 > -1)
         {
            this.bankMenu.§4$?§(param3,true);
         }
         if(param1 == §;#d§)
         {
            this.bankMenu.§;c§();
         }
         else
         {
            this.bankMenu.§'l§();
         }
         this.§%$&§ = param2;
         this.bankMenu.show();
      }
      
      override protected function §["6§(param1:§1e§, param2:String, param3:String = "") : void
      {
         var _loc4_:uint = param1.count + param1.bonus;
         var _loc5_:Array = param1.moneyType == §+$A§.REAL ? §0$N§.RUBY_PLURALS : §0$N§.FUZY_PLURALS;
         var _loc6_:String = _loc4_ + " " + Social.§-%c§.§4!]§(_loc4_,_loc5_);
         var _loc7_:String = Social.§-%c§.§4!]§(param1.price,§0$N§.CURRENCY_PLURALS);
         param1.name = §0%§.format(§0$N§.BANK_CELL_TEXT,{
            "count":_loc6_,
            "price":param1.price.toString() + " " + _loc7_
         });
         if(!this.§3"<§[param1.price])
         {
            this.§3"<§[param1.price] = " " + _loc7_;
         }
      }
      
      override public function callPayController(param1:§1e§) : void
      {
         if(!this.§&%9§)
         {
            log.info(this + ".callPayController: payment=" + param1);
            this.§&%9§ = true;
            (§8"%§.§[f§ as §8"'§).pay(param1,this.§`!B§);
         }
      }
      
      private function §`!B§(param1:String) : void
      {
         log.info(this + ".onPayOrderCallback: result=" + param1);
         this.§&%9§ = false;
         if(Boolean(§%$&§) && Boolean(this.bankMenu) && this.bankMenu.isVisible())
         {
            §%$&§ = false;
            this.bankMenu.hide();
         }
      }
      
      override public function §3#z§(param1:§%#'§, param2:Function = null) : void
      {
         var tmp:§+#M§ = null;
         var subscription:§%#'§ = param1;
         var callback:Function = param2;
         tmp = this;
         (§8"%§.§[f§ as §8"'§).subscription(subscription,function onSubscriptionOrderCallback(param1:String):void
         {
            §?$6§.§1%&§(tmp + ".onSubscriptionOrderCallback: " + param1);
            Application.instance.§9"L§(".onSubscriptionOrderCallback: result=" + param1);
            log.info(".onSubscriptionOrderCallback: result=" + param1);
            if(callback != null)
            {
               callback(param1);
            }
         });
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
         §[&G§.§3$5§.hide();
         new §,#W§(§0$N§.TITLE_BUY,_loc2_,§,#W§.§6!m§).show();
         Application.userProfile.§2Z§(_loc3_.value,this.moneyType);
         Application.§5!>§.§8$w§();
      }
   }
}

