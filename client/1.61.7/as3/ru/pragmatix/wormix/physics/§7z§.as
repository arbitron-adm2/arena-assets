package ru.pragmatix.wormix.physics
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §&"R§.§3B§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §-@§.*;
   import §0!Y§.§ !k§;
   import §0!Y§.§!$%§;
   import §0!Y§.§#!Z§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2#H§.§+$^§;
   import §2#x§.*;
   import §4$b§.§6!G§;
   import §5#`§.§7%g§;
   import §6%2§.§,x§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!B§.§>"D§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<%J§.RopeRaceGiftMenu;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§<$!§;
   import §=7§.*;
   import §?>§.§0!7§;
   import §@!i§.§<!9§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§4&+§;
   import §^!"§.§0^§;
   import §^!"§.§^$F§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §`#x§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.*;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.window.*;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§^"L§;
   
   use namespace gestouch_internal;
   
   public class §7z§
   {
      
      public function §7z§()
      {
         super();
      }
      
      public static function §"#s§(param1:int, param2:int, param3:Number, param4:Number, param5:Vector.<§]%G§> = null, param6:uint = 10, param7:uint = 4, param8:int = 0) : Vector.<Point>
      {
         var _loc12_:Point = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc16_:int = 0;
         var _loc17_:§]%G§ = null;
         param5 ||= new Vector.<§]%G§>();
         var _loc9_:Number = param4 * Math.cos(param3);
         var _loc10_:Number = param4 * Math.sin(param3);
         var _loc11_:Vector.<Point> = new Vector.<Point>(0);
         var _loc15_:int = 0;
         while(_loc15_ < param6)
         {
            _loc16_ = 0;
            while(_loc16_ < param7)
            {
               _loc13_ = _loc16_ * _loc9_ / param7;
               _loc14_ = _loc16_ * _loc10_ / param7;
               if(param8)
               {
                  _loc12_ = §>#9§.§>@§(param1,param2,_loc13_,_loc14_);
               }
               if(_loc12_)
               {
                  param8--;
                  param3 = §<H§.§3"j§(_loc12_.x,_loc12_.y) * 2 - param3;
                  param4 *= -1;
                  _loc9_ = param4 * Math.cos(param3);
                  _loc10_ = param4 * Math.sin(param3);
                  _loc11_.push(new Point(_loc12_.x,_loc12_.y));
               }
               else
               {
                  _loc11_.push(new Point(param1 + _loc13_,param2 + _loc14_));
               }
               _loc16_++;
            }
            if(_loc12_)
            {
               param1 = _loc12_.x;
               param2 = _loc12_.y;
               _loc12_ = null;
            }
            else
            {
               param1 += _loc9_;
               param2 += _loc10_;
            }
            for each(_loc17_ in param5)
            {
               _loc9_ += _loc17_.ax;
               _loc10_ += _loc17_.ay;
            }
            _loc15_++;
         }
         return _loc11_;
      }
      
      public static function §^"]§(param1:Vector.<§&"T§>) : void
      {
         var _loc2_:* = 0;
         if(Boolean(param1) && Boolean(param1.length))
         {
            _loc2_ = int(param1.length - 1);
            while(_loc2_ > -1)
            {
               if(param1[_loc2_] == null || param1[_loc2_].disposed)
               {
                  param1.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
      }
      
      public static function §7"K§(param1:Vector.<§+%]§>) : void
      {
         var _loc2_:* = 0;
         if(Boolean(param1) && Boolean(param1.length))
         {
            _loc2_ = int(param1.length - 1);
            while(_loc2_ > -1)
            {
               if(param1[_loc2_] == null || param1[_loc2_].disposed)
               {
                  param1.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
      }
      
      public static function §0&1§(param1:§^"L§, param2:Boolean = true) : Vector.<§&"T§>
      {
         var targets:Vector.<§&"T§> = null;
         var targetsInRadius:Vector.<§&"T§> = null;
         var weapon:§^"L§ = param1;
         var onlyStable:Boolean = param2;
         targets = weapon.getTargets();
         targets = targets.concat(weapon.getTargetUnits());
         targetsInRadius = §<H§.§3%'§(weapon.§#X§(),weapon.§5#g§(),§8"%§.§?!W§.§4"m§.§=$S§().§@!=§,targets);
         var objsReady:Vector.<§&"T§> = targetsInRadius.filter(function(param1:§&"T§, ... rest):Boolean
         {
            return (!onlyStable || param1.stable) && !param1.disposed;
         });
         return objsReady;
      }
      
      public static function §'$i§(param1:§+%]§) : Vector.<§&"T§>
      {
         var allHats:Vector.<§&"T§> = null;
         var hatsInRadius:Vector.<§&"T§> = null;
         var unit:§+%]§ = param1;
         allHats = Application.scene.§@$I§.§;%a§.§"L§([§>"D§]);
         hatsInRadius = §<H§.§3%'§(unit.x,unit.y,§8"%§.§?!W§.§4"m§.§=$S§().§@!=§,allHats);
         var hatsReady:Vector.<§&"T§> = hatsInRadius.filter(function(param1:§>"D§, ... rest):Boolean
         {
            return param1.stable && !param1.disposed;
         });
         return hatsReady;
      }
      
      public static function §0#J§(param1:§&"T§) : void
      {
         var dummy:§&"T§ = null;
         var obj:§&"T§ = param1;
         dummy = Application.scene.§,$z§();
         §8$a§.§%!E§(60,function():void
         {
            var onFrame:Function = null;
            onFrame = function(param1:Event = null):void
            {
               var onSink:Function = null;
               var onCollide:Function = null;
               var event:Event = param1;
               if(Boolean(obj) && Boolean(!obj.disposed) && obj.speedY == 0)
               {
                  obj.removeEventListener(Event.ENTER_FRAME,onFrame);
                  onSink = function(param1:Event = null):void
                  {
                     if(obj)
                     {
                        obj.removeEventListener(§0%v§.§+&=§,onCollide);
                        obj.removeEventListener(§0%v§.§^$3§,onSink);
                     }
                     if(Boolean(dummy) && !dummy.disposed)
                     {
                        dummy.disposed = true;
                     }
                  };
                  onCollide = function(param1:CollisionEvent):void
                  {
                     onSink();
                     §@%;§.play(§`!v§.§-$z§);
                     if(Boolean(obj) && !obj.disposed)
                     {
                        obj.setSpeedXY(0,0);
                        obj.physParams.removeAllForces();
                        obj.physicModel.stop();
                     }
                  };
                  obj.addEventListener(§0%v§.§+&=§,onCollide);
                  obj.addEventListener(§0%v§.§^$3§,onSink);
                  if(!obj.physParams.hasForce(§]%G§.§="u§))
                  {
                     obj.physParams.addForce(§]%G§.§5$r§);
                  }
                  obj.physicModel.unstop();
                  obj.stable = false;
                  obj.setSpeedXY(0,-0.2);
               }
               else if(Boolean(obj) && obj.disposed)
               {
                  obj.removeEventListener(Event.ENTER_FRAME,onFrame);
               }
            };
            obj.addEventListener(Event.ENTER_FRAME,onFrame);
            §8$a§.§%!E§(60,function():void
            {
               if(Boolean(dummy) && !dummy.disposed)
               {
                  dummy.disposed = true;
               }
            });
         });
      }
   }
}

