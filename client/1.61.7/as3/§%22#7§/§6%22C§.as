package §"#7§
{
   import §1#p§.§=$G§;
   import §6$z§.BonusAttribute;
   
   public class §6"C§ extends BonusAttribute
   {
      
      public function §6"C§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         owner.attributes.attack.§5#l§(param1);
      }
      
      override protected function deactivate(param1:int) : void
      {
         owner.attributes.attack.§5#l§(-param1);
      }
   }
}

