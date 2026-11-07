package §0"p§
{
   import §%"1§.§@%;§;
   import §&&6§.§>V§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §7$t§.§^$E§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §30§
   {
      
      public function §30§()
      {
         super();
      }
      
      public static function §;$0§(param1:Array, param2:uint = 0) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:Number = 0;
         for each(_loc5_ in param1)
         {
            _loc6_ = Boolean(§30§.isVisible(_loc5_));
            if(_loc6_)
            {
               if(_loc3_ > 0)
               {
                  _loc5_.x = _loc4_ + param2;
               }
               else
               {
                  _loc5_.x = 0;
               }
               _loc4_ = _loc5_.x + _loc5_.width;
               _loc3_++;
            }
         }
      }
      
      public static function §=!_§(param1:§""t§) : Number
      {
         return §4$1§(param1.§#!`§()).width;
      }
      
      public static function §4$1§(param1:DisplayObjectContainer) : Rectangle
      {
         var _loc4_:uint = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Rectangle = new Rectangle();
         var _loc3_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc5_ = _loc3_.getChildAt(_loc4_);
            if(isVisible(_loc5_))
            {
               _loc2_.top = Math.min(_loc2_.top,_loc5_.y);
               _loc2_.bottom = Math.max(_loc2_.bottom,_loc5_.y + _loc5_.height);
               _loc2_.left = Math.min(_loc2_.left,_loc5_.x);
               _loc2_.right = Math.max(_loc2_.right,_loc5_.x + _loc5_.width);
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      private static function isVisible(param1:Object) : Boolean
      {
         return param1 is DisplayObject && DisplayObject(param1).visible || param1 is §;"L§ && §;"L§(param1).isVisible();
      }
   }
}

