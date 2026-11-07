package §+%S§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import §!$d§.*;
   import §##j§.§!%&§;
   import §##j§.§0%=§;
   import §##j§.§7%R§;
   import §##j§.§<!P§;
   import §##j§.§>"M§;
   import §##j§.§`%g§;
   import §#k§.§-#S§;
   import §%L§.§%%w§;
   import §'!Z§.§6S§;
   import §,"v§.§9%d§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §65§.§%%o§;
   import §7"Q§.§0$L§;
   import §7$t§.§??§;
   import §8$V§.TeamController;
   import §8$V§.§`"c§;
   import §;#O§.§+%7§;
   import §<"L§.§##-§;
   import §<%E§.§,$2§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.§^"2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.server.RemoveFromGroupResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class § #R§ extends §%%o§ implements §^c§
   {
      
      public static const NAME:String = "UNDERWATER_BREATH_BUFF";
      
      private var §8<§:§]$q§;
      
      private var §1!j§:§6S§;
      
      public function § #R§(param1:uint)
      {
         super(NAME,param1);
      }
      
      override protected function §5#F§() : void
      {
         this.§1!j§ = new §6S§("UnderwaterBreathBuffIdle","UnderwaterBreathBuffAppear","UnderwaterBreathBuffFade");
         this.§1!j§.appear(unit);
         this.§8<§ = new §]$q§(NAME);
         this.§8<§.§3%<§(new §@"I§(Bonus.§&$x§,duration.value));
         unit.bonuses.§]!X§(this.§8<§);
         Application.scene.addEventListener(§0%v§.EOT,this.trigger);
      }
      
      override protected function §0&"§() : void
      {
         if(this.§1!j§)
         {
            this.§1!j§.§=$5§();
            this.§1!j§ = null;
         }
         unit.bonuses.§9=§(this.§8<§);
         this.§8<§ = null;
         Application.scene.removeEventListener(§0%v§.EOT,this.trigger);
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
      }
      
      protected function trigger(param1:Event) : void
      {
         if(!§&%M§)
         {
            if(Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.activeUnit == unit)
            {
               super.onNextTurn(null);
            }
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new § #R§(§8#z§()));
      }
      
      public function playAnimations() : void
      {
         if(this.§1!j§)
         {
            this.§1!j§.playAnimations();
         }
      }
      
      public function stopAnimations() : void
      {
         if(this.§1!j§)
         {
            this.§1!j§.stopAnimations();
         }
      }
   }
}

