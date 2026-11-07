package §5!9§
{
   import §4#2§.§,%g§;
   import §@<§.§+%]§;
   import flash.events.Event;
   
   public class §6$,§ extends Event
   {
      
      public static const GET_ITEM:String = "GET_ITEM";
      
      public static const PUT_ITEM:String = "PUT_ITEM";
      
      public static const SWAP_ITEM:String = "SWAP_ITEM";
      
      public static const ITEM_MOUSE_MOVE:String = "ITEM_MOUSE_MOVE";
      
      private var item:§,%g§;
      
      public function §6$,§(param1:String, param2:§,%g§)
      {
         super(param1);
         this.item = param2;
      }
      
      public function getItem() : §,%g§
      {
         return this.item;
      }
      
      override public function clone() : Event
      {
         return new §6$,§(type,this.item);
      }
   }
}

