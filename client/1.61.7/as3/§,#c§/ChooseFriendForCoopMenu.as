package §,#c§
{
   import § !8§.§`!d§;
   import § $q§.§-%f§;
   import § $q§.§1$Y§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"%H§.§1! §;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&"c§.§5$n§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+&<§.§@$L§;
   import §+&<§.§^@§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §3#T§.AtomBomb;
   import §3#a§.§-#M§;
   import §4%_§.§3§;
   import §4'§.§`"q§;
   import §5#`§.§7%g§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<!^§.§<b§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §`"x§.§[a§;
   import §`%&§.§5$1§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.Sound;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ItemGranted;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.VipSubscriptionResponse;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class ChooseFriendForCoopMenu extends §1$Y§
   {
      
      protected var §=$T§:Function;
      
      protected var §,>§:Function;
      
      protected var §'!l§:TextField;
      
      protected var searchBtn:§?%>§;
      
      protected var refreshBtn:§?%>§;
      
      protected var §`!c§:Boolean;
      
      public function ChooseFriendForCoopMenu(param1:Function, param2:Function)
      {
         super(§6#A§.§!&6§(§+"'§.§ !Z§));
         this.§'!l§ = §'%s§("msg");
         this.§'!l§.mouseEnabled = false;
         this.§=$T§ = param1;
         this.§,>§ = param2;
         §&$9§.§>&F§(§'%s§("title"),§"-§.§+$m§,§0$N§.CHOOSE_FRIEND_FOR_BOSS_TITLE);
         this.searchBtn = §!&5§.§7#[§(getChildByName("searchBtn"));
         this.searchBtn.setText(§0$N§.SEARCH_BTN,§"-§.§+$m§);
         this.searchBtn.§[!u§(this.§]%k§);
         this.refreshBtn = §!&5§.§7#[§(getChildByName("refreshBtn"));
         this.refreshBtn.§[!u§(this.§@%Y§);
         §&$9§.§>&F§(§'%s§("friends"),§"-§.§+$m§,§0$N§.FRIENDS_TITLE);
         §&$9§.§>&F§(§'%s§("randomPartner"),§"-§.§+$m§,§0$N§.RANDOM_PARTNER);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         §>!-§.setText(§0$N§.CHOOSE_FRIEND_BTN,§"-§.§+$m§);
      }
      
      protected function §@%Y§(param1:Event) : void
      {
      }
      
      protected function §]%k§(param1:Event) : void
      {
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=#h§ = §0$N§.CHOOSE_FRIEND_BTN;
         §7%c§ = true;
         §,!n§ = false;
      }
      
      override public function §%$S§(param1:int) : void
      {
         this.§`!c§ = false;
         super.§%$S§(param1);
      }
      
      override public function update() : void
      {
         super.update();
         this.§8!%§();
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         loading.x = 91;
         if(!param1)
         {
            this.§8!%§();
         }
      }
      
      protected function §8!%§() : void
      {
         §>!-§.setDisabled(!this.§`!c§ || getSelected() == null);
      }
      
      override protected function §,B§(param1:Event) : void
      {
         super.§,B§(param1);
         this.§8!%§();
      }
      
      override protected function §2%_§(param1:Event) : void
      {
         super.§2%_§(param1);
         this.§8!%§();
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §-%f§(param1 as MovieClip,null,true);
      }
      
      override protected function okAction() : void
      {
         var _loc1_:UserProfile = null;
         if(getSelected())
         {
            _loc1_ = getSelected() as UserProfile;
            if(_loc1_)
            {
               this.§=$T§(_loc1_);
            }
         }
      }
   }
}

