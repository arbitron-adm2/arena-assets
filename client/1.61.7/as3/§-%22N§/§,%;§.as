package §-"N§
{
   import § !8§.§`!d§;
   import § $q§.§3U§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §+%S§.§?3§;
   import §+%S§.§@#s§;
   import §+5§.§^$[§;
   import §0&F§.§0%v§;
   import §2#W§.§8-§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §;!Z§.*;
   import §<!W§.§#&#§;
   import §<!W§.§7!L§;
   import §<$q§.§6%b§;
   import §<%k§.§`!v§;
   import §=$#§.*;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §@!N§.§3!3§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§%&=§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §,%;§ extends §"k§
   {
      
      private var repeatBtn:§?%>§;
      
      public function §,%;§(param1:§]$d§, param2:§4$z§)
      {
         super(§6#A§.§!&6§(§+"'§.§?#$§),param1,param2);
         this.repeatBtn = §!&5§.§7#[§(getChildByName("repeatBtn"));
         this.repeatBtn.setText(§<"G§.§%! §("REPEAT_BTN"));
         this.repeatBtn.§[!u§(this.§,7§);
      }
      
      private function §,7§(param1:Event) : void
      {
         §!#z§(this.§%!Q§);
      }
      
      private function §%!Q§() : void
      {
         var _loc1_:Boolean = false;
         this.repeatBtn.setDisabled(true);
         _loc1_ = §^#R§.§<",§();
         var _loc2_:int = _loc1_ ? int(§^#R§.mapId) : 0;
         hide();
         Application.setUserBusy(false);
         if(_loc1_)
         {
            §8"%§.§?!W§.§5"I§(_loc2_);
         }
         else
         {
            §8"%§.§?!W§.§?%U§(§8"%§.§?!W§.§]"o§(),false);
         }
      }
      
      override protected function §^$l§(param1:§4$z§) : void
      {
         §#7§(§<"G§.§%! §("HOT_SEAT_GAME_OVER_TITLE"));
         §'%s§("msg").text = §<"G§.§%! §("HOT_SEAT_GAME_OVER_MESSAGE");
      }
   }
}

