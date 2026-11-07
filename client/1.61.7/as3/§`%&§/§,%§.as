package §`%&§
{
   import §#"V§.§?%>§;
   import §##j§.§'"%§;
   import §%"1§.§@%;§;
   import §%Q§.*;
   import §&!@§.§!6§;
   import §&"c§.§5$n§;
   import §'!Z§.§;n§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §3#T§.§;#Q§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §@!i§.§<!9§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.utils.*;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   use namespace gestouch_internal;
   
   public class §,%§ implements §<&A§
   {
      
      private var §=$y§:uint;
      
      private var power:uint;
      
      private var useWind:Boolean;
      
      private var useGravity:Boolean;
      
      private var §&$u§:Number;
      
      private var §9&G§:uint;
      
      private var §;&C§:Boolean;
      
      public var minDistance:uint = 0;
      
      public var maxDistance:uint = 0;
      
      public function §,%§(param1:uint, param2:uint, param3:Number = 0.8, param4:Boolean = false, param5:uint = 0, param6:Boolean = true, param7:Boolean = false)
      {
         super();
         this.§=$y§ = param1;
         this.power = param2;
         this.§&$u§ = param3;
         this.useWind = param4;
         this.useGravity = param6;
         this.§9&G§ = param5;
         this.§;&C§ = param7;
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
               if(!(this.minDistance != 0 && _loc10_ < this.minDistance))
               {
                  if(!(this.maxDistance != 0 && _loc10_ > this.maxDistance))
                  {
                     _loc11_ = this.§;&C§ ? new Point(_loc9_.x,_loc9_.y) : §0$a§.§7&7§(_loc9_.x,_loc9_.y,_loc10_,param4);
                     _loc12_ = _loc11_.x;
                     _loc13_ = _loc11_.y;
                     _loc14_ = §0$a§.§-&-§(param2,param3,_loc12_,_loc13_,this.power,this.useWind,this.useGravity);
                     for each(_loc15_ in _loc14_)
                     {
                        _loc16_ = this.§=$y§;
                        _loc17_ = §0$a§.§[I§(param2,param3,_loc12_,_loc13_,this.power,_loc15_,_loc6_,50,this.useWind);
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
                        if(_loc17_.explosionDistance != 0 && _loc17_.explosionDistance < 100)
                        {
                           _loc16_ = 0;
                        }
                        if(_loc17_.clearPathPc != 100)
                        {
                           _loc16_ *= this.§&$u§ * _loc17_.clearPathPc / 100;
                        }
                        _loc18_ = _loc8_ ? _loc16_ > _loc8_.rate : true;
                        if(Boolean(_loc17_) && Boolean(_loc16_ != 0) && _loc18_)
                        {
                           _loc8_ = {"angle":_loc15_};
                           _loc8_.clearPathPc = _loc17_.clearPathPc;
                           _loc8_.rate = _loc16_;
                           _loc8_.point = new Point(_loc12_,_loc13_);
                        }
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
               "rate":_loc8_.rate,
               "point":_loc8_.point
            };
         }
         return null;
      }
   }
}

