package ru.pragmatix.wormix.game.ai
{
   import §&#h§.*;
   import §7!B§.§&"T§;
   import §@<§.§+%]§;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §3+§
   {
      
      private static const §1Q§:uint = 200;
      
      private static const §]%j§:Number = 40;
      
      public function §3+§()
      {
         super();
      }
      
      public static function move(param1:§+%]§, param2:int, param3:uint = 200) : Point
      {
         var _loc4_:uint = Math.abs(param1.record.getLevel() - §]%j§);
         return §0!R§(param1.x,param1.y,param2,param3,_loc4_);
      }
      
      public static function §0!R§(param1:int, param2:int, param3:int, param4:uint = 200, param5:uint = 100) : Point
      {
         var _loc7_:Point = null;
         var _loc6_:Point = new Point(param1,param2);
         var _loc8_:* = 0;
         do
         {
            _loc7_ = §8"Q§(_loc6_,param3,param5);
            if(_loc7_ != null)
            {
               _loc6_ = _loc7_;
            }
         }
         while(_loc7_ != null && _loc8_++ < param4);
         if(Math.abs(_loc6_.x - param1) < 5)
         {
            _loc6_.x = param1;
            _loc6_.y = param2;
         }
         else
         {
            _loc6_.x -= param3 * 5;
         }
         return _loc6_;
      }
      
      public static function §8"Q§(param1:Point, param2:int, param3:uint) : Point
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Vector.<§&"T§> = null;
         var _loc7_:§2%F§ = null;
         param1 = new Point(param1.x + param2,param1.y);
         if(param3 < 100)
         {
            _loc6_ = Application.scene.§@$I§.§;%a§.§"L§([§2%F§]);
            for each(_loc7_ in _loc6_)
            {
               if(_loc7_.§9$r§() > 0 && §-q§.distance(_loc7_.x,_loc7_.y,param1.x,param1.y) <= _loc7_.§9$r§() && (param3 > 0 ? Boolean(param3 < §8"%§.randomSeed.§,!q§(0,100)) : Boolean(true)))
               {
                  return null;
               }
            }
         }
         if(§>#9§.unit(param1.x,param1.y))
         {
            _loc4_ = 1;
            while(_loc4_ < 10)
            {
               _loc5_ = param1.y - _loc4_;
               if(!§>#9§.unit(param1.x,_loc5_))
               {
                  param1.y = _loc5_;
                  return param1;
               }
               _loc4_++;
            }
            return null;
         }
         _loc4_ = 1;
         while(_loc4_ < 10)
         {
            _loc5_ = param1.y + _loc4_;
            if(§>#9§.unit(param1.x,_loc5_))
            {
               param1.y = _loc5_ - 1;
               return param1;
            }
            _loc4_++;
         }
         return null;
      }
   }
}

