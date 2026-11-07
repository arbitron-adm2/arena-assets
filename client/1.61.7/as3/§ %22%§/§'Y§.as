package § "%§
{
   import §=!p§.§!"9§;
   
   public class §'Y§ implements §7"6§
   {
      
      public function §'Y§()
      {
         super();
      }
      
      public function §0$o§(param1:§!"9§) : String
      {
         var _loc2_:String = param1.getSocialData().§#$5§();
         var _loc3_:String = param1.getSocialData().§8!_§();
         return (_loc2_ ? _loc2_ : "") + " " + (_loc3_ ? _loc3_ : "");
      }
      
      public function §4!]§(param1:int, param2:Array) : String
      {
         if(param2.length == 0)
         {
            return "";
         }
         var _loc3_:int = this.§"$$§(param1);
         return _loc3_ < param2.length ? param2[_loc3_] : param2[0];
      }
      
      protected function §"$$§(param1:int) : int
      {
         return 0;
      }
   }
}

