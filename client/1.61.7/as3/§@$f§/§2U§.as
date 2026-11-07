package §@$f§
{
   import § !P§.*;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §#k§.§9$v§;
   import §%# §.§##U§;
   import §%E§.§5%C§;
   import §%L§.§%%w§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §1#p§.*;
   import §4!x§.§@& §;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §?#g§.Race;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.events.TextEvent;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.ActivatePromoKey;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §2U§ extends §@& §
   {
      
      private var code:TextField;
      
      public function §2U§()
      {
         super(§6#A§.§!&6§(§+"'§.§%"L§));
         §7&5§.§>&<§(§'%s§("title"),§0$N§.§%! §("PROMO_KEY_TITLE"));
         §7&5§.§?$k§(§'%s§("count"),"50");
         §7&5§.§>&<§(§'%s§("help"),§0$N§.§%! §("PROMO_KEY_HELP"));
         §7&5§.§>&<§(§'%s§("caption"),§0$N§.§%! §("PROMO_KEY_CAPTION"));
         this.code = §'%s§("input");
         this.code.text = "";
         this.code.maxChars = 14;
         this.code.addEventListener(Event.CHANGE,this.§,$3§);
         this.code.addEventListener(TextEvent.TEXT_INPUT,this.§,$3§);
         §>!-§.setDisabled(true);
         §>!-§.setText(§0$N§.§%! §("ACTIVATE_LABEL"),§"-§.§+$m§);
         var _loc1_:§?%>§ = §!&5§.§7#[§(getChildByName("fight"));
         _loc1_.§[!u§(this.§<"§);
         PromoRaidWindow.§5$2§(_loc1_);
      }
      
      private function §<"§(param1:Event) : void
      {
         §5%C§.§?&F§();
      }
      
      private function §,$3§(param1:Event) : void
      {
         var _loc2_:Boolean = Boolean(this.code.text) && this.code.text.length == 14;
         §>!-§.setDisabled(!_loc2_);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.code.stage.focus = this.code;
      }
      
      override protected function okAction() : void
      {
         var _loc1_:§,#W§ = null;
         super.okAction();
         if(Boolean(this.code.text) && this.code.text.length == 14)
         {
            §&#F§(true);
            §%%w§.§##$§(ActivatePromoKeyError,this.onError);
            §%%w§.§##$§(AwardGranted,this.§5%V§);
            §%%w§.§,U§(new ActivatePromoKey(this.code.text));
         }
         else
         {
            _loc1_ = new §,#W§(§0$N§.TITLE_ERROR,§0$N§.§%! §("ENTER_PROMO_KEY_MESSAGE"),§,#W§.§6!m§,this.§5"n§);
            _loc1_.show();
         }
      }
      
      private function §5"n§() : void
      {
         this.show();
      }
      
      private function §5%V§(param1:§9$v§ = null) : void
      {
         var _loc3_:§1%z§ = null;
         var _loc4_:§%&G§ = null;
         var _loc5_:Vector.<§6#v§> = null;
         var _loc6_:Array = null;
         var _loc7_:§6#v§ = null;
         var _loc8_:§]+§ = null;
         this.§?& §();
         var _loc2_:AwardGranted = AwardGranted(param1.message);
         if(_loc2_.awardType == §8"_§.ACTION.getId())
         {
            _loc3_ = §1%z§.§!!Z§(_loc2_.awards);
            _loc4_ = _loc3_.§;$F§()[0];
            _loc5_ = _loc3_.§1$4§();
            Application.userProfile.§&$g§(Race.§3!4§(_loc4_.getId()));
            §8"%§.§@1§.increase([§!$L§.§%%3§],[1]);
            _loc6_ = [];
            for each(_loc7_ in _loc5_)
            {
               _loc6_.push(_loc7_.getId());
            }
            §6Y§.§;!B§(_loc6_,Application.userProfile);
            §8"%§.§@1§.increase([§!$L§.§4#J§],[_loc6_.length]);
            Application.§5!>§.§^P§.§6X§();
            Application.§5!>§.§8$w§();
            _loc8_ = new §]+§();
            _loc8_.realMoney = _loc3_.§@$D§();
            _loc8_.§,k§ = §0$N§.TITLE_CONGRATULATE;
            _loc8_.§8%T§ = §0$N§.§%! §("GRANT_ALIEN_MESSAGE");
            §##U§.§"X§(_loc8_,null,false).show();
         }
      }
      
      private function onError(param1:§9$v§) : void
      {
         var _loc2_:ActivatePromoKeyError = null;
         var _loc3_:String = null;
         this.§?& §();
         _loc2_ = ActivatePromoKeyError(param1.message);
         _loc3_ = §0$N§.§%! §("ERROR_PROMO_KEY_MESSAGE") + "\n" + _loc2_.key;
         var _loc4_:§,#W§ = new §,#W§(§0$N§.TITLE_ERROR,_loc3_,§,#W§.§6!m§);
         _loc4_.show();
      }
      
      private function §?& §() : void
      {
         §%%w§.§-"j§(AwardGranted,this.§5%V§);
         §%%w§.§-"j§(ActivatePromoKeyError,this.onError);
         §&#F§(false);
         if(isShown())
         {
            hide();
         }
      }
   }
}

