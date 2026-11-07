package §4'§
{
   import §%"Z§.§+$A§;
   
   public class §"@§ extends §+$A§
   {
      
      public static const BATTLE_TOKENS:§"@§ = new §"@§(2);
      
      public static const REAGENTS:§"@§ = new §"@§(3);
      
      public function §"@§(param1:int)
      {
         super(param1);
      }
      
      public static function §0#o§(param1:int) : §"@§
      {
         switch(param1)
         {
            case REAL.value:
               return REAL as §"@§;
            case INGAME.value:
               return INGAME as §"@§;
            case BATTLE_TOKENS.value:
               return BATTLE_TOKENS;
            case REAGENTS.value:
               return REAGENTS;
            default:
               return null;
         }
      }
   }
}

