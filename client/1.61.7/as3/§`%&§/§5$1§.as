package §`%&§
{
   import § !8§.§`!d§;
   import §%"1§.§@%;§;
   import §%Q§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §2!-§.DamageEvent;
   import §7$1§.§;$n§;
   import §7$t§.§^%%§;
   import §<%E§.§;!y§;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §@!N§.§3!3§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   
   public class §5$1§ implements §<&A§
   {
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private var §=$y§:uint = 50;
      
      private var useWind:Boolean;
      
      private var §&$u§:Number;
      
      public function §5$1§(param1:uint, param2:Boolean, param3:Number = 0.8)
      {
         super();
         this.§=$y§ = param1;
         this.useWind = param2;
         this.§&$u§ = param3;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc8_:§+%]§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:* = undefined;
         var _loc14_:Object = null;
         var _loc15_:Object = null;
         var _loc16_:Number = NaN;
         var _loc17_:Boolean = false;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc6_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(param1,false);
         var _loc7_:Object = null;
         for each(_loc8_ in _loc5_)
         {
            _loc9_ = Math.sqrt(Math.pow(_loc8_.x - param2,2) + Math.pow(_loc8_.y - param3,2));
            _loc10_ = §0$a§.§7&7§(_loc8_.x,_loc8_.y,_loc9_,param4);
            _loc11_ = _loc10_.x;
            _loc12_ = _loc10_.y;
            _loc13_ = §0$a§.§<"8§(param2,param3,_loc11_,_loc12_,§'%_§.BAZOOKA.§7"v§,§'%_§.BAZOOKA.§'s§ * param1.aiShotPower,this.useWind);
            for each(_loc14_ in _loc13_)
            {
               _loc15_ = §0$a§.§[I§(param2,param3,_loc11_,_loc12_,_loc14_.power,_loc14_.angle,_loc6_,50,this.useWind);
               _loc16_ = this.§=$y§;
               _loc16_ = _loc16_ - 1 * (Math.abs(_loc14_.angle) > PI_HALF ? Math.PI - Math.abs(_loc14_.angle) : Math.abs(_loc14_.angle));
               if(_loc15_.allyDistance != -1)
               {
                  if(Math.abs(_loc15_.allyDistance - _loc15_.explosionDistance) < 300)
                  {
                     _loc16_ *= 0.3;
                  }
                  else
                  {
                     _loc16_ = 0;
                  }
               }
               if(_loc15_.explosionDistance != 0 && _loc15_.explosionDistance < 100)
               {
                  _loc16_ = 0;
               }
               if(_loc15_.clearPathPc == 100)
               {
                  _loc16_ *= 1.2;
               }
               else
               {
                  _loc16_ *= this.§&$u§ * _loc15_.clearPathPc / 100;
               }
               _loc17_ = _loc7_ ? _loc16_ > _loc7_.rate : true;
               if(Boolean(_loc15_) && Boolean(_loc16_ != 0) && _loc17_)
               {
                  _loc7_ = _loc14_;
                  _loc7_.clearPathPc = _loc15_.clearPathPc;
                  _loc7_.rate = _loc16_;
               }
            }
         }
         return _loc7_ != null ? {
            "angle":_loc7_.angle,
            "power":_loc7_.power,
            "clearPathPc":_loc7_.clearPathPc,
            "rate":_loc7_.rate
         } : null;
      }
   }
}

