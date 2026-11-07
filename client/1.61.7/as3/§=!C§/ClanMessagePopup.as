package §=!C§
{
   import § "d§.§,!c§;
   import § $q§.*;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#$e§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §,!f§.*;
   import §,#_§.FrameTimer;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§"Z§;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §4!x§.§@& §;
   import §6_§.*;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §]$&§.§2&2§;
   import §^"y§.§]#i§;
   import §^§.*;
   import com.adobe.images.JPGEncoder;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import com.greensock.easing.Back;
   import com.greensock.easing.Linear;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.gui.controls.§`,§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   use namespace gestouch_internal;
   
   public class ClanMessagePopup extends §@& §
   {
      
      private var titleLabel:TextField;
      
      private var description:§`,§;
      
      private var closeBtn:§?%>§;
      
      private var sendBtn:§?%>§;
      
      public function ClanMessagePopup()
      {
         super(§6#A§.§!&6§(§+"'§.§5!<§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.titleLabel = §'%s§("title");
         §&$9§.§>&F§(this.titleLabel,§"-§.§+$m§,§0$N§.MESSAGE_TO_CLAN);
         this.description = new §`,§(§'%s§("description"),getChildByName("scroll") as DisplayObjectContainer);
         this.description.setText(§]#i§.§-%d§() ? §]#i§.§-%d§().text : "");
         this.description.textField.maxChars = §@C§.§<$x§;
         this.description.pageSize = 5;
         this.closeBtn = §!&5§.§7#[§(getChildByName("closeBtn"));
         this.closeBtn.§[!u§(§0!j§);
         this.sendBtn = §!&5§.§7#[§(getChildByName("sendBtn"));
         this.sendBtn.setText(§0$N§.BUTTON_SEND,§"-§.§+$m§);
         this.sendBtn.§[!u§(this.§+§);
      }
      
      override public function activate() : void
      {
         super.activate();
         Application.instance.stage.focus = this.description.textField;
      }
      
      private function §+§(param1:MouseEvent) : void
      {
         §8"%§.§!&I§.common.§4&"§(this.description.getText());
         §0!j§(param1);
      }
   }
}

