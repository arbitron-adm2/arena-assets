package §6$z§
{
   public class BonusAttribute extends §!"§
   {
      
      public static const NAME:String = "BonusAttribute";
      
      public function BonusAttribute()
      {
         super(NAME);
      }
      
      override public function add(param1:int) : void
      {
         super.add(param1);
         activate(param1);
      }
      
      override public function subtract(param1:int) : void
      {
         super.subtract(param1);
         deactivate(param1);
      }
   }
}

