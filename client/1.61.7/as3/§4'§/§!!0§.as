package §4'§
{
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   
   public class §!!0§ extends §'$2§
   {
      
      private var §1%U§:int;
      
      private var §,#'§:Vector.<uint>;
      
      private var §>!'§:Vector.<uint>;
      
      public function §!!0§(param1:uint = 0, param2:uint = 0, param3:uint = 0, param4:Vector.<uint> = null, param5:Vector.<uint> = null)
      {
         super(param1,param2);
         this.§1%U§ = param3;
         this.§,#'§ = param4 != null ? param4 : new Vector.<uint>(0);
         this.§>!'§ = param5 != null ? param5 : new Vector.<uint>(0);
      }
      
      public function §4O§(param1:§"@§) : uint
      {
         switch(param1)
         {
            case §+$A§.REAL:
               return realPrice;
            case §+$A§.INGAME:
               return ingamePrice;
            case §"@§.BATTLE_TOKENS:
               return this.§1%U§;
            default:
               return 0;
         }
      }
      
      public function §#$`§(param1:uint = 0, param2:uint = 0) : void
      {
         if(this.§,#'§.indexOf(param1) == -1)
         {
            this.§,#'§.push(param1);
            this.§>!'§.push(param2);
         }
      }
      
      public function get § &,§() : int
      {
         return this.§1%U§;
      }
      
      public function set § &,§(param1:int) : void
      {
         this.§1%U§ = param1;
      }
      
      override public function toString() : String
      {
         return "CurrencyPrice {" + " realPrice=" + String(realPrice) + " ingamePrice=" + String(ingamePrice) + " battleTokens=" + String(this.§1%U§) + " reagentIds=" + this.§,#'§ + " reagentAmounts=" + this.§>!'§ + " }";
      }
      
      public function get §`&>§() : Vector.<uint>
      {
         return this.§,#'§;
      }
      
      public function set §`&>§(param1:Vector.<uint>) : void
      {
         this.§,#'§ = param1;
      }
      
      public function get §,#b§() : Vector.<uint>
      {
         return this.§>!'§;
      }
      
      public function set §,#b§(param1:Vector.<uint>) : void
      {
         this.§>!'§ = param1;
      }
   }
}

