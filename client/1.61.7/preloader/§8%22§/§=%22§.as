package §8"§
{
   import §0§.§+!§;
   
   public class §="§ extends § &§
   {
      
      public function §="§(param1:§`%§, param2:§+!§)
      {
         super(param1,param2);
      }
      
      override public function §5$§() : String
      {
         var _loc1_:String = null;
         if(§3&§.data.referrerId)
         {
            _loc1_ = §3&§.data.referrerId;
         }
         return _loc1_;
      }
      
      override public function §]"§() : String
      {
         var _loc2_:String = null;
         var _loc1_:String = null;
         if(§=#§["ad_id"])
         {
            _loc1_ = §=#§["ad_id"];
         }
         else
         {
            _loc2_ = §=#§["custom_args"];
            if(_loc2_)
            {
               _loc1_ = _loc2_.split("ad_id=")[1];
            }
         }
         return _loc1_;
      }
   }
}

