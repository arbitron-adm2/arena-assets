package §6$z§
{
   import §1#p§.*;
   import §<%c§.§>!^§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import flash.display.DisplayObjectContainer;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class BonusTrait extends §!"§
   {
      
      public static const NAME:String = "BonusTrait";
      
      public function BonusTrait()
      {
         super(NAME);
      }
      
      override public function add(param1:int) : void
      {
         super.add(param1);
         if(count.value == 1)
         {
            activate(param1);
         }
      }
      
      override public function subtract(param1:int) : void
      {
         super.subtract(param1);
         if(count.value == 0)
         {
            deactivate(param1);
         }
      }
   }
}

