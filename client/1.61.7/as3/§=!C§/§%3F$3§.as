package §=!C§
{
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§<$&§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §0"L§.§+# §;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4'§.§#"l§;
   import §4'§.§4$&§;
   import §65§.§`"C§;
   import §7"Q§.§0$L§;
   import §7$t§.§2& §;
   import §8#<§.§!#^§;
   import §8#a§.ShopMenu;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §=!p§.§1e§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.CloseExitClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §?$3§ extends §`&-§
   {
      
      private var msg:ClanChatMessageTO;
      
      private var text:TextField;
      
      public function §?$3§(param1:ClanChatMessageTO)
      {
         this.msg = param1;
         super(§6#A§.§!&6§(§+"'§.§1"8§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.text = getChildByName("text") as TextField;
         this.text.htmlText = §<$&§.§!%a§(this.msg);
         this.text.height = this.text.textHeight + 10;
      }
   }
}

