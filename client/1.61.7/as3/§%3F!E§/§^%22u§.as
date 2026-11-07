package §?!E§
{
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §&#E§.§;"v§;
   import §+$2§.§;#T§;
   import §+%S§.§?3§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§+%-§;
   import §7!B§.§`"d§;
   import §;!J§.§8!a§;
   import §<%E§.§,$2§;
   import §<%c§.§]"C§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §?$7§.§!§;
   import §?$L§.§0"-§;
   import §^#[§.§&$2§;
   import §^4§.§@#J§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import org.gestouch.events.GestureEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §^"u§ extends §]"C§
   {
      
      private static const §3&+§:uint = §9##§.§;9§ + §+%z§.DRILL;
      
      private static const §;#I§:uint = §9##§.§;9§ + §+%z§.BLOW_TORCH;
      
      private static const §6#L§:uint = §9##§.§;9§ + §+%z§.DYNAMITE;
      
      private var center:Point;
      
      public function §^"u§()
      {
         super(39,true);
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         this.center = new Point(Application.scene.width / 2,Application.scene.height / 2);
         §5"N§ = [[new Point(this.center.x - 120,this.center.y - 50)]];
         §%$D§("LearningMission4_CentralPart",this.center.x - 90,this.center.y + 190);
      }
      
      override protected function § "a§(param1:uint) : void
      {
         var turnNumber:uint = param1;
         if(turnNumber == 1)
         {
            Application.userProfile.§1G§.§@-§([]);
            tutorialPanel.setTutorialRecords([getText(4,1)]);
            §+#%§(this.center.x + 20,this.center.y,§3&+§,-1,this.§'$<§);
            currentUnit.addEventListener(§0%v§.§&!D§,§,![§);
            §8$a§.§&!#§(currentUnit,§0%v§.DISPOSED,function():void
            {
               §2&6§.§1%h§(§<$Z§.§!M§);
            });
         }
         if(currentUnit.record.getBattleBackpack().§8&E§(§6#L§))
         {
            currentUnit.§8"#§(§6#L§);
         }
      }
      
      public function §'$<§(param1:Event = null) : void
      {
         tutorialPanel.setTutorialRecords([getText(4,2)]);
         currentUnit.§8"#§(§3&+§);
         hideArrow();
         currentUnit.x = this.center.x + 20;
         currentUnit.setSpeedXY(0,currentUnit.speedY);
         currentUnit.§3%1§(true);
         §`"d§.§ %r§(this.center.x,this.center.y + 490,40,currentUnit,this.§0"Q§);
      }
      
      public function §0"Q§() : void
      {
         currentUnit.§3%1§(false);
         stripWeapon();
         §8"%§.§?!W§.§4"m§.§9!d§();
         tutorialPanel.setTutorialRecords([getText(4,3)]);
         §+#%§(this.center.x - 50,this.center.y + 450,§;#I§,-1,this.§=%3§);
         Application.scene.§@$I§.§;x§([§#!Z§.§@!I§,§#!Z§.§<$T§]);
      }
      
      public function §=%3§(param1:Event = null) : void
      {
         Application.scene.§@$I§.§;x§([§#!Z§.§3"E§,§#!Z§.§^!x§,§#!Z§.§+!X§,§#!Z§.§@%%§,§#!Z§.§]$E§,§#!Z§.§@R§,§#!Z§.§%H§,§#!Z§.§@!I§,§#!Z§.§<$T§,§#!Z§.§!&,§]);
         currentUnit.§8"#§(§;#I§);
         showArrow(this.center.x - 70,this.center.y + 480);
         currentUnit.x = this.center.x - 50;
         currentUnit.setSpeedXY(0,currentUnit.speedY);
         §`"d§.§ %r§(this.center.x - 80,this.center.y + 480,40,currentUnit,this.§&#'§);
         tutorialPanel.setTutorialRecords([getText(4,4)]);
      }
      
      public function §&#'§() : void
      {
         §+#%§(this.center.x - 330,this.center.y + 450,§6#L§,999,this.§-$'§);
         §`"d§.§ %r§(this.center.x - 240,this.center.y + 470,50,currentUnit,this.§,"V§);
         tutorialPanel.setTutorialRecords([getText(4,5)]);
      }
      
      public function §,"V§() : void
      {
         stripWeapon();
         currentUnit.§3%1§(true);
         §%$O§.§3%R§(Application.scene,this.center.x - 300,this.center.y + 450);
         tutorialPanel.setTutorialRecords([getText(4,6)]);
         §8$a§.§%!E§(30,function():void
         {
            Application.scene.§@$I§.§;x§([]);
            currentUnit.§3%1§(false);
         });
      }
      
      public function §-$'§(param1:Event = null) : void
      {
         hideArrow();
         var _loc2_:§+%-§ = §2"i§(this.center.x - 400,this.center.y + 450,this.§6&;§,true,true);
         currentUnit.§8"#§(§6#L§);
         tutorialPanel.setTutorialRecords([getText(4,8)]);
      }
      
      private function §6&;§(param1:Event) : void
      {
         Application.scene.§@$I§.§;x§([]);
         currentUnit.§3%1§(true);
         stripWeapon();
         §2&6§.§1%h§(§<$Z§.§+%I§);
         tutorialPanel.hide();
         §#!Z§.fire(§#!Z§.§8%S§);
         tutorialPanel.destroy();
      }
   }
}

