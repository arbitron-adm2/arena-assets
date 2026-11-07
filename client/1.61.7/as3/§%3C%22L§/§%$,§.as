package §<"L§
{
   import §!$Z§.§"$I§;
   import §"$+§.§@C§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%&6§.§0%2§;
   import §&!?§.§!b§;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §1#p§.§"Z§;
   import §2!-§.HpChangeEvent;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§3!D§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.treasury.CashMedalsClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.treasury.ChangeClanMedalPriceRequest;
   import ru.pragmatix.wormix.messages.clans.request.treasury.DonateClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.treasury.ChangeClanMedalPriceResponse;
   import ru.pragmatix.wormix.messages.clans.response.treasury.DonateClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §%$,§
   {
      
      private var mainController:§##-§;
      
      public function §%$,§(param1:§##-§)
      {
         super();
         this.mainController = param1;
      }
      
      public function §%%j§(param1:int, param2:Function) : void
      {
         var _loc3_:Function = §1%"§.§]$<§(this.§3"^§,this,[param1],true);
         var _loc4_:§`"q§ = §@C§.§["_§(param1);
         var _loc5_:String = Social.§-%c§.§4!]§(param1,§0$N§.RUBY_PLURALS);
         _loc4_.message = §0%§.format(_loc4_.message,{"rubies":_loc5_});
         this.mainController.§=$t§(new DonateClanRequest(param1),DonateClanResponse,_loc3_,param2,true,_loc4_);
      }
      
      private function §3"^§(param1:Object, param2:Function, param3:int) : void
      {
         var _loc5_:ClanMemberTO = null;
         var _loc4_:DonateClanResponse = DonateClanResponse(param1);
         if(_loc4_.serviceResult == ClanServiceResult.OK.code)
         {
            §]#i§.userClan.treasury += param3;
            _loc5_ = §=%_§.§7&3§(Application.userProfile,§]#i§.userClan);
            _loc5_.donation += param3;
            _loc5_.donationCurrSeason += param3;
            Application.userProfile.§9%D§(-param3);
            Application.§5!>§.§8$w§();
            §@%;§.play(§`!v§.§=#2§);
            param2();
         }
         else if(_loc4_.serviceResult == ClanServiceResult.ERR_INVALID_STATE.code)
         {
            §,#W§.§'!+§(§0$N§.TITLE_ERROR,§0$N§.§%! §("ERR_DONATE_REPEAT"),§,#W§.§6!m§).show();
            §@%;§.play(§`!v§.§2$e§);
         }
      }
      
      public function §5"2§(param1:int, param2:Function) : void
      {
         var _loc3_:Function = §1%"§.§]$<§(this.§-%>§,this,[param1],true);
         this.mainController.§=$t§(new CashMedalsClanRequest(param1),CashMedalsClanResponse,_loc3_,param2,true);
      }
      
      private function §-%>§(param1:Object, param2:Function, param3:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:ClanMemberTO = null;
         var _loc4_:CashMedalsClanResponse = CashMedalsClanResponse(param1);
         if(_loc4_.serviceResult == ClanServiceResult.OK.code)
         {
            _loc5_ = param3 * §]#i§.userClan.medalPrice;
            §]#i§.userClan.cashedMedals += param3;
            §]#i§.userClan.treasury -= _loc5_;
            _loc6_ = §=%_§.§7&3§(Application.userProfile,§]#i§.userClan);
            _loc6_.cashedMedals += param3;
            Application.userProfile.§9%D§(_loc5_);
            Application.§5!>§.§8$w§();
            §@%;§.play(§`!v§.§=#2§);
            param2();
            Social.§!g§.§,$=§();
         }
      }
      
      public function §3$r§(param1:int, param2:Function) : void
      {
         var _loc3_:Function = §1%"§.§]$<§(this.§ !p§,this,[param1],true);
         this.mainController.§=$t§(new ChangeClanMedalPriceRequest(param1),ChangeClanMedalPriceResponse,_loc3_,param2,true,null);
      }
      
      private function § !p§(param1:Object, param2:Function, param3:int) : void
      {
         var _loc4_:ChangeClanMedalPriceResponse = ChangeClanMedalPriceResponse(param1);
         if(_loc4_.serviceResult == ClanServiceResult.OK.code)
         {
            §]#i§.userClan.medalPrice = param3;
            §"$I§.getInstance().§0%+§.§7$7§();
            param2();
         }
      }
   }
}

