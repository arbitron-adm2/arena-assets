package ru.pragmatix.wormix.model.items.backpack
{
   import § !8§.§`!d§;
   import § $q§.§3U§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.*;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.MsgBoxSocialSelect;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§ #&§;
   import §0&F§.§0%v§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §3#T§.AtomBomb;
   import §3#a§.§-#M§;
   import §4&F§.*;
   import §5#`§.*;
   import §6$z§.§!"§;
   import §6$z§.BonusStat;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7!B§.§6#I§;
   import §7$t§.§;#_§;
   import §<!W§.§7!L§;
   import §<%E§.§0#G§;
   import §<%k§.*;
   import §="?§.§ %#§;
   import §=&6§.*;
   import §=;§.§@§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@$§.§+%>§;
   import §@$f§.§78§;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import §`%&§.§5$1§;
   import §`%&§.§`§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.client.SetBackpackConf;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.SetBackpackConfResult;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class §@$l§
   {
      
      public static const §><§:uint = §#$R§.§><§;
      
      public static const §5$4§:uint = §#$R§.§5$4§;
      
      private static var _lastSentLayoutsSig:String = null;
      
      public function §@$l§()
      {
         super();
      }
      
      public static function §=!n§(param1:Array, param2:§'"-§) : Array
      {
         var _loc5_:BackpackConfStructure = null;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1[_loc4_];
            _loc3_.push(§+%s§(_loc5_.config,param2,_loc4_ + 1));
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function §+%s§(param1:Array, param2:§'"-§, param3:int = 1) : §#$R§
      {
         var _loc4_:Boolean = true;
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            if(param1[_loc5_] != 0)
            {
               _loc4_ = false;
               break;
            }
            _loc5_++;
         }
         return _loc4_ ? §2#p§(param2) : new §#$R§(param1);
      }
      
      public static function §2#p§(param1:§'"-§, param2:int = 1) : §#$R§
      {
         var _loc7_:uint = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc3_:Array = §+%z§.§]4§.concat();
         var _loc4_:int = 0;
         var _loc5_:int = int(_loc3_.length);
         while(_loc4_ < _loc5_)
         {
            _loc7_ = uint(_loc3_[_loc4_]);
            if(§1!S§.§@!&§(_loc7_,param1) == null)
            {
               _loc3_[_loc4_] = 0;
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < §><§)
         {
            _loc8_ = -1;
            _loc9_ = 0;
            while(_loc9_ < §5$4§)
            {
               _loc10_ = _loc4_ + _loc9_ * §><§;
               if(_loc3_[_loc10_] == 0)
               {
                  if(_loc8_ == -1)
                  {
                     _loc8_ = _loc10_;
                  }
               }
               else if(_loc8_ != -1)
               {
                  _loc3_[_loc8_] = _loc3_[_loc10_];
                  _loc3_[_loc10_] = 0;
                  _loc8_ += §><§;
               }
               _loc9_++;
            }
            _loc4_++;
         }
         _loc4_ = 0;
         var _loc6_:uint = §><§ - 1;
         while(_loc4_ < _loc6_)
         {
            _loc11_ = true;
            _loc9_ = 0;
            while(_loc9_ < §5$4§)
            {
               if(_loc3_[_loc4_ + _loc9_ * §><§] != 0)
               {
                  _loc11_ = false;
                  break;
               }
               _loc9_++;
            }
            if(_loc11_)
            {
               _loc9_ = 0;
               while(_loc9_ < §5$4§)
               {
                  _loc12_ = _loc4_;
                  while(_loc12_ < _loc6_)
                  {
                     _loc3_[_loc12_ + _loc9_ * §><§] = _loc3_[_loc12_ + _loc9_ * §><§ + 1];
                     _loc12_++;
                  }
                  _loc3_[_loc6_ + _loc9_ * §><§] = 0;
                  _loc9_++;
               }
               _loc6_--;
            }
            else
            {
               _loc4_++;
            }
         }
         return new §#$R§(_loc3_);
      }
      
      public static function §;$=§(param1:§'"-§, param2:Array) : §#$R§
      {
         var _loc4_:BackpackItem = null;
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:int = 0;
         for each(_loc4_ in param1.§+$!§())
         {
            _loc5_ = uint(§]J§(_loc4_.getId()));
            if(param2.indexOf(_loc5_) == -1)
            {
               _loc6_ = _loc3_;
               _loc7_ = int(param2.length);
               while(_loc6_ < _loc7_)
               {
                  if(param2[_loc6_] == 0)
                  {
                     break;
                  }
                  _loc6_++;
               }
               if(_loc6_ < param2.length)
               {
                  param2[_loc6_] = _loc5_;
               }
               _loc3_ = _loc6_;
            }
            if(_loc3_ >= param2.length)
            {
               break;
            }
         }
         return new §#$R§(param2);
      }
      
      public static function §`!k§(param1:§'"-§, param2:Boolean = true) : §#$R§
      {
         var _loc4_:BackpackItem = null;
         var _loc5_:uint = 0;
         var _loc3_:Array = [];
         for each(_loc4_ in param1.§+$!§())
         {
            _loc5_ = param2 ? uint(§]J§(_loc4_.getId())) : uint(_loc4_.getId());
            _loc3_.push(_loc5_);
         }
         return new §#$R§(_loc3_,§#$R§.§0%&§,param2);
      }
      
      public static function §0$=§(param1:Array) : void
      {
         var _loc4_:uint = 0;
         var _loc5_:§#$R§ = null;
         var _loc2_:Array = Application.userProfile.§3%^§().§4"G§();
         var _loc3_:Boolean = false;
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in _loc2_)
            {
               if(!_loc5_.contains(_loc4_) && _loc5_.§2t§())
               {
                  if(_loc5_.push(_loc4_))
                  {
                     _loc3_ = true;
                  }
               }
            }
         }
         Application.instance.dispatchEvent(new Event(§ #&§.CHANGE));
         if(_loc3_)
         {
            §@$5§();
         }
      }
      
      private static function §`%R§(param1:Array, param2:int) : String
      {
         var _loc4_:Array = null;
         var _loc3_:String = param2 + "|";
         for each(_loc4_ in param1)
         {
            _loc3_ += _loc4_.join(",") + ";";
         }
         return _loc3_;
      }
      
      public static function §@$5§(param1:Function = null) : void
      {
         var wb:§'"-§;
         var layouts:Array;
         var layout:§#$R§ = null;
         var i:int = 0;
         var sig:String = null;
         var onResult:Function = null;
         var callback:Function = param1;
         onResult = function(param1:§9$v§):void
         {
            var _loc2_:SetBackpackConfResult = SetBackpackConfResult(param1.message);
            §%%w§.§-"j§(SetBackpackConfResult,onResult);
            if(_loc2_.result == 0)
            {
               _lastSentLayoutsSig = sig;
            }
            if(callback != null)
            {
               callback();
            }
         };
         if(!Application.userProfile)
         {
            return;
         }
         wb = Application.userProfile.§3%^§();
         layouts = [];
         for each(layout in wb.§4"G§())
         {
            layouts.push(§""L§.§,"=§(layout.getWeapons()));
         }
         i = int(layouts.length);
         while(i < §#$R§.§"$S§)
         {
            layouts[i] = [];
            i++;
         }
         sig = §`%R§(layouts,wb.§;#@§());
         if(sig == _lastSentLayoutsSig)
         {
            if(callback != null)
            {
               callback();
            }
            return;
         }
         §%%w§.§7F§.send(new SetBackpackConf(layouts,wb.§;#@§() + 1));
         §%%w§.§##$§(SetBackpackConfResult,onResult);
      }
      
      internal static function §]J§(param1:int) : int
      {
         return §1!S§.§[!r§(param1);
      }
      
      public static function §<=§(param1:Array) : void
      {
      }
   }
}

