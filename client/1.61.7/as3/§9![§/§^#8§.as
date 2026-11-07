package §9![§
{
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §-&5§.*;
   import §0%[§.§1%"§;
   import §4'§.§`"q§;
   import §6$z§.BonusTrait;
   import §7$t§.§&!e§;
   import §;#O§.§+%7§;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §[%§.Rabbit;
   import §^"<§.§+%E§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §^#8§ extends BonusTrait
   {
      
      public static const §]% §:§&$2§ = new §&$2§(18);
      
      public static const § &G§:§&$2§ = new §&$2§(20);
      
      private static const §+"z§:§&$2§ = new §&$2§(2);
      
      public function §^#8§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         if(owner is Rabbit)
         {
            Rabbit(owner).addJumpsPowerBonus(param1);
         }
      }
      
      override protected function deactivate(param1:int) : void
      {
         if(owner is Rabbit)
         {
            Rabbit(owner).addJumpsPowerBonus(-param1);
         }
      }
   }
}

