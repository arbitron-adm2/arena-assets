package §&$Y§
{
   import § #m§.§;#^§;
   import § $q§.§-%f§;
   import § &5§.§=#P§;
   import § K§.§#H§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§+" §;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#W§.§?#]§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §0%[§.§0%§;
   import §0%[§.§^"5§;
   import §1#p§.§2=§;
   import §2!-§.§<%;§;
   import §2!-§.DamageEvent;
   import §3#a§.§-#M§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!K§.§4%E§;
   import §4!K§.§>#_§;
   import §4!K§.§^%A§;
   import §4!x§.§8#u§;
   import §4&F§.*;
   import §4'§.§4$&§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<!W§.§!"+§;
   import §<%E§.§,$2§;
   import §<%k§.*;
   import §=!p§.§%#'§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §=$#§.*;
   import §>%S§.§^!V§;
   import §?$7§.§6%k§;
   import §?$L§.§ "N§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.easing.Circ;
   import com.greensock.plugins.*;
   import config.§#!"§;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§8"'§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §5%]§ implements §#H§
   {
      
      public static const §;#d§:String = "fuzyPanel";
      
      public static const §?$h§:String = "rubyPanel";
      
      protected var §%$&§:Boolean;
      
      protected var log:§&`§ = new §&`§(§5%]§);
      
      protected var subscriptionId:int;
      
      protected var subscriptionInfo:§4$&§;
      
      public function §5%]§()
      {
         super();
      }
      
      public function openBank(param1:String = "", param2:Boolean = false, param3:int = -1) : void
      {
         §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,"Bank in test mode");
      }
      
      protected function §["6§(param1:§1e§, param2:String, param3:String = "") : void
      {
         var _loc4_:String = param1.moneyType == §+$A§.REAL ? §0$N§.RUBY_PRICE : §0$N§.FUZZES_PRICE;
         param1.name = §0%§.format(_loc4_,{
            "count":param1.count + param1.bonus,
            "price":param1.price
         }) + " " + param2;
      }
      
      public function callPayController(param1:§1e§) : void
      {
         (§8"%§.§[f§ as §8"'§).pay(param1,this.§+!A§);
      }
      
      protected function §+!A§(param1:§,$2§) : void
      {
         this.log.info("onPaymentComplete: response=" + param1);
         if(!param1.success)
         {
            §,#W§.§[#r§(§0$N§.TITLE_BUY,§0$N§.ERROR_SOCIAL);
         }
      }
      
      public function §3#z§(param1:§%#'§, param2:Function = null) : void
      {
         (§8"%§.§[f§ as §8"'§).subscription(param1,this.§;%`§);
      }
      
      protected function §;%`§(param1:§,$2§) : void
      {
         this.log.info("onSubscriptionComplete: response=" + param1);
         if(!param1.success)
         {
            §,#W§.§[#r§(§0$N§.TITLE_SUBSCRIPTION,§0$N§.ERROR_SOCIAL);
         }
      }
      
      public function getRealPaymentOptions() : Array
      {
         return null;
      }
      
      public function §^#p§() : §1e§
      {
         return null;
      }
      
      public function §-$0§(param1:int) : void
      {
         this.subscriptionId = param1;
      }
      
      public function §@#i§() : int
      {
         return this.subscriptionId;
      }
      
      public function §4%g§(param1:§4$&§) : void
      {
         this.subscriptionInfo = param1;
      }
      
      public function §]"R§() : §4$&§
      {
         return this.subscriptionInfo;
      }
   }
}

