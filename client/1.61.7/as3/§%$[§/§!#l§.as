package §%$[§
{
   import §4!K§.§^%A§;
   import §65§.§%%o§;
   import §@<§.§+%]§;
   import flash.events.Event;
   
   public class §!#l§ extends §%%o§
   {
      
      public static const NAME:String = "INSAFEZONE_BUFF";
      
      private var §[z§:§^%A§;
      
      public function §!#l§(param1:§^%A§)
      {
         super(NAME,§-"^§);
         this.§[z§ = param1;
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         super.onNextTurn(param1);
         if(§&%M§)
         {
            return;
         }
         var _loc2_:Vector.<§+%]§> = this.§[z§.§#%J§();
         if(_loc2_.indexOf(unit) == -1)
         {
            clear();
         }
      }
      
      override protected function §5#F§() : void
      {
      }
      
      override protected function §0&"§() : void
      {
      }
   }
}

