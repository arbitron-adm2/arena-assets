package §+5§
{
   import § #9§.*;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §4f§.§-&§;
   import §8$V§.*;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §=7§.§?%4§;
   import §?$L§.§ "N§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import com.greensock.loading.*;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§5%?§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   
   public class §7!U§ extends §2!R§
   {
      
      protected var §3!O§:Boolean = false;
      
      public function §7!U§(param1:§+%]§, param2:§5$n§, param3:§5$n§)
      {
         super(param1,param2,param3);
         §,q§.push(§-&§.IGNORE_MAGNET);
         bounceSounds = [§`!v§.§5%;§];
      }
      
      override protected function update() : void
      {
         if(frames % 23 == 0)
         {
            this.jump();
         }
         if((frames - 1) % 42 == 0)
         {
            §@%;§.play(§`!v§.SHEEP);
         }
      }
      
      public function jump() : void
      {
         if(!this.§3!O§)
         {
            this.§3!O§ = true;
            §6a§(physicModel).crawling = 0;
            §5!?§(direction * §+h§,-12);
         }
      }
      
      override protected function §#%F§(param1:Event) : void
      {
         this.§3!O§ = true;
         super.§#%F§(param1);
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         this.§3!O§ = false;
         super.§^$e§(param1);
      }
   }
}

