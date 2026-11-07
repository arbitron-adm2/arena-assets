package §"#7§
{
   import § !P§.*;
   import §&#h§.*;
   import §6$z§.BonusAttribute;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §`"p§.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   
   public class §7$]§ extends BonusAttribute
   {
      
      public function §7$]§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         owner.attributes.§8$e§.§5#l§(param1);
      }
      
      override protected function deactivate(param1:int) : void
      {
         owner.attributes.§8$e§.§5#l§(-param1);
      }
   }
}

