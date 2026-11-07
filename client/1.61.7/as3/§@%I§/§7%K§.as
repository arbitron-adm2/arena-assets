package §@%I§
{
   import flash.events.Event;
   
   public class §7%K§ extends Event
   {
      
      public static const NAME:String = "BOSS_ACHIEVEMENT_EVENT";
      
      public var code:uint;
      
      public var value:int;
      
      public function §7%K§(param1:uint, param2:int = 0)
      {
         this.code = param1;
         this.value = param2;
         super(NAME);
      }
   }
}

