package §-&5§
{
   import § #9§.§3L§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §&"c§.§5$n§;
   import §'!Z§.§2!H§;
   import §+#P§.§8"j§;
   import §+%S§.§2&>§;
   import §,$J§.§0%G§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#W§.§ #,§;
   import §2#i§.§+%z§;
   import §3"@§.§""m§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§??§;
   import §<!^§.§]#u§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §^"y§.§]#i§;
   import config.§#!"§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.external.ExternalInterface;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   use namespace gestouch_internal;
   
   public class §>D§ extends §`&-§
   {
      
      protected var §4&D§:TextField;
      
      protected var §^"o§:TextField;
      
      protected var requirements:§@$K§;
      
      public function §>D§(param1:DisplayObject = null)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§4&D§ = §'%s§("nameField");
         this.§4&D§.autoSize = TextFieldAutoSize.CENTER;
         this.§^"o§ = §'%s§("description");
         this.§^"o§.autoSize = TextFieldAutoSize.LEFT;
         if(getChildByName("requirementsContainer"))
         {
            this.requirements = new §@$K§(getChildByName("requirementsContainer"));
         }
      }
      
      public function §5&>§(param1:Boolean) : void
      {
         if(this.requirements)
         {
            this.requirements.setVisible(param1);
         }
      }
      
      public function setItem(param1:§??§) : void
      {
         var _loc2_:String = "";
         if(param1.§##m§() == §^"p§.§;#'§)
         {
            _loc2_ = §0$N§.HOLIDAY_TITLE;
         }
         this.§ %0§(param1.§7%z§() + "\n" + _loc2_);
      }
      
      protected function § %0§(param1:String) : void
      {
         §&$9§.§>&F§(this.§4&D§,§"-§.§+$m§,param1);
      }
   }
}

