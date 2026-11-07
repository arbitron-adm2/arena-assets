package ru.pragmatix.wormix.utils
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+#P§.§8"j§;
   import §+#P§.§]!E§;
   import §+%S§.§ !!§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%"§.§`"`§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §0&F§.§`"^§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.§]!6§;
   import §4#2§.§,%g§;
   import §4$b§.*;
   import §4&F§.*;
   import §5!9§.§6$,§;
   import §5#`§.§7%g§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§=?§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §;#O§.§+%7§;
   import §<%k§.*;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §=!p§.§&&0§;
   import §="z§.§-O§;
   import §=#g§.§!"X§;
   import §?#g§.Race;
   import §@!i§.§5&4§;
   import §@!i§.§;#L§;
   import §@!i§.§<!9§;
   import §@8§.§%Z§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §[%'§.§<"G§;
   import §]#[§.*;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§@#J§;
   import §`"p§.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.gui.MainInterface;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.LowerRankInClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.LowerRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §#&>§
   {
      
      public function §#&>§()
      {
         super();
      }
      
      public static function §4%5§(param1:int, param2:Boolean = true, param3:Boolean = false, param4:int = -1) : void
      {
         var _loc5_:UserProfile = null;
         var _loc8_:UserProfile = null;
         var _loc10_:int = 0;
         _loc5_ = Application.userProfile;
         var _loc6_:§;! § = _loc5_.§,%o§();
         var _loc7_:§=?§ = §<$c§.§8&E§(param1,_loc5_.getRace()) as §=?§;
         _loc8_ = §0!<§(param1);
         var _loc9_:Boolean = _loc8_ == _loc5_;
         if(!(!_loc7_.isTemporalItem() && Boolean(_loc6_.§8&E§(param1))))
         {
            _loc10_ = _loc7_.isTemporalItem() ? _loc6_.§6# §(_loc7_.getId()) : -1;
            if(_loc7_.isTemporalItem())
            {
               _loc6_.§2$I§(param1);
            }
            _loc6_.§,%T§(_loc7_,_loc10_,param3,param4);
            if(Boolean(_loc8_) && _loc8_ != _loc5_)
            {
               §?T§(_loc8_,param1);
            }
         }
         if(_loc9_ || _loc8_ == null && param2 && §8"%§.§&S§.§+$@§())
         {
            if(param1 >= §8"j§.§;9§)
            {
               _loc5_.§;"U§(_loc7_ as §^%%§);
            }
            else
            {
               _loc5_.§7"i§(_loc7_ as §^$E§);
            }
            Application.§5!>§.§8$w§();
         }
      }
      
      public static function §0!<§(param1:int) : UserProfile
      {
         var _loc3_:UserProfile = null;
         var _loc2_:UserProfile = Application.userProfile;
         if(Boolean(_loc2_.§2u§()) && Boolean(_loc2_.§2u§().getId() == param1) || Boolean(_loc2_.§+!b§()) && Boolean(_loc2_.§+!b§().getId() == param1))
         {
            return _loc2_;
         }
         for each(_loc3_ in _loc2_.§"]§())
         {
            if(_loc3_ != _loc2_ && _loc3_.§4!^§() != §2=§.§"!$§ && (Boolean(_loc3_.§2u§()) && Boolean(_loc3_.§2u§().getId() == param1) || Boolean(_loc3_.§+!b§()) && Boolean(_loc3_.§+!b§().getId() == param1)))
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public static function §?T§(param1:UserProfile, param2:int) : void
      {
         if(param2 >= §8"j§.§;9§)
         {
            param1.§;"U§(§<$c§.§"$h§(param2));
         }
         else
         {
            param1.§7"i§(§<$c§.§^&1§(param2,param1.getRace()));
         }
      }
      
      public static function §%%Q§(param1:§]$q§, param2:Object, param3:Boolean = false) : void
      {
         var _loc4_:Bonus = null;
         var _loc5_:int = 0;
         var _loc6_:§@"I§ = null;
         if(param2)
         {
            for each(_loc4_ in Bonus.§7&#§())
            {
               if(param2.hasOwnProperty(_loc4_.§7%z§()))
               {
                  _loc5_ = int(param2[_loc4_.§7%z§()]);
                  if(param3)
                  {
                     if(Bonus.§8!G§(_loc4_))
                     {
                        _loc4_ = Bonus.§>"I§(_loc4_);
                     }
                     else if(Bonus.§'%9§(_loc4_))
                     {
                        _loc5_ = int(_loc5_ * 0.5);
                     }
                  }
                  if(_loc5_ != 0)
                  {
                     _loc6_ = param1.§]#l§(_loc4_);
                     if(_loc6_)
                     {
                        _loc6_.addValue(_loc5_);
                     }
                     else
                     {
                        param1.§3%<§(new §@"I§(_loc4_,_loc5_));
                     }
                  }
               }
            }
         }
      }
      
      public static function §1_§(param1:uint) : int
      {
         var _loc4_:§5%>§ = null;
         var _loc5_:BackpackItem = null;
         var _loc2_:CraftedEquipFamily = §<$c§.§3"d§(param1);
         var _loc3_:Object = Application.userProfile.§,%o§().§+$!§();
         loop0:
         for each(_loc4_ in _loc2_.§1#§())
         {
            var _loc8_:int = 0;
            var _loc9_:* = _loc3_;
            do
            {
               for each(_loc5_ in _loc9_)
               {
               }
               continue loop0;
            }
            while(_loc4_.§&!H§() != _loc5_.getId());
            return _loc5_.getId();
         }
         return -1;
      }
      
      public static function §3Q§(param1:uint) : CraftedEquipFamily
      {
         var _loc2_:CraftedEquipFamily = null;
         var _loc3_:§5%>§ = null;
         loop0:
         for each(_loc2_ in §<$c§.§1$E§())
         {
            var _loc6_:int = 0;
            var _loc7_:* = _loc2_.§1#§();
            do
            {
               for each(_loc3_ in _loc7_)
               {
               }
               continue loop0;
            }
            while(_loc3_.§&!H§() != param1);
            return _loc2_;
         }
         return null;
      }
      
      public static function §?$M§(param1:uint) : §5%>§
      {
         var _loc2_:CraftedEquipFamily = null;
         var _loc3_:§5%>§ = null;
         loop0:
         for each(_loc2_ in §<$c§.§1$E§())
         {
            var _loc6_:int = 0;
            var _loc7_:* = _loc2_.§1#§();
            do
            {
               for each(_loc3_ in _loc7_)
               {
               }
               continue loop0;
            }
            while(_loc3_.§&!H§() != param1);
            return _loc3_;
         }
         return null;
      }
      
      public static function §8$3§(param1:uint) : Boolean
      {
         var _loc2_:§5%>§ = §#&>§.§?$M§(param1);
         return Boolean(_loc2_) && _loc2_.getType() == §%Z§.LEGENDARY && _loc2_.§!%G§() < 6;
      }
      
      public static function §^7§(param1:uint) : Boolean
      {
         return §`$G§(param1,§%Z§.LEGENDARY);
      }
      
      public static function §-!#§(param1:uint) : Boolean
      {
         return §`$G§(param1,§%Z§.EPIC);
      }
      
      public static function §`$G§(param1:uint, param2:§%Z§) : Boolean
      {
         var _loc3_:§5%>§ = §#&>§.§?$M§(param1);
         return Boolean(_loc3_) && _loc3_.getType() == param2;
      }
      
      public static function §4o§() : int
      {
         var _loc1_:§;! § = null;
         var _loc4_:CraftedEquipFamily = null;
         var _loc5_:§5%>§ = null;
         var _loc6_:Boolean = false;
         _loc1_ = Application.userProfile.§,%o§();
         var _loc2_:Object = _loc1_.§+$!§();
         var _loc3_:int = 0;
         for each(_loc4_ in §<$c§.§1$E§())
         {
            if(!_loc4_.§ "7§())
            {
               for each(_loc5_ in _loc4_.§1#§())
               {
                  if(_loc5_.getType() == §%Z§.LEGENDARY && _loc5_.§!%G§() < 6)
                  {
                  }
                  _loc6_ = Boolean(_loc2_[_loc5_.§&!H§()]);
                  if((_loc6_) && _loc5_.getType() == §%Z§.LEGENDARY)
                  {
                     _loc3_++;
                  }
               }
            }
         }
         return _loc3_;
      }
      
      public static function §1$9§(param1:UserProfile, param2:Bonus) : int
      {
         var _loc4_:Vector.<UserProfile> = null;
         var _loc5_:UserProfile = null;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         if(param1)
         {
            _loc4_ = param1.§7$F§();
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = §2=§.§9$M§(_loc5_);
               if(_loc5_.§2u§())
               {
                  _loc3_ += _loc5_.§2u§().getBonusList(_loc6_).§1$9§(param2);
               }
               if(_loc5_.§+!b§())
               {
                  _loc3_ += _loc5_.§+!b§().getBonusList(_loc6_).§1$9§(param2);
               }
               if(_loc5_.§ !5§())
               {
                  _loc3_ += _loc5_.§ !5§().getBonusList().§1$9§(param2);
               }
            }
         }
         return _loc3_;
      }
      
      public static function §[#]§(param1:UserProfile) : §[!X§
      {
         return §`#A§(param1.§2u§(),param1.§+!b§(),param1.getRace());
      }
      
      public static function §["w§(param1:§+%]§) : §[!X§
      {
         return §`#A§(param1.§2u§(),param1.§+!b§(),param1.record.getRace(),param1.isRevived());
      }
      
      public static function §`#A§(param1:§^$E§, param2:§^%%§, param3:§`!d§ = null, param4:Boolean = false) : §[!X§
      {
         var _loc6_:§[!X§ = null;
         var _loc5_:Object = §`"`§.§7#e§(param1,param2);
         if(_loc5_)
         {
            var _temp_2:* = §<$c§.§#$m§(_loc5_.id);
            _loc6_ = §<$c§.§#$m§(_loc5_.id);
            if(_loc6_.§!$P§(param3.getId()))
            {
               if(!param3.equals(Race.§"$H§.§]!D§()) || !_loc6_.isForRevived || param4)
               {
                  return _loc6_;
               }
            }
         }
         return null;
      }
      
      public static function §8$j§(param1:UserProfile) : §[!X§
      {
         var _loc2_:§[!X§ = §[#]§(param1);
         if(Boolean(_loc2_) && param1.§,%o§().§8&E§(_loc2_.getId()) == null)
         {
            param1.§,%o§().§0%8§(_loc2_);
            return _loc2_;
         }
         return null;
      }
      
      public static function §?#+§(param1:Boolean) : String
      {
         return param1 ? §%Z§.ANTISET_ITEMS.§7%z§() : §%Z§.SET_ITEMS.§7%z§();
      }
      
      public static function §]#j§(param1:Boolean, param2:String) : String
      {
         return §?#+§(param1) + " - " + param2;
      }
      
      public static function §>#L§(param1:Boolean) : uint
      {
         return param1 ? §%Z§.ANTISET_ITEMS.§>#]§() : §%Z§.SET_ITEMS.§>#]§();
      }
   }
}

