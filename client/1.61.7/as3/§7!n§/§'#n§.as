package §7!n§
{
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%Q§.§#%9§;
   import §+%S§.§-$s§;
   import §,$J§.§,$O§;
   import §-@§.§3%9§;
   import §0"L§.§+# §;
   import §0%[§.§%"'§;
   import §0%j§.§0$+§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7"Q§.§"&=§;
   import §8#`§.§#%r§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<#&§;
   import com.inreflected.ui.touchScroll.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §'#n§ extends §[&#§
   {
      
      public function §'#n§(param1:DisplayObjectContainer, param2:String)
      {
         super(param1,param2);
      }
      
      override protected function init(param1:String) : void
      {
         super.init(param1);
         setText(§0$N§.REWARD_UP_TO,§%#e§,§"-§.§+$m§);
      }
      
      override public function setData(param1:§<#&§) : void
      {
         this.wager = param1;
         setText(§3%9§.§`&'§.toString(),§]!k§,§"-§.§6"j§);
         setText(§5&4§.§8$p§.realPrice.toString(),§[$[§,§"-§.§6"j§);
      }
      
      override protected function §3#,§(param1:Event = null) : void
      {
         §8"%§.§%$r§.§>%U§();
      }
      
      override public function update() : void
      {
         super.update();
         setText(§3%9§.§`&'§.toString(),§]!k§,§"-§.§6"j§);
         setText(§5&4§.§8$p§.realPrice.toString(),§[$[§,§"-§.§6"j§);
      }
   }
}

