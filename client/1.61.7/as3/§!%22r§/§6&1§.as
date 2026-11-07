package §!"r§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §2"L§.§,'§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §4!x§.§8#u§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §?$7§.§6%k§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import config.§#!"§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §6&1§ extends §1#g§
   {
      
      private var termLabel:TextField;
      
      private var ratingLabel:TextField;
      
      private var term:TextField;
      
      public var rating:TextField;
      
      public var §-$-§:int;
      
      private var join_leftBtn:§?%>§;
      
      private var join_rightBtn:§?%>§;
      
      public var backBtn:§?%>§;
      
      public var saveBtn:§?%>§;
      
      public function §6&1§(param1:DisplayObjectContainer = null)
      {
         param1.parent.removeChild(param1);
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.termLabel = §'%s§("termLabel");
         this.ratingLabel = §'%s§("ratingLabel");
         §&$9§.§>&F§(this.termLabel,§"-§.§+$m§,§0$N§.JOIN_TO_CLAN_LABEL);
         §&$9§.§>&F§(this.ratingLabel,§"-§.§+$m§,§0$N§.REQUIRED_RATING_FOR_JOINT);
         this.term = §'%s§("term");
         this.term.mouseEnabled = false;
         this.rating = §'%s§("rating");
         this.rating.restrict = "0-9";
         this.rating.maxChars = 7;
         this.§-$-§ = 1;
         this.join_leftBtn = §!&5§.§7#[§(getChildByName("leftBtn"));
         this.join_rightBtn = §!&5§.§7#[§(getChildByName("rightBtn"));
         this.join_leftBtn.§[!u§(this.§--§);
         this.join_rightBtn.§[!u§(this.§--§);
         this.backBtn = §!&5§.§7#[§(getChildByName("backBtn"));
         this.saveBtn = §!&5§.§7#[§(getChildByName("saveBtn"));
         this.saveBtn.setText(§0$N§.SAVE_BTN,§"-§.§+$m§);
         this.update();
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:ClanTO = §]#i§.§=#7§(Application.userProfile);
         this.§-$-§ = _loc1_.joinRating == -1 ? -1 : 1;
         this.update();
         this.rating.text = String(_loc1_.joinRating > 0 ? _loc1_.joinRating : "");
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
         §&$9§.§>&F§(this.term,§"-§.§+$m§,_loc1_);
      }
   }
}

