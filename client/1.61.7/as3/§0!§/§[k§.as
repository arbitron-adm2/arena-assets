package §0!§
{
   import §2"L§.§^$y§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §^#[§.§&$2§;
   
   public class §[k§ extends §7`§
   {
      
      public static const § $e§:§&$2§ = new §&$2§(18);
      
      public static const §8&4§:§&$2§ = new §&$2§(5);
      
      private static const §%"z§:§&$2§ = new §&$2§(36);
      
      private static const §7Q§:§&$2§ = new §&$2§(45);
      
      private var owner:§+%]§;
      
      public function §[k§(param1:§+%]§)
      {
         this.owner = param1;
         super(§ $e§.value);
      }
      
      override protected function update() : void
      {
         super.update();
         if(value < §8&4§.value)
         {
            total.value = §8&4§.value;
         }
         else if(value > §%"z§.value)
         {
            total.value = this.owner is Cat && Cat(this.owner).isClimbing() && value > §7Q§.value ? §7Q§.value : §%"z§.value;
         }
         if(this.owner.crawling != 0)
         {
            this.owner.crawling = §^$y§.sign(this.owner.crawling) * total.value;
         }
      }
   }
}

