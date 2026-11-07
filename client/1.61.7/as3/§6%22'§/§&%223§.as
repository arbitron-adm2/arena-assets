package §6"'§
{
   public class §&"3§
   {
      
      public var §?!t§:int;
      
      public var §!"_§:Vector.<int> = new Vector.<int>();
      
      public function §&"3§(param1:int)
      {
         super();
         this.§?!t§ = param1;
         this.§!"_§.push(param1);
      }
      
      public function toString() : String
      {
         var _loc2_:int = 0;
         var _loc1_:String = this.§?!t§ + ":";
         for each(_loc2_ in this.§!"_§)
         {
            _loc1_ += " " + _loc2_.toString();
         }
         return _loc1_;
      }
   }
}

