package §2"L§
{
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §#%!§.§%&F§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#s§.*;
   import §6",§.§[%w§;
   import §=!p§.§1e§;
   import §]$&§.§2&2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §,!t§
   {
      
      public function §,!t§()
      {
         super();
      }
      
      public static function §%v§(param1:DisplayObject) : void
      {
         var _loc2_:Matrix = param1.transform.matrix;
         _loc2_.transformPoint(new Point(param1.width / 2,param1.height / 2));
         if(_loc2_.a > 0)
         {
            _loc2_.a = -1 * _loc2_.a;
            _loc2_.tx = param1.x;
         }
         else
         {
            _loc2_.a = -1 * _loc2_.a;
            _loc2_.tx = param1.x;
         }
         param1.transform.matrix = _loc2_;
      }
      
      public static function §4"e§(param1:DisplayObject) : void
      {
         var _loc2_:Matrix = param1.transform.matrix;
         _loc2_.transformPoint(new Point(param1.width / 2,param1.height / 2));
         if(_loc2_.d > 0)
         {
            _loc2_.d = -1 * _loc2_.d;
            _loc2_.ty = param1.y + param1.height;
         }
         else
         {
            _loc2_.d = -1 * _loc2_.d;
            _loc2_.ty = param1.y - param1.height;
         }
         param1.transform.matrix = _loc2_;
      }
   }
}

