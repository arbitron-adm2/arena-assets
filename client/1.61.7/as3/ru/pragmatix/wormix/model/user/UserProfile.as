package ru.pragmatix.wormix.model.user
{
   import § !8§.§`!d§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §%"Z§.§+$A§;
   import §%$!§.§9$p§;
   import §+#P§.§8"j§;
   import §,$J§.§0%G§;
   import §1#p§.§2=§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%k§.§0"^§;
   import §9%k§.§=k§;
   import §;#O§.§4&A§;
   import §<%k§.§`!t§;
   import §=!p§.§!"9§;
   import §=!p§.§'%#§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §@!N§.§2"e§;
   import §@!i§.§<!9§;
   import §^#[§.§&$2§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§6Y§;
   
   public class UserProfile implements §!"9§
   {
      
      private var id:int;
      
      private var socialId:String;
      
      private var §%%r§:§7"n§;
      
      private var §'%Q§:§'%#§;
      
      internal var §=$4§:int = 0;
      
      internal var realMoney:int = 0;
      
      internal var rating:int = 0;
      
      internal var dailyRating:int = 0;
      
      internal var oldPlace:int = 0;
      
      private var rankPoints:int = 0;
      
      private var bestRank:uint = 20;
      
      internal var reactionRate:uint = 0;
      
      internal var level:uint = 0;
      
      internal var experience:uint = 0;
      
      internal var teamMemberType:int = 0;
      
      internal var §]$w§:uint = 0;
      
      internal var §;#2§:int = 0;
      
      internal var §+&;§:int = 0;
      
      internal var charName:String = "";
      
      internal var §"s§:String;
      
      private var §`"L§:Boolean;
      
      internal var online:Boolean;
      
      internal var §]"@§:§9$p§ = new §9$p§();
      
      private var races:Vector.<§`!d§> = new Vector.<§`!d§>(0);
      
      private var skins:Vector.<§&"P§> = new Vector.<§&"P§>(0);
      
      private var team:Vector.<UserProfile> = new Vector.<UserProfile>(0);
      
      private var active:Boolean = true;
      
      private var §5%M§:int;
      
      private var seasonsBestRank:Array = [];
      
      public var §3#f§:§`!t§;
      
      internal var §'%0§:§'"-§ = new §'"-§();
      
      internal var §8G§:§;#X§;
      
      internal var wardrobe:§;! § = new §;! §();
      
      internal var §<D§:§6#Q§ = new §6#Q§();
      
      internal var §=m§:§6#Q§ = new §6#Q§();
      
      public var aiArsenal:§,%8§;
      
      internal var §0%f§:ClanMemberStructure;
      
      private var §%%L§:§[%8§;
      
      public function UserProfile()
      {
         super();
         this.§%%L§ = new §[%8§(this);
         if(§8"%§.context)
         {
            this.§%%r§ = §8"%§.context.§54§();
         }
         this.§]"@§.§'c§(this);
      }
      
      public static function §'#3§(param1:String, param2:uint, param3:Race, param4:uint, param5:uint, param6:uint, param7:uint = 0, param8:uint = 0, param9:uint = 0) : UserProfile
      {
         var _loc10_:UserProfile = new UserProfile();
         _loc10_.charName = param1;
         _loc10_.§]"@§.§8+§ = new §&$2§(param4);
         _loc10_.§]"@§.§+#+§ = new §&$2§(param5);
         _loc10_.§]"@§.§'$Q§ = new §&$2§(param6);
         _loc10_.level = param2;
         _loc10_.§&$g§(param3.§]!D§());
         if(param7 != 0)
         {
            _loc10_.§7"i§(§<$c§.§^&1§(param7,_loc10_.§]"@§.raceRecord));
         }
         if(param8 != 0)
         {
            _loc10_.§;"U§(§<$c§.§"$h§(param8));
         }
         if(param9 != 0)
         {
            _loc10_.§?!0§(param3.getId(),param9);
         }
         return _loc10_;
      }
      
      public function § "P§(param1:Boolean = false, param2:Boolean = false) : UserProfile
      {
         var _loc4_:§&"P§ = null;
         var _loc3_:UserProfile = UserProfile.§'#3§(this.charName,this.getLevel(),Race.§-%z§(this.§]"@§.raceRecord),this.§]"@§.§8+§.value,this.§]"@§.§+#+§.value,this.§]"@§.§'$Q§.value);
         _loc3_.§7"i§(this.§2u§());
         _loc3_.§;"U§(this.§+!b§());
         _loc3_.§-"§(this.charName,this.§`"L§);
         _loc3_.§2!§(this.§"s§,this.§`"L§);
         _loc3_.§,$7§(this.§%$3§());
         if(param1)
         {
            _loc3_.skins = new <§&"P§>[this.§]"@§.skin.§ "P§()];
            _loc3_.§?!0§(this.§]"@§.raceRecord.getId(),this.§]"@§.skin.§7"=§());
         }
         if(param2)
         {
            _loc3_.races = new Vector.<§`!d§>().concat(this.races);
            _loc3_.skins = new Vector.<§&"P§>(0);
            for each(_loc4_ in this.skins)
            {
               _loc3_.skins.push(_loc4_.§ "P§());
            }
         }
         return _loc3_;
      }
      
      private function §"$z§() : Vector.<§&"P§>
      {
         var _loc2_:§&"P§ = null;
         var _loc1_:Vector.<§&"P§> = new Vector.<§&"P§>(0);
         for each(_loc2_ in this.skins)
         {
            _loc1_.push(_loc2_.§ "P§());
         }
         return _loc1_;
      }
      
      public function §`!D§(param1:Boolean = true) : UserProfile
      {
         var _loc2_:UserProfile = this.§ "P§(param1);
         _loc2_.§8!J§(this.§'%Q§);
         _loc2_.setIds(this.id,this.socialId);
         return _loc2_;
      }
      
      public function equals(param1:UserProfile) : Boolean
      {
         return param1 != null && this.id == param1.id;
      }
      
      public function get §1G§() : §[%8§
      {
         return this.§%%L§;
      }
      
      public function setIds(param1:int, param2:String) : void
      {
         this.id = param1;
         this.socialId = this.§'%Q§ ? this.§'%Q§.§"%D§() : param2;
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function §"%D§() : String
      {
         return this.socialId;
      }
      
      public function setSocialType(param1:§7"n§) : void
      {
         this.§%%r§ = param1;
      }
      
      public function §54§() : §7"n§
      {
         return this.§%%r§;
      }
      
      public function getLevel() : int
      {
         return this.level;
      }
      
      public function setLevel(param1:int) : void
      {
         this.level = param1;
      }
      
      public function getProfileLevel() : int
      {
         return this.§]$w§;
      }
      
      public function §[!s§() : int
      {
         return this.experience;
      }
      
      public function §'"3§(param1:int) : void
      {
         this.experience += param1;
      }
      
      public function §;%1§(param1:int) : void
      {
         this.experience = param1;
      }
      
      public function §;$v§(param1:int) : void
      {
         this.teamMemberType = param1;
      }
      
      public function §4!^§() : int
      {
         return this.teamMemberType;
      }
      
      public function §%`§(param1:int) : void
      {
         this.reactionRate += param1;
      }
      
      public function §=u§() : int
      {
         return this.reactionRate;
      }
      
      public function §=#6§(param1:int) : void
      {
         this.reactionRate = param1;
      }
      
      public function §^!n§() : int
      {
         return §#&>§.§1$9§(this,Bonus.REACTION_ADDITION) + §2$^§.§^!n§(this);
      }
      
      public function §#%-§() : Boolean
      {
         return this.online;
      }
      
      public function §!#c§(param1:Boolean) : void
      {
         this.online = param1;
      }
      
      public function get stats() : §9$p§
      {
         return this.§]"@§;
      }
      
      public function §"]§() : Vector.<UserProfile>
      {
         return this.team;
      }
      
      public function §;"!§(param1:Vector.<UserProfile>) : void
      {
         this.team = param1;
      }
      
      public function §7$F§() : Vector.<UserProfile>
      {
         var _loc2_:UserProfile = null;
         var _loc1_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         for each(_loc2_ in this.team)
         {
            if(!§2=§.§]!$§(_loc2_) && _loc2_.isActive())
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §^!A§() : uint
      {
         var _loc2_:UserProfile = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.§7$F§())
         {
            _loc1_ += _loc2_.getLevel();
         }
         return _loc1_;
      }
      
      public function §1!^§() : uint
      {
         var _loc2_:UserProfile = null;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.team)
         {
            if(_loc1_ < _loc2_.getLevel())
            {
               _loc1_ = uint(_loc2_.getLevel());
            }
         }
         return _loc1_;
      }
      
      public function §?%$§(param1:int) : Boolean
      {
         var _loc2_:UserProfile = null;
         for each(_loc2_ in this.team)
         {
            if(_loc2_.getId() == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §'$k§() : Boolean
      {
         return this.team.length < §<!9§.§4p§(this.getLevel()) + this.§5%M§;
      }
      
      public function §##,§() : uint
      {
         var _loc3_:UserProfile = null;
         var _loc1_:uint = 0;
         var _loc2_:Vector.<UserProfile> = this.§7$F§();
         for each(_loc3_ in _loc2_)
         {
            _loc1_ += _loc3_.§]"@§.§8+§.value + _loc3_.§]"@§.§3$L§.value;
         }
         return _loc1_;
      }
      
      public function getRating() : uint
      {
         return this.rating;
      }
      
      public function §+!C§(param1:uint) : void
      {
         this.rating = param1;
      }
      
      public function getDailyRating() : uint
      {
         return this.dailyRating;
      }
      
      public function §=$E§() : int
      {
         return this.oldPlace;
      }
      
      public function §]#6§() : int
      {
         return this.rankPoints;
      }
      
      public function §&!x§(param1:uint) : void
      {
         this.rankPoints = param1;
      }
      
      public function getBestRank() : uint
      {
         return this.bestRank;
      }
      
      public function §3#E§(param1:uint) : void
      {
         this.bestRank = param1;
      }
      
      public function §+X§() : uint
      {
         return this.bestRank > 0 ? uint(§0"^§.§5>§(this.rankPoints).rank) : 0;
      }
      
      public function §`#,§() : Boolean
      {
         var _loc1_:§=k§ = §0"^§.§5>§(this.rankPoints);
         if(this.bestRank > _loc1_.rank)
         {
            this.bestRank = _loc1_.rank;
            return true;
         }
         return false;
      }
      
      public function §9"4§(param1:Array) : void
      {
         var _loc3_:int = 0;
         param1 = param1.reverse();
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            if(_loc3_ <= §0"^§.§+%l§)
            {
               this.seasonsBestRank.push(_loc3_);
            }
            if(++_loc2_ == 10)
            {
               break;
            }
         }
      }
      
      public function §`$0§() : Array
      {
         return this.seasonsBestRank;
      }
      
      public function §8!J§(param1:§'%#§) : void
      {
         if(Boolean(param1) && this.§"%D§() == param1.§"%D§())
         {
            this.§'%Q§ = param1;
            if(!this.charName || !this.charName.length)
            {
               this.charName = §4! §.§0!L§(this);
            }
            if(!this.§"s§ || !this.§"s§.length)
            {
               this.§"s§ = §4! §.§<&-§(this);
            }
         }
      }
      
      public function getSocialData() : §'%#§
      {
         return this.§'%Q§;
      }
      
      public function getCharName() : String
      {
         return this.charName;
      }
      
      public function §'&;§() : String
      {
         return this.§"s§;
      }
      
      public function §2!§(param1:String, param2:Boolean = false) : void
      {
         this.§"s§ = param1;
         this.§`"L§ = param2;
      }
      
      public function §-"§(param1:String, param2:Boolean = false) : void
      {
         this.charName = param1;
         this.§`"L§ = param2;
      }
      
      public function get §;!6§() : Boolean
      {
         return this.§`"L§;
      }
      
      public function §@!z§() : void
      {
         if(!this.§`"L§)
         {
            return;
         }
         this.§`"L§ = false;
         if(this.teamMemberType == §2=§.MERCENARY)
         {
            this.§"s§ = this.charName = §4&A§.§'![§(this.id).§7%z§();
         }
         else
         {
            this.charName = "";
            this.charName = this.§'%Q§ ? §4! §.§0!L§(this) : §2"e§.NA;
            this.§"s§ = this.§'%Q§ ? §4! §.§<&-§(this) : §2"e§.NA;
         }
      }
      
      public function getRace() : §`!d§
      {
         return this.§]"@§.raceRecord;
      }
      
      public function §&$g§(param1:§`!d§, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc4_:Object = null;
         var _loc5_:BackpackItem = null;
         var _loc6_:int = 0;
         var _loc7_:§&"P§ = null;
         var _loc8_:int = 0;
         if(!param2 || this.§]"@§.raceRecord != param1)
         {
            _loc4_ = this.wardrobe.§+$!§();
            for each(_loc5_ in _loc4_)
            {
               _loc8_ = _loc5_.getRecord().getId();
               if(_loc8_ >= §0%G§.§;9§ && _loc8_ <= §8"j§.§;9§)
               {
                  this.wardrobe.§^!>§(_loc5_.getId(),§<$c§.§^&1§(_loc8_,param1));
               }
            }
            this.§]"@§.§&#n§(param1);
            _loc6_ = 0;
            if(this.races.indexOf(param1) == -1)
            {
               this.races.push(param1);
            }
            _loc7_ = §6Y§.§?#`§(this.skins,param1.getId());
            if(_loc7_)
            {
               _loc6_ = _loc7_.§7"=§();
            }
            this.§?!0§(param1.getId(),_loc6_);
            if(param3)
            {
               this.§^$D§();
            }
         }
      }
      
      public function §;$F§() : Vector.<§`!d§>
      {
         return this.races;
      }
      
      public function §5"L§() : §&"P§
      {
         return this.§]"@§.skin;
      }
      
      public function §?!0§(param1:int, param2:int) : void
      {
         var _loc3_:§&"P§ = §6Y§.§>!f§(this.skins,param1);
         _loc3_.§%#L§(param2);
         if(param1 == this.§]"@§.raceRecord.getId())
         {
            this.§]"@§.skin = _loc3_;
         }
      }
      
      public function §+&!§(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Boolean = param1 < 0;
         param1 = Math.abs(param1);
         _loc3_ = int(param1 / 10);
         var _loc4_:§&"P§ = §6Y§.§>!f§(this.skins,_loc3_);
         _loc4_.§%#L§(param1,_loc2_);
      }
      
      public function §1$4§() : Vector.<§&"P§>
      {
         return this.skins;
      }
      
      public function §2u§() : §^$E§
      {
         return this.§]"@§.hat;
      }
      
      public function §7"i§(param1:§^$E§, param2:Boolean = true) : void
      {
         if(this.§]"@§.hat != param1)
         {
            this.§]"@§.§3!-§(param1);
         }
         if(param2)
         {
            this.§^$D§();
         }
      }
      
      public function §+!b§() : §^%%§
      {
         return this.§]"@§.artifact;
      }
      
      public function §;"U§(param1:§^%%§, param2:Boolean = true) : void
      {
         if(this.§]"@§.artifact != param1)
         {
            this.§]"@§.§7"p§(param1);
         }
         if(param2)
         {
            this.§^$D§();
         }
      }
      
      public function § !5§() : §[!X§
      {
         return this.§]"@§.§%" §;
      }
      
      private function §^$D§() : void
      {
         var _loc1_:§[!X§ = null;
         if(this.§]"@§.§%" §)
         {
            this.wardrobe.§1$o§();
         }
         if(Boolean(this.§]"@§.hat) || Boolean(this.§]"@§.artifact))
         {
            _loc1_ = §#&>§.§8$j§(this);
            if(this.§]"@§.§%" § != _loc1_)
            {
               this.§]"@§.§^$D§(_loc1_);
            }
         }
      }
      
      public function §3%^§() : §'"-§
      {
         return this.§'%0§;
      }
      
      public function §9]§(param1:§'"-§) : void
      {
         this.§'%0§ = param1;
      }
      
      public function getBattleBackpack() : §;#X§
      {
         return this.§8G§;
      }
      
      public function §>%q§(param1:§;#X§) : void
      {
         this.§8G§ = param1;
      }
      
      public function §2$=§() : void
      {
         this.§8G§ = this.§'%0§.§2$=§(this);
      }
      
      public function §,%o§() : §;! §
      {
         return this.wardrobe;
      }
      
      public function §2!>§() : §6#Q§
      {
         return this.§<D§;
      }
      
      public function § !>§() : §6#Q§
      {
         return this.§=m§;
      }
      
      public function §#!G§() : uint
      {
         return this.§=$4§;
      }
      
      public function §^<§(param1:uint) : void
      {
         this.§=$4§ = param1;
      }
      
      public function §1%'§(param1:int) : void
      {
         this.§=$4§ += param1;
      }
      
      public function §@$D§() : uint
      {
         return this.realMoney;
      }
      
      public function §]!c§(param1:uint) : void
      {
         this.realMoney = param1;
      }
      
      public function §9%D§(param1:int) : void
      {
         this.realMoney += param1;
      }
      
      public function §2Z§(param1:int, param2:§+$A§) : void
      {
         switch(param2)
         {
            case §+$A§.REAL:
               this.§9%D§(param1);
               break;
            case §+$A§.INGAME:
               this.§1%'§(param1);
         }
      }
      
      public function §!#E§() : Boolean
      {
         return this.§0%f§ ? this.§0%f§.clanId != 0 : false;
      }
      
      public function get clanMember() : ClanMemberStructure
      {
         return this.§0%f§;
      }
      
      public function setActive(param1:Boolean) : void
      {
         this.active = param1;
      }
      
      public function isActive() : Boolean
      {
         return this.active;
      }
      
      public function §,$7§(param1:int) : void
      {
         this.§5%M§ = param1;
      }
      
      public function §%$3§() : int
      {
         return this.§5%M§;
      }
   }
}

