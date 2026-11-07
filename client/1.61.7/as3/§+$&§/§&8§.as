package §+$&§
{
   import § &5§.§@N§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§-$s§;
   import §+%S§.§@x§;
   import §,$J§.§,$O§;
   import §-@§.*;
   import §0&F§.§0%v§;
   import §4%_§.§6#W§;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §9%k§.*;
   import §;!Z§.*;
   import §<!W§.*;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§9%1§;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%§.Boar;
   import §^"y§.§]#i§;
   import §^#o§.*;
   import §`"p§.*;
   import com.greensock.events.LoaderEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.messages.client.ReplaceQuestTask;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §&8§ extends §1#g§
   {
      
      private var clanNameLabel:TextField;
      
      private var logoLabel:TextField;
      
      private var descriptionLabel:TextField;
      
      private var joinConditionLabel:TextField;
      
      private var ratingLabel:TextField;
      
      public var logo:MovieClip;
      
      public var clanName:TextField;
      
      public var description:TextField;
      
      private var joinCondition:TextField;
      
      public var rating:TextField;
      
      public var §-$-§:int;
      
      private var clanNameError:TextField;
      
      private var descriptionError:TextField;
      
      private var join_leftBtn:§?%>§;
      
      private var join_rightBtn:§?%>§;
      
      public var setLogoBtn:§?%>§;
      
      public var createBtn:§?%>§;
      
      public function §&8§(param1:DisplayObjectContainer = null)
      {
         param1.parent.removeChild(param1);
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.clanNameLabel = §'%s§("clanNameLabel");
         this.logoLabel = §'%s§("logoLabel");
         this.descriptionLabel = §'%s§("descriptionLabel");
         this.joinConditionLabel = §'%s§("joinConditionLabel");
         this.ratingLabel = §'%s§("ratingLabel");
         §&$9§.§>&F§(this.clanNameLabel,§"-§.§+$m§,§0$N§.CLAN_NAME);
         §&$9§.§>&F§(this.logoLabel,§"-§.§+$m§,§0$N§.CLAN_LOGO);
         §&$9§.§>&F§(this.descriptionLabel,§"-§.§+$m§,§0$N§.CLAN_DESCRIPTION);
         §&$9§.§>&F§(this.joinConditionLabel,§"-§.§+$m§,§0$N§.JOIN_TO_CLAN_LABEL);
         §&$9§.§>&F§(this.ratingLabel,§"-§.§+$m§,§0$N§.REQUIRED_RATING_FOR_JOINT);
         this.logo = §'$a§("logo");
         this.clanName = §'%s§("clanName");
         this.clanName.restrict = §@C§.§'%Z§();
         this.clanName.maxChars = §@C§.§+#d§;
         this.clanName.text = "";
         this.description = §'%s§("description");
         this.description.text = "";
         this.description.maxChars = §@C§.§-!g§;
         this.joinCondition = §'%s§("joinCondition");
         this.joinCondition.mouseEnabled = false;
         this.rating = §'%s§("rating");
         this.rating.restrict = "0-9";
         this.rating.maxChars = 7;
         this.§-$-§ = 1;
         this.clanNameError = §'%s§("clanNameError");
         this.descriptionError = §'%s§("descriptionError");
         this.clanNameError.visible = false;
         this.descriptionError.visible = false;
         §&$9§.§>&F§(this.clanNameError,§"-§.§+$m§,§0$N§.FILLED_INCORRECTLY);
         §&$9§.§>&F§(this.descriptionError,§"-§.§+$m§,§0$N§.FILLED_INCORRECTLY);
         this.join_leftBtn = §!&5§.§7#[§(getChildByName("join_leftBtn"));
         this.join_rightBtn = §!&5§.§7#[§(getChildByName("join_rightBtn"));
         this.join_leftBtn.§[!u§(this.§--§);
         this.join_rightBtn.§[!u§(this.§--§);
         this.setLogoBtn = §!&5§.§7#[§(getChildByName("setLogoBtn"));
         this.createBtn = §!&5§.§7#[§(getChildByName("createBtn"));
         this.setLogoBtn.setText(§0$N§.SETTING_LABEL,§"-§.§+$m§);
         this.createBtn.setText(§0$N§.CREATE_FOR_BTN,§"-§.§+$m§);
         this.createBtn.setText(String(§@C§.§!&8§.price.ingamePrice),§"-§.§6"j§,"price");
         §4"0§.§;#f§(this.createBtn);
         this.update();
      }
      
      public function §9%j§() : Boolean
      {
         if(§=%_§.§7$u§(this.clanName.text))
         {
            this.clanNameError.visible = false;
            return true;
         }
         this.clanNameError.visible = true;
         return false;
      }
      
      private function §--§(param1:MouseEvent) : void
      {
         this.§-$-§ *= -1;
         this.update();
      }
      
      private function update() : void
      {
         var _loc1_:String = null;
         if(this.§-$-§ == 1)
         {
            this.rating.type = TextFieldType.INPUT;
            _loc1_ = §0$N§.OPEN_CLAN;
            this.rating.text = "0";
         }
         else
         {
            this.rating.type = TextFieldType.DYNAMIC;
            _loc1_ = §0$N§.CLOSE_CLAN;
            this.rating.text = "";
         }
         §&$9§.§>&F§(this.joinCondition,§"-§.§+$m§,_loc1_);
      }
   }
}

