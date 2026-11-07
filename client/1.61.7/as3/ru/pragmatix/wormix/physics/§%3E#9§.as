package ru.pragmatix.wormix.physics
{
   import § "L§.GrenadeTurret;
   import § &5§.§&!W§;
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#E§.MsgBoxSocialSelect;
   import §&&6§.§8"O§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§'%V§;
   import §+%S§.§[0§;
   import §-%B§.*;
   import §-8§.§3!x§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §1&-§.§4!s§;
   import §1A§.§#"§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §2#i§.*;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §4f§.§-&§;
   import §5#`§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §=1§.*;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §?>§.§0!7§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §]7§.§0'§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§1W§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §>#9§
   {
      
      private static var §?"B§:§&!W§;
      
      public static const § !w§:uint = 12;
      
      internal static const §2!m§:uint = 4;
      
      internal static const §8a§:uint = 5;
      
      public function §>#9§()
      {
         super();
      }
      
      public static function unit(param1:int, param2:int, param3:Boolean = false) : Boolean
      {
         return §+%Y§(param1,param2,§<H§.§-#C§,param3);
      }
      
      public static function §+%Y§(param1:int, param2:int, param3:uint, param4:Boolean = false) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         if(param3 < 5)
         {
            param3 = uint(§8a§);
         }
         var _loc5_:int = -§2!m§;
         loop0:
         while(_loc5_ <= Number(§2!m§))
         {
            _loc6_ = param2 + param3 - Math.abs(_loc5_);
            _loc7_ = param2 - param3 + Math.abs(_loc5_);
            while(true)
            {
               if(_loc7_ > _loc6_)
               {
                  _loc5_++;
                  continue loop0;
               }
               if(point(param1 + _loc5_,_loc7_,param4))
               {
                  break;
               }
               _loc7_++;
            }
            return true;
         }
         return false;
      }
      
      public static function §3%2§(param1:int, param2:int, param3:Number, param4:uint) : Point
      {
         var _loc5_:int = int(param4 * Math.cos(param3));
         var _loc6_:int = int(param4 * Math.sin(param3));
         return §>@§(param1,param2,_loc5_,_loc6_);
      }
      
      public static function §>@§(param1:int, param2:int, param3:int, param4:int) : Point
      {
         var _loc5_:Number = NaN;
         _loc5_ = Math.max(Math.abs(param3),Math.abs(param4));
         var _loc6_:Number = param3 / _loc5_;
         var _loc7_:Number = param4 / _loc5_;
         var _loc8_:Number = 1 * param1;
         var _loc9_:Number = 1 * param2;
         var _loc10_:uint = 0;
         while(_loc10_ < int(_loc5_))
         {
            _loc8_ += _loc6_;
            _loc9_ += _loc7_;
            if(point(int(_loc8_),int(_loc9_)))
            {
               return new Point(int(_loc8_),int(_loc9_));
            }
            _loc10_++;
         }
         return null;
      }
      
      public static function point(param1:int, param2:int, param3:Boolean = false) : Boolean
      {
         return param3 ? Boolean(§?"B§.§1R§(param1,param2)) : Boolean(§?"B§.hitTest(param1,param2));
      }
      
      public static function §#!9§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Vector.<§+%]§>) : Point
      {
         var _loc7_:Number = NaN;
         _loc7_ = Math.max(Math.abs(param3),Math.abs(param4));
         var _loc8_:Number = param3 / _loc7_;
         var _loc9_:Number = param4 / _loc7_;
         var _loc10_:Number = 1 * param1;
         var _loc11_:Number = 1 * param2;
         var _loc12_:uint = 0;
         while(_loc12_ < int(_loc7_))
         {
            _loc10_ += _loc8_;
            _loc11_ += _loc9_;
            if(§<H§.§5"]§(_loc10_,_loc11_,param5,param6).length > 0)
            {
               return new Point(int(_loc10_),int(_loc11_));
            }
            _loc12_++;
         }
         return null;
      }
      
      public static function § #B§(param1:int, param2:int, param3:uint, param4:Boolean, param5:Boolean, param6:Boolean = true) : Boolean
      {
         var _loc7_:int = param5 ? -1 : 1;
         var _loc8_:int = param2 + _loc7_ * (param3 - §2!m§);
         var _loc9_:int = param6 ? int(§2!m§) : int(§2!m§ - 1);
         if(!param6)
         {
            _loc8_ += _loc7_;
         }
         var _loc10_:int = -_loc9_;
         while(_loc10_ <= _loc9_)
         {
            if(point(param1 - _loc10_,_loc8_,param4))
            {
               return true;
            }
            if(_loc10_ == 0)
            {
               _loc7_ *= -1;
            }
            _loc8_ += _loc7_;
            _loc10_++;
         }
         return false;
      }
      
      public static function §@,§(param1:int, param2:int, param3:uint, param4:Boolean, param5:Boolean) : Boolean
      {
         var _loc9_:int = 0;
         var _loc6_:int = param5 ? -1 : 1;
         var _loc7_:int = param1 + _loc6_ * §2!m§;
         var _loc8_:int = -param3;
         while(_loc8_ <= param3)
         {
            _loc9_ = param5 ? int(Math.max(param1,_loc7_)) : int(Math.min(param1,_loc7_));
            if(point(_loc9_,param2 + _loc8_,param4))
            {
               return true;
            }
            if(_loc8_ == 0)
            {
               _loc6_ *= -1;
            }
            param1 += _loc6_;
            _loc8_++;
         }
         return false;
      }
      
      public static function §3m§(param1:int, param2:int, param3:Boolean = true, param4:uint = 12, param5:Boolean = false) : Boolean
      {
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:uint = 0;
         var _loc13_:int = 0;
         _loc6_ = _loc8_ = 0;
         _loc7_ = int(param4);
         _loc10_ = 2 * (1 - param4);
         do
         {
            _loc12_ = param3 || _loc6_ == 0 ? 1 : uint(_loc6_ << 1);
            _loc11_ = 0;
            _loc13_ = param1 - _loc6_;
            while(_loc13_ <= param1 + _loc6_)
            {
               if(param5)
               {
                  if(§?"B§.§1R§(_loc13_,param2 - _loc7_))
                  {
                     return true;
                  }
                  if(§?"B§.§1R§(_loc13_,param2 + _loc7_))
                  {
                     return true;
                  }
               }
               else
               {
                  if(§?"B§.hitTest(_loc13_,param2 - _loc7_))
                  {
                     return true;
                  }
                  if(§?"B§.hitTest(_loc13_,param2 + _loc7_))
                  {
                     return true;
                  }
               }
               _loc13_ += _loc12_;
            }
            if(_loc7_ < _loc8_)
            {
               break;
            }
            if(_loc10_ < 0)
            {
               _loc9_ = 2 * (_loc10_ + _loc7_) - 1;
               if(_loc9_ <= 0)
               {
                  _loc6_++;
                  _loc10_ += 2 * _loc6_ + 1;
                  _loc11_ = 1;
               }
            }
            else if(_loc10_ > 0)
            {
               _loc9_ = 2 * (_loc10_ - _loc6_) - 1;
               if(_loc9_ > 0)
               {
                  _loc7_--;
                  _loc10_ += 1 - 2 * _loc7_;
                  _loc11_ = 1;
               }
            }
            if(!_loc11_)
            {
               _loc6_++;
               _loc7_--;
               _loc10_ += 2 * (_loc6_ - _loc7_ - 1);
            }
         }
         while(1);
         return false;
      }
      
      public static function §[&@§(param1:§0&$§) : void
      {
         §?"B§ = param1.§?"B§;
      }
   }
}

