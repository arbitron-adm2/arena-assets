package §+$&§
{
   import § !8§.§`!d§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §'!Z§.*;
   import §+$=§.*;
   import §-@§.*;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]^§.§4&+§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §+"g§ extends §1#g§
   {
      
      private var titleLabel:TextField;
      
      private var patternColorLabel:TextField;
      
      private var patternLabel:TextField;
      
      private var iconLabel:TextField;
      
      private var iconColorLabel:TextField;
      
      private var hintLabel:TextField;
      
      public var backBtn:§?%>§;
      
      public var saveBtn:§?%>§;
      
      public function §+"g§(param1:DisplayObjectContainer = null)
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

