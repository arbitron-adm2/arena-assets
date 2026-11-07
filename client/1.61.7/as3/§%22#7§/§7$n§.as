package §"#7§
{
   import §0!§.*;
   import §6$z§.BonusAttribute;
   
   public class §7$n§ extends BonusAttribute
   {
      
      public function §7$n§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         owner.attributes.hp.§5#l§(param1);
      }
      
      override protected function deactivate(param1:int) : void
      {
         owner.attributes.hp.§5#l§(-param1);
      }
   }
}

