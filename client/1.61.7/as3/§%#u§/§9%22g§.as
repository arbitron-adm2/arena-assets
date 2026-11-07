package §%#u§
{
   import § %f§.§##d§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §#k§.§9$v§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §2#V§.§-#U§;
   import §4!x§.§@& §;
   import §6",§.§[%w§;
   import §<$q§.§?!d§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9"g§ extends §@& §
   {
      
      public function §9"g§()
      {
         super(§6#A§.§!&6§(§+"'§.§6!0§));
      }
      
      public static function §5%#§() : §@& §
      {
         return new §9"g§();
      }
      
      public static function show() : void
      {
         §5%#§().show();
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:uint = 0;
         super.§@"o§(param1);
         §7&5§.§>&<§(§'%s§("title"),§0$N§.§%! §("RATING_LEVEL"));
         §'%s§("msg").htmlText = §0$N§.§%! §("RATING_TO_RATE_LEVELS_TEXT");
         _loc2_ = Application.userProfile.getRating();
         var _loc3_:§1""§ = §1""§.§=$S§(_loc2_);
         §7&5§.§?$k§(§'%s§("level"),_loc3_.§9#V§.toString());
         §7&5§.§?$k§(§'%s§("current"),_loc3_.§9#V§.toString());
         §7&5§.§?$k§(§'%s§("next"),_loc3_.nextLevel.toString());
         getChildByName("bar.fill").width = getChildByName("bar").width * (_loc3_.§##'§ / (_loc3_.§-!$§ || _loc3_.§##'§));
         §'%s§("values").htmlText = §7&5§.format(§0$N§.§%! §("RATING_TO_NEXT_LEVEL_VALUES"),{
            "current":_loc2_,
            "next":_loc3_.§1#K§
         });
         §7&5§.§>&<§(§'%s§("msg2"),§0$N§.§%! §("RATE_LEVELS_PATH_TEXT"));
         §'%s§("msg3").htmlText = §0$N§.§%! §("RATING_TO_RATE_LEVELS_NOTE");
         §4"0§.§>&F§(§>!-§.simpleButton,§"-§.§+$m§,§0"-§.BUTTON_OK);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§<![§;
      }
   }
}

