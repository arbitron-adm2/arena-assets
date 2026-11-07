package §@"x§
{
   import § &5§.§0&$§;
   import §!!i§.§@&&§;
   import §!#g§.*;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%$!§.§9$p§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&#E§.§;"v§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2#H§.§1%I§;
   import §2B§.§8"n§;
   import §3#a§.§-#M§;
   import §3#a§.§[&A§;
   import §4$b§.*;
   import §5!b§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§=?§;
   import §9%W§.§`"y§;
   import §9z§.§7§;
   import §;!Z§.§5"d§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=$#§.§1!$§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$L§.§ "N§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!W§.§&%e§;
   import §@!W§.§,#J§;
   import §@!W§.§]$i§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§'#E§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import §`#x§.§"$r§;
   import com.adobe.images.JPGEncoder;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class CommonSettingsMenu extends §@%z§
   {
      
      private static var instance:CommonSettingsMenu;
      
      private static const §-$#§:String = "autoselect";
      
      private static const §1V§:String = "autowear";
      
      private static const §`#n§:String = "vipNotes";
      
      private static const §,!N§:String = "shareDialog";
      
      private static const §+$ §:String = "soundImportant";
      
      private static const §6$7§:String = "sound";
      
      private static const MUSIC:String = "music";
      
      private static const §;"8§:String = "speech";
      
      private var §'#d§:§2#E§;
      
      private var §3" §:§3"6§;
      
      private var § !A§:§6"%§;
      
      private var §0%!§:§6"%§;
      
      private var vipNotes:§6"%§;
      
      private var shareDialog:§6"%§;
      
      private var §5!s§:§7#0§;
      
      private var §4$u§:Boolean;
      
      private var §0%k§:Boolean;
      
      private var soundImportant:§9%A§;
      
      private var sound:§&%e§;
      
      private var music:§,#J§;
      
      private var speech:§]$i§;
      
      private var battleBtn:§?%>§;
      
      private var §9!%§:Sprite;
      
      private var §[>§:Sprite;
      
      public function CommonSettingsMenu()
      {
         super(§+"'§.§^p§);
         §#7§(§0$N§.BATTLE_SETTINGS_MENU_TITLE);
         §7&5§.§>&<§(§'%s§("volumeTitle"),§0$N§.VOLUME_TITLE);
         §7&5§.§>&<§(§'%s§("otherTitle"),§0$N§.OTHER_TITLE);
         this.§9!%§ = §+$6§(this,"volumeTitle",this.§4$Q§);
         this.§[>§ = §+$6§(this,"otherTitle",this.§ $v§);
         §3#1§("autoselect.label",§0$N§.SETTING_AUTOSELECT_LAYER_TITLE);
         §3#1§("autowear.label",§0$N§.SETTING_AUTOWEAR_EQUIP_TITLE);
         §3#1§("vipNotes.label",§0$N§.SETTING_VIP_NOTES_TITLE);
         §3#1§("shareDialog.label",§0$N§.SETTING_SHARE_DIALOG_TITLE);
         this.§'#d§ = new §2#E§(§#!`§(),this.§""7§);
         this.§3" § = new §3"6§(container["qualityControlMC"],this.§2%c§,this.§>$#§);
         this.soundImportant = new §9%A§(§'$a§("soundImportant"));
         this.soundImportant.getContainer().addEventListener(MouseEvent.CLICK,this.§<c§);
         this.soundImportant.setQtip(§0$N§.SOUND_IMPORTANT_QTIP);
         this.sound = new §&%e§(§'$a§("sound"));
         this.sound.getContainer().addEventListener(MouseEvent.CLICK,this.§<c§);
         this.sound.setQtip(§0$N§.SOUND_QTIP);
         this.music = new §,#J§(§'$a§("music"));
         this.music.getContainer().addEventListener(MouseEvent.CLICK,this.§<c§);
         this.music.setQtip(§0$N§.MUSIC_QTIP);
         this.speech = new §]$i§(§'$a§("speech"));
         this.speech.getContainer().addEventListener(MouseEvent.CLICK,this.§<c§);
         this.speech.setQtip(§0$N§.SPEECH_QTIP);
         this.§5!s§ = new §7#0§(§'$a§("volumeSlider"));
         this.§5!s§.setQtip(§0$N§.VOLUME_QTIP);
         this.§ !A§ = new §6"%§(getChildByName("autoselect.checkBox") as SimpleButton);
         this.§0%!§ = new §6"%§(getChildByName("autowear.checkBox") as SimpleButton);
         this.vipNotes = new §6"%§(getChildByName("vipNotes.checkBox") as SimpleButton);
         this.shareDialog = new §6"%§(getChildByName("shareDialog.checkBox") as SimpleButton);
         this.battleBtn = §!&5§.§7#[§(getChildByName("battleBtn"));
         this.battleBtn.setText(§0$N§.BATTLE_OPTIONS_TITLE,§"-§.§+$m§);
         this.battleBtn.§[!u§(this.§8"E§);
      }
      
      public static function getInstance() : CommonSettingsMenu
      {
         if(!instance)
         {
            instance = new CommonSettingsMenu();
         }
         return instance;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         this.§'#d§.update();
         this.§3" §.update();
         this.§0%k§ = §@%;§.§6%A§();
         this.§4$u§ = §@%;§.§4$u§();
         this.§<c§();
         this.§ !A§.setPressed(!§8"%§.§&S§.§%$2§());
         this.§0%!§.setPressed(!§8"%§.§&S§.§+$@§());
         this.vipNotes.setPressed(!§8"%§.§&S§.§?#k§());
         this.shareDialog.setPressed(!§8"%§.§&S§.§2%C§());
         this.§ !A§.addEventListener(§8"@§.EVENT_TOGGLE,this.onToggle);
         this.§0%!§.addEventListener(§8"@§.EVENT_TOGGLE,this.onToggle);
         this.vipNotes.addEventListener(§8"@§.EVENT_TOGGLE,this.onToggle);
         this.shareDialog.addEventListener(§8"@§.EVENT_TOGGLE,this.onToggle);
         this.§9!%§.buttonMode = this.§9!%§.mouseEnabled = !this.§7$4§;
         this.§[>§.buttonMode = this.§[>§.mouseEnabled = !this.§%#T§;
         super.show(param1);
      }
      
      private function §""7§(param1:int) : void
      {
         store.§&!N§(§!m§.§8#4§,param1,§8"%§.§&S§.§'"8§());
         resetBtn.setDisabled(this.isDefault);
         §>!-§.setDisabled(store.isEmpty());
      }
      
      private function §2%c§(param1:String) : void
      {
         store.§&!N§(§!m§.§ $a§,param1,§8"%§.§&S§.§;#b§());
         resetBtn.setDisabled(this.isDefault);
         §>!-§.setDisabled(store.isEmpty());
      }
      
      private function onToggle(param1:Event = null) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = §6"%§(param1.target).simpleButton.parent.name;
         var _loc3_:§'#E§ = §8"%§.§&S§;
         switch(_loc2_)
         {
            case §-$#§:
               store.§&!N§(§!m§.§-#i§,!this.§ !A§.isPressed(),_loc3_.§%$2§());
               break;
            case §1V§:
               store.§&!N§(§!m§.§1%=§,!this.§0%!§.isPressed(),_loc3_.§+$@§());
               break;
            case §`#n§:
               store.§&!N§(§!m§.§`#n§,!this.vipNotes.isPressed(),_loc3_.§?#k§());
               break;
            case §,!N§:
               store.§&!N§(§!m§.§,!N§,!this.shareDialog.isPressed(),_loc3_.§2%C§());
         }
         this.§[>§.buttonMode = this.§[>§.mouseEnabled = !this.§%#T§;
         resetBtn.setDisabled(this.isDefault);
         §>!-§.setDisabled(store.isEmpty());
      }
      
      public function §^2§() : void
      {
         §@%;§.§^!q§();
         this.§<c§();
         §8"%§.§&S§.§0%3§(§@%;§.§6%A§(),false);
      }
      
      public function §&%R§() : void
      {
         §@%;§.§+"a§();
         this.§<c§();
         §8"%§.§&S§.§+"u§(§@%;§.§4$u§(),false);
      }
      
      public function §<c§(param1:Event = null) : void
      {
         this.§=!i§(§@%;§.§4$u§());
         this.§@"0§(§@%;§.§6%A§());
         if(!param1)
         {
            this.speech.§`!n§(§8"%§.§&S§.§-#G§());
            this.soundImportant.§`!n§(§8"%§.§&S§.§ $ §());
            this.soundImportant.setDisabled(!§@%;§.§4$u§());
            return;
         }
         var _loc2_:String = Boolean(param1) && Boolean(param1.target) ? param1.target.name : "";
         var _loc3_:Boolean = _loc2_.indexOf("Off") > -1;
         var _loc4_:String = Boolean(param1) && Boolean(param1.target) && Boolean(param1.target.parent) ? param1.target.parent.name : "";
         switch(_loc4_)
         {
            case §+$ §:
               this.soundImportant.§`!n§(_loc3_);
               store.§&!N§(§!m§.§+$ §,_loc3_,§8"%§.§&S§.§ $ §());
               break;
            case §6$7§:
               this.soundImportant.setDisabled(!_loc3_);
               store.§&!N§(§!m§.§6$7§,_loc3_,this.§4$u§);
               break;
            case MUSIC:
               store.§&!N§(§!m§.MUSIC,_loc3_,this.§0%k§);
               break;
            case §;"8§:
               this.speech.§`!n§(_loc3_);
               store.§&!N§(§!m§.§;"8§,_loc3_,§8"%§.§&S§.§-#G§());
         }
         this.§9!%§.buttonMode = this.§9!%§.mouseEnabled = !this.§7$4§;
         resetBtn.setDisabled(this.isDefault);
         §>!-§.setDisabled(store.isEmpty());
      }
      
      private function §@"0§(param1:Boolean) : void
      {
         this.music.getChildByName("soundOn").visible = param1;
         this.music.getChildByName("soundOff").visible = !param1;
      }
      
      private function §=!i§(param1:Boolean) : void
      {
         this.sound.getChildByName("soundOn").visible = param1;
         this.sound.getChildByName("soundOff").visible = !param1;
      }
      
      public function §!C§(param1:Event = null) : void
      {
         BattleSettingsMenu.getInstance().§!C§();
      }
      
      private function §>$#§(param1:MouseEvent) : void
      {
         §@%;§.play(§ "N§.§,M§);
         this.§3" §.reset();
         store.§&!N§(§!m§.§ $a§,this.§3" §.getValue(),§8"%§.§&S§.§;#b§());
         resetBtn.setDisabled(this.isDefault);
         §>!-§.setDisabled(store.isEmpty());
      }
      
      private function §4$Q§(param1:MouseEvent) : void
      {
         §@%;§.play(§ "N§.§,M§);
         this.§?$A§();
         resetBtn.setDisabled(this.isDefault);
         §>!-§.setDisabled(store.isEmpty());
      }
      
      private function § $v§(param1:MouseEvent) : void
      {
         §@%;§.play(§ "N§.§,M§);
         this.§5$Y§();
         resetBtn.setDisabled(this.isDefault);
      }
      
      private function §8"E§(param1:Event) : void
      {
         BattleSettingsMenu.getInstance().show();
      }
      
      override protected function okAction() : void
      {
         var _loc1_:§'#E§ = null;
         super.okAction();
         if(store.isEmpty())
         {
            return;
         }
         _loc1_ = §8"%§.§&S§;
         var _loc2_:String = String(store.getValue(§!m§.§ $a§,_loc1_.§;#b§(),§!m§.§5!8§));
         var _loc3_:String = String(store.getValue(§!m§.§ $a§));
         if(store.getValue(§!m§.§8#4§))
         {
            _loc1_.§9&F§(this.§'#d§.getValue());
         }
         if(store.getValue(§!m§.§ $a§))
         {
            _loc1_.§#§(this.§3" §.getValue());
         }
         if(store.getValue(§!m§.§+$ §))
         {
            _loc1_.§&&D§(this.soundImportant.§@%b§);
         }
         if(store.getValue(§!m§.§6$7§))
         {
            _loc1_.§+"u§(§@%;§.§4$u§(),true);
         }
         if(store.getValue(§!m§.MUSIC))
         {
            _loc1_.§0%3§(§@%;§.§6%A§(),true);
         }
         if(store.getValue(§!m§.§;"8§))
         {
            _loc1_.§]%B§(this.speech.§@%b§);
         }
         if(store.getValue(§!m§.§-#i§))
         {
            _loc1_.§;!C§(!this.§ !A§.isPressed());
         }
         if(store.getValue(§!m§.§1%=§))
         {
            _loc1_.§%#S§(!this.§0%!§.isPressed());
         }
         if(store.getValue(§!m§.§`#n§))
         {
            _loc1_.§>!!§(!this.vipNotes.isPressed());
         }
         if(store.getValue(§!m§.§,!N§))
         {
            _loc1_.§-#6§(!this.shareDialog.isPressed());
         }
         _loc1_.§^"X§();
         if(Boolean(Application.scene) && !§8"%§.§?!W§.§3#r§)
         {
            Application.scene.getContainer().stage.quality = _loc1_.§;#b§();
         }
      }
      
      override public function hide() : void
      {
         if(!isShown())
         {
            return;
         }
         if(BattleSettingsMenu.getInstance().isShown())
         {
            BattleSettingsMenu.getInstance().hide();
         }
         super.hide();
         this.§ !A§.removeEventListener(§8"@§.EVENT_TOGGLE,this.onToggle);
         this.§0%!§.removeEventListener(§8"@§.EVENT_TOGGLE,this.onToggle);
      }
      
      override protected function §]$§(param1:Event) : void
      {
         this.§'#d§.reset();
         this.§3" §.reset();
         store.§&!N§(§!m§.§ $a§,this.§3" §.getValue(),§8"%§.§&S§.§;#b§());
         this.§?$A§();
         this.§5$Y§();
         resetBtn.setDisabled(true);
         §>!-§.setDisabled(store.isEmpty());
      }
      
      private function §?$A§() : void
      {
         if(!§@%;§.§4$u§())
         {
            §@%;§.§+"a§();
            this.§=!i§(§@%;§.§4$u§());
            store.§&!N§(§!m§.§6$7§,true,this.§4$u§);
         }
         if(!§@%;§.§6%A§())
         {
            §@%;§.§^!q§();
            this.§@"0§(§@%;§.§6%A§());
            store.§&!N§(§!m§.MUSIC,true,this.§0%k§);
         }
         if(!this.speech.§@%b§)
         {
            this.speech.§`!n§(true);
            store.§&!N§(§!m§.§;"8§,true,§8"%§.§&S§.§-#G§());
         }
         if(this.soundImportant.§@%b§)
         {
            this.soundImportant.§`!n§(false);
            store.§&!N§(§!m§.§+$ §,false,§8"%§.§&S§.§ $ §());
         }
         this.§9!%§.buttonMode = this.§9!%§.mouseEnabled = false;
      }
      
      private function §5$Y§() : void
      {
         if(!this.§ !A§.isPressed() != false)
         {
            this.§ !A§.setPressed(!this.§ !A§.isPressed());
         }
         if(!this.§0%!§.isPressed() != true)
         {
            this.§0%!§.setPressed(!this.§0%!§.isPressed());
         }
         if(!this.vipNotes.isPressed() != true)
         {
            this.vipNotes.setPressed(!this.vipNotes.isPressed());
         }
         if(!this.shareDialog.isPressed() != true)
         {
            this.shareDialog.setPressed(!this.shareDialog.isPressed());
         }
         this.§[>§.buttonMode = this.§[>§.mouseEnabled = false;
      }
      
      override protected function get isDefault() : Boolean
      {
         if(this.§'#d§.isDefault && this.§3" §.isDefault && this.§7$4§ && this.§%#T§)
         {
            return true;
         }
         return false;
      }
      
      private function get §%#T§() : Boolean
      {
         if(!this.§ !A§.isPressed() == false && !this.§0%!§.isPressed() == true && !this.vipNotes.isPressed() == true && !this.shareDialog.isPressed() == true)
         {
            return true;
         }
         return false;
      }
      
      private function get §7$4§() : Boolean
      {
         if(§@%;§.§4$u§() && §@%;§.§6%A§() && this.speech.§@%b§ && !this.soundImportant.§@%b§)
         {
            return true;
         }
         return false;
      }
      
      public function get §2$E§() : §7#0§
      {
         return this.§5!s§;
      }
   }
}

