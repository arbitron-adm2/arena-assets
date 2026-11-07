package §##y§
{
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §=#g§.*;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.logger.§&`§;
   
   public class CollisionEvent extends Event
   {
      
      public var other:§&"T§;
      
      public var point:Point;
      
      public var stopObject:Boolean = false;
      
      public function CollisionEvent(param1:§&"T§, param2:Point, param3:String = "collide", param4:Boolean = false, param5:Boolean = false)
      {
         super(param3,param4,param5);
         this.other = param1;
         this.point = param2;
      }
      
      override public function clone() : Event
      {
         return new CollisionEvent(this.other,this.point,type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("CollisionEvent","type","bubbles","cancelable","eventPhase","other","point","stopObject");
      }
   }
}

