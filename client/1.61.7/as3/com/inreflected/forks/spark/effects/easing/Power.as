package com.inreflected.forks.spark.effects.easing
{
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import flash.errors.IllegalOperationError;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.RestrictionItemStructure;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class Power extends EaseInOutBase
   {
      
      private var _exponent:Number;
      
      public function Power(param1:Number = 0.5, param2:Number = 2)
      {
         super(param1);
         this.exponent = param2;
      }
      
      public function get exponent() : Number
      {
         return this._exponent;
      }
      
      public function set exponent(param1:Number) : void
      {
         this._exponent = param1;
      }
      
      override protected function easeIn(param1:Number) : Number
      {
         return Math.pow(param1,this._exponent);
      }
      
      override protected function easeOut(param1:Number) : Number
      {
         return 1 - Math.pow(1 - param1,this._exponent);
      }
   }
}

