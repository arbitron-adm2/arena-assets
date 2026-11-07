package §?!E§
{
   import § &5§.§%$O§;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §!L§.§`#p§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §&!?§.§+" §;
   import §&#W§.§?#]§;
   import §+$=§.§6#A§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §5!9§.§6$,§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §;!J§.§8!a§;
   import §<%c§.§]"C§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §?>§.§0!7§;
   import §@!N§.§'+§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&!5§ extends §]"C§
   {
      
      private static const §^$K§:uint = §9##§.§;9§ + §+%z§.RIFLE;
      
      private var center:Point;
      
      private var §"&'§:MovieClip;
      
      private var §'&+§:Shape;
      
      private var §8$L§:§+%-§;
      
      private var §`%_§:uint;
      
      private const HELP_RECORD_TURN1:Array = [[§0$N§.§%! §(§?#]§.LEARNING_1_TURN_1_N2_PART_1_TEXT),§6#A§.§!&6§(§?#]§.LEARNING_1_TURN_1_N2_MC),§0$N§.§%! §(§?#]§.LEARNING_1_TURN_1_N2_PART_2_TEXT)]];
      
      private const HELP_RECORD_TURN2:Array = [[§0$N§.§%! §(§?#]§.LEARNING_1_TURN_2_N1_PART_1_TEXT),§6#A§.§!&6§(§?#]§.LEARNING_1_TURN_2_MC),§0$N§.§%! §(§?#]§.LEARNING_1_TURN_2_N1_PART_2_TEXT)]];
      
      private const HELP_RECORD_TURN3:Array = [[§0$N§.§%! §(§?#]§.LEARNING_1_TURN_3_TEXT),§6#A§.§!&6§(§?#]§.LEARNING_3_TURN_5_N2_MC)]];
      
      private const HELP_RECORD_TURN4:Array = [§0$N§.§%! §(§?#]§.LEARNING_1_TURN_4_TEXT)];
      
      public function §&!5§()
      {
         super(42,true);
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         this.center = new Point(Application.scene.width / 2,Application.scene.height / 2);
         §5"N§ = [[new Point(this.center.x,this.center.y - 50)]];
         §%$D§("LearningMission1_LeftPart",this.center.x - 208,this.center.y + 50);
         §%$D§("LearningMission1_CentralPart",this.center.x + 100,this.center.y + 50,0,1,1,true);
         §%$D§("LearningMission1_RightPart",this.center.x + 309,this.center.y + 50);
      }
      
      override public function §8%r§() : void
      {
         Application.userProfile.§1G§.§@-§([]);
         var _loc1_:§,%r§ = §'%_§.getWeapon(§^$K§);
         _loc1_.shots.value = 999999;
         this.§`%_§ = _loc1_.§4!J§().explosionRadius.value;
         _loc1_.§4!J§().explosionRadius.value = 0;
      }
      
      override protected function § "a§(param1:uint) : void
      {
         if(param1 == 1)
         {
            tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN1);
            §+#%§(this.center.x + 120,this.center.y,§^$K§,-1,this.§<&$§);
            currentUnit.addEventListener(§0%v§.§&!D§,§,![§);
         }
      }
      
      private function §<&$§(param1:Event) : void
      {
         tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN2);
         currentUnit.§8"#§(§^$K§);
         §%$O§.§3%R§(Application.scene,currentUnit.x + 60,currentUnit.y - 120,0.8);
         hideArrow();
         currentUnit.§3%1§(true);
         this.§8$L§ = §2"i§(this.center.x + 400,this.center.y - 90,this.showSecondTarget);
         this.§"&'§ = this.§1"N§();
         Application.scene.addEventListener(§0%v§.FRAME,this.§4#I§);
         Application.scene.addEventListener(§0%v§.FRAME,this.§+&0§);
      }
      
      private function showSecondTarget(param1:Event) : void
      {
         §%$O§.§3%R§(Application.scene,currentUnit.x - 120,currentUnit.y - 120,1);
         tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN4);
         this.§8$L§ = §2"i§(this.center.x - 290,this.center.y - 180,this.§6&;§);
      }
      
      private function §6&;§(param1:Event) : void
      {
         currentUnit.§3%1§(true);
         stripWeapon();
         Application.scene.§9$_§(this.§"&'§);
         Application.scene.removeChild(this.§'&+§);
         this.§"&'§ = null;
         this.§'&+§ = null;
         Application.scene.removeEventListener(§0%v§.FRAME,this.§4#I§);
         §2&6§.§1%h§(§<$Z§.§+%I§);
         tutorialPanel.hide();
         §#!Z§.fire(§#!Z§.§8%S§);
         tutorialPanel.destroy();
      }
      
      private function §1"N§() : MovieClip
      {
         this.§"&'§ = Application.scene.§[&3§(§+"'§.§;$O§,0,0);
         this.§"&'§.transform.colorTransform = new ColorTransform(1.2,0.6,0.6,0.5);
         this.§4#I§();
         return this.§"&'§;
      }
      
      private function §4#I§(param1:Event = null) : void
      {
         var _loc2_:Number = NaN;
         if(this.§8$L§)
         {
            _loc2_ = Math.atan2(this.§8$L§.y - currentUnit.y,this.§8$L§.x - currentUnit.x);
            this.§"&'§.x = currentUnit.x + §!7§.§@$>§ * Math.cos(_loc2_);
            this.§"&'§.y = currentUnit.y + §!7§.§@$>§ * Math.sin(_loc2_);
            if(this.§'&+§ != null)
            {
               Application.scene.removeChild(this.§'&+§);
            }
            this.§'&+§ = §]!u§(currentUnit.x,currentUnit.y,_loc2_,100,true,false,§^$y§.distance(this.§8$L§.x - currentUnit.x,this.§8$L§.y - currentUnit.y),5);
            this.§'&+§.transform.colorTransform = new ColorTransform(1,1,1,0.5);
            Application.scene.addChild(this.§'&+§);
         }
      }
      
      private function §+&0§(param1:Event = null) : void
      {
         var _loc2_:Number = NaN;
         if(Boolean(currentUnit) && Boolean(currentUnit.weapon))
         {
            _loc2_ = Math.atan2(this.§8$L§.y - currentUnit.y,this.§8$L§.x - currentUnit.x);
            if(Math.abs(§!7§(currentUnit.weapon.§;#x§()).getAngle() - _loc2_) < 0.02)
            {
               tutorialPanel.setTutorialRecords(this.HELP_RECORD_TURN3);
               Application.scene.removeEventListener(§0%v§.FRAME,this.§+&0§);
            }
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§8$L§ = null;
         if(this.§"&'§ != null)
         {
            Application.scene.§9$_§(this.§"&'§);
            this.§"&'§ = null;
         }
         if(this.§'&+§ != null)
         {
            Application.scene.removeChild(this.§'&+§);
            this.§'&+§ = null;
         }
         Application.scene.removeEventListener(§0%v§.FRAME,this.§+&0§);
         var _loc1_:§,%r§ = §'%_§.getWeapon(§^$K§);
         _loc1_.shots.value = 2;
         _loc1_.§4!J§().explosionRadius.value = this.§`%_§;
      }
   }
}

