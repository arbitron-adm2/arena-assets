package ru.pragmatix.wormix.physics
{
   import § "%§.§0$[§;
   import § "d§.§,!c§;
   import § #9§.§3L§;
   import § $q§.*;
   import §!#g§.MD5;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#$e§.*;
   import §#k§.§9$v§;
   import §%"1§.*;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%E§.§5%C§;
   import §%L§.§#&%§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §&#W§.*;
   import §&#h§.*;
   import §&$Y§.§&!R§;
   import §'!Z§.§6S§;
   import §+#P§.§]!E§;
   import §+%S§.§[`§;
   import §,$J§.§,$O§;
   import §-&5§.*;
   import §-@§.§0"e§;
   import §-G§.*;
   import §0!Y§.§ !k§;
   import §0!Y§.§!$%§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0&F§.§0%v§;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §4#`§.§?!l§;
   import §4#`§.BattleInterface;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §8$V§.*;
   import §9%W§.§`"y§;
   import §<$2§.§<%>§;
   import §<%E§.§4T§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §="z§.§-O§;
   import §="z§.§[$+§;
   import §=&!§.§<$Z§;
   import §>"l§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§8%6§;
   import §@"x§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%§.Rabbit;
   import §]#[§.*;
   import §^!]§.TeleportEvent;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^#[§.§]!0§;
   import api.com.forticom.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.plugins.*;
   import config.achievements.*;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.*;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.pvp.messages.client.ReconnectToBattle;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.§%%a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.BagHackWeapon;
   
   public class §<H§
   {
      
      public static const PI2:Number = Math.PI * 2;
      
      public static const §?O§:Number = 0.000001;
      
      public static const §6!^§:§]!0§ = new §]!0§(0.000001);
      
      public static const §3r§:uint = 60;
      
      public static const §1!0§:uint = §3r§ * §3r§;
      
      public static const §@k§:uint = 34;
      
      public static const §,%P§:uint = 36;
      
      public static const §@% §:uint = §@k§ >> 1;
      
      public static const §-#C§:uint = §,%P§ >> 1;
      
      public function §<H§()
      {
         super();
      }
      
      public static function §"%8§(param1:§+%]§, param2:int, param3:int, param4:Function = null) : void
      {
         var _loc5_:Point = new Point(param1.x,param1.y);
         var _loc6_:Point = new Point(param2,param3);
         param1.x = param2;
         param1.y = param3;
         if(param4 != null)
         {
            param4();
         }
         param1.dispatchEvent(new TeleportEvent(_loc5_,_loc6_));
      }
      
      public static function §>$§(param1:§-O§) : Vector.<§+%]§>
      {
         var _loc4_:§+%]§ = null;
         var _loc5_:§[$+§ = null;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         var _loc3_:Vector.<§+%]§> = Application.scene.§@$I§.§;%a§.§1!n§();
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = _loc4_.physicModel;
            if(_loc5_ != param1 && !_loc4_.disposed && _loc5_.stable)
            {
               if(Math.abs(_loc5_.x - param1.x) < §>#9§.§2!m§ << 1 && Math.abs(_loc5_.y - param1.y) < §,%P§)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public static function §5"]§(param1:int, param2:int, param3:Number, param4:Vector.<§+%]§> = null, param5:Boolean = true) : Vector.<§+%]§>
      {
         var _loc7_:§+%]§ = null;
         var _loc8_:Boolean = false;
         if(!param4)
         {
            param4 = Application.scene.§@$I§.§;%a§.§1!n§();
         }
         var _loc6_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         for each(_loc7_ in param4)
         {
            _loc8_ = §8!P§(_loc7_,param1,param2,param3,true);
            if(param5 && _loc8_ || !param5 && !_loc8_)
            {
               _loc6_.push(_loc7_);
            }
         }
         return _loc6_;
      }
      
      public static function §3%'§(param1:int, param2:int, param3:Number, param4:Vector.<§&"T§>, param5:Boolean = true) : Vector.<§&"T§>
      {
         var _loc7_:§&"T§ = null;
         var _loc8_:Boolean = false;
         var _loc6_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         for each(_loc7_ in param4)
         {
            if(!_loc7_.disposed)
            {
               _loc8_ = param5 && _loc7_.physParams.§0#0§ == §<#`§.§[;§;
               if(§8!P§(_loc7_,param1,param2,param3,_loc8_))
               {
                  _loc6_.push(_loc7_);
               }
            }
         }
         return _loc6_;
      }
      
      public static function §9#!§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Vector.<§&"T§>) : Vector.<§&"T§>
      {
         var _loc9_:§&"T§ = null;
         var _loc10_:Number = NaN;
         var _loc7_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         var _loc8_:Vector.<§&"T§> = §3%'§(param1,param2,param3,param6);
         for each(_loc9_ in _loc8_)
         {
            _loc10_ = Math.atan2(_loc9_.y - param2,_loc9_.x - param1);
            if(Math.abs(_loc10_ - param4) < param5 || Math.abs(_loc10_ - param4) > PI2 - param5 && Math.abs(_loc10_ - param4) < PI2 + param5)
            {
               _loc7_.push(_loc9_);
            }
         }
         return _loc7_;
      }
      
      public static function §8!P§(param1:§&"T§, param2:int, param3:int, param4:Number, param5:Boolean) : Boolean
      {
         if(param1.disposed)
         {
            return false;
         }
         var _loc6_:int = param1.x;
         var _loc7_:int = param1.y;
         if(param5)
         {
            if(param3 > param1.y + §-#C§)
            {
               _loc7_ = param1.y + §-#C§;
            }
            else if(param3 < param1.y - §-#C§)
            {
               _loc7_ = param1.y - §-#C§;
            }
         }
         if(Math.abs(_loc6_ - param2) > param4 || Math.abs(_loc7_ - param3) > param4)
         {
            return false;
         }
         return Math.pow(param4,2) >= Math.pow(_loc6_ - param2,2) + Math.pow(_loc7_ - param3,2);
      }
      
      public static function §%$Q§(param1:int, param2:int, param3:int, param4:int, param5:Vector.<§&"T§>, param6:Boolean = true) : Vector.<§&"T§>
      {
         var _loc8_:§&"T§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc7_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         for each(_loc8_ in param5)
         {
            if(!_loc8_.disposed)
            {
               _loc9_ = int(_loc8_.§4!?§);
               _loc10_ = int(_loc8_.§,#u§);
               if(_loc8_.x > param1 - _loc9_ && _loc8_.x < param3 + _loc9_ && _loc8_.y > param2 - _loc10_ && _loc8_.y < param4 + _loc10_ && param6 || (_loc8_.x < param1 - _loc9_ || _loc8_.x > param3 + _loc9_ || _loc8_.y < param2 - _loc10_ || _loc8_.y > param4 + _loc10_) && !param6)
               {
                  _loc7_.push(_loc8_);
               }
            }
         }
         return _loc7_;
      }
      
      public static function § !K§(param1:int, param2:int, param3:Function, param4:int = 100) : Point
      {
         var _loc6_:* = 0;
         if(!param3(param1,param2))
         {
            return new Point(param1,param2);
         }
         if(param4 < 1)
         {
            param4 = 1;
         }
         var _loc5_:int = 1;
         loop0:
         while(_loc5_ <= param4)
         {
            _loc6_ = int(param1 - _loc5_);
            while(_loc6_ < param1 + _loc5_)
            {
               if(!param3(_loc6_,param2 - _loc5_))
               {
                  return new Point(_loc6_,param2 - _loc5_);
               }
               _loc6_++;
            }
            _loc6_ = int(param2 - _loc5_);
            while(_loc6_ < param2 + _loc5_)
            {
               if(!param3(param1 + _loc5_,_loc6_))
               {
                  return new Point(param1 + _loc5_,_loc6_);
               }
               _loc6_++;
            }
            _loc6_ = int(param1 + _loc5_);
            while(_loc6_ > param1 - _loc5_)
            {
               if(!param3(_loc6_,param2 + _loc5_))
               {
                  return new Point(_loc6_,param2 + _loc5_);
               }
               _loc6_--;
            }
            _loc6_ = int(param2 + _loc5_);
            while(true)
            {
               if(_loc6_ >= param2 - _loc5_)
               {
                  _loc5_++;
                  continue loop0;
               }
               if(!param3(param1 - _loc5_,_loc6_))
               {
                  break;
               }
               _loc6_--;
            }
            return new Point(param1 - _loc5_,_loc6_);
         }
         return null;
      }
      
      public static function distance(param1:§&"T§, param2:§&"T§) : Number
      {
         return §^$y§.distance(param2.x - param1.x,param2.y - param1.y);
      }
      
      public static function §["T§(param1:int, param2:int, param3:int = 20) : int
      {
         var _loc5_:int = 0;
         var _loc4_:int = param2;
         if(§>#9§.point(param1,param2))
         {
            _loc4_ = param2 - 10;
            _loc5_ = 1;
            while(_loc5_ <= param3)
            {
               if(!§>#9§.point(param1,param2 - _loc5_))
               {
                  _loc4_ = param2 - _loc5_;
                  break;
               }
               _loc5_++;
            }
         }
         else
         {
            _loc4_ = param2;
            _loc5_ = 1;
            while(_loc5_ <= param3 + 1)
            {
               if(§>#9§.point(param1,param2 + _loc5_))
               {
                  _loc4_ = param2 + _loc5_ - 1;
                  break;
               }
               _loc5_++;
            }
         }
         return param2 - _loc4_;
      }
      
      public static function §<%d§(param1:int, param2:int) : Number
      {
         var _loc3_:int = §["T§(param1 - 3,param2);
         var _loc4_:int = §["T§(param1 + 3,param2);
         var _loc5_:Number = Math.atan2(_loc3_ - _loc4_,4);
         if(_loc5_ < 0)
         {
            _loc5_ += Math.PI;
         }
         return _loc5_ < Math.PI / 2 ? _loc5_ + Math.PI / 2 : _loc5_ - Math.PI / 2;
      }
      
      public static function §3"j§(param1:int, param2:int, param3:uint = 20, param4:Number = 1.5707963267948966) : Number
      {
         var _loc10_:Point = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 64;
         var _loc9_:int = -_loc8_;
         while(_loc9_ < _loc8_)
         {
            _loc10_ = §>#9§.§3%2§(param1,param2,_loc9_ * Math.PI / _loc8_,param3);
            if(_loc10_)
            {
               _loc5_ += _loc10_.x - param1;
               _loc6_ += _loc10_.y - param2;
               _loc7_++;
            }
            _loc9_++;
         }
         return _loc7_ > 0 ? Math.atan2(_loc6_,_loc5_) : param4;
      }
      
      public static function §"%a§(param1:int, param2:int, param3:Number) : Number
      {
         var _loc4_:int = -5;
         while(_loc4_ < 30)
         {
            if(§>#9§.point(param1,param2 + _loc4_))
            {
               break;
            }
            _loc4_++;
         }
         return 2 * §<%d§(param1,param2 + _loc4_) - param3;
      }
      
      public static function §7%+§(param1:§&"T§, param2:Array, param3:int = -1) : §&"T§
      {
         return §=$F§(param1.x,param1.y,param2,param3);
      }
      
      public static function §=$F§(param1:int, param2:int, param3:Array, param4:int = -1) : §&"T§
      {
         var _loc7_:§&"T§ = null;
         var _loc8_:Number = NaN;
         var _loc5_:§&"T§ = null;
         var _loc6_:Number = Number.MAX_VALUE;
         for each(_loc7_ in param3)
         {
            if(!_loc7_.disposed)
            {
               _loc8_ = (_loc7_.x - param1) * (_loc7_.x - param1) + (_loc7_.y - param2) * (_loc7_.y - param2);
               if(_loc8_ < _loc6_)
               {
                  _loc6_ = _loc8_;
                  _loc5_ = _loc7_;
               }
            }
         }
         if(param4 > 0 && _loc6_ > param4 * param4)
         {
            _loc5_ = null;
         }
         return _loc5_;
      }
      
      public static function §"%G§(param1:int, param2:int, param3:Array) : Vector.<§&"T§>
      {
         var gobj:§&"T§ = null;
         var x:int = param1;
         var y:int = param2;
         var selection:Array = param3;
         var result:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         for each(gobj in selection)
         {
            if(!gobj.disposed)
            {
               result.push(gobj);
            }
         }
         result.sort(function(param1:§&"T§, param2:§&"T§):int
         {
            var _loc3_:Number = (param1.x - x) * (param1.x - x) + (param1.y - y) * (param1.y - y);
            var _loc4_:Number = (param2.x - x) * (param2.x - x) + (param2.y - y) * (param2.y - y);
            return §^$y§.sign(_loc3_ - _loc4_);
         });
         return result;
      }
   }
}

