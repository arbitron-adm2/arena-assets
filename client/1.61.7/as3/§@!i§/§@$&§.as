package §@!i§
{
   import §#%!§.§%&F§;
   import §%"Z§.§'$2§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §7$t§.§;#_§;
   import §8$Z§.§9"t§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §@$&§
   {
      
      §§push(§§findproperty(§&!2§));
      var _temp_38:* = new <int>[0,0,5,10,20,30,50,80,130,210,340,540,840,1290,1960,2940,4350,6350,9140,12980,18170,25070,34100,45690,60310,78400,100350,126440,156790,191280,229540,275450,330540,396650,475980,571180,685420,822500,987000,1184400,1421280];
      
      private static const §&!2§:Vector.<int> = new <int>[0,0,5,10,20,30,50,80,130,210,340,540,840,1290,1960,2940,4350,6350,9140,12980,18170,25070,34100,45690,60310,78400,100350,126440,156790,191280,229540,275450,330540,396650,475980,571180,685420,822500,987000,1184400,1421280];
      
      §§push(§§findproperty(§%#B§));
      
      private static const §%#B§:Vector.<int> = new <int>[0,0,1,1,2,2,5,7,10,20,30,45,60,90,130,190,270,380,520,700,930,1210,1550,1950,2410,2930,3480,4060,4620,5150,5600,6590,7760,9120,10730,12630];
      
      public var §9#V§:int;
      
      public var nextLevel:int;
      
      public var §##'§:int = 0;
      
      public var §`$e§:int = 0;
      
      public var §-#s§:int = 0;
      
      public var §=!2§:int = 0;
      
      public var §;$G§:int = 0;
      
      public var §1#K§:int = 0;
      
      public var §[%[§:int = 0;
      
      public var §!"w§:§'$2§ = null;
      
      public function §@$&§()
      {
         super();
      }
      
      public static function §=$S§(param1:int) : §@$&§
      {
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc2_:§@$&§ = new §@$&§();
         var _loc3_:int = §#!F§(param1);
         var _loc4_:int = §6#'§(param1);
         _loc2_.§=!2§ = param1;
         _loc2_.§;$G§ = §&!2§[_loc3_];
         _loc2_.§1#K§ = §&!2§[_loc4_];
         _loc2_.nextLevel = _loc4_;
         if(_loc4_ > 1 && _loc4_ < §&!2§.length)
         {
            _loc2_.§9#V§ = §#!F§(param1);
            _loc2_.§##'§ = param1 - §&!2§[_loc3_];
            _loc2_.§`$e§ = §&!2§[_loc4_] - param1;
            _loc2_.§-#s§ = §&!2§[_loc4_] - §&!2§[_loc3_];
            if(_loc4_ < §%#B§.length)
            {
               _loc5_ = §%#B§[_loc4_];
               _loc6_ = 1 - _loc2_.§##'§ / _loc2_.§-#s§;
               _loc7_ = int(Math.ceil(_loc5_ * _loc6_));
               _loc2_.§!"w§ = new §'$2§(0,_loc7_);
            }
            _loc2_.§[%[§ = Math.round((_loc2_.§=!2§ - _loc2_.§;$G§) / (_loc2_.§1#K§ - _loc2_.§;$G§) * 100);
         }
         else
         {
            _loc2_.§9#V§ = §#!F§(param1);
         }
         return _loc2_;
      }
      
      public static function getMaxLevel() : int
      {
         return §&!2§.length - 1;
      }
      
      public static function §#!F§(param1:int) : int
      {
         var _loc2_:int = 1;
         var _loc3_:int = int(§&!2§.length);
         while(_loc2_ < _loc3_)
         {
            if(§&!2§[_loc2_] > param1)
            {
               return _loc2_ - 1;
            }
            _loc2_++;
         }
         return getMaxLevel();
      }
      
      public static function §6#'§(param1:int) : int
      {
         var _loc2_:int = §#!F§(param1);
         var _loc3_:int = getMaxLevel();
         return _loc2_ < _loc3_ ? int(_loc2_ + 1) : _loc3_;
      }
   }
}

