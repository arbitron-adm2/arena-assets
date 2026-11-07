package §1!#§
{
   import § &5§.§0&$§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §##j§.§#$!§;
   import §##j§.§7,§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&#E§.§4##§;
   import §&#h§.*;
   import §&$Y§.§?&5§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §2"L§.§,'§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$Z§.*;
   import §9%W§.§!7§;
   import §=&6§.§3#B§;
   import §>!_§.§'!&§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   
   public class §&?§ extends §?&5§
   {
      
      public function §&?§()
      {
         super();
         realPriceBtn.§[!u§(this.§@$c§);
         price.setVisible(false);
         §-%V§.x = panel.width / 1.8;
         §`o§.§@"n§(label,§-%V§,5);
         var _loc1_:String = Social.§-%c§.§4!]§(§3#B§.§]!9§.price,§0$N§.CURRENCY_PLURALS);
         §-%V§.text = §3#B§.§]!9§.price.toString() + " " + _loc1_;
      }
      
      public function §@$c§(param1:Event) : void
      {
         §4##§.show(§0$N§.WIPE_PROFILE_TITLE,§0$N§.SURE_QUESTION,§,#W§.§`$x§,this.§0"n§);
         this.hide();
      }
      
      public function §0"n§() : void
      {
         §%%w§.§##$§(WipeProfileResult,this.§=$e§);
         Social.§-%=§.callPayController(§3#B§.§]!9§);
         §&#F§(true);
      }
      
      protected function §=$e§(param1:§9$v§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§,#W§ = null;
         §&#F§(false);
         §%%w§.§-"j§(WipeProfileResult,this.§=$e§);
         var _loc4_:int = WipeProfileResult(param1.message).result;
         switch(_loc4_)
         {
            case ShopResult.SUCCESS:
               §8"%§.§["$§.§6&H§();
               §8"%§.§7#,§.§9&!§();
               _loc2_ = §0$N§.WIPE_PROFILE_SUCCESS;
               _loc3_ = new §,#W§(§0$N§.TITLE_ATTENTION,_loc2_,§,#W§.§0!V§);
               break;
            case ShopResult.ERROR:
               _loc2_ = _loc4_.toString();
               _loc3_ = new §,#W§(§0$N§.TITLE_ERROR,_loc2_,§,#W§.§6!m§);
               break;
            case ShopResult.MIN_REQUIREMENTS_ERROR:
               _loc2_ = §0$N§.ERROR_HACKING_ATTEMPT;
               _loc3_ = new §,#W§(§0$N§.TITLE_ERROR,_loc2_,§,#W§.§6!m§);
               break;
            case ShopResult.NOT_ENOUGH_MONEY:
               _loc2_ = §0$N§.ERROR_NOT_ENOUGH_MONEY;
               _loc3_ = new §,#W§(§0$N§.TITLE_ATTENTION,_loc2_,§,#W§.§6!m§);
               break;
            case ShopResult.CONFIRM_FAILURE:
               _loc2_ = §0$N§.WIPE_PROFILE_ENTER_NOT_SMS_CODE;
               _loc3_ = new §,#W§(§0$N§.TITLE_ATTENTION,_loc2_,§,#W§.§6!m§);
               break;
            default:
               _loc2_ = §0$N§.ERROR_SAVING;
               _loc3_ = new §,#W§(§0$N§.TITLE_ERROR,_loc2_,§,#W§.§6!m§);
         }
         Application.§5!>§.§8$w§();
         if(_loc2_)
         {
            _loc3_.show();
         }
      }
   }
}

