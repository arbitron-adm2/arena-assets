package §0&F§
{
   import §&#h§.§5f§;
   import §0%[§.§""n§;
   import §2"L§.§^$y§;
   import §2#W§.PvpChestBox;
   import §6",§.§[%w§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   
   public class SelectObjectEvent extends Event
   {
      
      public static const NAME:String = "SELECT_OBJECT_EVENT";
      
      public var object:Object;
      
      public function SelectObjectEvent(param1:Object, param2:String = "SELECT_OBJECT_EVENT", param3:Boolean = false, param4:Boolean = false)
      {
         super(param2,param3,param4);
         this.object = param1;
      }
      
      override public function clone() : Event
      {
         return new SelectObjectEvent(this.object,type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("SelectObjectEvent","type","bubbles","cancelable","eventPhase","object");
      }
   }
}

