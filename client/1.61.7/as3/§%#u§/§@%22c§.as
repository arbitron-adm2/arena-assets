package §%#u§
{
   import §!$Z§.§"$I§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §2#i§.§+%z§;
   import §4!x§.§@& §;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §<%k§.§`!v§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §@"c§ extends §@& §
   {
      
      public function §@"c§()
      {
         super(§6#A§.§!&6§(§+"'§.§`!0§));
      }
      
      public static function §5%#§() : §@& §
      {
         return new §@"c§();
      }
      
      public static function show() : void
      {
         §5%#§().show();
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:Date = null;
         var _loc3_:String = null;
         super.§@"o§(param1);
         _loc2_ = §0#2§.§'#`§(§0#2§.§@&6§());
         _loc3_ = §0#2§.§ R§(int(_loc2_.getMonth()));
         var _loc4_:String = §7&5§.format(§0$N§.§%! §("RANK_SEASON_START_TITLE"),{
            "month":_loc3_,
            "year":_loc2_.fullYear
         });
         §7&5§.§>&<§(§'%s§("title"),_loc4_);
         §7&5§.§>&<§(§'%s§("msg"),§0$N§.§%! §("RANK_IN_NEXT_SEASON_MESSAGE"));
         §7&5§.§?$k§(§'%s§("rank"),String(Application.userProfile.§+X§()));
         §7&5§.§>&<§(§'%s§("msg2"),§0$N§.§%! §("RANK_NEW_SEASON_MESSAGE"));
         §4"0§.§>&F§(§>!-§.simpleButton,§"-§.§+$m§,§0"-§.BUTTON_OK);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§<![§;
      }
   }
}

