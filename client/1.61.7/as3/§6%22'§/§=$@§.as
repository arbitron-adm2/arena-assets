package §6"'§
{
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   
   public class §=$@§
   {
      
      public var type:int;
      
      public var minLevel:int;
      
      public var maxLevel:int;
      
      public var §,#?§:int;
      
      public var softkey:String;
      
      public function §=$@§(param1:int, param2:int = 1, param3:int = 30, param4:int = 2)
      {
         super();
         this.type = param1;
         this.minLevel = param2;
         this.maxLevel = param3;
         this.§,#?§ = param4;
         this.softkey = §9#7§(param1,param4);
      }
      
      public static function §9#7§(param1:int, param2:int) : String
      {
         var _loc3_:String = "";
         switch(param1)
         {
            case §-"P§.§"#p§:
               _loc3_ = "DUEL";
               break;
            case §-"P§.§'$L§:
            case §-"P§.§,$^§:
               _loc3_ = "2x2";
               break;
            case §-"P§.§"!0§:
               _loc3_ = "SURVIVAL";
         }
         return _loc3_ + (param1 == §-"P§.§"#p§ ? "_" + param2 : "");
      }
      
      public function toString() : String
      {
         return "WagerLevelAccessRecord{" + " type=" + this.type + ", minLevel=" + this.minLevel + ", maxLevel=" + this.maxLevel + ", squadSize=" + this.§,#?§ + ", softkey=" + this.softkey + " }";
      }
   }
}

