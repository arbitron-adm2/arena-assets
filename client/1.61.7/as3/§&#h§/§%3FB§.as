package §&#h§
{
   import §!$d§.§<$c§;
   import §##j§.§9x§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'$j§.§'-§;
   import §+#P§.§]!E§;
   import §+5§.§5"<§;
   import §,$J§.§,$O§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§<#_§;
   import §4$b§.§8D§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §6",§.§[%w§;
   import §7$t§.§;#_§;
   import §8#<§.§!#^§;
   import §8#a§.ShopMenu;
   import §9%W§.§!"G§;
   import §;!Z§.§0!?§;
   import §;!Z§.§5"d§;
   import §;!Z§.MercsQuestGiftMenu;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §?#g§.Race;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.messages.client.GetMercenariesDefs;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.messages.client.GetMercenariesState;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesRewardResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §?B§
   {
      
      public static var §3$I§:Date;
      
      public static var § !F§:Date;
      
      private static var §;$#§:Function;
      
      public static const §4&§:int = 3;
      
      public static const §;!o§:int = 3;
      
      public static const §!$a§:int = 3;
      
      public static const §-m§:int = 5;
      
      public static const §3%&§:int = 4;
      
      public static const §`&'§:int = 2;
      
      private var §?%K§:§<#&§;
      
      private var §6F§:§'-§;
      
      private var §`#J§:§5"d§;
      
      private var §!o§:§0!?§;
      
      private var § #b§:MercsQuestGiftMenu;
      
      private var §-% §:MercenariesStateResponse;
      
      private var §=!8§:Vector.<MercenariesTeamMember>;
      
      private var §`M§:Vector.<MercenariesTeamMember>;
      
      private var §@#0§:Boolean;
      
      private var §%!,§:Boolean;
      
      private var §,"C§:§1%z§;
      
      private var §3"0§:Function;
      
      public function §?B§()
      {
         super();
         this.§?%K§ = §<#&§.valueOf(§-"P§.MERCENARIES_DUEL);
         §%%w§.§##$§(MercenariesDefsResponse,this.§6#<§);
         §%%w§.§##$§(MercenariesStateResponse,this.§ %3§);
         Application.instance.addEventListener(Event.INIT,this.onInit);
      }
      
      private static function §&I§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array) : MercenariesTeamMember
      {
         var _loc10_:MercenariesTeamMember = new MercenariesTeamMember();
         _loc10_.id = param1;
         _loc10_.level = param2;
         _loc10_.race = param3;
         _loc10_.skin = param4;
         _loc10_.armor = param5;
         _loc10_.attack = param6;
         _loc10_.hat = param7;
         _loc10_.art = param8;
         _loc10_.backpack = [];
         var _loc11_:int = 0;
         while(_loc11_ < param9.length)
         {
            _loc10_.backpack.push(new BackpackItemShortStructure(param9[_loc11_],param9[_loc11_ + 1]));
            _loc11_ += 2;
         }
         return _loc10_;
      }
      
      private static function §4&'§() : Vector.<MercenariesTeamMember>
      {
         var _loc1_:Vector.<MercenariesTeamMember> = new Vector.<MercenariesTeamMember>(0);
         _loc1_.push(§&I§(1,12,Race.§+&8§.getId(),0,20,4,§,$O§.BOSS_YAKUZA_TIGER,§!#^§.SNAKE_STAFF + 4,[§+%z§.CANNON_UPG_2,2,§+%z§.CROSSBOW,2,§+%z§.§'#?§,1,§+%z§.TELEPORT_ANCHOR,1,§+%z§.ROPE_UPG_1,2,§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,2]));
         _loc1_.push(§&I§(2,12,Race.§ "w§.getId(),0,8,16,§,$O§.BOSS_ENCHANTER_MASK,§!#^§.BLAZING_AXE + 2,[§+%z§.DOCTOR_BAG,1,§+%z§.GAS_GRENADE_UPG_1A,1,§+%z§.GUARDING_BOT,1,§+%z§.MINE_UPG_2,2,§+%z§.SPIDER_UPG_1B_FROST,1,§+%z§.PARASITE_UPG_1,1]));
         _loc1_.push(§&I§(3,12,Race.§-K§.getId(),0,10,14,§!#^§.§5"B§ + 5,§!#^§.FROST_SHIELD + 5,[§+%z§.FREEZING_BAZOOKA_UPG1B,2,§+%z§.§-%1§,1,§+%z§.ELECTRIC_HARPOON_UPG_2A,1,§+%z§.HOLY_GRENADE_UPG_2B_POLAR,1,§+%z§.§6&8§,1,§+%z§.FREEZING_MINE,1]));
         _loc1_.push(§&I§(4,12,Race.§"$H§.getId(),0,12,12,§!#^§.SURGEON_BAND + 5,§!#^§.HEALER_STAFF + 5,[§+%z§.SOUL_GUN,2,§+%z§.BLIZZARD,1,§+%z§.FIERY_PUMPKIN,1,§+%z§.VILE_PUMPKIN,1,§+%z§.§7&E§,1]));
         _loc1_.push(§&I§(5,12,Race.§+#T§.getId(),0,18,6,§,$O§.§3!]§,§]!E§.PICK,[§+%z§.GIRDER_U1_ELASTIC,2,§+%z§.BUNKER_BUSTER_UPG_2,1,§+%z§.BLOW_TORCH_UPG_2,3,§+%z§.BLOCKER_UPG_2A_DARK,1,§+%z§.MINIGUN_U2B_ROCKET,2,§+%z§.EMERGENCY_TELEPORT_UPG_3A,1]));
         _loc1_.push(§&I§(6,12,Race.§9"B§.getId(),0,16,8,§,$O§.BOSS_GRAVITY_MASTER_HELM,§]!E§.PROVOKER_SHIELD,[§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,2,§+%z§.STICKY_GRENADE_UPG_2A_POISON,2,§+%z§.AK_47_UPG_2A,2,§+%z§.SHOTGUN_U2B_DOUBLE_SHOT,2,§+%z§.§5-§,1]));
         _loc1_.push(§&I§(7,12,Race.§#%V§.getId(),0,6,18,§,$O§.§=!]§,§]!E§.TOTEM_FIRE,[§+%z§.BOOMERANG_UPG_2,1,§+%z§.§ %L§,1,§+%z§.§ P§,1,§+%z§.NAIL_GRENADE,1,§+%z§.ANTIFREEZE_U2A_ATTACK,1]));
         _loc1_.push(§&I§(8,12,Race.§1"^§.getId(),0,14,10,§!#^§.STEAMPUNK_GLASSES + 5,§!#^§.STRATEGIST_FAN + 2,[§+%z§.AIR_STRIKE,2,§+%z§.§6!x§,3,§+%z§.HELICOPTER,1,§+%z§.HOMING_BAZOOKA_UPG_1,2,§+%z§.SUPER_SHEEP_UPG_2,1]));
         _loc1_.push(§&I§(9,12,Race.§!!S§.getId(),0,4,20,§,$O§.§;"h§,§!#^§.JAWBLADE + 6,[§+%z§.CARPET_BAZOOKA_UPG_2B,2,§+%z§.MINIGUN_U2A_REDUCE_ARMOR,2,§+%z§.SHURIKEN_U2B_SAW,2,§+%z§.FOUL_WATERMELON,1]));
         return _loc1_;
      }
      
      private static function §!!9§(param1:Vector.<MercenariesTeamMember>) : void
      {
         var _loc2_:MercenariesTeamMember = null;
         var _loc3_:BackpackItemShortStructure = null;
         for each(_loc2_ in param1)
         {
            for each(_loc3_ in _loc2_.backpack)
            {
            }
         }
      }
      
      public static function §8#&§(param1:Function, param2:Boolean = true, param3:Boolean = true) : void
      {
         §;$#§ = param1;
         if(param1 != null)
         {
            §[&G§.§8"&§.show();
         }
         if(param2)
         {
            §%%w§.§,U§(new GetMercenariesState());
         }
         if(param3)
         {
            §%%w§.§,U§(new GetArena());
         }
      }
      
      private static function §6'§(param1:Vector.<MercenariesTeamMember>) : void
      {
         var _loc4_:MercenariesTeamMember = null;
         var _loc2_:int = 0;
         var _loc3_:int = int(param1.length);
         while(_loc2_ < _loc3_)
         {
            _loc4_ = MercenariesTeamMember(param1[_loc2_]);
            _loc4_.profile = UserProfile.§'#3§(§<#_§.getInstance().§9"I§(_loc4_.id,_loc4_.hat),_loc4_.level,Race.§-%z§(Race.§3!4§(_loc4_.race)),§<!9§.§["q§(_loc4_.level),_loc4_.armor,_loc4_.attack,_loc4_.hat,_loc4_.art,_loc4_.skin);
            _loc2_++;
         }
      }
      
      public static function §'"p§() : Boolean
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:uint = 0;
         if(Boolean(§3$I§) && Boolean(§ !F§))
         {
            _loc1_ = §3$I§.getTime() / 1000;
            _loc2_ = § !F§.getTime() / 1000;
            _loc3_ = §0#2§.§@&6§();
            return _loc2_ > _loc3_ && _loc1_ <= _loc3_;
         }
         return false;
      }
      
      private function onInit(param1:Event) : void
      {
         Application.instance.removeEventListener(Event.INIT,this.onInit);
         §%%w§.§,U§(new GetMercenariesDefs());
         §8#&§(null,true,false);
      }
      
      private function § %3§(param1:§9$v§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MercenariesTeamMember = null;
         §[&G§.§8"&§.hide();
         this.§-% § = MercenariesStateResponse(param1.message);
         this.§=!8§ = new Vector.<MercenariesTeamMember>(0);
         for each(_loc2_ in this.§-% §.team)
         {
            _loc3_ = this.§&$y§(_loc2_);
            if(_loc3_)
            {
               this.§=!8§.push(_loc3_);
            }
         }
         if(§;$#§ != null)
         {
            §;$#§();
            §;$#§ = null;
         }
      }
      
      private function §6#<§(param1:§9$v§) : void
      {
         var _loc3_:MercenariesTeamMember = null;
         §[&G§.§8"&§.hide();
         var _loc2_:MercenariesDefsResponse = MercenariesDefsResponse(param1.message);
         this.§`M§ = new Vector.<MercenariesTeamMember>(0);
         for each(_loc3_ in _loc2_.mercenariesDefs)
         {
            this.§`M§.push(_loc3_);
         }
         §6'§(this.§`M§);
      }
      
      public function startBattle() : void
      {
         §8"%§.§?!W§.§`";§(this.§?%K§);
      }
      
      public function §&"g§() : UserProfile
      {
         var _loc1_:UserProfile = this.team[0].profile.§ "P§();
         _loc1_.§;"!§(this.§%",§);
         return _loc1_;
      }
      
      public function §!!8§(param1:Vector.<PvpProfileStructure>, param2:§]$d§) : void
      {
         var _loc5_:UserProfile = null;
         var _loc6_:PvpProfileStructure = null;
         var _loc7_:TeamMemberStructure = null;
         var _loc8_:uint = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:UserProfile = null;
         var _loc12_:WeaponStructure = null;
         var _loc13_:int = 0;
         var _loc14_:§;#_§ = null;
         var _loc15_:MercenariesTeamMember = null;
         var _loc3_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         var _loc4_:Vector.<uint> = new Vector.<uint>(0);
         for each(_loc6_ in param1)
         {
            if(_loc6_.id == Application.userProfile.getId())
            {
               _loc5_ = this.§&"g§();
            }
            else
            {
               _loc5_ = new UserProfile();
            }
            _loc7_ = TeamMemberStructure(_loc6_.units[0]);
            _loc8_ = _loc7_.ownerId;
            _loc7_.ownerId = _loc6_.id;
            _loc7_.socialOwnerId = _loc6_.socialId;
            _loc5_.§1G§.§"Q§(_loc6_);
            _loc5_.§7$F§()[0].setIds(_loc8_,_loc8_.toString());
            §<#_§.getInstance().§@#E§(_loc5_);
            _loc5_.§7$F§()[0].setIds(_loc6_.id,_loc6_.socialId);
            _loc5_.§9]§(new §'"-§());
            _loc9_ = 0;
            _loc10_ = int(_loc6_.weaponRecordList.length);
            while(_loc9_ < _loc10_)
            {
               _loc12_ = WeaponStructure(_loc6_.weaponRecordList[_loc9_]);
               _loc13_ = _loc12_.getCount();
               _loc14_ = §<$c§.§ !=§(_loc12_.getId());
               if((Boolean(_loc14_)) && _loc13_ != 0)
               {
                  _loc5_.§3%^§().§0%8§(_loc14_,_loc13_,_loc14_.§]!C§());
               }
               _loc9_++;
            }
            for each(_loc11_ in _loc5_.§"]§())
            {
               for each(_loc15_ in this.§`M§)
               {
                  if(_loc15_.race == _loc11_.getRace().getId())
                  {
                     _loc11_.§?!0§(_loc15_.race,_loc15_.skin);
                     break;
                  }
               }
            }
            _loc3_[_loc3_.length] = _loc5_;
            _loc4_[_loc4_.length] = _loc6_.teamNum;
         }
         param2.setProfiles(_loc3_,_loc4_);
      }
      
      public function §&y§(param1:Function) : void
      {
         this.§3"0§ = param1;
         if(!this.§,"C§)
         {
            §[&G§.§8"&§.show();
            this.§@#0§ = this.§8!,§();
            §%%w§.§##$§(MercenariesRewardResponse,this.§?!e§);
            §%%w§.§,U§(new GetMercenariesReward());
         }
         else
         {
            this.§6!-§();
         }
      }
      
      private function §?!e§(param1:§9$v§) : void
      {
         §[&G§.§8"&§.hide();
         §%%w§.§-"j§(MercenariesRewardResponse,this.§?!e§);
         var _loc2_:MercenariesRewardResponse = MercenariesRewardResponse(param1.message);
         this.§,"C§ = §1%z§.§!!Z§(_loc2_.reward);
         this.§,"C§.§;!c§();
         this.§%!,§ = true;
         if(this.§ #b§)
         {
            this.§6!-§();
         }
         else
         {
            this.§&&4§();
            if(this.§3"0§ != null)
            {
               this.§3"0§();
               this.§3"0§ = null;
            }
         }
         §8#&§(null);
      }
      
      private function §6!-§() : void
      {
         var _loc1_:§9x§ = null;
         if(this.§3"0§ != null)
         {
            _loc1_ = this.§,"C§.rewards[0];
            this.§,"C§.rewards.splice(0,1);
            this.§3"0§(_loc1_);
         }
         if(this.§6$T§.rewards.length == 0)
         {
            this.§,"C§ = null;
            this.§@#0§ = false;
         }
      }
      
      public function §@§(param1:DisplayObject = null) : §'-§
      {
         if(!this.§6F§ && Boolean(param1))
         {
            this.§6F§ = new §'-§(param1 as SimpleButton);
            this.§6F§.§[!u§(this.§4%1§);
         }
         return this.§6F§;
      }
      
      public function §4%1§(param1:Event = null) : void
      {
         if(§'"p§())
         {
            if(Application.userProfile.getLevel() >= §8"%§.§'%;§.wager.minLevel)
            {
               if(this.§"!4§())
               {
                  if(this.§,"C§)
                  {
                     this.§&&4§();
                  }
                  else
                  {
                     this.§&y§(null);
                  }
               }
               else
               {
                  this.§=!;§();
               }
            }
            else
            {
               §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0%§.format(§0$N§.QUEST_ACCESS_LEVEL_MESSAGE,{"level":§8"%§.§'%;§.wager.minLevel}));
            }
         }
         else
         {
            this.§8"u§();
         }
      }
      
      public function §!$$§(param1:Event) : void
      {
         if(§'"p§())
         {
            if(!this.§!o§)
            {
               this.§!o§ = new §0!?§();
            }
            this.§!o§.show();
            this.§`#J§.hide();
         }
         else
         {
            this.§8"u§();
         }
      }
      
      public function §8"u§() : void
      {
         if(this.§6F§)
         {
            this.§6F§.setVisible(false);
         }
         var _loc1_:§,#W§ = new §,#W§(§0$N§.TITLE_ATTENTION,§0$N§.MERCS_QUEST_THEEND,§,#W§.§6!m§);
         _loc1_.show();
      }
      
      public function §=!;§() : void
      {
         if(!this.§`#J§)
         {
            this.§`#J§ = new §5"d§();
         }
         this.§`#J§.show();
      }
      
      private function §&&4§() : void
      {
         this.§ #b§ = new MercsQuestGiftMenu();
         §""n§.single(this.§ #b§,§[%w§.WINDOW_CLOSE,this.§1H§);
         this.§ #b§.show();
      }
      
      private function §1H§(param1:Event = null) : void
      {
         this.§ #b§.destroy();
         this.§ #b§ = null;
      }
      
      public function §<!T§(param1:Number) : Boolean
      {
         var _loc2_:MercenariesTeamMember = null;
         for each(_loc2_ in this.§=!8§)
         {
            if(_loc2_.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §6#C§() : MercsQuestGiftMenu
      {
         return this.§ #b§;
      }
      
      public function set team(param1:Vector.<MercenariesTeamMember>) : void
      {
         this.§=!8§ = param1;
      }
      
      public function get team() : Vector.<MercenariesTeamMember>
      {
         return this.§=!8§;
      }
      
      public function get §<4§() : int
      {
         return this.§-% §.win;
      }
      
      public function get §=%Z§() : int
      {
         return this.§-% §.defeat;
      }
      
      public function get isOpen() : Boolean
      {
         return this.§-% §.isOpen;
      }
      
      public function get §&%[§() : Boolean
      {
         return this.§=!8§.length == §4&§;
      }
      
      public function get §8%A§() : Vector.<MercenariesTeamMember>
      {
         return this.§`M§;
      }
      
      public function get §%",§() : Vector.<UserProfile>
      {
         var _loc2_:MercenariesTeamMember = null;
         var _loc1_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         for each(_loc2_ in this.§=!8§)
         {
            _loc1_.push(_loc2_.profile);
         }
         return _loc1_;
      }
      
      public function §&$y§(param1:int) : MercenariesTeamMember
      {
         var _loc2_:MercenariesTeamMember = null;
         for each(_loc2_ in this.§`M§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §2%N§() : Boolean
      {
         return this.§<4§ >= §!$a§ || this.§=%Z§ >= §-m§;
      }
      
      public function §8!,§() : Boolean
      {
         return this.§<4§ >= §!$a§ || this.§@#0§;
      }
      
      public function get §'!!§() : Boolean
      {
         return this.§%!,§;
      }
      
      public function set §'!!§(param1:Boolean) : void
      {
         this.§%!,§ = param1;
      }
      
      public function §"!4§() : Boolean
      {
         return this.§2%N§() || this.§%!,§;
      }
      
      public function get §6$T§() : §1%z§
      {
         return this.§,"C§;
      }
      
      public function get §"$B§() : Boolean
      {
         return this.§-% §.attemptsRemainToday <= 0;
      }
      
      public function get §8!^§() : int
      {
         return this.§-% §.total_defeat + this.§-% §.total_win + this.§-% §.total_draw;
      }
      
      public function get winRate() : int
      {
         var _loc1_:int = this.§-% §.total_defeat + this.§-% §.total_win;
         return _loc1_ > 0 ? int(§-q§.§5&H§(this.§-% §.total_win,this.§-% §.total_defeat + this.§-% §.total_win)) : 0;
      }
      
      public function §&# §(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         if(Boolean(param1) && Boolean(param1["MERCENARIES_DUEL"]))
         {
            _loc2_ = String(param1["MERCENARIES_DUEL"]).split(",");
            _loc3_ = String(_loc2_[0]).split("-");
            _loc4_ = String(_loc2_[1]).split("-");
            §3$I§ = new Date(_loc3_[0],int(_loc3_[1]) - 1,_loc3_[2]);
            § !F§ = new Date(_loc4_[0],int(_loc4_[1]) - 1,_loc4_[2]);
         }
         if(this.§6F§)
         {
            this.§6F§.setVisible(§'"p§() && Application.userProfile.getLevel() >= §8"%§.§'%;§.wager.minLevel);
         }
      }
      
      public function get wager() : §<#&§
      {
         return this.§?%K§;
      }
   }
}

