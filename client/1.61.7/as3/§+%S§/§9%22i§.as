package §+%S§
{
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §-!U§.*;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3#T§.*;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §?$7§.§8"e§;
   import §@!i§.§!m§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §9"i§ extends §%%o§
   {
      
      public static const NAME:String = "DRILL_UNDERWATER_BREATH";
      
      public static const § &G§:uint = 1;
      
      public static const §!$k§:int = 1;
      
      private var §-%C§:Boolean;
      
      public function §9"i§()
      {
         super(NAME,§ &G§,§!$k§);
      }
      
      override protected function §7$d§() : void
      {
      }
      
      override protected function §5#F§() : void
      {
         this.§-%C§ = unit.physParams.§3&I§;
         unit.physParams.§3&I§ = false;
      }
      
      override protected function §0&"§() : void
      {
         unit.physParams.§3&I§ = this.§-%C§;
      }
   }
}

