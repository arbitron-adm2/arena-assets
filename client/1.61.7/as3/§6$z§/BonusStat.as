package §6$z§
{
   import §^#[§.§&$2§;
   
   public class BonusStat extends §!"§
   {
      
      public static const NAME:String = "BonusStat";
      
      protected var §]%&§:§&$2§ = new §&$2§(0);
      
      public function BonusStat(param1:String = "BonusStat")
      {
         super(param1);
      }
      
      override public function add(param1:int) : void
      {
         super.add(param1);
         this.§]%&§.value += param1;
      }
      
      override public function subtract(param1:int) : void
      {
         super.subtract(param1);
         this.§]%&§.value -= param1;
      }
      
      public function getValue() : int
      {
         return this.§]%&§.value;
      }
   }
}

