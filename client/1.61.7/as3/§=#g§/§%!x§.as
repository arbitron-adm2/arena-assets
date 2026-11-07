package §=#g§
{
   import flash.display.Sprite;
   
   public class §%!x§
   {
      
      private var §+P§:Number;
      
      private var _offsetX:Number = 0;
      
      private var _offsetY:Number = 0;
      
      public function §%!x§(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.§+P§ = param1;
         this._offsetX = param2;
         this._offsetY = param3;
      }
      
      public function get scale() : Number
      {
         return this.§+P§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§+P§ = param1;
      }
      
      public function get offsetX() : Number
      {
         return this._offsetX;
      }
      
      public function set offsetX(param1:Number) : void
      {
         this._offsetX = param1;
      }
      
      public function get offsetY() : Number
      {
         return this._offsetY;
      }
      
      public function set offsetY(param1:Number) : void
      {
         this._offsetY = param1;
      }
   }
}

