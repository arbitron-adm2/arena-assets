package § "%§
{
   public class §=#m§ extends §'Y§
   {
      
      public function §=#m§()
      {
         super();
      }
      
      override protected function §"$$§(param1:int) : int
      {
         return param1 % 10 == 1 && param1 % 100 != 11 ? 0 : (param1 % 10 >= 2 && param1 % 10 <= 4 && (param1 % 100 < 10 || param1 % 100 >= 20) ? 1 : 2);
      }
   }
}

