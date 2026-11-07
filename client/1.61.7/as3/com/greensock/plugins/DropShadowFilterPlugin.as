package com.greensock.plugins
{
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §+%S§.§[&;§;
   import §-8§.*;
   import §9%W§.§!7§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import com.greensock.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class DropShadowFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array = ["distance","angle","color","alpha","blurX","blurY","strength","quality","inner","knockout","hideObject"];
      
      public function DropShadowFilterPlugin()
      {
         super();
         this.propName = "dropShadowFilter";
         this.overwriteProps = ["dropShadowFilter"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _type = DropShadowFilter;
         initFilter(param2,new DropShadowFilter(0,45,0,0,0,0,1,int(param2.quality) || 2,param2.inner,param2.knockout,param2.hideObject),_propNames);
         return true;
      }
   }
}

