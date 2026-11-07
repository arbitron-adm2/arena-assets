package §0!§
{
   import §6"'§.§9$Z§;
   import §<$q§.*;
   import §^#[§.§&$2§;
   import flash.events.EventDispatcher;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §7`§ extends EventDispatcher
   {
      
      protected var base:§&$2§ = new §&$2§(0);
      
      protected var §'#-§:§&$2§ = new §&$2§(0);
      
      protected var §+%a§:§&$2§ = new §&$2§(0);
      
      protected var total:§&$2§ = new §&$2§(0);
      
      public function §7`§(param1:int)
      {
         super();
         this.base.value = this.total.value = param1;
      }
      
      public function §3e§(param1:int) : void
      {
         this.base.value = param1;
         this.update();
      }
      
      public function §8!R§() : int
      {
         return this.base.value;
      }
      
      public function §'"S§() : int
      {
         return this.total.value - this.base.value;
      }
      
      public function §5#l§(param1:int) : void
      {
         this.§+%a§.value += param1;
         this.update();
      }
      
      public function §7K§(param1:int) : void
      {
         this.§'#-§.value += param1;
         this.update();
      }
      
      protected function update() : void
      {
         var _loc1_:int = this.§+%a§.value;
         if(this.§'#-§.value != 0)
         {
            _loc1_ += Math.floor(§-q§.§8$G§(this.§'#-§.value,this.base.value));
         }
         this.total.value = this.base.value + _loc1_;
      }
      
      public function get value() : int
      {
         return this.total.value;
      }
      
      public function destroy() : void
      {
         this.base = null;
         this.total = null;
         this.§+%a§ = null;
         this.§'#-§ = null;
      }
   }
}

