package ru.pragmatix.wormix.weapons
{
   import §&"c§.§5$n§;
   import §5%S§.§>&-§;
   import §;$%§.§4"9§;
   import §<!G§.§&!;§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class AnvilWeapon extends §&!;§
   {
      
      private static const §>#j§:uint = §<H§.§,%P§ * 2;
      
      public function AnvilWeapon()
      {
         super();
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
      }
      
      override protected function §@%@§(param1:int, param2:int) : Boolean
      {
         var _loc3_:Point = null;
         var _loc4_:int = 0;
         _loc3_ = §>#9§.§>@§(param1,-20,0,Application.scene.height);
         _loc4_ = Application.scene.height - Application.scene.§#%0§();
         var _temp_3:* = Boolean(_loc3_) && _loc3_.y > §>#j§ && _loc3_.y < _loc4_;
         var _loc5_:Boolean = Boolean(_loc3_) && _loc3_.y > §>#j§ && _loc3_.y < _loc4_;
         if(!_loc5_ && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            §>&-§.§[$9§(§0$N§.CALL_REINFORCEMENTS_USELESS,true);
         }
         return _loc5_;
      }
      
      override protected function §^M§(param1:int, param2:int, param3:int) : Number
      {
         return param2;
      }
      
      override protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
         new §4"9§(param1,param2,param3,param4);
         super.§2",§(param1,param2,param3,param4,param5,param6);
      }
   }
}

