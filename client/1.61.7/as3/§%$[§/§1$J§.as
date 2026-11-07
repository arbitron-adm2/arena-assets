package §%$[§
{
   import §+%S§.§2&>§;
   import §2#H§.§,"R§;
   import §4!K§.§^%A§;
   import §65§.§%%o§;
   import §@<§.§+%]§;
   import flash.events.Event;
   
   public class §1$J§ extends §%%o§
   {
      
      public static const NAME:String = "OUTSAFEZONE_DEBUFF";
      
      private static const §"S§:Array = [§2&>§.NAME,§,"R§.§5!d§];
      
      private var §!"z§:§+%]§;
      
      private var §[z§:§^%A§;
      
      public function §1$J§(param1:§+%]§, param2:§^%A§)
      {
         super(NAME,§-"^§);
         this.§!"z§ = param1;
         this.§[z§ = param2;
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         super.onNextTurn(param1);
         if(§&%M§)
         {
            return;
         }
      }
      
      override protected function §5#F§() : void
      {
      }
      
      override protected function §0&"§() : void
      {
      }
      
      public function get owner() : §+%]§
      {
         return this.§!"z§;
      }
   }
}

