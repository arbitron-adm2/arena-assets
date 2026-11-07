package §&#h§
{
   import §"!C§.§3#n§;
   import §9%W§.§8#p§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §!#x§
   {
      
      private var §1!E§:Array = [];
      
      private var §%#o§:Array = [];
      
      public function §!#x§()
      {
         super();
      }
      
      public function §4Q§(param1:uint, param2:uint = 1) : void
      {
         if(param2 > 0)
         {
            this.§?l§(param1,this.valueOf(param1) + param2);
         }
      }
      
      public function §?l§(param1:uint, param2:int) : void
      {
         var _loc3_:int = this.§1!E§.indexOf(param1);
         if(_loc3_ != -1)
         {
            this.§%#o§[_loc3_] = param2;
         }
         else
         {
            this.§1!E§.push(param1);
            this.§%#o§.push(param2);
         }
      }
      
      public function valueOf(param1:uint) : int
      {
         var _loc2_:uint = uint(this.§1!E§.indexOf(param1));
         return _loc2_ != -1 ? int(this.§%#o§[_loc2_]) : 0;
      }
      
      public function get ids() : Array
      {
         return this.§1!E§.concat();
      }
      
      public function get values() : Array
      {
         return this.§%#o§.concat();
      }
      
      public function get count() : uint
      {
         return this.§1!E§.length;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         var _loc2_:int = 0;
         var _loc3_:int = int(this.ids.length);
         while(_loc2_ < _loc3_)
         {
            _loc1_ += (_loc2_ != 0 ? "," : "") + "(" + this.ids[_loc2_] + " -> " + this.values[_loc2_] + ")";
            _loc2_++;
         }
         return _loc1_;
      }
   }
}

