package §##y§
{
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.weapons.*;
   
   public class BeforeHitEvent extends Event
   {
      
      public var §^w§:§&"T§ = null;
      
      public var subject:§&"T§;
      
      public var cancelCollision:Boolean = false;
      
      public function BeforeHitEvent(param1:§&"T§, param2:String = "beforeHit", param3:Boolean = false, param4:Boolean = false)
      {
         super(param2,param3,param4);
         this.subject = param1;
      }
      
      override public function clone() : Event
      {
         var _loc1_:BeforeHitEvent = new BeforeHitEvent(this.subject,type,bubbles,cancelable);
         _loc1_.cancelCollision = this.cancelCollision;
         _loc1_.§^w§ = this.§^w§;
         return _loc1_;
      }
      
      override public function toString() : String
      {
         return formatToString("BeforeHitEvent","type","bubbles","cancelable","eventPhase","cancelCollision");
      }
   }
}

