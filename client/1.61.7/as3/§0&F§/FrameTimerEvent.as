package §0&F§
{
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import flash.events.Event;
   
   public class FrameTimerEvent extends Event
   {
      
      public static const §8$`§:String = "FrameTimer";
      
      public static const §;$>§:String = "FrameTimerComplete";
      
      public var iterations:uint;
      
      public function FrameTimerEvent(param1:uint, param2:String, param3:Boolean = false, param4:Boolean = true)
      {
         super(param2,param3,param4);
         this.iterations = param1;
      }
      
      override public function clone() : Event
      {
         return new FrameTimerEvent(this.iterations,type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("FrameTimerEvent","type","bubbles","cancelable","eventPhase","iterations");
      }
   }
}

