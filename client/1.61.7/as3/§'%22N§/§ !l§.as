package §'"N§
{
   import §!$D§.§2$^§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §3"@§.§##L§;
   import §4'§.§#"l§;
   import §7$t§.§2"y§;
   import §<%k§.§`!v§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class § !l§ extends EventDispatcher
   {
      
      private var log:§&`§ = new §&`§(§ !l§);
      
      public function § !l§()
      {
         super();
         §%%w§.§##$§(IncomingPayment,this.§6%7§);
      }
      
      private function §6%7§(param1:§9$v§) : void
      {
         var payment:IncomingPayment = null;
         var msg:String = null;
         var rubies:String = null;
         var boosters:Vector.<§2"y§> = null;
         var event:§9$v§ = param1;
         payment = IncomingPayment(event.message);
         this.log.info("onIncomingPayment: " + payment + " type=" + payment.paymentType + " count=" + payment.count + " item=" + payment.item + " note=" + payment.note);
         if(payment.sessionKey != §%%w§.§7F§.§?$X§())
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.ERROR_AT_UPDATE_BALANCE,§,#W§.§0!V§);
            return;
         }
         switch(payment.paymentType)
         {
            case §#"l§.INGAME.value:
               Application.userProfile.§1%'§(payment.count);
               msg = §0%§.format(§0$N§.BANK_INCOME_PAYMENT_COIN,{"count":payment.count});
               break;
            case §#"l§.REAL.value:
               Application.userProfile.§9%D§(payment.count);
               rubies = Social.§-%c§.§4!]§(payment.count,§0$N§.RUBY_PLURALS);
               msg = §0%§.format(§0$N§.BANK_INCOME_PAYMENT_RUBY,{
                  "count":payment.count,
                  "rubies":rubies
               });
               break;
            case §#"l§.CLAN_DONATE.value:
            case §#"l§.WIPE.value:
               break;
            case §#"l§.BUNDLE.value:
               if(§]&C§.§8#l§(int(payment.item)))
               {
                  msg = §0$N§.GRANT_BUNDLE_CONGRATULATION;
                  §8"%§.§8"!§.§'o§(payment.item);
               }
               else if(§=$h§.§`"!§(int(payment.item)))
               {
                  if(Social.settings.§"#k§() && int(payment.item) == 1072)
                  {
                     if(Social.§-%=§.§@#i§())
                     {
                        if(§2$^§.isVipExist())
                        {
                           if(payment.note)
                           {
                              msg = §0$N§.VIP_CONGRATULATION_EXTENSION;
                              boosters = Application.userProfile.§,%o§().§?!M§(§##L§.VIP);
                              if(boosters.length)
                              {
                                 this.log.info("onIncomingPayment: << getTemporalTime " + Application.userProfile.§,%o§().§6# §(boosters[0].getId()));
                                 this.log.info("onIncomingPayment: >> putTemporalItem " + payment.count);
                                 Application.userProfile.§,%o§().§,%T§(boosters[0],payment.count);
                              }
                           }
                        }
                     }
                     else
                     {
                        Social.§-%=§.§-$0§(int(payment.note));
                        if(!§2$^§.isVipExist())
                        {
                           msg = §0$N§.GRANT_VIP_CONGRATULATION;
                        }
                     }
                     if(!§2$^§.isVipExist())
                     {
                        §8"%§.§8"!§.§&""§(int(payment.item));
                     }
                  }
                  else
                  {
                     msg = §2$^§.isVipExist() ? §0$N§.VIP_CONGRATULATION_EXTENSION : §0$N§.GRANT_VIP_CONGRATULATION;
                     §8"%§.§8"!§.§&""§(int(payment.item));
                  }
                  if(!§8"%§.§&S§.§?#k§())
                  {
                     §8"%§.§&S§.§>!!§(true,true);
                  }
               }
         }
         §8"%§.§"#§.§6!D§(§0#2§.§@&6§());
         §8"%§.§"#§.updateChatPanel();
         if(msg)
         {
            if(§8"%§.§?!W§.inBattle)
            {
               §8"%§.§?!W§.§!#S§(msg);
            }
            else
            {
               §1%"§.delay(function():void
               {
                  var msgBox:§,#W§;
                  §@%;§.play(§`!v§.§=#2§);
                  msgBox = new §,#W§(§0$N§.TITLE_SERVER_MSG,msg,§,#W§.§6!m§,function onOkClick():void
                  {
                     Application.§5!>§.§8$w§();
                     dispatchEvent(new Event(Event.COMPLETE));
                  });
                  msgBox.show();
               },this,100);
            }
         }
      }
   }
}

