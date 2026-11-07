package §4%O§
{
   import §-%B§.*;
   import §3#a§.§-#M§;
   import §6_§.*;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.gui.§#A§;
   
   public class §-#e§ extends §4#_§
   {
      
      private var §?!,§:uint;
      
      public function §-#e§(param1:TextField)
      {
         super(param1);
      }
      
      public function set value(param1:uint) : void
      {
         this.§?!,§ = param1;
         param1 /= 1000;
         var _loc2_:uint = uint(param1 / 3600);
         var _loc3_:uint = uint(param1 % 3600 / 60);
         var _loc4_:uint = uint(param1 % 60);
         this.§4$]§().text = this.§5"v§(_loc2_) + ":" + this.§5"v§(_loc3_) + ":" + this.§5"v§(_loc4_);
      }
      
      public function get value() : uint
      {
         return this.§?!,§;
      }
      
      private function §5"v§(param1:uint) : String
      {
         if(param1 > 9)
         {
            return param1.toString();
         }
         return "0" + param1.toString();
      }
      
      private function §4$]§() : TextField
      {
         return container as TextField;
      }
   }
}

