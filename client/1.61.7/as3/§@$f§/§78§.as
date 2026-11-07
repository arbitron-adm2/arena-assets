package §@$f§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§8"@§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&%X§.§5F§;
   import §&%X§.§<$M§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §0%[§.§""n§;
   import §0&F§.§0%v§;
   import §2"L§.§!!<§;
   import §4!x§.§@& §;
   import §4#2§.*;
   import §6",§.§[%w§;
   import §7$t§.§;#_§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §<%k§.§`!v§;
   import §?$7§.§6J§;
   import §?$L§.§&$9§;
   import §@!i§.*;
   import avmplus.getQualifiedClassName;
   import config.achievements.§!$L§;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.TracePublisher;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetPromocodeBonus;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.GetPromocodeBonusResult;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.messages.structures.AwardBackpackItemStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §78§ extends §@& §
   {
      
      private const TEXT_FORMAT:TextFormat = new TextFormat(null,null,null,true);
      
      private const §=%U§:String;
      
      private const §4#?§:String;
      
      private var code:TextField;
      
      private var example:TextField;
      
      public function §78§()
      {
         this.§=%U§ = §<$M§.§=%U§.replace("_","");
         this.§4#?§ = §<$M§.§4#?§.replace("_","");
         super(§6#A§.§!&6§(§+"'§.§!&!§));
         §&$9§.§>&F§(§]"a§,§"-§.§+$m§,§0$N§.PROMOCODE);
         §`"R§("message",§0$N§.PROMOCODE_DESCR);
         this.code = §'%s§("code");
         this.code.maxChars = 8;
         this.code.restrict = "a-z 0-9";
         this.code.text = "";
         this.code.addEventListener(Event.CHANGE,this.§3"-§);
         this.example = §'%s§("example");
         §&$9§.§>&F§(this.example,§"-§.§+$m§,§0$N§.PROMOCODE_EXAMPLE);
         §>!-§.setText(§0$N§.BUTTON_SEND,§"-§.§+$m§);
      }
      
      private function §3"-§(param1:Event = null) : void
      {
         var _loc2_:Boolean = this.code.text == this.§=%U§ || this.code.text == this.§4#?§;
         §>!-§.setDisabled(!this.code.text || !_loc2_ && this.code.text.length < this.code.maxChars);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.code.stage.focus = this.code;
         this.code.setTextFormat(this.TEXT_FORMAT);
         this.§3"-§();
      }
      
      override protected function okAction() : void
      {
         super.okAction();
         if(!this.code.text)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.ENTER_PROMOCODE_PLEASE,§,#W§.§6!m§,this.show);
         }
         else if(this.code.text == this.§=%U§)
         {
            if(§8"%§.§&S§.§?"7§())
            {
               §8"%§.§&S§.§1[§(false);
            }
            hide();
         }
         else if(this.code.text == this.§4#?§)
         {
            if(!§8"%§.§&S§.§?"7§())
            {
               §8"%§.§&S§.§1[§(true);
            }
            hide();
         }
         else if(this.code.text.length < this.code.maxChars)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.ENTER_PROMOCODE_VALID_PLEASE,§,#W§.§6!m§,this.show);
         }
         else
         {
            this.§=$t§(this.code.text);
            hide();
         }
      }
      
      private function §=$t§(param1:String) : void
      {
         §[&G§.§8"&§.show();
         §%%w§.§##$§(GetPromocodeBonusResult,this.§[#p§);
         §%%w§.§,U§(new GetPromocodeBonus(param1));
      }
      
      private function §[#p§(param1:§9$v§) : void
      {
         var _loc3_:LoginAwardStructure = null;
         var _loc4_:§]+§ = null;
         §[&G§.§8"&§.hide();
         §%%w§.§-"j§(GetPromocodeBonusResult,this.§[#p§);
         var _loc2_:GetPromocodeBonusResult = GetPromocodeBonusResult(param1.message);
         switch(_loc2_.result)
         {
            case GetPromocodeBonusResult.SUCCESS:
               _loc3_ = new LoginAwardStructure();
               _loc3_.awards = _loc2_.awards;
               _loc4_ = §5F§.§9#a§(_loc3_);
               _loc4_.type = §8"_§.§=$[§;
               _loc4_.§,k§ = §0$N§.REFFERAL_BONUS_TITLE;
               _loc4_.§8%T§ = §0$N§.REFFERAL_BONUS_TEXT;
               §##U§.§"X§(_loc4_,null,false).show();
               break;
            case GetPromocodeBonusResult.ERROR:
               §,#W§.§6!P§(§0$N§.TITLE_ERROR,§0$N§.PROMOCODE_ERROR);
               break;
            case GetPromocodeBonusResult.INVALID_AWARD_TYPE_ERROR:
               §,#W§.§6!P§(§0$N§.TITLE_ERROR,§0$N§.INVALID_AWARD_TYPE_ERROR);
               break;
            case GetPromocodeBonusResult.EMPTY_AWARD_ERROR:
               §,#W§.§6!P§(§0$N§.TITLE_ERROR,§0$N§.EMPTY_AWARD_ERROR);
               break;
            default:
               §,#W§.§6!P§(§0$N§.TITLE_ERROR,§0$N§.ERROR_SERVER + " (" + _loc2_.result + ")");
         }
      }
   }
}

