package ru.pragmatix.wormix.weapons
{
   import §&"c§.§5$n§;
   import §;$%§.§'%W§;
   import §<!G§.§&!;§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   
   public class NapalmStrike extends §&!;§
   {
      
      private static const §5$`§:uint = 5;
      
      private static const §1%v§:uint = 50;
      
      private var missiles:§&$2§ = new §&$2§(0);
      
      public function NapalmStrike()
      {
         super();
      }
      
      override public function §""2§(param1:Object) : void
      {
         this.missiles.value = param1["missiles"] ? int(param1["missiles"].value) : int(§5$`§);
         super.§""2§(param1);
      }
      
      override protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
         super.§2",§(param1,param2,param3,param4,param5,param6);
         param3 -= int((this.missiles.value - 1) * §1%v§ / 2);
         var _loc8_:int = 0;
         while(_loc8_ < this.missiles.value)
         {
            new §'%W§(param1,param2,param3 + §1%v§ * _loc8_,param4,param5,param6);
            _loc8_++;
         }
      }
   }
}

