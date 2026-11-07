package §0&F§
{
   import § !8§.§`!d§;
   import § !P§.§<#q§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   
   public class §0$_§ extends Event
   {
      
      public static const NAME:String = "ACHIEVEMENTS_UPDATED";
      
      public var records:§<#q§;
      
      public function §0$_§(param1:§<#q§, param2:String = "ACHIEVEMENTS_UPDATED", param3:Boolean = false, param4:Boolean = false)
      {
         super(param2,param3,param4);
         this.records = param1;
      }
      
      override public function clone() : Event
      {
         return new §0$_§(this.records,type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("DamageEvent","type","bubbles","cancelable","eventPhase","records");
      }
   }
}

