package §`%&§
{
   import § "d§.§,!c§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%Q§.*;
   import §&!?§.§"_§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&x§.§8$5§;
   import §+$=§.§6#A§;
   import §-"N§.§"k§;
   import §-"N§.§,%;§;
   import §-%B§.*;
   import §0"L§.*;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §3#a§.§-!`§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §8#a§.*;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §@!N§.§4"0§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§?"&§;
   import com.greensock.loading.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §<%x§ implements §<&A§
   {
      
      private var §=$y§:uint = 60;
      
      public function §<%x§()
      {
         super();
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc8_:§+%]§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Array = null;
         var _loc14_:Number = NaN;
         var _loc15_:* = undefined;
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
            _loc13_ = §0$a§.§-&-§(param2,param3,_loc11_,_loc12_,§'%_§.MORTAR.§7"v§,false,true);
            for each(_loc14_ in _loc13_)
            {
               _loc15_ = §0$a§.§[I§(param2,param3,_loc11_,_loc12_,§'%_§.MORTAR.§7"v§,_loc14_,_loc6_,50,false,true);
               _loc16_ = this.§=$y§;
               _loc16_ = _loc16_ - 3 * (Math.abs(_loc14_) > Math.PI / 2 ? Math.PI - Math.abs(_loc14_) : Math.abs(_loc14_));
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
               if(_loc15_.explosionDistance != 0 && _loc15_.explosionDistance < 200)
               {
                  _loc16_ = 0;
               }
               if(_loc15_.clearPathPc < 90)
               {
                  _loc16_ = 0;
               }
               _loc16_ *= _loc15_.clearPathPc / 100;
               _loc17_ = _loc7_ ? _loc16_ > _loc7_.rate : true;
               if(Boolean(_loc15_) && Boolean(_loc16_ != 0) && _loc17_)
               {
                  _loc7_ = {"angle":_loc14_};
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

