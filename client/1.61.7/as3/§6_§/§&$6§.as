package §6_§
{
   import §##y§.§9§;
   import §=!p§.§&&0§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   
   public class §&$6§ extends §#"+§
   {
      
      public function §&$6§()
      {
         super();
      }
      
      override protected function §2K§(param1:Event) : void
      {
         §8"%§.§^%W§.§[#l§();
         FacebookBankController(Social.§-%=§).callPayControllerMobile(§&&0§(option));
      }
   }
}

