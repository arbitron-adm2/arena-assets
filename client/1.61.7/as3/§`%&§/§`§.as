package §`%&§
{
   import § $q§.*;
   import §!L§.§+"'§;
   import §"% §.LevelUpDialog;
   import §%Q§.*;
   import §+$=§.§6#A§;
   import §7"Q§.§0$L§;
   import §;#O§.§+%7§;
   import §<$2§.§<%>§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   
   public class §`§ implements §<&A§
   {
      
      private var §7"v§:uint;
      
      private var §'s§:uint;
      
      private var §=$y§:uint;
      
      private var §&$"§:Boolean;
      
      private var expRadius:uint;
      
      public function §`§(param1:uint, param2:uint, param3:uint, param4:Boolean = true, param5:uint = 50)
      {
         super();
         this.§7"v§ = param1;
         this.§'s§ = param2;
         this.§=$y§ = param3;
         this.§&$"§ = param4;
         this.expRadius = param5;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc8_:§+%]§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Object = null;
         var _loc14_:Object = null;
         var _loc15_:Number = NaN;
         var _loc16_:Object = null;
         var _loc17_:int = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = NaN;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc6_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(param1,false);
         var _loc7_:Object = null;
         for each(_loc8_ in _loc5_)
         {
            _loc9_ = Math.sqrt(Math.pow(_loc8_.x - param2,2) + Math.pow(_loc8_.y - param3,2));
            _loc10_ = §0$a§.§7&7§(_loc8_.x,_loc8_.y,_loc9_,param4);
            _loc11_ = _loc10_.x;
            _loc12_ = _loc10_.y;
            _loc13_ = §0$a§.§<"8§(param2,param3,_loc11_,_loc12_,this.§7"v§,this.§'s§,false,true);
            for each(_loc14_ in _loc13_)
            {
               _loc15_ = this.§=$y§;
               _loc16_ = §0$a§.§[I§(param2,param3,_loc11_,_loc12_,_loc14_.power,_loc14_.angle,_loc6_,this.expRadius,false,true);
               if(_loc16_.allyDistance != -1)
               {
                  if(Math.abs(_loc16_.allyDistance - _loc16_.explosionDistance) < 300)
                  {
                     _loc15_ *= 0.3;
                  }
                  else
                  {
                     _loc15_ = 0;
                  }
               }
               if(_loc16_.clearPathPc != 100)
               {
                  _loc15_ = 0;
               }
               _loc17_ = Math.round(_loc14_.time / 30);
               if(this.§&$"§)
               {
                  if(_loc17_ >= 1 && _loc17_ <= 5)
                  {
                     _loc19_ = Math.abs(_loc17_ * 30 - _loc14_.time);
                     if(_loc19_ > 0.5)
                     {
                        _loc15_ = 0;
                     }
                     _loc15_ *= 1.5 - 3 * _loc19_;
                     if(_loc17_ * 30 > _loc14_.time)
                     {
                        _loc15_ *= 0.9;
                     }
                     if(Math.abs(Math.cos(_loc14_.angle)) < 0.5)
                     {
                        _loc15_ *= 0.7;
                     }
                  }
                  else
                  {
                     _loc15_ = 0;
                  }
               }
               _loc18_ = _loc7_ ? _loc15_ > _loc7_.rate : true;
               if(Boolean(_loc16_) && Boolean(_loc15_ != 0) && _loc18_)
               {
                  _loc7_ = _loc14_;
                  _loc7_.clearPathPc = _loc16_.clearPathPc;
                  _loc7_.rate = _loc15_;
                  _loc7_.time = _loc17_;
               }
            }
         }
         return _loc7_ != null ? {
            "angle":_loc7_.angle,
            "power":_loc7_.power,
            "clearPathPc":_loc7_.clearPathPc,
            "time":_loc7_.time,
            "rate":_loc7_.rate
         } : null;
      }
   }
}

