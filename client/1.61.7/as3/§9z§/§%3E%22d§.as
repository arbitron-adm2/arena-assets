package §9z§
{
   import § &5§.§%$O§;
   import §"$+§.§@C§;
   import §&#h§.§-"F§;
   import §4'§.§`"q§;
   import §6",§.§[%w§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §>"d§ extends § !%§
   {
      
      private var §,#G§:Number = 1.2;
      
      private var §<G§:Number = 0.55;
      
      private var scale:Number = this.§<G§;
      
      private var §-"6§:Number = this.§<G§;
      
      public function §>"d§(param1:MovieClip)
      {
         this.scale = this.§-"6§ = §+$w§.§"!u§;
         super(param1);
      }
      
      override protected function §>"i§(param1:Event) : void
      {
         super.§>"i§(param1);
         if(this.§-"6§ != this.scale)
         {
            this.§-"6§ = this.scale;
            §%$O§.§7"l§(Application.scene,this.scale);
            §8"%§.§&S§.§9!?§(this.scale,true);
         }
      }
      
      override public function §[$'§() : void
      {
         this.scale = (this.§,#G§ - this.§<G§) * (100 - getValue()) / 100 + this.§<G§;
      }
      
      public function §^$5§(param1:Number) : void
      {
         this.§-"6§ = this.scale;
         this.scale = param1;
         var _loc2_:int = 100 - (this.scale - this.§<G§) * 100 / (this.§,#G§ - this.§<G§);
         setValue(_loc2_,false);
      }
      
      public function §"&$§() : Number
      {
         return this.§,#G§;
      }
      
      public function §^$Z§() : Number
      {
         return this.§<G§;
      }
      
      public function §&&!§(param1:Number) : void
      {
         this.§<G§ = param1;
         this.§[$'§();
      }
      
      public function §4"'§() : Number
      {
         return this.scale;
      }
      
      override public function destroy() : void
      {
         §8"%§.§&S§.§9!?§(this.scale,false);
         super.destroy();
      }
   }
}

