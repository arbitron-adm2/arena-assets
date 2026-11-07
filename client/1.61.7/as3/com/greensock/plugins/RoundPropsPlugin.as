package com.greensock.plugins
{
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<#`§;
   
   public class RoundPropsPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      public function RoundPropsPlugin()
      {
         super();
         this.propName = "roundProps";
         this.overwriteProps = [];
         this.round = true;
      }
      
      public function add(param1:Object, param2:String, param3:Number, param4:Number) : void
      {
         addTween(param1,param2,param3,param3 + param4,param2);
         this.overwriteProps[this.overwriteProps.length] = param2;
      }
   }
}

