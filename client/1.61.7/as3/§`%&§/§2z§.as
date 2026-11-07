package §`%&§
{
   import § K§.§2""§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%Q§.*;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §&$Y§.§7#T§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §7!B§.§&"T§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?$L§.§ "N§;
   import §@!N§.§""L§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §2z§ implements §<&A§
   {
      
      private var §=$y§:uint;
      
      protected var §4_§:uint;
      
      protected var §,%H§:uint = 2000;
      
      protected var §,!!§:uint = 70;
      
      protected var §-!I§:uint = 1700;
      
      protected var §1%A§:uint = 400;
      
      public function §2z§(param1:uint, param2:uint)
      {
         super();
         this.§=$y§ = param1;
         this.§4_§ = param2;
      }
      
      public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _temp_1:* = this.§"$b§(param1,param2,param3,param4);
         var _loc5_:Object = this.§"$b§(param1,param2,param3,param4);
         if(_loc5_ != null)
         {
            return {
               "angle":_loc5_.angle,
               "power":this.§4_§,
               "clearPathPc":100,
               "rate":_loc5_.rate
            };
         }
         return null;
      }
      
      protected function §"$b§(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc9_:§+%]§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Point = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:Number = NaN;
         var _loc15_:* = undefined;
         var _loc16_:Number = NaN;
         var _loc17_:Boolean = false;
         var _loc5_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         var _loc6_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(param1,false);
         var _loc7_:§+%]§ = null;
         var _loc8_:Object = null;
         for each(_loc9_ in _loc5_)
         {
            if(!_loc9_.disposed)
            {
               _loc10_ = Math.sqrt(Math.pow(_loc9_.x - param2,2) + Math.pow(_loc9_.y - param3,2));
               _loc11_ = §0$a§.§7&7§(_loc9_.x,_loc9_.y,_loc10_,param4);
               _loc12_ = _loc11_.x;
               _loc13_ = _loc11_.y;
               _loc14_ = Math.atan2(_loc11_.y - param1.y,_loc11_.x - param1.x);
               _loc15_ = §0$a§.§[I§(param2,param3,_loc12_,_loc13_,this.§4_§,_loc14_,_loc6_,10,false,false,true);
               _loc16_ = this.§=$y§;
               if(Boolean(_loc15_) && _loc15_.allyDistance != -1)
               {
                  _loc16_ *= 0.3;
               }
               if(_loc10_ > this.§,%H§ || _loc10_ < this.§,!!§)
               {
                  _loc16_ = 0;
               }
               else if(_loc10_ > this.§1%A§)
               {
                  _loc16_ *= (this.§-!I§ - _loc10_) / this.§,%H§;
               }
               _loc17_ = _loc8_ ? _loc16_ >= _loc8_.rate && _loc10_ < _loc8_.dist : true;
               if(Boolean(_loc15_) && Boolean(_loc16_ != 0) && _loc17_)
               {
                  _loc8_ = {
                     "angle":_loc14_,
                     "rate":_loc16_,
                     "dist":_loc10_
                  };
               }
            }
         }
         return _loc8_;
      }
   }
}

