package §<$q§
{
   import §=$#§.§ b§;
   import §=$#§.§1!$§;
   import flash.utils.Dictionary;
   
   public class §6%b§
   {
      
      private var §4%x§:Dictionary = new Dictionary();
      
      public var §+$`§:Boolean;
      
      public function §6%b§(param1:String, param2:String, param3:String, param4:String, param5:Boolean = false)
      {
         super();
         this.§4%x§[§ b§.§?!X§] = param1;
         this.§4%x§[§ b§.§9$@§] = param2;
         this.§4%x§[§ b§.§ $3§] = param3;
         this.§4%x§[§ b§.§"#g§] = param4;
         this.§+$`§ = param5;
      }
      
      public function §<%v§() : Boolean
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(!Application.userProfile.§!#E§() && this.§4%x§[§ b§.§9$@§] != §1!$§.§%%-§ && this.§4%x§[§ b§.§ $3§] != §1!$§.§%%-§ && this.§4%x§[§ b§.§?!X§] != §1!$§.§%%-§)
         {
            return false;
         }
         for(_loc1_ in this.§4%x§)
         {
            _loc2_ = this.§4%x§[_loc1_];
            if(_loc2_ == §1!$§.§%%-§ || _loc2_ == §1!$§.§!"1§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §[%R§(param1:String) : Boolean
      {
         var _loc2_:String = this.§4%x§[param1];
         return _loc2_ == §1!$§.§%%-§ || _loc2_ == §1!$§.§!"1§;
      }
      
      public function § 1§() : Boolean
      {
         var _loc1_:String = null;
         for each(_loc1_ in this.§4%x§)
         {
            if(_loc1_ == §1!$§.§%%-§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §-"K§(param1:String, param2:String) : void
      {
         this.§4%x§[param1] = param2;
      }
      
      public function §&@§(param1:String) : String
      {
         return this.§4%x§[param1];
      }
   }
}

