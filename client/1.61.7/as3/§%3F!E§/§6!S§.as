package §?!E§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § !P§.§9%Z§;
   import § &5§.§%$O§;
   import §!$d§.*;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §&#W§.§?#]§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §,$J§.§0%G§;
   import §0!Y§.§#!Z§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7!B§.§`"d§;
   import §7$t§.§^$E§;
   import §<%c§.§]"C§;
   import §=&!§.§<$Z§;
   import §=;§.§@§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §6!S§ extends §]"C§
   {
      
      private static const §`U§:uint = §9##§.§;9§ + §+%z§.SHOTGUN;
      
      private var crate:§@#3§;
      
      private var target:§+%-§;
      
      private var §`%_§:uint;
      
      private const HELP_RECORD_TURN1_1:Array = [§?#]§.LEARNING_2_TURN_1_PART_1_TEXT];
      
      private const HELP_RECORD_TURN1_2:Array = [[§?#]§.LEARNING_2_TURN_1_PART_3_TEXT,§6#A§.§!&6§(§?#]§.LEARNING_2_TURN_1_MC),§?#]§.LEARNING_2_TURN_1_PART_4_TEXT]];
      
      private const HELP_RECORD_TURN2:Array = [[§?#]§.LEARNING_2_TURN_2_TEXT,§6#A§.§!&6§(§?#]§.LEARNING_2_TURN_2_MC)]];
      
      private const HELP_RECORD_TURN3:Array = [§?#]§.LEARNING_2_TURN_3_TEXT];
      
      private const HELP_RECORD_TURN4:Array = [§?#]§.LEARNING_2_TURN_4_TEXT];
      
      public function §6!S§()
      {
         super(44,true);
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§8$2§[4]]];
         §%$D§("LearningMission2_MovingPart",mapRecord.§8$2§[4].x - 20,mapRecord.§8$2§[4].y + 30);
         §%$D§("LearningMission2_MovingPart",mapRecord.§8$2§[4].x + 70,mapRecord.§8$2§[4].y - 90);
         §%$D§("LearningMission2_StandingPart",mapRecord.§8$2§[4].x - 850,mapRecord.§8$2§[4].y + 60);
         tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN1_1);
      }
      
      override public function §8%r§() : void
      {
         var _loc1_:§,%r§ = §'%_§.getWeapon(§`U§);
         this.§`%_§ = _loc1_.§4!J§().explosionRadius.value;
         _loc1_.§4!J§().explosionRadius.value = 0;
      }
      
      override protected function § "a§(param1:uint) : void
      {
         if(param1 == 1)
         {
            Application.userProfile.§1G§.§@-§([]);
            Application.scene.§@$I§.§;x§([§#!Z§.§@!I§,§#!Z§.§<$T§,§#!Z§.§!&,§]);
            currentUnit.addEventListener(§0%v§.§&!D§,§,![§);
            this.crate = §+#%§(mapRecord.§8$2§[4].x - 520,mapRecord.§8$2§[4].y + 100,§`U§,-1,this.§?"C§,false);
            §`"d§.§ %r§(mapRecord.§8$2§[4].x - 110,mapRecord.§8$2§[4].y,15,currentUnit,this.§<$m§);
            showArrow(mapRecord.§8$2§[4].x - 110,mapRecord.§8$2§[4].y);
         }
      }
      
      private function §<$m§() : void
      {
         §%$O§.§3%R§(Application.scene,currentUnit.x - 200,currentUnit.y,0.6);
         tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN1_2);
         hideArrow();
         currentUnit.§;#a§();
         currentUnit.turn(§+%]§.LEFT);
         Application.scene.§@$I§.§;x§([§#!Z§.§@!I§,§#!Z§.§!&,§,§#!Z§.§!c§,§#!Z§.§%H§]);
         §8$a§.§&!#§(currentUnit.physicModel,§9#1§.STABLE,this.§2%h§);
      }
      
      private function §2%h§(param1:Event = null) : void
      {
         tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN2);
         showArrow(mapRecord.§8$2§[4].x - 390,mapRecord.§8$2§[4].y + 230);
         Application.scene.§@$I§.§;x§([]);
         §`"d§.§ %r§(mapRecord.§8$2§[4].x - 430,mapRecord.§8$2§[4].y + 160,20,currentUnit,this.§^#Y§);
         §%$O§.§3%R§(Application.scene,currentUnit.x - 100,currentUnit.y + 50,0.6);
      }
      
      private function §^#Y§() : void
      {
         tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN3);
         showArrow(this.crate.x,this.crate.y - 20);
      }
      
      private function §?"C§(param1:Event) : void
      {
         tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN4);
         currentUnit.§8"#§(§`U§);
         hideArrow();
         this.target = §2"i§(mapRecord.§8$2§[4].x - 800,mapRecord.§8$2§[4].y + 50,this.§6&;§);
      }
      
      private function §6&;§(param1:Event) : void
      {
         currentUnit.§3%1§(true);
         stripWeapon();
         tutorialPanel.hide();
         tutorialPanel.destroy();
         §#!Z§.fire(§#!Z§.§8%S§);
         §2&6§.§1%h§(§<$Z§.§+%I§);
      }
      
      override public function clear() : void
      {
         super.clear();
         this.target = null;
         var _loc1_:§,%r§ = §'%_§.getWeapon(§`U§);
         _loc1_.§4!J§().explosionRadius.value = this.§`%_§;
      }
   }
}

