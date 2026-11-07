package §>"l§
{
   import § %f§.§ "r§;
   import § &5§.§@N§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §0"L§.*;
   import §0&F§.§0%v§;
   import §4!!§.§'$V§;
   import §4"j§.§[&C§;
   import §4%_§.ZombieGrave;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §^"y§.*;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3!z§ extends §`&-§
   {
      
      private var §9&H§:DisplayObject;
      
      private var §+A§:DisplayObject;
      
      public function §3!z§(param1:DisplayObject = null)
      {
         super(param1);
         this.init();
         this.§6$g§();
      }
      
      private function init() : void
      {
         this.§9&H§ = getChildByName("used");
         this.§+A§ = getChildByName("not_used");
      }
      
      public function §<n§() : void
      {
         this.§9&H§.visible = true;
         this.§+A§.visible = false;
      }
      
      public function §6$g§() : void
      {
         this.§9&H§.visible = false;
         this.§+A§.visible = true;
      }
   }
}

