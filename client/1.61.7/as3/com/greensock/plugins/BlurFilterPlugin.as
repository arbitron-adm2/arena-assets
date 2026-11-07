package com.greensock.plugins
{
   import §%"1§.§@%;§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import §@$§.§`&C§;
   import §`%&§.§`§;
   import com.greensock.*;
   import flash.filters.BlurFilter;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class BlurFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array = ["blurX","blurY","quality"];
      
      public function BlurFilterPlugin()
      {
         super();
         this.propName = "blurFilter";
         this.overwriteProps = ["blurFilter"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _type = BlurFilter;
         initFilter(param2,new BlurFilter(0,0,int(param2.quality) || 2),_propNames);
         return true;
      }
   }
}

