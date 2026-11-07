package §4u§
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§7%f§;
   import §+%S§.§[0§;
   import §-8§.§3!x§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §4f§.§-&§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import api.com.odnoklassniki.*;
   import api.com.odnoklassniki.net.OdnoklassnikiRequest;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.SellStuff;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.social.Social;
   
   use namespace gestouch_internal;
   
   public class §<!c§ extends §;$H§
   {
      
      private var §"%Y§:TextField;
      
      public function §<!c§()
      {
         super(§6#A§.§!&6§(§+"'§.§9%>§));
      }
      
      override public function §`b§(param1:Boolean, param2:String, param3:String, param4:String = "", param5:String = "") : void
      {
         this.§"%Y§ = §'%s§(param3);
         this.§"%Y§.autoSize = TextFieldAutoSize.LEFT;
         this.§"%Y§.htmlText = param2;
         §8$<§ = this.§"%Y§.y + this.§"%Y§.height;
         §8$Q§();
      }
      
      public function §&Z§(param1:int) : void
      {
         §&k§().width = param1;
         if(this.§"%Y§)
         {
            this.§"%Y§.width = param1 - 2;
         }
      }
   }
}

