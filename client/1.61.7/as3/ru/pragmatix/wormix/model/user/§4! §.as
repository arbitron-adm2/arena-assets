package ru.pragmatix.wormix.model.user
{
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §+#P§.§8"j§;
   import §+#P§.§]!E§;
   import §,$J§.§,$O§;
   import §,$J§.§0%G§;
   import §0!§.§7`§;
   import §1#p§.§2=§;
   import §2#i§.§+%z§;
   import §4'§.§`"q§;
   import §5%S§.§>&-§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#a§.§>!o§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.§`"c§;
   import §9%k§.§?%o§;
   import §?#g§.Race;
   import §@!N§.§2"e§;
   import §@!i§.§<!9§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§"%Z§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.messages.structures.SimpleRatingProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UnitStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §4! §
   {
      
      private static const §1$R§:int = 20;
      
      private static const §<&6§:Array = [new WeaponStructure(§+%z§.BAZOOKA,-1),new WeaponStructure(§+%z§.GRENADE,-1),new WeaponStructure(§+%z§.RIFLE,-1),new WeaponStructure(§+%z§.DYNAMITE,5),new WeaponStructure(§+%z§.BLOW_TORCH,8)];
      
      public function §4! §()
      {
         super();
      }
      
      public static function §<&-§(param1:UserProfile, param2:int = 20) : String
      {
         if(param1.getSocialData())
         {
            return §^B§(Social.§-%c§.§0$o§(param1),param2);
         }
         if(param1.getCharName())
         {
            return param1.getCharName();
         }
         return §2"e§.NA;
      }
      
      public static function §^B§(param1:String, param2:uint = 20) : String
      {
         var _loc3_:String = "...";
         if(!param1)
         {
            return §2"e§.NA;
         }
         param1 = param1.replace(§7&5§.§%$u§);
         if(param2 != -1 && param1.length > param2 + _loc3_.length)
         {
            return param1.substring(0,param2) + _loc3_;
         }
         return param1;
      }
      
      public static function §0!L§(param1:UserProfile, param2:uint = 20) : String
      {
         return param1.getCharName() || §^B§(param1.getSocialData() ? param1.getSocialData().§#$5§() : "",param2);
      }
      
      public static function §8!_§(param1:UserProfile, param2:uint = 20) : String
      {
         return §^B§(param1.getSocialData() ? param1.getSocialData().§8!_§() : "",param2);
      }
      
      public static function §5l§(param1:UserProfile) : String
      {
         return §<&-§(param1,-1);
      }
      
      public static function §!%i§(param1:§`"q§) : Boolean
      {
         return §7"-§(Application.userProfile,param1.moneyType,param1.price);
      }
      
      public static function §7"-§(param1:UserProfile, param2:§+$A§, param3:§'$2§, param4:Boolean = true) : Boolean
      {
         var _loc5_:Boolean = true;
         switch(param2)
         {
            case §+$A§.REAL:
               if(param1.§@$D§() < param3.realPrice)
               {
                  _loc5_ = false;
               }
               break;
            case §+$A§.INGAME:
               if(param1.§#!G§() < param3.ingamePrice)
               {
                  _loc5_ = false;
               }
         }
         if(!_loc5_ && param4)
         {
            new §>!o§().show();
         }
         return _loc5_;
      }
      
      public static function §"%U§(param1:UserProfile) : void
      {
         var profile:UserProfile = param1;
         if(!profile)
         {
            return;
         }
         if(!profile.§54§().equals(Application.userProfile.§54§()))
         {
            §+%3§();
            return;
         }
         if(Boolean(profile.getSocialData()) && Boolean(profile.getSocialData().§[#s§()))
         {
            navigateToURL(new URLRequest(profile.getSocialData().§[#s§()),"_blank");
         }
         else if(§8"%§.§[f§.getType() == §7"n§.FB && (!profile.getSocialData() || !profile.getSocialData().§[#s§()))
         {
            §,#W§.§[#r§(§0$N§.TITLE_ERROR,§0$N§.ERROR_SOCIAL,§,#W§.§6!m§);
         }
         else
         {
            §`#p§.§#&2§([profile.getId()],function(param1:Vector.<UserProfile>):void
            {
               if(Boolean(param1.length) && Boolean(param1[0].getSocialData()))
               {
                  profile.§8!J§(param1[0].getSocialData());
                  navigateToURL(new URLRequest(profile.getSocialData().§[#s§()),"_blank");
               }
               else
               {
                  §,#W§.§[#r§(§0$N§.TITLE_ERROR,§0$N§.ERROR_SOCIAL,§,#W§.§6!m§);
               }
            });
         }
      }
      
      public static function §+%3§() : void
      {
         var _loc1_:§,#W§ = null;
         if(§8"%§.§?!W§.inBattle)
         {
            §>&-§.§[$9§(§0$N§.OTHER_SOCIAL,true);
         }
         else
         {
            _loc1_ = new §,#W§(§0$N§.TITLE_ERROR,§0$N§.OTHER_SOCIAL,§,#W§.§6!m§);
            _loc1_.show(false);
            §"%Z§.§&$p§(_loc1_,4);
         }
      }
      
      public static function § $O§(param1:UserProfile) : int
      {
         return param1.getLevel() * 2 - param1.stats.§'$Q§.value - param1.stats.§+#+§.value;
      }
      
      public static function §#%?§(param1:Array, param2:int) : Vector.<UserProfile>
      {
         var _loc3_:GladiatorUnitStructure = null;
         var _loc4_:Array = null;
         var _loc5_:Vector.<UserProfile> = null;
         var _loc6_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc3_.level = param2;
         }
         _loc4_ = §9%I§(param1);
         _loc5_ = new Vector.<UserProfile>(0);
         _loc6_ = 0;
         while(_loc6_ < _loc4_.length)
         {
            _loc5_[_loc6_] = _loc4_[_loc6_];
            _loc6_++;
         }
         return _loc5_;
      }
      
      public static function §9%I§(param1:Array, param2:Boolean = false) : Array
      {
         var _loc4_:Object = null;
         var _loc7_:UserProfile = null;
         var _loc3_:Array = [];
         var _loc5_:int = 0;
         var _loc6_:int = int(param1.length);
         while(_loc5_ < _loc6_)
         {
            _loc4_ = param1[_loc5_];
            _loc7_ = new UserProfile();
            if(_loc4_ is SimpleProfileStructure)
            {
               _loc7_.§1G§.§[!M§(_loc4_ as SimpleProfileStructure);
            }
            else if(_loc4_ is GladiatorUnitStructure)
            {
               _loc7_.§1G§.§3!_§(_loc4_ as GladiatorUnitStructure);
            }
            else if(_loc4_ is UserProfileStructure)
            {
               _loc7_.§1G§.§,$y§(_loc4_ as UserProfileStructure);
            }
            else if(_loc4_ is RatingProfileStructure)
            {
               _loc7_.§1G§.§&!S§(_loc4_ as RatingProfileStructure);
            }
            else if(_loc4_ is UnitStructure)
            {
               _loc7_.§1G§.§-]§(_loc4_ as UnitStructure,true);
            }
            else if(_loc4_ is SimpleRatingProfileStructure)
            {
               _loc7_.§1G§.§+&3§(_loc4_ as SimpleRatingProfileStructure);
            }
            if(param2)
            {
               if(_loc7_.getLevel() != 0)
               {
                  _loc3_.push(_loc7_);
               }
            }
            else
            {
               _loc3_.push(_loc7_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public static function §7%>§(param1:int) : Boolean
      {
         var _loc2_:UserProfile = null;
         var _loc4_:int = 0;
         var _loc5_:§,&F§ = null;
         var _loc6_:§#$s§ = null;
         var _loc7_:UserProfile = null;
         _loc2_ = Application.userProfile;
         _loc2_.§'"3§(param1);
         var _loc3_:uint = §<!9§.§"#4§(_loc2_.getLevel());
         if(_loc2_.§[!s§() >= _loc3_)
         {
            if(§<!9§.§8"N§(_loc2_.getLevel() + 1))
            {
               _loc4_ = int(§<!9§.§["q§(_loc2_.getLevel() + 1));
               _loc2_.stats.§8+§.value = _loc4_;
               _loc2_.setLevel(_loc2_.getLevel() + 1);
               _loc2_.§;%1§(_loc2_.§[!s§() - _loc3_);
               _loc5_ = §?%o§.§+$Q§(_loc2_.getLevel());
               _loc2_.§1%'§(_loc5_.§#!G§());
               _loc2_.§9%D§(_loc5_.§@$D§());
               §8"%§.§[%h§.§9?§();
               for each(_loc6_ in §1@§.§""!§())
               {
                  if(!_loc2_.§ !>§().§8&E§(_loc6_.getId()) && _loc6_.§,X§() <= _loc2_.getLevel())
                  {
                     _loc2_.§ !>§().§0%8§(_loc6_);
                  }
               }
               for each(_loc7_ in _loc2_.§"]§())
               {
                  if(_loc7_.getProfileLevel() >= _loc2_.getLevel())
                  {
                     _loc7_.§1G§.§'M§(_loc2_.getLevel());
                  }
               }
               §0$c§.§2!X§(_loc2_);
               return true;
            }
            _loc2_.§;%1§(_loc3_);
         }
         return false;
      }
      
      public static function §@#F§(param1:int, param2:int) : String
      {
         return param1.toString() + (param2 ? " (" + (param2 > 0 ? "+" : "") + param2 + ")" : "");
      }
      
      public static function §5$b§(param1:§7`§) : String
      {
         return §@#F§(param1.§8!R§(),param1.§'"S§());
      }
      
      public static function §0$h§(param1:String) : UserProfile
      {
         var _loc2_:UserProfileStructure = new UserProfileStructure();
         var _loc3_:TeamMemberStructure = new TeamMemberStructure();
         _loc2_.socialId = param1;
         _loc2_.id = parseInt(param1);
         _loc2_.money = 100;
         _loc2_.realMoney = 3;
         _loc2_.units = [_loc3_];
         _loc2_.extraGroupSlotsCount = 0;
         _loc3_.level = 1;
         _loc3_.armor = 1;
         _loc3_.attack = 1;
         _loc3_.ownerId = _loc2_.id;
         _loc3_.socialOwnerId = _loc2_.socialId;
         _loc3_.experience = 0;
         _loc3_.level = 1;
         _loc3_.hatId = Race.§+#T§.getId();
         _loc3_.teamMemberType = §2=§.§0"=§;
         _loc2_.weaponRecordList = §<&6§.concat();
         var _loc4_:UserProfile = new UserProfile();
         _loc4_.§1G§.§,$y§(_loc2_);
         return _loc4_;
      }
      
      public static function isMe(param1:UserProfile) : Boolean
      {
         return Boolean(param1) && param1.getId() == Application.userProfile.getId();
      }
      
      public static function §!$g§(param1:Vector.<UserProfile>) : UserProfile
      {
         var _loc2_:UserProfile = null;
         for each(_loc2_ in param1)
         {
            if(!_loc2_.equals(Application.userProfile))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §5"K§(param1:int, param2:UserProfile) : BackpackItem
      {
         if(param1)
         {
            return §+%z§.§2$_§(param1) ? param2.§3%^§().§8&E§(param1) : param2.§,%o§().§8&E§(param1);
         }
         return null;
      }
      
      public static function §&j§(param1:int, param2:int = -1) : void
      {
         var _loc5_:§'"-§ = null;
         var _loc6_:§;#_§ = null;
         var _loc7_:int = 0;
         var _loc8_:BackpackItem = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:Boolean = param1 > §0%G§.§;9§ && param1 < §8"j§.§;9§;
         var _loc4_:Boolean = param1 > §8"j§.§;9§;
         if(_loc3_ || _loc4_)
         {
            §#&>§.§4%5§(param1);
            Application.§5!>§.§8$w§();
         }
         else
         {
            _loc5_ = Application.userProfile.§3%^§();
            _loc6_ = §<$c§.§ !=§(param1);
            _loc7_ = param2 == -1 ? -1 : int(param2 + _loc5_.§ %n§(param1));
            _loc8_ = _loc5_.§0%8§(_loc6_,_loc7_,_loc6_.§]!C§());
            if(_loc8_)
            {
               §@$l§.§0$=§([_loc8_.getId()]);
            }
         }
      }
      
      public static function §1"2§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         if(!param1)
         {
            return;
         }
         var _loc2_:UserProfile = Application.userProfile;
         _loc3_ = param1 < 1000;
         var _loc4_:§6#Q§ = _loc3_ ? _loc2_.§3%^§() : _loc2_.§,%o§();
         _loc4_.§2$I§(param1);
         if(_loc3_)
         {
            _loc2_.§3%^§().§ %7§().remove(param1);
         }
         if(Boolean(!_loc3_) && Boolean(_loc2_.§2u§()) && param1 == _loc2_.§2u§().getId())
         {
            _loc2_.§7"i§(null);
         }
         if(Boolean(!_loc3_) && Boolean(_loc2_.§+!b§()) && param1 == _loc2_.§+!b§().getId())
         {
            _loc2_.§;"U§(null);
         }
         Application.§5!>§.§8$w§();
      }
      
      public static function §5!'§(param1:UserProfile, param2:int = 0, param3:Array = null) : Boolean
      {
         return param1.getId() > 0;
      }
      
      public static function §[">§(param1:UserProfile, param2:int = 0, param3:Array = null) : Boolean
      {
         return !§2=§.§1#k§(param1);
      }
      
      public static function §#d§(param1:UserProfile, param2:int = 0, param3:Array = null) : Boolean
      {
         var _loc4_:UserProfile = §`#p§.§ !§(param1.getId());
         if((Boolean(_loc4_)) && Boolean(_loc4_.getSocialData()))
         {
            param1.§8!J§(_loc4_.getSocialData());
         }
         return !param1.getSocialData();
      }
      
      public static function §?!U§() : Array
      {
         var _loc3_:§&!e§ = null;
         var _loc4_:BackpackItem = null;
         var _loc1_:Array = Application.userProfile.§,%o§().§,!V§();
         var _loc2_:Array = [];
         for each(_loc4_ in _loc1_)
         {
            _loc3_ = _loc4_.getRecord();
            if(_loc3_ is §^$E§ && (!_loc3_.getHideInShop() || §,$O§.§2&0§(_loc4_.getId())))
            {
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc4_ in _loc1_)
         {
            _loc3_ = _loc4_.getRecord();
            if(_loc3_ is §^%%§ && !_loc3_.getHideInShop())
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public static function §&%i§(param1:UserProfile) : Object
      {
         var _loc3_:UserProfile = null;
         var _loc2_:Object = {};
         for each(_loc3_ in param1.§"]§())
         {
            _loc2_[_loc3_.getId()] = _loc3_.getCharName();
         }
         return _loc2_;
      }
      
      public static function §"$G§(param1:uint) : uint
      {
         var _loc3_:Array = null;
         var _loc4_:CraftedEquipFamily = null;
         var _loc2_:Array = [[§,$O§.§^"h§,§,$O§.AQUALUNG],[§]!E§.§<& §,§]!E§.§,"'§]];
         for each(_loc3_ in _loc2_)
         {
            if(param1 == _loc3_[0])
            {
               return _loc3_[1];
            }
         }
         _loc4_ = §#&>§.§3Q§(param1);
         return _loc4_ ? uint(_loc4_.§1#§()[0].§&!H§()) : param1;
      }
      
      public static function §5$R§(param1:WeaponStructure, param2:§;#_§) : uint
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:uint = 1;
         var _loc4_:int = param1.getCount();
         if(_loc4_ >= 0)
         {
            return _loc3_;
         }
         if(_loc4_ == -1)
         {
            return param2.getMaxLevel();
         }
         _loc5_ = -10;
         _loc6_ = _loc5_ - param2.getMaxLevel();
         if(_loc6_ <= _loc4_ && _loc4_ < _loc5_)
         {
            return Math.abs(_loc4_ - _loc5_);
         }
         return _loc3_;
      }
      
      public static function §>!K§(param1:§6#Q§, param2:Array, param3:Boolean = false) : void
      {
         var _loc6_:WeaponStructure = null;
         var _loc7_:int = 0;
         var _loc8_:§;#_§ = null;
         var _loc9_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:int = int(param2.length);
         while(_loc4_ < _loc5_)
         {
            _loc6_ = WeaponStructure(param2[_loc4_]);
            _loc7_ = _loc6_.getCount();
            _loc8_ = §<$c§.§ !=§(_loc6_.getId());
            if((Boolean(_loc8_)) && _loc7_ != 0)
            {
               if(!(param3 && _loc7_ >= 0))
               {
                  _loc9_ = §5$R§(_loc6_,_loc8_);
                  if(_loc7_ < -1)
                  {
                     _loc7_ = -1;
                  }
                  param1.§0%8§(_loc8_,_loc7_,_loc8_.§]!C§(),_loc9_);
               }
            }
            _loc4_++;
         }
      }
      
      public static function get isRubyLeague() : Boolean
      {
         return Application.userProfile.getBestRank() == 0;
      }
      
      public static function §`$@§(param1:UserProfile) : Boolean
      {
         if(§`"c§.§#$-§(param1.§"%D§()))
         {
            return true;
         }
         if(param1.§54§().equals(§7"n§.NONE))
         {
            §<!a§(param1);
            return true;
         }
         if(param1.getId().toString() == param1.§"%D§())
         {
            if(§8"%§.§[f§.getType() == §7"n§.VK)
            {
               return true;
            }
            param1.setSocialType(§7"n§.VK);
         }
         else
         {
            if(param1.§"%D§().length == Application.userProfile.§"%D§().length)
            {
               return true;
            }
            §<!a§(param1);
         }
         return false;
      }
      
      private static function §<!a§(param1:UserProfile) : void
      {
         var _loc2_:int = param1.§"%D§().length;
         if(_loc2_ < 10)
         {
            param1.setSocialType(§7"n§.VK);
         }
         else if(_loc2_ > 15)
         {
            param1.setSocialType(§7"n§.MM);
         }
         else if(_loc2_ < 15)
         {
            param1.setSocialType(§7"n§.OK);
         }
      }
   }
}

