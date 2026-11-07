package §^#[§
{
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §0%[§.§1%"§;
   import §7!B§.§&"T§;
   import §<%E§.§0#G§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §]!0§
   {
      
      private var val:Number;
      
      private var §6#&§:Number;
      
      private var §[%L§:Number;
      
      public function §]!0§(param1:Number = 0, param2:int = 0)
      {
         super();
         this.§6#&§ = Math.random() * 7.37252 + 0.137329;
         this.§[%L§ = Math.random() * 273.498 + 92.48038;
         this.val = param1 * this.§6#&§ + this.§[%L§;
      }
      
      public function get value() : Number
      {
         return (this.val - this.§[%L§) / this.§6#&§;
      }
      
      public function set value(param1:Number) : void
      {
         this.val = param1 * this.§6#&§ + this.§[%L§;
      }
   }
}

