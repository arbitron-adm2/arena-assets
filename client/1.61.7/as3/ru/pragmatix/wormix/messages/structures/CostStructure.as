package ru.pragmatix.wormix.messages.structures
{
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §9%W§.§`"y§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class CostStructure
   {
      
      public static const REAL_MONEY:int = 0;
      
      public static const MONEY:int = 1;
      
      public static const BATTLE_TOKENS:int = 2;
      
      public static const REAGENTS:int = 3;
      
      public var currencyType:int = 0;
      
      public var itemId:int = -1;
      
      public var value:int = 0;
      
      public function CostStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "CostStructure {" + " currencyType=" + String(this.currencyType) + " itemId=" + String(this.itemId) + " value=" + String(this.value) + " }";
      }
   }
}

