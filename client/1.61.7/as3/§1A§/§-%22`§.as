package §1A§
{
   import §!$d§.§<$c§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §-"`§ implements §""6§
   {
      
      private var §<&&§:uint;
      
      private var §-$^§:int = -2147483648;
      
      public function §-"`§(param1:uint)
      {
         super();
         this.§<&&§ = param1;
      }
      
      public function reset() : void
      {
         this.§-$^§ = int.MIN_VALUE;
      }
      
      public function update() : void
      {
         this.§-$^§ = getTimer();
      }
      
      public function get ready() : Boolean
      {
         return getTimer() - this.§<&&§ > this.§-$^§;
      }
      
      public function tick() : Boolean
      {
         if(this.ready)
         {
            this.update();
            return true;
         }
         return false;
      }
   }
}

