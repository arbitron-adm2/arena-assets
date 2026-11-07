package ru.pragmatix.wormix.model.user
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §+#P§.§8"j§;
   import §,$J§.§0%G§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §3"@§.§""m§;
   import §6%2§.§'"Y§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%k§.§0"^§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §?#g§.Race;
   import §@!N§.§2"e§;
   import §@!i§.§<!9§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.AbstractProfileStructure;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.messages.structures.SimpleRatingProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.UnitStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §[%8§
   {
      
      private var profile:UserProfile;
      
      public function §[%8§(param1:UserProfile)
      {
         super();
         this.profile = param1;
      }
      
      public static function §0a§(param1:String) : String
      {
         if(param1)
         {
            param1 = §2"e§.§=#$§(param1);
         }
         if(param1)
         {
            param1 = §2"e§.§"%i§(param1);
         }
         if(param1)
         {
            param1 = param1.replace(§7&5§.§%$u§);
         }
         if(param1)
         {
            param1 = §8"%§.§2#<§.§'#X§(param1);
         }
         return param1;
      }
      
      public function §&!S§(param1:RatingProfileStructure) : void
      {
         this.§+&3§(param1);
         this.profile.dailyRating = param1.dailyRating;
         this.profile.setSocialType(§7"n§.§9&,§(param1.socialNetId));
         this.profile.§3#E§(param1.rank);
         this.profile.§&!x§(§0"^§.§]"Q§(param1.rank));
      }
      
      public function §+&3§(param1:SimpleRatingProfileStructure) : void
      {
         this.§-]§(param1,true);
         this.profile.oldPlace = param1.oldPlace;
      }
      
      public function §"Q§(param1:PvpProfileStructure) : void
      {
         var _loc3_:Object = null;
         var _loc4_:UserProfile = null;
         var _loc5_:String = null;
         this.§,$y§(param1);
         this.profile.§9"4§(param1.seasonsBestRank);
         var _loc2_:Boolean = §8"%§.context.§54§().§1#&§ == param1.socialNetId;
         if(!_loc2_)
         {
            this.profile.setSocialType(§7"n§.§9&,§(param1.socialNetId));
            _loc3_ = param1.playerNames ? JSON.parse(param1.playerNames) : {};
            for each(_loc4_ in this.profile.§"]§())
            {
               if(!§2=§.§1#k§(_loc4_))
               {
                  _loc4_.setSocialType(this.profile.§54§());
                  _loc5_ = _loc3_[_loc4_.getId()];
                  _loc5_ = §0a§(_loc5_);
                  _loc4_.charName = _loc5_ || §2"e§.NA;
                  if(_loc4_.getId() == this.profile.getId())
                  {
                     this.profile.§"s§ = this.profile.charName = _loc4_.charName;
                  }
               }
            }
         }
      }
      
      public function §3!_§(param1:GladiatorUnitStructure) : void
      {
         this.§-]§(param1,false);
      }
      
      public function §[!M§(param1:SimpleProfileStructure) : void
      {
         var _loc2_:UnitStructure = new UnitStructure();
         _loc2_.copyFromSimple(param1);
         this.§-]§(_loc2_,false);
      }
      
      public function §,$y§(param1:UserProfileStructure, param2:Boolean = false) : void
      {
         var _loc5_:TeamMemberStructure = null;
         var _loc6_:§6#Q§ = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§#$s§ = null;
         var _loc11_:Vector.<int> = null;
         var _loc12_:UserProfile = null;
         var _loc13_:int = 0;
         var _loc14_:String = null;
         var _loc3_:uint = this.§ #M§(param1);
         var _loc4_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         for each(_loc5_ in param1.units)
         {
            if(_loc5_.ownerId == param1.id)
            {
               this.§,$I§(_loc5_,false,-1);
               _loc4_.push(this.profile);
            }
            else
            {
               _loc12_ = new UserProfile();
               _loc12_.§1G§.§,$I§(_loc5_,true,_loc3_);
               §0$c§.§;&>§(_loc12_.teamMemberType,_loc12_,_loc3_);
               _loc4_.push(_loc12_);
            }
         }
         this.profile.§;"!§(_loc4_);
         this.profile.§,$7§(param1.extraGroupSlotsCount);
         this.profile.§&!x§(param1.rankPoints);
         this.profile.§3#E§(param1.bestRank);
         param1.rank = param1.bestRank;
         this.§`!w§(param1);
         this.profile.online = false;
         this.§=%#§(param1.weaponRecordList,param2);
         _loc6_ = this.profile.§=m§ = new §6#Q§();
         _loc7_ = param1.recipes;
         _loc8_ = 0;
         _loc9_ = int(_loc7_.length);
         while(_loc8_ < _loc9_)
         {
            _loc6_.§0%8§(§1@§.§2"C§(Math.abs(_loc7_[_loc8_])),§^$y§.sign(_loc7_[_loc8_]));
            _loc8_++;
         }
         for each(_loc10_ in §1@§.§""!§())
         {
            if(_loc10_.availableFromStart && _loc10_.§,X§() <= this.profile.getLevel() && !_loc6_.§8&E§(_loc10_.getId()))
            {
               _loc6_.§0%8§(_loc10_);
            }
         }
         _loc11_ = new Vector.<int>(0);
         _loc8_ = 0;
         _loc9_ = int(_loc7_.length);
         while(_loc8_ < _loc9_)
         {
            if(§^$y§.sign(_loc7_[_loc8_]) > 0)
            {
               _loc11_.push(_loc7_[_loc8_]);
            }
            _loc8_++;
         }
         this.§%#d§(_loc11_);
         if(this.profile.getRace())
         {
            for each(_loc13_ in param1.stuff)
            {
               this.§6%t§(_loc13_);
            }
            for(_loc14_ in param1.temporalStuff)
            {
               this.§6%t§(int(_loc14_),param1.temporalStuff[_loc14_]);
            }
         }
      }
      
      private function § #M§(param1:UserProfileStructure) : uint
      {
         var _loc3_:TeamMemberStructure = null;
         var _loc2_:uint = §<!9§.getMaxLevel();
         if(Social.settings.§<#G§())
         {
            for each(_loc3_ in param1.units)
            {
               if(_loc3_.ownerId == param1.id)
               {
                  _loc2_ = uint(_loc3_.level);
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      private function §6%t§(param1:int, param2:int = -1) : void
      {
         var _loc3_:§=?§ = null;
         if(param1 >= §""m§.§;9§)
         {
            _loc3_ = §<$c§.§3"k§(param1);
         }
         else if(param1 >= §8"j§.§;9§)
         {
            _loc3_ = §<$c§.§"$h§(param1);
         }
         else if(param1 >= §0%G§.§;9§)
         {
            _loc3_ = §<$c§.§^&1§(param1,this.profile.getRace());
         }
         if(_loc3_)
         {
            this.profile.wardrobe.§,%T§(_loc3_,param2);
         }
      }
      
      private function §,$I§(param1:TeamMemberStructure, param2:Boolean, param3:int = -1) : void
      {
         var _loc6_:§+%7§ = null;
         if(param1.id == 0)
         {
            param1.id = param1.ownerId;
         }
         if(!param1.socialId)
         {
            param1.socialId = param1.socialOwnerId;
         }
         var _loc4_:Boolean = param2 && §2=§.§3$G§(param1.teamMemberType);
         var _loc5_:Boolean = param2 && !§2=§.§3$G§(param1.teamMemberType);
         this.profile.experience = param1.experience;
         this.profile.teamMemberType = param1.teamMemberType;
         this.§-]§(param1,_loc5_,_loc4_,param3);
         if(param1.teamMemberType == §2=§.MERCENARY)
         {
            _loc6_ = §4&A§.§'![§(param1.id);
            if(_loc6_)
            {
               this.profile.charName = this.profile.charName || _loc6_.§7%z§();
               this.profile.§"s§ = this.profile.§"s§ || _loc6_.§7%z§();
            }
            if(!this.profile.§2u§() && Boolean(_loc6_.§"!?§()))
            {
               this.profile.§7"i§(§<$c§.§^&1§(_loc6_.§"!?§(),this.profile.getRace()));
            }
            if(!this.profile.§+!b§() && Boolean(_loc6_.§8!u§()))
            {
               this.profile.§;"U§(§<$c§.§"$h§(_loc6_.§8!u§()));
            }
         }
         this.profile.setActive(param1.isActive);
      }
      
      public function §-]§(param1:UnitStructure, param2:Boolean, param3:Boolean = false, param4:int = -1) : void
      {
         var _loc11_:UserProfile = null;
         if(!Social.settings.§<#G§() || param4 == -1)
         {
            param4 = int(§<!9§.getMaxLevel());
         }
         this.§`!w§(param1);
         if(param2)
         {
            this.§,&$§(param1.level,param1.armor,param1.attack,param4);
         }
         else
         {
            this.§=!R§(param1.level,param1.armor,param1.attack);
         }
         var _loc5_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         var _loc6_:int = 0;
         var _loc7_:int = param1.groupCount;
         while(_loc6_ < _loc7_)
         {
            _loc11_ = new UserProfile();
            _loc11_.§]"@§.§8+§.value = §<!9§.§["q§(this.profile.getLevel());
            _loc5_.push(_loc11_);
            _loc6_++;
         }
         this.profile.§;"!§(_loc5_);
         var _loc8_:§`!d§ = Race.§3!4§(param1.raceId);
         if(!_loc8_)
         {
            _loc8_ = Race.§+#T§.§]!D§();
         }
         this.profile.§&$g§(_loc8_);
         this.profile.§?!0§(param1.raceId,param1.skin);
         var _loc9_:uint = param3 ? §4! §.§"$G§(param1.hatId) : uint(param1.hatId);
         var _loc10_:uint = param3 ? §4! §.§"$G§(param1.artifactId) : uint(param1.artifactId);
         this.profile.§7"i§(§<$c§.§^&1§(_loc9_,_loc8_),false);
         this.profile.§;"U§(§<$c§.§"$h§(_loc10_),false);
      }
      
      private function §`!w§(param1:AbstractProfileStructure) : void
      {
         this.profile.setIds(param1.id,param1.socialId);
         this.profile.§=$4§ = param1.money;
         this.profile.realMoney = param1.realMoney;
         this.profile.rating = param1.rating;
         this.profile.reactionRate = param1.reactionRate;
         this.profile.§0%f§ = param1.clanMember;
         if(param1.name)
         {
            param1.name = §0a§(param1.name);
            if(param1.name)
            {
               this.profile.§-"§(param1.name,true);
               this.profile.§2!§(param1.name,true);
            }
         }
         if(param1.rank != 20 && this.profile.§]#6§() == 0)
         {
            this.profile.§3#E§(param1.rank);
            this.profile.§&!x§(§0"^§.§]"Q§(param1.rank));
         }
      }
      
      public function §<#x§(param1:UserProfile, param2:Boolean, param3:int = 0, param4:Boolean = true) : void
      {
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:Vector.<UserProfile> = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:UserProfile = null;
         if(param2)
         {
            if(param1.§2u§())
            {
               _loc6_ = §4! §.§"$G§(param1.§2u§().getId());
               param1.§7"i§(§<$c§.§^&1§(_loc6_,param1.getRace()));
            }
            if(param1.§+!b§())
            {
               _loc7_ = §4! §.§"$G§(param1.§+!b§().getId());
               param1.§;"U§(§<$c§.§"$h§(_loc7_));
            }
         }
         var _loc5_:uint = Social.settings.§<#G§() ? uint(this.profile.getLevel()) : §<!9§.getMaxLevel();
         param1.§1G§.§,&$§(param1.getLevel(),param1.§]"@§.§+#+§.value,param1.§]"@§.§'$Q§.value,_loc5_);
         if(param3 == 0)
         {
            this.profile.§"]§().push(param1);
         }
         else
         {
            _loc8_ = this.profile.§"]§();
            _loc9_ = 0;
            _loc10_ = int(_loc8_.length);
            while(_loc9_ < _loc10_)
            {
               _loc11_ = _loc8_[_loc9_];
               if(_loc11_.getId() == param3)
               {
                  _loc8_[_loc9_] = param1;
                  break;
               }
               _loc9_++;
            }
         }
      }
      
      public function §@">§(param1:uint) : void
      {
         this.§,&$§(this.profile.getLevel(),this.profile.§]"@§.§+#+§.value,this.profile.§]"@§.§'$Q§.value,param1);
      }
      
      public function §'M§(param1:uint) : void
      {
         this.§,&$§(this.profile.§]$w§,this.profile.§;#2§,this.profile.§+&;§,param1);
      }
      
      public function §&$$§(param1:Vector.<int>) : void
      {
         var _loc2_:§&!e§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = int(param1.length);
         while(_loc3_ < _loc4_)
         {
            _loc2_ = §1@§.§`$M§(_loc3_);
            if(Boolean(_loc2_) && param1[_loc3_] > 0)
            {
               this.profile.§<D§.§0%8§(_loc2_,param1[_loc3_]);
            }
            _loc3_++;
         }
      }
      
      private function §=%#§(param1:Array, param2:Boolean = false) : void
      {
         this.profile.§'%0§ = new §'"-§();
         §4! §.§>!K§(this.profile.§'%0§,param1,param2);
      }
      
      public function §@-§(param1:Array) : void
      {
         var _loc3_:WeaponStructure = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_.getId());
         }
         this.profile.§8G§ = new §;#X§(new §#$R§(_loc2_));
         §4! §.§>!K§(this.profile.§8G§,param1);
      }
      
      private function §%#d§(param1:Vector.<int>) : void
      {
         var _loc4_:§#$s§ = null;
         var _loc6_:int = 0;
         var _loc7_:§#$s§ = null;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc2_:Vector.<§#$s§> = new Vector.<§#$s§>();
         var _loc3_:Vector.<§#$s§> = new Vector.<§#$s§>();
         var _loc5_:* = 0;
         for each(_loc6_ in param1)
         {
            _loc7_ = §1@§.§2"C§(_loc6_);
            if(_loc7_)
            {
               _loc2_.push(_loc7_);
               if(_loc2_[_loc2_.length - 1].level > _loc5_)
               {
                  _loc5_ = _loc2_[_loc2_.length - 1].level;
               }
            }
         }
         while(_loc5_ > 0)
         {
            _loc8_ = true;
            for each(_loc4_ in _loc2_)
            {
               if(_loc4_.level == _loc5_)
               {
                  _loc9_ = _loc4_.prevUpgradeId;
                  _loc3_.push(_loc4_);
                  _loc2_.splice(_loc2_.indexOf(_loc4_),1);
                  do
                  {
                     _loc10_ = 0;
                     _loc11_ = int(_loc2_.length);
                     while(_loc10_ < _loc11_)
                     {
                        if(_loc2_[_loc10_].upgradeId == _loc9_)
                        {
                           _loc9_ = _loc2_[_loc10_].prevUpgradeId;
                           _loc2_.splice(_loc10_,1);
                           break;
                        }
                        _loc10_++;
                     }
                     if(_loc9_ < §'"Y§.§;9§)
                     {
                        this.profile.§'%0§.§2$I§(_loc9_,-1,false);
                     }
                  }
                  while(_loc9_ >= §'"Y§.§;9§);
                  _loc8_ = false;
                  break;
               }
            }
            if(_loc8_)
            {
               _loc5_--;
            }
         }
         for each(_loc4_ in _loc3_)
         {
            §1!S§.§?!a§(_loc4_.upgradeId,this.profile);
         }
      }
      
      private function §=!R§(param1:uint, param2:int, param3:int) : void
      {
         this.profile.§]$w§ = param1;
         this.profile.setLevel(param1);
         this.profile.§]"@§.§+#+§.value = this.profile.§;#2§ = param2;
         this.profile.§]"@§.§'$Q§.value = this.profile.§+&;§ = param3;
         this.profile.§]"@§.§8+§.value = §<!9§.§["q§(param1);
      }
      
      private function §,&$§(param1:uint, param2:int, param3:int, param4:uint) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:Number = NaN;
         var _loc7_:uint = 0;
         if(param1 > param4 || param2 + param3 > param1 * 2)
         {
            _loc5_ = Math.min(param1,param4);
            _loc6_ = param3 < 1 ? 1 * param2 : param2 / param3;
            _loc7_ = _loc5_ * 2;
            this.profile.§]$w§ = param1;
            this.profile.§;#2§ = param2;
            this.profile.§+&;§ = param3;
            this.profile.setLevel(_loc5_);
            this.profile.§]"@§.§+#+§.value = int(Math.ceil(_loc6_ * _loc7_ / (_loc6_ + 1)));
            this.profile.§]"@§.§'$Q§.value = _loc7_ - this.profile.§]"@§.§+#+§.value;
            this.profile.§]"@§.§8+§.value = §<!9§.§["q§(_loc5_);
         }
         else
         {
            this.§=!R§(param1,param2,param3);
         }
      }
   }
}

