package §2"L§
{
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §7$t§.§&!e§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   
   public class §##l§
   {
      
      public function §##l§()
      {
         super();
      }
      
      public static function §<%`§(param1:DisplayObject, param2:uint = 0, param3:uint = 0) : BitmapData
      {
         if(!param2)
         {
            param2 = param1.width;
         }
         if(!param3)
         {
            param3 = param1.height;
         }
         var _loc4_:BitmapData = new BitmapData(param2,param3);
         var _loc5_:Matrix = new Matrix(param2 / param1.width,0,0,param3 / param1.height);
         _loc4_.draw(param1,_loc5_);
         return _loc4_;
      }
   }
}

