package ru.pragmatix.wormix.utils
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#%!§.§%&F§;
   import §%$!§.§9$p§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&#h§.*;
   import §'"N§.*;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §-!U§.§&%j§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §1#p§.Team;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §2o§.§]#@§;
   import §4#2§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!B§.§>"D§;
   import §7$t§.§^$E§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<!W§.§=!6§;
   import §<"?§.§6!8§;
   import §<%E§.§,$2§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=7§.*;
   import §?#g§.Race;
   import §@!i§.§5&4§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import com.inreflected.forks.spark.effects.interpolation.NumberInterpolator;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.*;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.globalization.DateTimeFormatter;
   import flash.net.*;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.client.UpgradeWeapon;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.RestrictionItemStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §0#2§
   {
      
      public static const §+%§:int = 60;
      
      public static const §8#D§:int = 60;
      
      public static const §8$]§:int = §+%§ * §8#D§;
      
      public static const §>!U§:int = §8$]§ * 24;
      
      public static const §9$f§:int = 1000;
      
      public static const §,!@§:int = §+%§ * §9$f§;
      
      public static const §5!q§:int = §>!U§ * §9$f§;
      
      private static const §&"0§:Array = [];
      
      private static const §+$%§:Array = [];
      
      public function §0#2§()
      {
         super();
      }
      
      private static function §4";§() : void
      {
         §&"0§.push(§<"G§.§%! §("jan_init"),§<"G§.§%! §("feb_init"),§<"G§.§%! §("mar_init"),§<"G§.§%! §("apr_init"),§<"G§.§%! §("may_init"),§<"G§.§%! §("jun_init"),§<"G§.§%! §("jul_init"),§<"G§.§%! §("aug_init"),§<"G§.§%! §("sep_init"),§<"G§.§%! §("oct_init"),§<"G§.§%! §("nov_init"),§<"G§.§%! §("dec_init"));
      }
      
      private static function §;!>§() : void
      {
         §+$%§.push(§<"G§.§%! §("jan_full"),§<"G§.§%! §("feb_full"),§<"G§.§%! §("mar_full"),§<"G§.§%! §("apr_full"),§<"G§.§%! §("may_full"),§<"G§.§%! §("jun_full"),§<"G§.§%! §("jul_full"),§<"G§.§%! §("aug_full"),§<"G§.§%! §("sep_full"),§<"G§.§%! §("oct_full"),§<"G§.§%! §("nov_full"),§<"G§.§%! §("dec_full"));
      }
      
      public static function §>#`§(param1:int) : String
      {
         if(§&"0§.length == 0)
         {
            §4";§();
         }
         return 0 <= param1 && param1 < §&"0§.length ? §&"0§[param1] : "";
      }
      
      public static function § R§(param1:int) : String
      {
         if(§+$%§.length == 0)
         {
            §;!>§();
         }
         return 0 <= param1 && param1 < §+$%§.length ? §+$%§[param1] : "";
      }
      
      public static function §3V§(param1:Number) : Number
      {
         var _loc2_:Number = §&,§() / §>!U§;
         return _loc2_ - param1;
      }
      
      public static function §`&=§(param1:Number) : Number
      {
         var _loc2_:Number = §&,§() / §8$]§;
         return _loc2_ - param1;
      }
      
      public static function §0%E§(param1:Number) : Number
      {
         var _loc2_:Number = §&,§() / §+%§;
         return _loc2_ - param1;
      }
      
      public static function §&,§() : Number
      {
         return §""B§() / §9$f§;
      }
      
      public static function §""B§() : Number
      {
         return new Date().getTime();
      }
      
      public static function §8%m§(param1:Number) : uint
      {
         return Math.floor(param1 / §5!q§);
      }
      
      public static function §`"r§(param1:int) : int
      {
         var _loc2_:uint = 0;
         _loc2_ = uint(§@&6§());
         return param1 > _loc2_ ? int((param1 - _loc2_) / §+%§) : 0;
      }
      
      public static function §!$r§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:Number = §`"r§(param1) / §8#D§;
         return param2 ? int(Math.round(_loc3_)) : int(_loc3_);
      }
      
      public static function §0%x§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:Number = §!$r§(param1) / 24;
         return param2 ? int(Math.round(_loc3_)) : int(_loc3_);
      }
      
      public static function §[&>§(param1:int) : int
      {
         return §@&6§() - param1;
      }
      
      public static function §@&6§() : uint
      {
         return §8"%§.§!"F§ + uint(getTimer() / §9$f§);
      }
      
      public static function §'#`§(param1:int, param2:Boolean = false) : Date
      {
         var _loc3_:Date = new Date("yyyy-MM-dd HH:mm:ss.SSSZ");
         _loc3_.setTime(param1 * §9$f§);
         if(param2)
         {
            _loc3_.time += _loc3_.getTimezoneOffset() * §,!@§;
         }
         return _loc3_;
      }
      
      public static function §^%u§(param1:Number, param2:Boolean = false) : Date
      {
         var _loc3_:Date = new Date("yyyy-MM-dd HH:mm:ss.SSS");
         _loc3_.setTime(param1);
         if(param2)
         {
            _loc3_.time += _loc3_.getTimezoneOffset() * §,!@§;
         }
         return _loc3_;
      }
      
      public static function §3"?§(param1:int, param2:Boolean = false, param3:String = "yyyy-MM-dd HH:mm") : String
      {
         var _loc4_:Date = null;
         var _loc5_:DateTimeFormatter = null;
         _loc4_ = §'#`§(param1,param2);
         _loc5_ = new DateTimeFormatter("eu-EU");
         _loc5_.setDateTimePattern(param3);
         return _loc5_.format(_loc4_);
      }
      
      public static function §^%U§(param1:Number, param2:Boolean = false, param3:String = "yyyy-MM-dd HH:mm:ss") : String
      {
         var _loc4_:Date = null;
         var _loc5_:DateTimeFormatter = null;
         _loc4_ = §^%u§(param1,param2);
         _loc5_ = new DateTimeFormatter("eu-EU");
         _loc5_.setDateTimePattern(param3);
         return _loc5_.format(_loc4_);
      }
      
      public static function §3&&§(param1:Boolean = false) : String
      {
         var _loc2_:Number = Number(§""B§());
         var _loc3_:int = _loc2_ - int(_loc2_ / §9$f§) * §9$f§;
         return §^%U§(_loc2_,param1) + "." + (_loc3_ < 10 ? "00" : (_loc3_ < 100 ? "0" : "")) + _loc3_;
      }
      
      public static function §'!5§(param1:int, param2:Boolean = false) : String
      {
         var _loc3_:String = "";
         var _loc4_:int = param1 / §8#D§;
         if(_loc4_ > 0)
         {
            param1 -= _loc4_ * §8#D§;
         }
         var _loc5_:int = _loc4_ / 24;
         if(_loc5_ > 0)
         {
            _loc4_ -= _loc5_ * 24;
         }
         if(_loc5_ > 0)
         {
            _loc3_ += §0%§.format(§0$N§.DAY_TEXT,{"value":_loc5_}) + " ";
         }
         if(_loc4_ > 0)
         {
            _loc3_ += §0%§.format(§0$N§.HOURS_TEXT,{"value":_loc4_}) + " ";
         }
         if(param1 > 0)
         {
            _loc3_ += §0%§.format(§0$N§.MINUTE_TEXT,{"value":param1}) + " ";
         }
         else if(_loc5_ < 1 && _loc4_ < 1)
         {
            _loc3_ += (param2 ? "&lt; " : "< ") + §0$N§.LESS_MINUTE_TEXT + " ";
         }
         return _loc3_;
      }
      
      public static function §1" §(param1:int, param2:Boolean = false) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         _loc3_ = int(§`"r§(param1));
         _loc4_ = int(_loc3_ / §8#D§);
         _loc5_ = _loc3_ % §+%§;
         var _loc6_:String = Social.§-%c§.§4!]§(_loc4_,§0$N§.HOUR_PLURALS);
         var _loc7_:String = Social.§-%c§.§4!]§(_loc5_,§0$N§.MINUTE_PLURALS);
         if(_loc4_ < 1 && _loc5_ < 1)
         {
            return (param2 ? "&lt; " : "< ") + §0$N§.LESS_MINUTE_TEXT;
         }
         if(_loc4_ < 1)
         {
            return §0%§.format(§0$N§.COUNT_ITEMS,{
               "count":_loc5_,
               "items":_loc7_
            });
         }
         if(_loc5_ < 1)
         {
            return §0%§.format(§0$N§.COUNT_ITEMS,{
               "count":_loc4_,
               "items":_loc6_
            });
         }
         return §0%§.format(§0$N§.TIME_IN_MSG,{
            "hoursCount":_loc4_,
            "hoursText":_loc6_,
            "minutesCount":_loc5_,
            "minutesText":_loc7_
         });
      }
      
      public static function §@&1§(param1:Boolean = false) : Date
      {
         var _loc2_:Date = §8"%§.§!"F§ ? §'#`§(§8"%§.§!"F§) : new Date();
         if(param1)
         {
            _loc2_.time += _loc2_.getTimezoneOffset() * §,!@§;
         }
         return _loc2_;
      }
      
      public static function §&%Z§(param1:int) : Boolean
      {
         var _loc2_:Date = §'#`§(param1);
         var _loc3_:Date = §'#`§(§@&6§());
         return _loc2_.fullYear == _loc3_.fullYear && _loc2_.month == _loc3_.month && _loc2_.date == _loc3_.date;
      }
      
      public static function §0%Y§() : Boolean
      {
         var _loc1_:Date = §@&1§(true);
         return _loc1_.month == 0 || _loc1_.month == 1 || _loc1_.month == 11;
      }
      
      public static function §=$n§() : Boolean
      {
         var _loc1_:Date = §@&1§(true);
         return _loc1_.month == 11 && _loc1_.date > 24 || _loc1_.month == 0 && _loc1_.date < 16;
      }
      
      public static function §0%1§() : Boolean
      {
         var _loc1_:Date = §@&1§(true);
         return _loc1_.month == 0 && _loc1_.date < 15;
      }
      
      public static function § #§() : Boolean
      {
         var _loc1_:Date = §@&1§(true);
         return _loc1_.month >= 2 && _loc1_.month <= 4;
      }
      
      public static function §@!M§() : Boolean
      {
         var _loc1_:Date = §@&1§(true);
         return _loc1_.month >= 5 && _loc1_.month <= 7;
      }
      
      public static function §"&,§() : Boolean
      {
         var _loc1_:Date = §@&1§(true);
         return _loc1_.month >= 8 && _loc1_.month <= 10;
      }
      
      public static function §"!w§() : Boolean
      {
         var _loc1_:Date = §@&1§(true);
         return _loc1_.date == 1 && _loc1_.month == 3;
      }
      
      public static function §;%<§() : Boolean
      {
         var _loc1_:Date = §@&1§(true);
         return _loc1_.date >= 1 && _loc1_.date <= 6 && _loc1_.month == 3;
      }
      
      public static function §0![§() : Boolean
      {
         var _loc1_:Date = §@&1§(true);
         return _loc1_.getDay() == 6 || _loc1_.getDay() == 0;
      }
   }
}

