package §@!N§
{
   import § !8§.§`!d§;
   import § "d§.§,!c§;
   import § #9§.*;
   import § #m§.§;#^§;
   import § &5§.§0&$§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&%X§.§-#N§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$j§.QuestGiftItem;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §+%S§.§2!I§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1%H§.§!"=§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#V§.§-#U§;
   import §2#i§.§9##§;
   import §2o§.§]#@§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#o§.§1@§;
   import §<%E§.§=$u§;
   import §<%J§.§!!`§;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §=!p§.§8#x§;
   import §=&!§.§&$a§;
   import §=&!§.§<$Z§;
   import §?"[§.*;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §?$L§.§ "N§;
   import §@!i§.§8%6§;
   import §@#K§.§-§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import §`"p§.*;
   import §`#x§.*;
   import §`v§.§2&H§;
   import config.§5%T§;
   import config.achievements.§^t§;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §2"e§
   {
      
      public static const NA:String = "N/A";
      
      public function §2"e§()
      {
         super();
      }
      
      public static function §5%t§(param1:int, param2:Boolean = false) : String
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc3_:uint = 3;
         var _loc4_:String = param1 < 0 ? "-" : "";
         var _loc5_:String = Math.abs(param1).toString();
         var _loc6_:String = "";
         if(_loc5_.length > _loc3_)
         {
            _loc7_ = Math.floor((_loc5_.length - 1) / _loc3_);
            _loc8_ = _loc5_.length - _loc7_ * _loc3_;
            if(_loc8_ != 0)
            {
               _loc6_ = _loc5_.slice(0,_loc8_);
            }
            _loc9_ = 0;
            while(_loc9_ < _loc7_)
            {
               _loc6_ += param2 ? "k" : " " + _loc5_.substr(_loc8_ + _loc9_ * _loc3_,_loc3_);
               _loc9_++;
            }
         }
         else
         {
            _loc6_ = _loc5_;
         }
         return _loc4_ + _loc6_;
      }
      
      public static function §#"I§(param1:String, param2:String) : String
      {
         return "<font color=\"" + param2 + "\">" + param1 + "</font>";
      }
      
      public static function §6#R§(param1:String, param2:uint) : String
      {
         return "<font color=\"#" + param2.toString(16) + "\">" + param1 + "</font>";
      }
      
      public static function §>%K§(param1:§]+§, param2:String) : void
      {
         var _loc3_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:Object = null;
         _loc3_ = param2.split(",");
         var _loc4_:int = int(_loc3_[0]);
         var _loc5_:int = int(_loc3_[1]);
         if(_loc4_ == §-"P§.§&",§)
         {
            _loc6_ = §0%§.format(§0$N§.TOP_RATING_REWARD_COMMON_MESSAGE,{"place":_loc5_});
            _loc7_ = §0%§.format(§0$N§.WALL_POST_TOP_RATING_REWARD_COMMON,{"place":_loc5_});
         }
         else
         {
            switch(_loc4_)
            {
               case §-"P§.§"#p§:
                  _loc8_ = "RATING_BTN_1х1х15";
                  break;
               case §-"P§.§>!x§:
                  _loc8_ = "RATING_BTN_1х1х300";
                  break;
               case §-"P§.§"!0§:
                  _loc8_ = "RATING_BTN_1х1х1";
                  break;
               case §-"P§.§'$L§:
                  _loc8_ = "RATING_BTN_2х2";
                  break;
               case §-"P§.§,$^§:
                  _loc8_ = "RATING_BTN_2х2_FRIEND";
            }
            _loc9_ = {
               "place":_loc5_,
               "wager":§0$N§.§%! §(_loc8_)
            };
            _loc6_ = §0%§.format(§0$N§.TOP_RATING_REWARD_WAGER_MESSAGE,_loc9_);
            _loc7_ = §0%§.format(§0$N§.WALL_POST_TOP_RATING_REWARD_WAGER,_loc9_);
         }
         param1.postMessage = _loc7_;
         param1.§8%T§ = _loc6_;
         param1.§,k§ = §0$N§.CONGRATULATION_TITLE;
      }
      
      public static function §5%A§(param1:§]+§, param2:String) : void
      {
         var _loc3_:int = 0;
         _loc3_ = int(param2);
         var _loc4_:String = §0%§.format(§0$N§.BONUS_HEROIC_TEXT,{"difficulty":§8"e§.§["V§(_loc3_).§@$+§()});
         param1.§8%T§ = _loc4_;
         param1.§,k§ = §0$N§.CONGRATULATION_TITLE;
      }
      
      public static function §,%6§(param1:§]+§, param2:String) : void
      {
         param1.§8%T§ = §0$N§.USE_WEAPONS_TEXT;
         param1.§,k§ = §0$N§.CONGRATULATION_TITLE;
      }
      
      public static function §`$1§(param1:§]+§) : String
      {
         var _loc3_:Dictionary = null;
         var _loc6_:int = 0;
         var _loc7_:Dictionary = null;
         var _loc9_:UserProfile = null;
         var _loc13_:int = 0;
         var _loc14_:§&!e§ = null;
         var _loc15_:BackpackItem = null;
         var _loc16_:String = null;
         var _loc17_:String = null;
         var _loc2_:String = param1.§8%T§ + "\n";
         if(param1.money > 0)
         {
            _loc2_ = _loc2_ + §0$N§.FUZY_QTIP.toLowerCase() + " (" + param1.money + "), ";
         }
         if(param1.realMoney > 0)
         {
            _loc2_ = _loc2_ + §0$N§.RUBY_QTIP.toLowerCase() + " (" + param1.realMoney + "), ";
         }
         if(param1.reaction > 0)
         {
            _loc2_ = _loc2_ + §0$N§.REACTION_QTIP.toLowerCase() + " (" + param1.reaction + "), ";
         }
         _loc3_ = param1.reagents;
         var _loc4_:int = int(§-!Y§.§&%Y§(_loc3_));
         var _loc5_:int = 0;
         if(Boolean(_loc3_) && _loc4_ > 0)
         {
            for(_loc16_ in _loc3_)
            {
               _loc6_ = int(_loc16_);
               _loc2_ = _loc2_ + §1@§.§`$M§(_loc6_).§7%z§().toLowerCase() + " (" + _loc3_[_loc16_] + ")" + (_loc5_ < _loc4_ - 1 ? ", " : "");
               _loc5_++;
            }
         }
         _loc7_ = param1.items;
         var _loc8_:int = int(§-!Y§.§&%Y§(_loc7_));
         _loc9_ = Application.userProfile;
         var _loc10_:§'"-§ = _loc9_.§3%^§();
         var _loc11_:§`!d§ = _loc9_.getRace();
         var _loc12_:int = 0;
         if(Boolean(_loc7_) && _loc8_ > 0)
         {
            if(_loc4_ > 0)
            {
               _loc2_ += ", ";
            }
            for(_loc17_ in _loc7_)
            {
               _loc13_ = int(_loc17_);
               if(_loc13_ >= 2000)
               {
                  _loc14_ = §<$c§.§"$h§(_loc13_);
                  _loc2_ = _loc2_ + _loc14_.§7%z§().toLowerCase() + (_loc12_ < _loc8_ - 1 ? ", " : "");
               }
               else if(_loc13_ >= 1000)
               {
                  _loc14_ = §<$c§.§^&1§(_loc13_,_loc11_);
                  _loc2_ = _loc2_ + _loc14_.§7%z§().toLowerCase() + (_loc12_ < _loc8_ - 1 ? ", " : "");
               }
               else
               {
                  _loc14_ = §<$c§.§ !=§(_loc13_);
                  _loc15_ = §1!S§.§@!&§(_loc13_,_loc10_);
                  if(!_loc15_ || !_loc15_.isInfinite())
                  {
                     _loc2_ = _loc2_ + _loc14_.§7%z§().toLowerCase() + " (" + _loc7_[_loc17_] + ")" + (_loc12_ < _loc8_ - 1 ? ", " : "");
                  }
                  _loc15_ = null;
               }
               _loc12_++;
            }
         }
         return _loc2_;
      }
      
      public static function §;"e§(param1:String, param2:String, param3:String = "") : String
      {
         while(param1.indexOf(param2) > -1)
         {
            param1 = param1.replace(param2,param3);
         }
         return param1;
      }
      
      public static function §"%i§(param1:String) : String
      {
         var _loc2_:String = " ";
         var _loc3_:String = "\t";
         var _loc4_:String = "  ";
         var _loc5_:String = " ";
         param1 = §;"e§(param1,_loc2_,_loc5_);
         param1 = §;"e§(param1,_loc3_,_loc5_);
         return §;"e§(param1,_loc4_,_loc5_);
      }
      
      public static function § "_§(param1:String) : String
      {
         var _loc2_:String = "<";
         var _loc3_:String = ">";
         param1 = §;"e§(param1,_loc2_);
         return §;"e§(param1,_loc3_);
      }
      
      public static function §=#$§(param1:String, param2:String = " ") : String
      {
         var _loc3_:int = param2.length;
         if(param1.substr(0,_loc3_) == param2)
         {
            param1 = param1.substr(_loc3_);
         }
         var _loc4_:int = param1.length - _loc3_;
         if(param1.substr(_loc4_,_loc3_) == param2)
         {
            param1 = param1.substr(0,_loc4_);
         }
         return param1;
      }
      
      public static function §'E§() : String
      {
         var _loc1_:String = §8"%§.context.§2!k§()[§-#N§.§4$V§];
         return _loc1_ ? "b" + _loc1_ : "";
      }
      
      public static function §[%Q§() : Array
      {
         var _loc1_:String = §8"%§.context.§2!k§()[§-#N§.§0$'§];
         return _loc1_.split(".");
      }
      
      public static function §^&C§() : int
      {
         var _loc1_:Array = §[%Q§();
         return int(_loc1_[1]);
      }
      
      public static function §[%3§(param1:String, param2:String, param3:int, param4:Boolean = true) : String
      {
         if(param4)
         {
            while(param3 > param1.length)
            {
               param1 = param2 + param1;
            }
         }
         else
         {
            while(param3 > param1.length)
            {
               param1 += param2;
            }
         }
         return param1;
      }
      
      public static function §^&5§(param1:String) : void
      {
         if(param1)
         {
            Clipboard.generalClipboard.clear();
            Clipboard.generalClipboard.setData(ClipboardFormats.TEXT_FORMAT,param1);
         }
      }
   }
}

