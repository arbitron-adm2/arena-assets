package §`%&§
{
   import §%Q§.§<&A§;
   import §'$Z§.§2#f§;
   import §2#H§.§`#D§;
   import §4$b§.§2m§;
   import §8$Z§.§9!&§;
   import §<V§.§!&-§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §0$]§ implements §<&A§
   {
      
      private static const §-$u§:int = 21;
      
      private var §=$y§:uint;
      
      public function §0$]§(param1:int = 40)
      {
         super();
         this.§=$y§ = param1;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc7_:§+%]§ = null;
         var _loc8_:* = 0;
         var _loc9_:Point = null;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc6_:Object = null;
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = 20;
            _loc9_ = new Point(_loc7_.x,0);
            do
            {
               _loc9_ = §>#9§.§>@§(_loc7_.x,_loc9_.y,0,Application.scene.height);
               if(_loc9_)
               {
                  while(_loc8_ > 0)
                  {
                     if(!§>#9§.point(_loc9_.x,_loc9_.y))
                     {
                        break;
                     }
                     _loc9_.y += §-$u§;
                     _loc8_--;
                  }
               }
            }
            while(Boolean(_loc9_) && Boolean(_loc9_.y < _loc7_.y) && _loc8_ > 0);
            if(Boolean(_loc9_) && _loc9_.y >= _loc7_.y)
            {
               _loc6_ = {
                  "rate":this.§=$y§,
                  "point":new Point(_loc7_.x,_loc7_.y)
               };
            }
         }
         return _loc6_ != null ? {
            "angle":0,
            "power":0,
            "clearPathPc":100,
            "point":_loc6_.point,
            "rate":_loc6_.rate
         } : null;
      }
   }
}

