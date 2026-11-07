package §"%H§
{
   import §0%[§.§0%§;
   import §^#[§.§&$2§;
   
   public class §1! § implements §6$3§
   {
      
      private var §9!4§:§&$2§;
      
      private var §"$]§:String;
      
      private var §5!A§:Vector.<§`"w§>;
      
      public function §1! §(param1:int, param2:String, param3:Array)
      {
         var _loc4_:§`"w§ = null;
         super();
         this.§9!4§ = new §&$2§(param1);
         this.§"$]§ = param2;
         this.§5!A§ = new Vector.<§`"w§>(0);
         for each(_loc4_ in param3)
         {
            this.§5!A§[this.§5!A§.length] = _loc4_;
         }
      }
      
      public function get id() : int
      {
         return this.§9!4§.value;
      }
      
      public function get description() : String
      {
         return this.§"$]§;
      }
      
      public function get levels() : Vector.<§`"w§>
      {
         return this.§5!A§;
      }
      
      public function §]G§(param1:uint) : String
      {
         var _loc2_:String = this.§"$]§;
         var _loc3_:uint = 0;
         if(param1 < this.§5!A§.length)
         {
            _loc3_ = this.§5!A§[param1].maxValue;
            if(this.§5!A§[param1].description)
            {
               _loc2_ = this.§5!A§[param1].description;
            }
         }
         return §0%§.format(_loc2_,{"progress":_loc3_});
      }
   }
}

