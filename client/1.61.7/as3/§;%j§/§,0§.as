package §;%j§
{
   import §!$Z§.§"$I§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%&6§.§0%2§;
   import §%L§.§%%w§;
   import §&#E§.§4##§;
   import §&$Y§.§?&5§;
   import §7"Q§.§0$L§;
   import §?"[§.§6%X§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`%&§.§3!D§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.treasury.ChangeClanMedalPriceResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.social.Social;
   
   public class §,0§ extends §?&5§
   {
      
      public function §,0§()
      {
         super();
         realPriceBtn.§[!u§(this.§@$c§);
         price.setVisible(false);
         §-%V§.x = panel.width / 1.8;
         §`o§.§@"n§(label,§-%V§,5);
         var _loc1_:String = Social.§-%c§.§4!]§(§6%X§.§"#m§.price,§0$N§.CURRENCY_PLURALS);
         §-%V§.text = §6%X§.§"#m§.price.toString() + " " + _loc1_;
      }
      
      public function §@$c§(param1:Event) : void
      {
         §4##§.show(§0$N§.WIPE_PROFILE_TITLE,§0$N§.SURE_QUESTION,§,#W§.§`$x§,this.§0"n§);
         this.hide();
      }
      
      public function §0"n§() : void
      {
         §%%w§.§##$§(WipeProfileResult,this.§=$e§);
         Social.§-%=§.callPayController(Social.§-%=§.§^#p§());
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

