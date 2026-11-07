package §1A§
{
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import flash.events.Event;
   
   public class §#"§ implements §""6§
   {
      
      private var §<&&§:uint;
      
      private var lastFrame:int = -2147483648;
      
      public function §#"§(param1:uint)
      {
         super();
         this.§<&&§ = param1;
      }
      
      public function reset() : void
      {
         this.lastFrame = int.MIN_VALUE;
      }
      
      public function update() : void
      {
         this.lastFrame = Application.scene.§@$I§.§<#[§();
      }
      
      public function get ready() : Boolean
      {
         return Application.scene.§@$I§.§<#[§() - this.§<&&§ > this.lastFrame;
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

