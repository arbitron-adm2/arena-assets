package § !P§
{
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §7!B§.§&"T§;
   import §=!V§.*;
   import §@<§.§+%]§;
   import config.achievements.§%#c§;
   import config.achievements.§^t§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   import ru.pragmatix.wormix.weapons.interfaces.§&$+§;
   import ru.pragmatix.wormix.weapons.interfaces.§3N§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   import ru.pragmatix.wormix.weapons.interfaces.§^"L§;
   
   public class §9%Z§
   {
      
      private static const TOP:uint = 4;
      
      private static var §9#_§:Array = [17,18,23];
      
      public function §9%Z§()
      {
         super();
      }
      
      public static function §;!i§(param1:int) : void
      {
         §9#_§[§9#_§.length] = param1;
      }
      
      public static function §7%V§(param1:§<#q§, param2:uint = 3) : Array
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:§1! § = null;
         var _loc8_:uint = 0;
         var _loc9_:int = 0;
         var _loc10_:uint = 0;
         var _loc11_:int = 0;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:Object = null;
         var _loc3_:Array = [];
         for each(_loc4_ in §%#c§.§7$i§())
         {
            for each(_loc7_ in _loc4_)
            {
               _loc8_ = uint(param1.valueOf(_loc7_.id));
               if(_loc8_ < _loc7_.levels[_loc7_.levels.length - 1].maxValue && §9#_§.indexOf(_loc7_.id) == -1)
               {
                  _loc9_ = §]![§(_loc7_,_loc8_);
                  _loc10_ = _loc9_ == 0 ? 0 : _loc7_.levels[_loc9_ - 1].maxValue;
                  _loc11_ = §-q§.§5&H§(_loc8_ - _loc10_,_loc7_.levels[_loc9_].maxValue);
                  _loc3_.push({
                     "id":_loc7_.id,
                     "percent":_loc11_,
                     "value":_loc8_
                  });
               }
            }
         }
         _loc3_.sortOn("percent",Array.DESCENDING | Array.NUMERIC);
         _loc5_ = [];
         param2 = Math.min(param2,_loc3_.length);
         _loc6_ = 0;
         while(_loc6_ < param2)
         {
            _loc12_ = _loc3_.length >= TOP - _loc6_ ? uint(TOP - _loc6_) : _loc3_.length;
            _loc13_ = uint(Math.random() * _loc12_);
            _loc14_ = _loc3_.splice(_loc13_,1)[0];
            _loc5_[_loc6_] = {
               "records":§%#c§.getRecord(_loc14_.id),
               "value":_loc14_.value
            };
            _loc6_++;
         }
         return _loc5_;
      }
      
      public static function §]![§(param1:§1! §, param2:int) : int
      {
         var _loc3_:int = 0;
         var _loc4_:int = int(param1.levels.length);
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            if(param1.levels[_loc3_].maxValue > param2)
            {
               break;
            }
            _loc3_++;
         }
         if(_loc3_ >= param1.levels.length - 1)
         {
            _loc3_ = param1.levels.length - 1;
         }
         return _loc3_;
      }
      
      public static function §1x§(param1:Array, param2:uint) : Boolean
      {
         var _loc3_:int = int(param2 / 8);
         var _loc4_:int = param2 % 8;
         return (param1[_loc3_] << _loc4_ & 0x80) != 0;
      }
      
      public static function §9$s§(param1:uint) : Boolean
      {
         return §8"%§.§@1§.§]#a§().valueOf(param1) > §%#c§.getRecord(param1).levels[2].maxValue;
      }
      
      public static function §`6§(param1:int) : int
      {
         var _loc5_:§'%u§ = null;
         var _loc2_:int = 0;
         var _loc3_:Array = §^t§.§3"1§(param1);
         var _loc4_:§<#q§ = §8"%§.§@1§.§]#a§();
         for each(_loc5_ in _loc3_)
         {
            if(_loc4_.§7%J§(_loc5_.id))
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
   }
}

