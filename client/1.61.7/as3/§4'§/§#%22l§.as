package §4'§
{
   public class §#"l§
   {
      
      public static const REAL:§#"l§ = new §#"l§(0,0,"REAL");
      
      public static const INGAME:§#"l§ = new §#"l§(1,1,"INGAME");
      
      public static const CLAN_DONATE:§#"l§ = new §#"l§(2,3,"CLAN_DONATE");
      
      public static const WIPE:§#"l§ = new §#"l§(3,4,"WIPE");
      
      public static const BUNDLE:§#"l§ = new §#"l§(4,5,"BUNDLE");
      
      public static const BUNDLE_VIP:§#"l§ = new §#"l§(5,5,"BUNDLE_VIP");
      
      public var n:int;
      
      public var value:int;
      
      public var name:String;
      
      public function §#"l§(param1:int, param2:int, param3:String)
      {
         super();
         this.n = param1;
         this.value = param2;
         this.name = param3;
      }
      
      public static function §0#o§(param1:int) : §#"l§
      {
         switch(param1)
         {
            case REAL.value:
               return REAL;
            case INGAME.value:
               return INGAME;
            case CLAN_DONATE.value:
               return CLAN_DONATE;
            case WIPE.value:
               return WIPE;
            case BUNDLE.value:
               return BUNDLE;
            default:
               return null;
         }
      }
   }
}

