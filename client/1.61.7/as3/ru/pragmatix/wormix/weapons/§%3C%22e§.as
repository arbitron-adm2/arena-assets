package ru.pragmatix.wormix.weapons
{
   import §@<§.§+%]§;
   import §`%&§.§2§;
   import flash.events.Event;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §<"e§ extends §,%r§
   {
      
      private var targets:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      protected var §-T§:uint;
      
      public function §<"e§(param1:uint)
      {
         super();
         this.§-T§ = param1;
         §-g§ = new §2#7§(200,param1);
      }
      
      override public function attach(param1:§+%]§) : void
      {
         super.attach(param1);
         §?"'§ = false;
      }
      
      override public function §?!K§() : void
      {
         super.§?!K§();
      }
      
      override public function activate() : void
      {
         if(!§?"'§)
         {
            super.activate();
         }
      }
      
      private function §!i§() : void
      {
         var _loc1_:§+%]§ = null;
         this.targets = this.pickTargets();
         for each(_loc1_ in this.targets)
         {
            _loc1_.graphics.colorTransform(40,-30,-20);
         }
      }
      
      private function §7$<§() : void
      {
         var _loc1_:§+%]§ = null;
         for each(_loc1_ in this.targets)
         {
            _loc1_.graphics.colorTransform(-40,30,20);
         }
         this.targets = new Vector.<§+%]§>(0);
      }
      
      protected function pickTargets() : Vector.<§+%]§>
      {
         var _loc1_:int = owner.x + owner.direction * this.§-T§;
         var _loc2_:int = owner.y;
         return §<H§.§5"]§(_loc1_,_loc2_,paramSet.damageRadius.value);
      }
      
      override protected function onFrame(param1:Event) : void
      {
         this.§7$<§();
         if(owner != null)
         {
            this.§!i§();
         }
      }
   }
}

