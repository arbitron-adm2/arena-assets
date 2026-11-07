package ru.pragmatix.wormix.utils
{
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$Z§.§6=§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'&"§.§,&3§;
   import §'&"§.§8$D§;
   import §'&"§.§=!x§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,$J§.§0%G§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3#a§.§[&A§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §7!-§.*;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §<V§.*;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §]$v§.§5"R§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.PostToClanChatRequest;
   import ru.pragmatix.wormix.messages.clans.response.PostToClanChatResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §1!S§
   {
      
      public function §1!S§()
      {
         super();
      }
      
      public static function §2"C§(param1:int) : §#$s§
      {
         var _loc2_:§#$s§ = null;
         for each(_loc2_ in §1@§.§""!§())
         {
            if(_loc2_.getId() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §?!4§(param1:int) : §#$s§
      {
         var _loc2_:§#$s§ = null;
         for each(_loc2_ in §1@§.§""!§())
         {
            if(_loc2_.upgradeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §!$Q§(param1:int) : §#$s§
      {
         var _loc2_:§#$s§ = null;
         for each(_loc2_ in §1@§.§""!§())
         {
            if(_loc2_.prevUpgradeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §?!a§(param1:int, param2:UserProfile) : void
      {
         var _loc3_:§;#_§ = §<$c§.§ !=§(param1);
         param2.§3%^§().§0%8§(_loc3_,-1,_loc3_.§]!C§(),_loc3_.getMaxLevel());
      }
      
      public static function § #+§(param1:int, param2:int) : void
      {
         var _loc3_:BackpackItem = Application.userProfile.§2!>§().§8&E§(param1);
         if(_loc3_ != null)
         {
            _loc3_.setCount(_loc3_.getCount() + param2);
         }
         else
         {
            Application.userProfile.§2!>§().§0%8§(§1@§.§`$M§(param1),param2);
         }
      }
      
      public static function §<$7§(param1:int, param2:int) : void
      {
         var _loc3_:§6#Q§ = Application.userProfile.§2!>§();
         var _loc4_:BackpackItem = _loc3_.§8&E§(param1);
         if(_loc4_ != null)
         {
            _loc4_.setCount(Math.max(0,_loc4_.getCount() - param2));
            if(_loc4_.getCount() <= 0)
            {
               _loc3_.§2$I§(_loc4_.getId(),-1);
            }
         }
      }
      
      public static function §%#§(param1:§&!e§) : Vector.<§;#_§>
      {
         var _loc3_:§#$s§ = null;
         var _loc4_:§-$6§ = null;
         var _loc2_:Vector.<§;#_§> = new Vector.<§;#_§>();
         for each(_loc3_ in §1@§.§""!§())
         {
            for each(_loc4_ in _loc3_.reagents)
            {
               if(param1.getId() == _loc4_.id)
               {
                  _loc2_[_loc2_.length] = §<$c§.§ !=§(_loc3_.upgradeId);
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      public static function §%$6§(param1:int, param2:UserProfile) : Boolean
      {
         var _loc3_:§;#_§ = §<$c§.§ !=§(param1);
         if(!_loc3_)
         {
            return false;
         }
         var _loc4_:§'"-§ = param2.§3%^§();
         var _loc5_:int = int(_loc3_.getRefId());
         var _loc6_:BackpackItem = _loc4_.§8&E§(_loc5_ > 0 ? _loc5_ : param1);
         if(_loc6_)
         {
            return _loc6_.§8"I§();
         }
         _loc6_ = §@!&§(param1,_loc4_);
         return (Boolean(_loc6_)) && _loc6_.§8"I§();
      }
      
      private static function §^"[§(param1:§&"3§, param2:§6#Q§) : BackpackItem
      {
         var _loc3_:int = 0;
         var _loc4_:BackpackItem = null;
         var _loc5_:Boolean = false;
         if(param1)
         {
            for each(_loc3_ in param1.§!"_§)
            {
               _loc4_ = param2.§8&E§(_loc3_);
               _loc5_ = (Boolean(_loc4_)) && (_loc4_.isInfinite() || !_loc4_.isEmpty());
               if(_loc5_)
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
      
      public static function §@!&§(param1:int, param2:§6#Q§) : BackpackItem
      {
         var _loc4_:§&"3§ = null;
         var _loc3_:BackpackItem = param2.§8&E§(param1);
         if(_loc3_ == null)
         {
            _loc4_ = §1@§.§&%u§(param1);
            _loc3_ = §^"[§(_loc4_,param2);
         }
         return _loc3_;
      }
      
      public static function §[!r§(param1:int) : int
      {
         var _loc2_:§&"3§ = §1@§.§&%u§(param1);
         return _loc2_ == null ? param1 : _loc2_.§?!t§;
      }
      
      public static function §`$o§(param1:§]$q§) : String
      {
         var _loc3_:§@"I§ = null;
         var _loc4_:Bonus = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1.§<%i§())
         {
            _loc4_ = _loc3_.getType();
            if(_loc2_.length > 0)
            {
               _loc2_ += "\n";
            }
            _loc2_ += _loc3_.§@$+§();
            if(_loc3_.§17§())
            {
               _loc2_ += ": " + "<font color=\'" + _loc4_.§4&,§() + "\'>" + _loc3_.§'$o§(false) + "</font>";
            }
            else
            {
               _loc2_ += ".";
            }
         }
         return _loc2_;
      }
      
      public static function §6b§() : uint
      {
         var _loc3_:§#$s§ = null;
         var _loc4_:BackpackItem = null;
         var _loc1_:§6#Q§ = Application.userProfile.§ !>§();
         var _loc2_:uint = 0;
         for each(_loc3_ in §1@§.§""!§())
         {
            _loc4_ = _loc1_.§8&E§(_loc3_.getId());
            if((Boolean(_loc4_)) && _loc4_.getCount() == 1)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public static function §@$9§(param1:§]+§) : §&!e§
      {
         var _loc2_:§&!e§ = null;
         var _loc3_:uint = 0;
         for each(_loc3_ in §!#^§.§2&%§)
         {
            if(param1.§@>§(_loc3_))
            {
               if(_loc3_ >= §8"j§.§;9§)
               {
                  _loc2_ = §<$c§.§"$h§(_loc3_);
               }
               else if(_loc3_ >= §0%G§.§;9§)
               {
                  _loc2_ = §<$c§.§^&1§(_loc3_,Application.userProfile.getRace());
               }
               break;
            }
         }
         return _loc2_;
      }
      
      public static function §9!M§(param1:uint) : uint
      {
         var _loc3_:§;#_§ = null;
         var _loc2_:BackpackItem = §@!&§(param1,Application.userProfile.§3%^§());
         if(Boolean(_loc2_) && _loc2_.isInfinite())
         {
            _loc3_ = §<$c§.§ !=§(§[!r§(_loc2_.getId()));
            if(_loc3_.isComplex() && _loc2_.getId() == _loc3_.getId())
            {
               return _loc2_.getLevel();
            }
            return _loc3_.getMaxLevel();
         }
         return 0;
      }
      
      public static function §]%q§(param1:int, param2:Vector.<§#$s§>) : void
      {
         var _loc3_:§#$s§ = null;
         for each(_loc3_ in §1@§.§""!§())
         {
            if(_loc3_.prevUpgradeId == param1)
            {
               param2.push(_loc3_);
               §]%q§(_loc3_.upgradeId,param2);
            }
         }
      }
      
      public static function § "4§(param1:§5%>§, param2:TextField) : void
      {
         param2.textColor = uint("0x" + param1.getType().§1#B§().slice(1));
         §&$9§.§>&F§(param2,§"-§.§+$m§,param1.§2![§());
      }
      
      public static function §6!a§(param1:§&"3§) : Boolean
      {
         var _loc4_:Object = null;
         var _loc2_:Vector.<int> = param1.§!"_§;
         var _loc3_:int = 1;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = §1@§.§=!u§(_loc2_[_loc3_]);
            if(_loc4_.isNew)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public static function §+$5§(param1:§&"3§) : Boolean
      {
         var _loc4_:Object = null;
         var _loc2_:Vector.<int> = param1.§!"_§;
         var _loc3_:int = 1;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = §1@§.§=!u§(_loc2_[_loc3_]);
            if(_loc4_.isPowered)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public static function §1"h§(param1:§&"3§) : §^"p§
      {
         var _loc4_:Object = null;
         var _loc2_:Vector.<int> = param1.§!"_§;
         var _loc3_:int = 1;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = §1@§.§=!u§(_loc2_[_loc3_]);
            if(_loc4_.shopState)
            {
               return _loc4_.shopState;
            }
            _loc3_++;
         }
         return null;
      }
   }
}

