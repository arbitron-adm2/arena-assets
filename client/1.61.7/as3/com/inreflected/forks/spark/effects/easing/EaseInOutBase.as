package com.inreflected.forks.spark.effects.easing
{
   import §%&6§.§0%2§;
   import §6#Z§.§&!Z§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §=&!§.§4$z§;
   import §@<§.§+%]§;
   import §`%&§.§3!D§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class EaseInOutBase implements IEaser
   {
      
      private var _easeInFraction:Number = 0.5;
      
      public function EaseInOutBase(param1:Number = 0.5)
      {
         super();
         this.easeInFraction = param1;
      }
      
      public function get easeInFraction() : Number
      {
         return this._easeInFraction;
      }
      
      public function set easeInFraction(param1:Number) : void
      {
         this._easeInFraction = param1;
      }
      
      public function ease(param1:Number) : Number
      {
         var _loc2_:Number = 1 - this.easeInFraction;
         if(param1 <= this.easeInFraction && this.easeInFraction > 0)
         {
            return this.easeInFraction * this.easeIn(param1 / this.easeInFraction);
         }
         return this.easeInFraction + _loc2_ * this.easeOut((param1 - this.easeInFraction) / _loc2_);
      }
      
      protected function easeIn(param1:Number) : Number
      {
         return param1;
      }
      
      protected function easeOut(param1:Number) : Number
      {
         return param1;
      }
   }
}

