package ru.pragmatix.wormix.utils
{
   import § #m§.§;#^§;
   import §!$Z§.§"$I§;
   import §"!C§.§2v§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&#h§.*;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-@§.§0"e§;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0&F§.§!!c§;
   import §0&F§.§0$_§;
   import §1#p§.Team;
   import §2!-§.§'5§;
   import §2!-§.HpChangeEvent;
   import §2#s§.*;
   import §4#2§.*;
   import §4$b§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §8$V§.*;
   import §9%W§.§!"G§;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§;#L§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import com.inreflected.forks.spark.effects.interpolation.NumberInterpolator;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   
   public class §-q§
   {
      
      private static const PI:Number = Math.PI;
      
      public static const PI_HALF:Number = PI / 2;
      
      public static const PI2:Number = PI * 2;
      
      public function §-q§()
      {
         super();
      }
      
      public static function §2!B§(param1:uint, param2:Number) : Point
      {
         return new Point(param1 * Math.cos(param2),param1 * Math.sin(param2));
      }
      
      public static function random(param1:Number, param2:Number) : Number
      {
         return Math.round(Math.random() * (param2 - param1)) + param1;
      }
      
      public static function distance(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = param3 - param1;
         var _loc6_:Number = param4 - param2;
         return Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
      }
      
      public static function §'x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : Number
      {
         var _loc6_:Number = param3 - param1;
         var _loc7_:Number = param4 - param2;
         var _loc8_:Number = Math.atan2(_loc7_,_loc6_);
         if(param5)
         {
            if(_loc8_ < 0)
            {
               _loc8_ = PI2 + _loc8_;
            }
            else if(_loc8_ >= PI2)
            {
               _loc8_ -= PI2;
            }
         }
         return _loc8_;
      }
      
      public static function §1$#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : Number
      {
         var _loc6_:Number = param3 - param1;
         var _loc7_:Number = param4 - param2;
         var _loc8_:Number = Math.atan2(_loc7_,_loc6_) / PI * 180;
         if(param5)
         {
            if(_loc8_ < 0)
            {
               _loc8_ = 360 + _loc8_;
            }
            else if(_loc8_ >= 360)
            {
               _loc8_ -= 360;
            }
         }
         return _loc8_;
      }
      
      public static function §5&H§(param1:Number, param2:Number) : Number
      {
         return param1 / param2 * 100;
      }
      
      public static function §8$G§(param1:Number, param2:Number) : Number
      {
         return param1 * param2 / 100;
      }
      
      public static function §'%$§(param1:Number, param2:Number) : Number
      {
         return param2 + param1 * param2 / 100;
      }
      
      public static function §[!d§(param1:Number, param2:Number, param3:Number = 0.01) : Boolean
      {
         return Math.abs(param1 - param2) <= param3;
      }
      
      public static function §6$p§(param1:int, param2:int, param3:int) : Boolean
      {
         return param2 > param3 ? param1 >= param2 && param1 <= param3 : param1 >= param3 && param1 <= param2;
      }
      
      public static function §%%>§(param1:Number) : Number
      {
         return param1 * 180 / PI;
      }
      
      public static function §7%8§(param1:Number) : Number
      {
         return param1 * PI / 180;
      }
      
      public static function §+K§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : Boolean
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         _loc8_ = param1 - param5;
         _loc9_ = param2 - param6;
         _loc10_ = param3 - param5;
         _loc11_ = param4 - param6;
         _loc12_ = _loc10_ - _loc8_;
         _loc13_ = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ * _loc12_ + _loc13_ * _loc13_;
         var _loc15_:Number = 2 * (_loc8_ * _loc12_ + _loc9_ * _loc13_);
         var _loc16_:Number = _loc8_ * _loc8_ + _loc9_ * _loc9_ - param7 * param7;
         if(-_loc15_ < 0)
         {
            return _loc16_ < 0;
         }
         if(-_loc15_ < 2 * _loc14_)
         {
            return 4 * _loc14_ * _loc16_ - _loc15_ * _loc15_ < 0;
         }
         return _loc14_ + _loc15_ + _loc16_ < 0;
      }
      
      public static function §&!%§(param1:Number, param2:Number = 0, param3:Number = 0) : Point
      {
         var _loc4_:Number = §8"%§.randomSeed.§5!p§() * PI2;
         var _loc5_:Number = §8"%§.randomSeed.§5!p§() * param1;
         return new Point(_loc5_ * Math.cos(_loc4_) + param2,_loc5_ * Math.sin(_loc4_) + param3);
      }
      
      public static function §-&%§(param1:Number, param2:int) : Number
      {
         var _loc3_:int = Math.pow(10,param2);
         return Math.round(param1 * _loc3_) / _loc3_;
      }
      
      public static function §!&&§(param1:Number, param2:int) : Number
      {
         var _loc3_:int = Math.pow(10,param2);
         return Math.floor(param1 * _loc3_) / _loc3_;
      }
      
      public static function §+$v§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Boolean
      {
         return Math.pow(param5,2) >= Math.pow(param1 - param3,2) + Math.pow(param2 - param4,2);
      }
      
      public static function §2!Y§(param1:Number) : Number
      {
         while(param1 < -Math.PI)
         {
            param1 += PI2;
         }
         while(param1 > Math.PI)
         {
            param1 -= PI2;
         }
         return param1;
      }
      
      public static function §0#!§(param1:Number, param2:Number) : Number
      {
         param1 = §2!Y§(param1);
         param2 = §2!Y§(param2);
         var _loc3_:Number = param2 - param1;
         _loc3_ += _loc3_ > Math.PI ? -PI2 : (_loc3_ < -Math.PI ? PI2 : 0);
         return Math.abs(_loc3_);
      }
      
      public static function §=p§(param1:Number, param2:Number, param3:Number) : Number
      {
         return §-q§.§0#!§(param1,param2) < §-q§.§0#!§(param1,param3) ? param2 : param3;
      }
      
      public static function §1&A§(param1:Number, param2:Array) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = Number.NaN;
         if(param2.length > 0)
         {
            _loc3_ = Number(param2[0]);
            for each(_loc4_ in param2)
            {
               _loc3_ = §=p§(param1,_loc3_,_loc4_);
            }
         }
         return _loc3_;
      }
      
      public static function §""_§(param1:Point, param2:Point, param3:Point) : Number
      {
         return Math.abs((param1.x - param3.x) * (param2.y - param3.y) + (param2.x - param3.x) * (param3.y - param1.y));
      }
      
      public static function § #5§(param1:Point, param2:Point, param3:Point, param4:Point) : Boolean
      {
         var _loc5_:int = §""_§(param1,param2,param4) + §""_§(param1,param4,param3) + §""_§(param2,param4,param3);
         return §[!d§(§""_§(param1,param2,param3),_loc5_,5);
      }
      
      public static function §@$H§(param1:§&"T§, param2:§&"T§) : Number
      {
         return Math.atan2(param2.y - param1.y,param2.x - param1.x);
      }
      
      public static function §!#4§(param1:int) : uint
      {
         return Math.abs(param1).toString().length;
      }
      
      public static function §4&8§() : int
      {
         return [-1,1][§8"%§.randomSeed.§,!q§(0,1)];
      }
      
      public static function §,$D§(param1:Point, param2:Point, param3:Point, param4:Point) : Point
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         _loc5_ = (param1.x - param2.x) * (param4.y - param3.y) - (param1.y - param2.y) * (param4.x - param3.x);
         _loc6_ = (param1.x - param3.x) * (param4.y - param3.y) - (param1.y - param3.y) * (param4.x - param3.x);
         _loc7_ = (param1.x - param2.x) * (param1.y - param3.y) - (param1.y - param2.y) * (param1.x - param3.x);
         var _loc8_:Number = _loc6_ / _loc5_;
         var _loc9_:Number = _loc7_ / _loc5_;
         if(_loc8_ >= 0 && _loc8_ <= 1 && _loc9_ >= 0 && _loc9_ <= 1)
         {
            _loc10_ = param1.x + _loc8_ * (param2.x - param1.x);
            _loc11_ = param1.y + _loc8_ * (param2.y - param1.y);
            return new Point(_loc10_,_loc11_);
         }
         return null;
      }
   }
}

