package §'&"§
{
   import §!$Z§.§"$I§;
   import §"$+§.§@C§;
   import §#",§.ChooseFriendMenu;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §&#W§.§4#T§;
   import §'$Z§.*;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §3"_§.*;
   import §7"Q§.§"&=§;
   import §7$t§.§^%%§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@$§.§;F§;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§,%§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.filters.BlurFilter;
   import flash.geom.Point;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §=!x§ extends §"&=§
   {
      
      public function §=!x§(param1:DisplayObjectContainer = null)
      {
         super(param1);
      }
      
      private static function §"y§(param1:Event) : void
      {
         var _loc2_:ChooseFriendMenu = new ChooseFriendMenu(§@Y§,§46§,§0$N§.CHOOOSE_FRIEND_BTN_NAME);
         _loc2_.show();
      }
      
      private static function §@Y§(param1:UserProfile) : void
      {
         §8"%§.§?!W§.§?%U§(param1);
      }
      
      private static function §46§(param1:Event = null) : void
      {
         var _loc2_:UserProfile = Application.userProfile.§ "P§();
         _loc2_.§;"!§(Application.userProfile.§"]§());
         _loc2_.setIds(Application.userProfile.getId(),Application.userProfile.§"%D§());
         _loc2_.§9]§(Application.userProfile.§3%^§());
         §8"%§.§?!W§.§?%U§(_loc2_);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§>$;§();
         this.§["A§();
         this.§0!@§();
         §00§(null);
      }
      
      private function §>$;§() : void
      {
         var _loc1_:TextField = §'%s§("title");
         _loc1_.text = §0$N§.HOT_SEAT_CARD_TITLE;
      }
      
      private function §["A§() : void
      {
         var _loc1_:TextField = §'%s§("description");
         _loc1_.text = §0$N§.HOT_SEAT_CARD_DESC;
      }
      
      private function §0!@§() : void
      {
         var _loc1_:§?%>§ = §!&5§.§7#[§(getChildByName("chooseFriendBtn"));
         _loc1_.setText(§0$N§.CHOOOSE_FRIEND_BTN_NAME,§"-§.§+$m§);
         _loc1_.§[!u§(§"y§);
      }
   }
}

