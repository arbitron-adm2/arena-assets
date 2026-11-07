package §0&F§
{
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §0!§.*;
   import §8#o§.§#$s§;
   import §9%W§.§&!P§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   
   public class UpgradeEvent extends Event
   {
      
      public static const NAME:String = "UPGRADE_EVENT";
      
      public var recipeRecord:§#$s§;
      
      public var assemble:Boolean;
      
      public function UpgradeEvent(param1:§#$s§, param2:Boolean = true, param3:String = "UPGRADE_EVENT", param4:Boolean = false, param5:Boolean = false)
      {
         super(param3,param4,param5);
         this.recipeRecord = param1;
         this.assemble = param2;
      }
      
      override public function clone() : Event
      {
         return new UpgradeEvent(this.recipeRecord,this.assemble,type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("UpgradeEvent","type","bubbles","cancelable","eventPhase","recipeRecord","assemble");
      }
   }
}

