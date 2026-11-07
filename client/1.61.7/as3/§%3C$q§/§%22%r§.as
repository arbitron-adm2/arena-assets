package §<$q§
{
   import §6"'§.§9$Z§;
   
   public class §"%r§
   {
      
      private static const list:Vector.<§"%r§> = new Vector.<§"%r§>(0);
      
      public static const STABLE:§"%r§ = new §"%r§(0,-1,-1,0,"STABLE");
      
      public static const PVP_100:§"%r§ = new §"%r§(20,5,11,0,"PVP_100");
      
      public static const PVP_200:§"%r§ = new §"%r§(20,5,16,0,"PVP_200");
      
      public static const PVP_300:§"%r§ = new §"%r§(20,5,21,0,"PVP_300");
      
      public static const PVP_400:§"%r§ = new §"%r§(20,5,26,0,"PVP_400");
      
      public static const PVP_500:§"%r§ = new §"%r§(20,5,31,0,"PVP_500");
      
      public static const PVP_600:§"%r§ = new §"%r§(20,5,36,0,"PVP_600");
      
      public static const PVP_700:§"%r§ = new §"%r§(20,5,41,0,"PVP_700");
      
      public static const PVP_800:§"%r§ = new §"%r§(20,5,46,0,"PVP_800");
      
      public static const PVP_920:§"%r§ = new §"%r§(20,5,52,0,"PVP_920");
      
      public static const PVP_0_M50:§"%r§ = new §"%r§(0,5,16,5,"PVP_0_M50");
      
      public static const PVP_0_M300:§"%r§ = new §"%r§(0,5,16,30,"PVP_0_M300");
      
      public static const PVP_100_M25:§"%r§ = new §"%r§(20,5,11,5,"PVP_100_M25");
      
      public static const PVP_200_M50:§"%r§ = new §"%r§(20,5,16,5,"PVP_200_M50");
      
      public static const PVP_300_M75:§"%r§ = new §"%r§(20,5,21,5,"PVP_300_M75");
      
      public static const PVP_400_P40:§"%r§ = new §"%r§(20,5,26,-5,"PVP_400_P40");
      
      public static const PVP_500_P25:§"%r§ = new §"%r§(20,5,31,-5,"PVP_500_P25");
      
      public static const FLOODING_ENDLESS:§"%r§ = new §"%r§(20,5,-1,0,"FLOODING_ENDLESS");
      
      public static const UPFLOODING_ENDLESS:§"%r§ = new §"%r§(0,5,-1,-20,"UPFLOODING_ENDLESS");
      
      public static const BOSS_DEVOTEE:§"%r§ = new §"%r§(40,1,-1,0,"BOSS_DEVOTEE");
      
      public static const BOSS_PIRATES:§"%r§ = new §"%r§(20,3,30,0,"BOSS_PIRATES");
      
      public static const BOSS_REVIVED:§"%r§ = new §"%r§(20,2,15,0,"BOSS_REVIVED");
      
      private var §4"4§:String;
      
      private var § #]§:int = 0;
      
      private var §"#l§:int = 0;
      
      private var §]%b§:int = -1;
      
      private var §=f§:int = -1;
      
      public function §"%r§(param1:int = 0, param2:int = -1, param3:int = -1, param4:int = 0, param5:String = "")
      {
         super();
         this.§ #]§ = param1;
         this.§]%b§ = param2;
         this.§=f§ = param3;
         this.§"#l§ = param4;
         this.§4"4§ = param5;
         list.push(this);
      }
      
      public static function §8$R§(param1:§9$Z§) : §"%r§
      {
         var _loc2_:Number = NaN;
         if(param1.§!#;§)
         {
            _loc2_ = list.indexOf(param1.§!#;§);
            if(_loc2_ > -1)
            {
               return list[_loc2_];
            }
         }
         return PVP_300;
      }
      
      public static function §#$N§(param1:String, param2:§"%r§ = null) : §"%r§
      {
         var _loc3_:§"%r§ = null;
         for each(_loc3_ in list)
         {
            if(_loc3_.name == param1)
            {
               return _loc3_;
            }
         }
         return param2;
      }
      
      public function toString() : String
      {
         return "LandscapeSettings{" + " name=" + this.§4"4§ + ", groundSpeed=" + this.§ #]§ + ", startTurn=" + this.§]%b§ + ", stopTurn=" + this.§=f§ + ", waterSpeed=" + this.§"#l§ + " }";
      }
      
      public function get §8"p§() : int
      {
         return this.§ #]§;
      }
      
      public function get §0#c§() : int
      {
         return this.§"#l§;
      }
      
      public function get §-$,§() : int
      {
         return this.§]%b§;
      }
      
      public function set §-$,§(param1:int) : void
      {
         this.§]%b§ = param1;
      }
      
      public function get §-"!§() : int
      {
         return this.§=f§;
      }
      
      public function set §-"!§(param1:int) : void
      {
         this.§=f§ = param1;
      }
      
      public function get name() : String
      {
         return this.§4"4§;
      }
      
      public function get isStable() : Boolean
      {
         return this == STABLE;
      }
   }
}

