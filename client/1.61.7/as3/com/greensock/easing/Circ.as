package com.greensock.easing
{
   import §#"V§.§!&5§;
   import §%"1§.§=#?§;
   import §%# §.§@a§;
   import §&!?§.§"_§;
   import §2B§.§#&E§;
   import §6%2§.§#"B§;
   import §7$t§.§&!e§;
   import §>%S§.§^!V§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   
   public class Circ
   {
      
      public function Circ()
      {
         super();
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1) + param2;
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return -param3 * (Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1) + param2;
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = param1 / (param4 * 0.5);
         if(param1 < 1)
         {
            return -param3 * 0.5 * (Math.sqrt(1 - param1 * param1) - 1) + param2;
         }
         return param3 * 0.5 * (Math.sqrt(1 - (param1 = param1 - 2) * param1) + 1) + param2;
      }
   }
}

