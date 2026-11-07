package §#k§
{
   import flash.events.Event;
   
   public class §9$v§ extends Event
   {
      
      public var message:Object;
      
      public function §9$v§(param1:Object, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param2,param3,param4);
         this.message = param1;
      }
      
      override public function clone() : Event
      {
         return new §9$v§(this.message,type,bubbles,cancelable);
      }
   }
}

