package §9"^§
{
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§6$3§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&§.§<!U§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§+!%§;
   import §4'§.§^"p§;
   import §6%2§.§'"Y§;
   import §7"Q§.*;
   import §;!Z§.*;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §=&!§.§<$!§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §^#[§.§&$2§;
   import com.greensock.loading.LoaderStatus;
   import config.§28§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.client.GetMoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §,%i§ extends §<!U§
   {
      
      public function §,%i§()
      {
         super();
         §#7§(§0$N§.TITLE_ATTENTION);
         §`"R§("message",§0$N§.RESET_PARAMS_DESC);
         §8&;§(§5&4§.§%"#§(),false);
      }
      
      override protected function §%&9§() : void
      {
         §7"x§ = §0$N§.BUTTON_RESET;
         super.§%&9§();
         §<"b§ = false;
      }
      
      override protected function buy(param1:§+$A§) : void
      {
         §&#F§(true);
         §8"%§.§&"n§.§7"T§(param1,this.§,e§);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         var msg:String = null;
         var msgBox:§,#W§ = null;
         var showModal:Boolean = param1;
         if(Application.userProfile.getLevel() < §5&4§.§>#=§)
         {
            msg = §0%§.format(§0$N§.§%! §("RESET_FREE_MESSAGE"),{"level":§5&4§.§>#=§});
         }
         else if(§2$^§.isVipExist())
         {
            if(!§8"%§.§&S§.§?#k§())
            {
               this.buy(§+$A§.INGAME);
               return;
            }
            msg = §0$N§.§%! §("VIP_FREE_RESET_PARAMS");
         }
         if(msg)
         {
            msgBox = new §,#W§(§0$N§.TITLE_ATTENTION,msg,§,#W§.§6!m§,function():void
            {
               buy(§+$A§.INGAME);
            });
            msgBox.show();
         }
         else
         {
            super.show(showModal);
            setVisible(true);
         }
      }
      
      protected function §,e§(param1:Boolean) : void
      {
         §&#F§(false);
         setVisible(false);
         if(param1)
         {
            Application.userProfile.stats.§+#+§.value = 0;
            Application.userProfile.stats.§'$Q§.value = 0;
            Application.§5!>§.§8$w§();
            dispatchEvent(new §+!%§(§+!%§.§3!6§));
         }
         hide();
      }
   }
}

