package §`%&§
{
   import §%$!§.§@!o§;
   import §%Q§.§<&A§;
   import §&"R§.§;!t§;
   import §&#h§.*;
   import §+#P§.§]!E§;
   import §,$J§.§,$O§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §6"'§.§&"3§;
   import §65§.§`"C§;
   import §8#<§.§!#^§;
   import §8#o§.§1@§;
   import §<$q§.§"%r§;
   import §<V§.*;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §^#[§.§&$2§;
   import config.§28§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.§'%_§;
   
   public class §,L§ implements §<&A§
   {
      
      private var §=$y§:uint;
      
      private var useWind:Boolean;
      
      public function §,L§(param1:uint = 50, param2:Boolean = true)
      {
         super();
         this.§=$y§ = param1;
         this.useWind = param2;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc8_:§+%]§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Array = null;
         var _loc14_:Object = null;
         var _loc15_:Number = NaN;
         var _loc16_:Object = null;
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
            _loc13_ = §0$a§.§<"8§(param2,param3,_loc11_,_loc12_,§'%_§.DRILL.§7"v§,§'%_§.DRILL.§'s§,this.useWind,true);
            for each(_loc14_ in _loc13_)
            {
               _loc15_ = this.§=$y§;
               _loc16_ = §0$a§.§[I§(param2,param3,_loc11_,_loc12_,_loc14_.power,_loc14_.angle,_loc6_,50,this.useWind,true,true);
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
               if(_loc16_.clearPathPc > 95)
               {
                  _loc15_ *= 0.3;
               }
               _loc17_ = _loc7_ ? _loc15_ >= _loc7_.rate && _loc16_.targetDistance < _loc7_.targetDistance : true;
               if(Boolean(_loc16_) && Boolean(_loc15_ != 0) && _loc17_)
               {
                  _loc7_ = _loc14_;
                  _loc7_.clearPathPc = _loc16_.clearPathPc;
                  _loc7_.targetDistance = _loc16_.targetDistance;
                  _loc7_.rate = _loc15_;
               }
            }
         }
         return _loc7_ != null ? {
            "angle":_loc7_.angle,
            "power":_loc7_.power,
            "clearPathPc":_loc7_.clearPathPc,
            "targetDistance":_loc7_.targetDistance,
            "rate":_loc7_.rate
         } : null;
      }
   }
}

