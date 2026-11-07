package §`%&§
{
   import §%L§.§%%w§;
   import §%Q§.§<&A§;
   import §5#`§.*;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §2#7§ implements §<&A§
   {
      
      private var distance:int;
      
      private var §=$y§:uint;
      
      public function §2#7§(param1:int = 40, param2:int = 34)
      {
         super();
         this.§=$y§ = param1;
         this.distance = param2;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc11_:§+%]§ = null;
         var _loc12_:Number = NaN;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         _loc5_ = §<H§.§5"]§(param1.x,param1.y,§<H§.§@k§ * 2,_loc5_);
         var _loc6_:Object = null;
         var _loc7_:int = this.distance;
         var _loc8_:Number = this.distance * 1.3;
         var _loc9_:Number = this.distance * 0.5;
         var _loc10_:Number = §<H§.§-#C§;
         for each(_loc11_ in _loc5_)
         {
            _loc12_ = Math.abs(param1.x - _loc11_.x);
            if(Math.abs(param1.y - _loc11_.y) < _loc10_ && _loc12_ > _loc9_ && _loc12_ < _loc8_)
            {
               _loc7_ = _loc12_;
               _loc6_ = {
                  "angle":(_loc11_.x > param1.x ? 0 : Math.PI),
                  "point":new Point(_loc11_.x,_loc11_.y),
                  "rate":this.§=$y§
               };
            }
         }
         return _loc6_ != null ? {
            "power":0,
            "clearPathPc":100,
            "angle":_loc6_.angle,
            "point":_loc6_.point,
            "rate":_loc6_.rate
         } : null;
      }
   }
}

