package §&$Y§
{
   import § #k§.*;
   import § &5§.§%$O§;
   import § L§.§`T§;
   import §!$D§.*;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#%!§.§ §;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0!§.§9"u§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §4%_§.§3§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$1§.§3&G§;
   import §7$t§.§2"y§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §;!J§.*;
   import §<$2§.§##<§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §?!E§.*;
   import §?"[§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!W§.§8!S§;
   import §@!i§.§"-§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §^"y§.§]#i§;
   import §`#x§.*;
   import §`v§.§2&H§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import org.gestouch.core.GestureState;
   import org.gestouch.events.GestureEvent;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §?&5§ extends §@& § implements §^c§
   {
      
      protected var price:§8!S§;
      
      protected var §-%V§:TextField;
      
      protected var realPriceBtn:§?%>§;
      
      protected var msg:TextField;
      
      protected var label:TextField;
      
      protected var §+! §:TextFormat = new TextFormat();
      
      private var §!#R§:Vector.<MovieClip>;
      
      public function §?&5§()
      {
         var _loc4_:MovieClip = null;
         super(§6#A§.§!&6§(§+"'§.§^&F§));
         §&$9§.§>&F§(§]"a§,§"-§.§+$m§,§0$N§.TITLE_ATTENTION);
         §<#§("priceLabel",§0$N§.PRICE_LABEL);
         this.msg = §'%s§("msg");
         this.msg.autoSize = TextFieldAutoSize.CENTER;
         §&$9§.§>&F§(this.msg,§"-§.§+$m§,§0$N§.WIPE_PROFILE_MSG);
         this.realPriceBtn = §!&5§.§7#[§(getChildByName("buyRealBtn"));
         this.realPriceBtn.setText(§0$N§.BUTTON_NEW_PROFILE,§"-§.§+$m§);
         this.label = §'%s§("priceLabel");
         this.label.autoSize = TextFieldAutoSize.LEFT;
         this.price = new §8!S§(getChildByName("price") as MovieClip);
         this.§-%V§ = §'%s§("priceDraugiem");
         this.§-%V§.autoSize = TextFieldAutoSize.LEFT;
         §!S§.setText(§0$N§.BUTTON_CANCEL,§"-§.§+$m§);
         this.§!#R§ = new <MovieClip>[§'$a§("anim")];
         var _loc1_:MovieClip = §'$a§("anim.body.fire");
         var _loc2_:int = 0;
         var _loc3_:int = _loc1_.numChildren;
         while(_loc2_ < _loc3_)
         {
            _loc4_ = _loc1_.getChildAt(_loc2_) as MovieClip;
            this.§!#R§[this.§!#R§.length] = _loc4_;
            _loc2_++;
         }
      }
      
      protected function §1#"§() : void
      {
         var _loc1_:URLRequest = new URLRequest(Social.settings.§!"?§());
         navigateToURL(_loc1_,"_blank");
         this.hide();
      }
      
      override protected function §%&9§() : void
      {
         §<"b§ = false;
         super.§%&9§();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         this.price.setVisible(false);
         this.label.visible = false;
         super.show();
         this.playAnimations();
      }
      
      override public function hide() : void
      {
         this.stopAnimations();
         super.hide();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.price.destroy();
         this.realPriceBtn.destroy();
      }
      
      public function playAnimations() : void
      {
         var _loc1_:MovieClip = null;
         if(isShown() && Boolean(this.§!#R§))
         {
            for each(_loc1_ in this.§!#R§)
            {
               _loc1_.play();
            }
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§!#R§)
         {
            for each(_loc1_ in this.§!#R§)
            {
               _loc1_.stop();
            }
         }
      }
   }
}

