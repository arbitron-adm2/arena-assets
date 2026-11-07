package §!"r§
{
   import § #k§.*;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§ §;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §'!Z§.§]!&§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §0!§.§9"u§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §8#a§.ShopMenu;
   import §<!W§.§!"+§;
   import §<%c§.*;
   import §?$L§.§&$9§;
   import §?>§.§4#o§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §2"G§ extends §1#g§
   {
      
      private var titleLabel:TextField;
      
      private var patternColorLabel:TextField;
      
      private var patternLabel:TextField;
      
      private var iconLabel:TextField;
      
      private var iconColorLabel:TextField;
      
      private var hintLabel:TextField;
      
      public var backBtn:§?%>§;
      
      public var saveBtn:§?%>§;
      
      public function §2"G§(param1:DisplayObjectContainer = null)
      {
         param1.parent.removeChild(param1);
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.titleLabel = §'%s§("titleLabel");
         this.patternColorLabel = §'%s§("patternColorLabel");
         this.patternLabel = §'%s§("patternLabel");
         this.iconLabel = §'%s§("iconLabel");
         this.iconColorLabel = §'%s§("iconColorLabel");
         this.hintLabel = §'%s§("hintLabel");
         §&$9§.§>&F§(this.titleLabel,§"-§.§+$m§,§0$N§.CLAN_LOGO);
         §&$9§.§>&F§(this.patternColorLabel,§"-§.§+$m§,§0$N§.COLOR_LABEL_TEXT);
         §&$9§.§>&F§(this.patternLabel,§"-§.§+$m§,§0$N§.PATTERN_LABEL_TEXT);
         §&$9§.§>&F§(this.iconLabel,§"-§.§+$m§,§0$N§.LOGO_LABEL_TEXT);
         §&$9§.§>&F§(this.iconColorLabel,§"-§.§+$m§,§0$N§.LOGO_COLOR_LABEL_TEXT);
         §&$9§.§>&F§(this.hintLabel,§"-§.§+$m§,"");
         this.backBtn = §!&5§.§7#[§(getChildByName("backBtn"));
         this.saveBtn = §!&5§.§7#[§(getChildByName("saveBtn"));
         this.saveBtn.setText(§0$N§.SAVE_BTN,§"-§.§+$m§);
      }
   }
}

