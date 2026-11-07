package §`%&§
{
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%Q§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §5$]§.*;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §=&!§.§<$Z§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §["3§.§ V§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class §8U§ implements §<&A§
   {
      
      private var §=$y§:uint;
      
      private var §4_§:uint;
      
      private var useWind:Boolean;
      
      private var §9&G§:uint;
      
      private var §=!`§:uint;
      
      public function §8U§(param1:uint, param2:uint, param3:Boolean = false, param4:uint = 0, param5:uint = 0)
      {
         super();
         this.§=$y§ = param1;
         this.§4_§ = param2;
         this.useWind = param3;
         this.§9&G§ = param4;
         this.§=!`§ = param5;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc9_:§+%]§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Point = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:Array = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Object = null;
         var _loc18_:Boolean = false;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc6_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(param1,false);
         var _loc7_:§+%]§ = null;
         var _loc8_:Object = null;
         for each(_loc9_ in _loc5_)
         {
            if(!_loc9_.disposed && _loc9_.hp > this.§9&G§)
            {
               _loc10_ = Math.sqrt(Math.pow(_loc9_.x - param2,2) + Math.pow(_loc9_.y - param3,2));
               if(!(_loc10_ > 300 || _loc10_ < 50))
               {
                  _loc11_ = §0$a§.§7&7§(_loc9_.x,_loc9_.y,_loc10_,param4);
                  _loc12_ = _loc11_.x;
                  _loc13_ = _loc11_.y;
                  _loc14_ = §0$a§.§-&-§(param2,param3,_loc12_,_loc13_,this.§4_§);
                  for each(_loc15_ in _loc14_)
                  {
                     _loc16_ = this.§=$y§;
                     _loc17_ = §0$a§.§[I§(param2,param3,_loc12_,_loc13_,this.§4_§,_loc15_,_loc6_,50);
                     if(_loc17_.allyDistance != -1)
                     {
                        if(Math.abs(_loc17_.allyDistance - _loc17_.explosionDistance) < 100)
                        {
                           _loc16_ *= 0.3;
                        }
                        else
                        {
                           _loc16_ = 0;
                        }
                     }
                     if(_loc17_.explosionDistance != 0)
                     {
                        _loc16_ = 0;
                     }
                     if(_loc15_ > -2 * Math.PI / 3 && _loc15_ < -Math.PI / 3)
                     {
                        _loc16_ = 0;
                     }
                     if(_loc17_.clearPathPc < this.§=!`§)
                     {
                        _loc16_ = 0;
                     }
                     _loc18_ = _loc8_ ? _loc16_ > _loc8_.rate : true;
                     if(Boolean(_loc17_) && Boolean(_loc16_ != 0) && _loc18_)
                     {
                        _loc8_ = {"angle":_loc15_};
                        _loc8_.clearPathPc = _loc17_.clearPathPc;
                        _loc8_.rate = _loc16_;
                     }
                  }
               }
            }
         }
         if(_loc8_ != null)
         {
            return {
               "angle":_loc8_.angle,
               "power":_loc8_.power,
               "clearPathPc":_loc8_.clearPathPc,
               "rate":_loc8_.rate
            };
         }
         return null;
      }
   }
}

