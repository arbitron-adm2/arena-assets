package §0%[§
{
   import § &5§.§=#P§;
   import §3#T§.Mole;
   import §5!,§.§?!P§;
   
   public class §>&&§
   {
      
      public function §>&&§()
      {
         super();
      }
      
      public static function toString(param1:*, param2:String = ",") : String
      {
         if(param1)
         {
            return "[" + param1.join(param2) + "]";
         }
         return "null";
      }
      
      public static function remove(param1:*, param2:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc3_:int = int(param1.indexOf(param2));
         if(_loc3_ != -1)
         {
            param1.splice(_loc3_,1);
         }
      }
   }
}

