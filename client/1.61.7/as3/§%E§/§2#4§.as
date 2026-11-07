package §%E§
{
   import §!$d§.§<$c§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §&&6§.§8"O§;
   import §&&6§.§>V§;
   import §'!Z§.§1"-§;
   import §+#U§.§'#w§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §-!U§.*;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2#i§.§+%z§;
   import §3%J§.SpecialDealWindow;
   import §4!!§.§76§;
   import §4!x§.§@& §;
   import §4$b§.§2m§;
   import §4&F§.*;
   import §6%2§.§'"Y§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §8#a§.§>!o§;
   import §9%W§.§&!P§;
   import §<$q§.§?!d§;
   import §<%k§.*;
   import §=#g§.§%!x§;
   import §=1§.*;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §@!N§.§2"e§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §]$v§.§0"[§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§5$t§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.CloseExitClanResponse;
   import ru.pragmatix.wormix.messages.client.ExecuteSpecialDeal;
   import ru.pragmatix.wormix.messages.client.GetSpecialDeal;
   import ru.pragmatix.wormix.messages.server.ExecuteSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.GetSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §2#4§
   {
      
      private static var §'&§:§@& §;
      
      private static var §0&E§:Boolean;
      
      private static var §2_§:int;
      
      private static var §6!s§:int;
      
      public static const LOG:§&`§ = new §&`§(§2#4§);
      
      public static const §7"&§:Boolean = true;
      
      public static const §[#+§:int = 4;
      
      public function §2#4§()
      {
         super();
      }
      
      public static function §]!w§() : void
      {
         if(!§7"&§)
         {
            LOG.info(" --> NO ENABLED");
            return;
         }
         if(!§0&E§)
         {
            §%%w§.§##$§(GetSpecialDealResponse,§%%Y§);
            §%%w§.§,U§(new GetSpecialDeal());
         }
      }
      
      private static function §%%Y§(param1:§9$v§) : void
      {
         §%%w§.§-"j§(GetSpecialDealResponse,§%%Y§);
         var _loc2_:GetSpecialDealResponse = GetSpecialDealResponse(param1.message);
         LOG.info(" --> OFFER GetSpecialDeal RESPONSE " + (_loc2_ ? _loc2_.toString() : " "));
         if(_loc2_)
         {
            §2_§ = _loc2_.weaponId;
            §6!s§ = _loc2_.rubyPrice;
            if(!§0&E§ && §2_§ > 0 && §6!s§ > 0 && !§8"%§.§?!W§.inBattle && Application.userProfile.getLevel() >= §[#+§)
            {
               §0&E§ = true;
               §`"J§().show();
               Application.setUserBusy(true);
            }
         }
      }
      
      public static function §4%+§(param1:Event = null) : void
      {
         if(Application.userProfile.§@$D§() >= §6!s§)
         {
            §8!i§();
         }
      }
      
      public static function §@#g§(param1:Event = null) : void
      {
         if(Application.userProfile.§@$D§() >= §6!s§)
         {
            §8!i§();
         }
         else
         {
            §<"f§();
         }
      }
      
      public static function §!!R§(param1:Event = null) : void
      {
         §""n§.single(§8"%§.§6%1§,Event.COMPLETE,§4%+§);
      }
      
      public static function §""'§(param1:Event = null) : void
      {
         §8"%§.§6%1§.removeEventListener(Event.COMPLETE,§4%+§);
         Application.setUserBusy(false);
      }
      
      public static function §<"f§(param1:Event = null) : void
      {
         var _loc2_:Array = Social.§-%=§.getRealPaymentOptions();
         var _loc3_:int = int(Application.userProfile.§@$D§());
         var _loc4_:int = -1;
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_.length)
         {
            if(_loc2_[_loc5_].count + _loc2_[_loc5_].bonus + _loc3_ >= §6!s§)
            {
               _loc4_ = _loc5_;
               break;
            }
            _loc5_++;
         }
         var _loc6_:§>!o§ = new §>!o§(true,_loc4_);
         _loc6_.setOkFunction(§!!R§);
         _loc6_.setCancelFunction(§!!R§);
         _loc6_.show();
      }
      
      private static function §8!i§() : void
      {
         §[&G§.§8r§.show(false);
         var _loc1_:ExecuteSpecialDeal = new ExecuteSpecialDeal();
         _loc1_.itemId = §2_§;
         _loc1_.rubyPrice = §6!s§;
         §%%w§.§##$§(ExecuteSpecialDealResponse,§5&A§);
         §%%w§.§,U§(_loc1_);
      }
      
      private static function §5&A§(param1:§9$v§) : void
      {
         var _loc3_:UserProfile = null;
         var _loc4_:§;#_§ = null;
         §%%w§.§-"j§(GetSpecialDealResponse,§5&A§);
         Application.setUserBusy(false);
         §[&G§.§8r§.hide();
         §'&§.hide();
         var _loc2_:ExecuteSpecialDealResponse = ExecuteSpecialDealResponse(param1.message);
         LOG.info(" --> OFFER ExecuteSpecialDeal RESPONSE " + (_loc2_ ? _loc2_.toString() : " "));
         if(_loc2_)
         {
            switch(_loc2_.result)
            {
               case ShopResult.SUCCESS:
                  _loc3_ = Application.userProfile;
                  _loc3_.§2Z§(-§6!s§,§+$A§.REAL);
                  Application.§5!>§.§8$w§();
                  if(§+%z§.§2$_§(_loc2_.itemId))
                  {
                     _loc4_ = §<$c§.§ !=§(_loc2_.itemId);
                     _loc3_.§3%^§().§0%8§(_loc4_,-1,_loc4_.§]!C§());
                     §@$l§.§0$=§([_loc4_.getId()]);
                     §7"J§();
                  }
                  else
                  {
                     §#&>§.§4%5§(_loc2_.itemId);
                     §7"J§(false);
                  }
                  break;
               case ShopResult.ERROR:
                  new §,#W§(§0$N§.TITLE_ERROR,§0$N§.ERROR_SERVER,§,#W§.§6!m§).show();
                  break;
               case ShopResult.NOT_ENOUGH_MONEY:
            }
         }
      }
      
      public static function §7"J§(param1:Boolean = true) : void
      {
         var _loc2_:§,#W§ = new §,#W§(§0$N§.§%! §("OFFER_SALE_COMPLETE"),param1 ? §0$N§.§%! §("OFFER_SALE_USE_WEAPON") : §0$N§.§%! §("OFFER_SALE_USE_EQUIP"),§,#W§.§7"d§,§[$b§);
         _loc2_.§##b§(§0$N§.§%! §("BUTTON_ARENA") + "!");
         _loc2_.show();
      }
      
      public static function §[$b§() : void
      {
         §8"%§.§%w§.§^G§();
      }
      
      public static function §`"J§() : §@& §
      {
         if(!§'&§)
         {
            §'&§ = new SpecialDealWindow();
            SpecialDealWindow(§'&§).setOkFunction(§@#g§);
            SpecialDealWindow(§'&§).setCancelFunction(§""'§);
         }
         return §'&§;
      }
      
      public static function get isShown() : Boolean
      {
         return §0&E§;
      }
      
      public static function get §0&6§() : int
      {
         return §2_§;
      }
      
      public static function get §9"f§() : int
      {
         return §6!s§;
      }
   }
}

