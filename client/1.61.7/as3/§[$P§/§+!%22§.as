package §[$P§
{
   import §@<§.§+%]§;
   
   public class §+!"§ extends §+H§
   {
      
      private const §#%Z§:Number = 1;
      
      private const §0&B§:Number = 1.7;
      
      protected var §9#I§:Number = 1;
      
      public function §+!"§(param1:§+%]§, param2:§+H§)
      {
         super(param1,param2);
      }
      
      public function §'$n§(param1:int) : void
      {
         this.§9#I§ += param1 * 0.01;
         this.§9#I§ = Math.min(this.§0&B§,Math.max(this.§#%Z§,this.§9#I§));
      }
   }
}

