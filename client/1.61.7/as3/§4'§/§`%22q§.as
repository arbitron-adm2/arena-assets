package §4'§
{
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   
   public class §`"q§
   {
      
      public var moneyType:§+$A§;
      
      public var price:§'$2§;
      
      public var message:String;
      
      public var §&#q§:Boolean;
      
      public function §`"q§(param1:§+$A§, param2:§'$2§, param3:String = "", param4:Boolean = false)
      {
         super();
         this.moneyType = param1;
         this.price = param2;
         this.message = param3;
         this.§&#q§ = param4;
      }
      
      public function getValue() : int
      {
         var _loc1_:int = 0;
         switch(this.moneyType)
         {
            case §+$A§.REAL:
               _loc1_ = int(this.price.realPrice);
               break;
            case §+$A§.INGAME:
               _loc1_ = int(this.price.ingamePrice);
         }
         return _loc1_;
      }
   }
}

