package §6$z§
{
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   
   public class §!"§
   {
      
      protected var count:§&$2§ = new §&$2§(0);
      
      protected var owner:§+%]§;
      
      private var §;$s§:Bonus;
      
      private var name:String;
      
      public function §!"§(param1:String)
      {
         super();
         this.name = param1;
      }
      
      public function init(param1:§+%]§, param2:§@"I§) : void
      {
         this.owner = param1;
         this.§;$s§ = param2.getType();
         this.add(param2.getValue());
      }
      
      public function getType() : Bonus
      {
         return this.§;$s§;
      }
      
      public function add(param1:int) : void
      {
         ++this.count.value;
      }
      
      public function subtract(param1:int) : void
      {
         --this.count.value;
      }
      
      protected function activate(param1:int) : void
      {
      }
      
      protected function deactivate(param1:int) : void
      {
      }
      
      public function getCount() : int
      {
         return this.count.value;
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
   }
}

