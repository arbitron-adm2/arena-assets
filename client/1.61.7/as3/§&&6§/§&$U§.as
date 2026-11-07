package §&&6§
{
   import § !P§.§<#q§;
   import § "d§.§,!c§;
   import § $q§.§3U§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§+m§;
   import §,"v§.§9%d§;
   import §,#c§.ArenaMenu;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-&5§.*;
   import §-@§.§3%9§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.§^!9§;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!K§.*;
   import §4$b§.*;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §5"J§.*;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§??§;
   import §8#o§.§1@§;
   import §8$V§.§`"c§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §9%W§.§&!P§;
   import §9%k§.*;
   import §<"?§.*;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%J§.§!!`§;
   import §<%c§.§>!^§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§ "^§;
   import §=1§.*;
   import §>$q§.§4#;§;
   import §>$q§.§9$U§;
   import §?#g§.*;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@#K§.§-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import §`#x§.*;
   import §`%&§.§,%§;
   import com.inreflected.ui.touchScroll.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.server.PvpRetryCommandRequestServer;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §&$U§ extends §-"o§
   {
      
      private static const §=C§:uint = 4;
      
      private static const §1!h§:uint = 60;
      
      §§push(§§findproperty(§@"b§));
      var _temp_4:* = new <uint>[§+%z§.BAZOOKA,§+%z§.BAZOOKA_UPG_1,§+%z§.BAZOOKA_UPG_2_CUMULATIVE,§+%z§.RIFLE,§+%z§.RIFLE_UPG_1,§+%z§.RIFLE_UPG_2,§+%z§.ANTITOXIN,§+%z§.BANDAGE,§+%z§.ROPE,§+%z§.ROPE_UPG_1,§+%z§.ROPE_UPG_2];
      var _temp_8:* = new <uint>[§+%z§.BAZOOKA,§+%z§.BAZOOKA_UPG_1,§+%z§.BAZOOKA_UPG_2_CUMULATIVE,§+%z§.RIFLE,§+%z§.RIFLE_UPG_1,§+%z§.RIFLE_UPG_2,§+%z§.ANTITOXIN,§+%z§.BANDAGE,§+%z§.ROPE,§+%z§.ROPE_UPG_1,§+%z§.ROPE_UPG_2];
      
      private static const §@"b§:Vector.<uint> = new <uint>[§+%z§.BAZOOKA,§+%z§.BAZOOKA_UPG_1,§+%z§.BAZOOKA_UPG_2_CUMULATIVE,§+%z§.RIFLE,§+%z§.RIFLE_UPG_1,§+%z§.RIFLE_UPG_2,§+%z§.ANTITOXIN,§+%z§.BANDAGE,§+%z§.ROPE,§+%z§.ROPE_UPG_1,§+%z§.ROPE_UPG_2];
      
      private var bosses:Vector.<§+%]§>;
      
      private var §6V§:Vector.<uint>;
      
      private var §9#N§:Vector.<UserProfile> = new Vector.<UserProfile>(0);
      
      private var §-&'§:Array = [new Vector.<uint>(0),new Vector.<uint>(0)];
      
      private var §'%N§:Vector.<§9$U§>;
      
      private var §&!>§:Vector.<§4#;§>;
      
      private var §<%@§:Vector.<BackpackItem> = new Vector.<BackpackItem>(0);
      
      private var §7$q§:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      protected var playerSquads:Vector.<§"Z§>;
      
      public function §&$U§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("thieves.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         this.playerSquads = param1;
         var _loc4_:§,!c§ = new §,!c§(5,1.1,0.9,param1);
         var _loc5_:uint = _loc4_.§>$m§;
         var _loc6_:uint = _loc4_.§?"-§;
         var _loc7_:uint = _loc4_.level;
         var _temp_2:* = new <§-!`§>[new §-!`§(§0$N§.BOSS_THIEF_BOT_1_NAME,[UserProfile.§'#3§(§0$N§.BOSS_THIEF_BOT_1_NAME,_loc7_ * 1.2,Race.§#%V§,450 + 8 * _loc6_ + 4 * _loc5_,_loc7_ * 1.5,_loc7_ * 1,§,$O§.BOSS_THIEF)]),new §-!`§(§0$N§.BOSS_THIEF_BOT_2_NAME,[UserProfile.§'#3§(§0$N§.BOSS_THIEF_BOT_2_NAME,_loc7_ * 1.1,Race.§1"^§,350 + 8 * _loc6_ + 3 * _loc5_,_loc7_ * 1.2,_loc7_ * 1.5,§,$O§.BOSS_THIEF)])];
         var _temp_3:* = new <§-!`§>[new §-!`§(§0$N§.BOSS_THIEF_BOT_1_NAME,[UserProfile.§'#3§(§0$N§.BOSS_THIEF_BOT_1_NAME,_loc7_ * 1.2,Race.§#%V§,450 + 8 * _loc6_ + 4 * _loc5_,_loc7_ * 1.5,_loc7_ * 1,§,$O§.BOSS_THIEF)]),new §-!`§(§0$N§.BOSS_THIEF_BOT_2_NAME,[UserProfile.§'#3§(§0$N§.BOSS_THIEF_BOT_2_NAME,_loc7_ * 1.1,Race.§1"^§,350 + 8 * _loc6_ + 3 * _loc5_,_loc7_ * 1.2,_loc7_ * 1.5,§,$O§.BOSS_THIEF)])];
         return new <§-!`§>[new §-!`§(§0$N§.BOSS_THIEF_BOT_1_NAME,[UserProfile.§'#3§(§0$N§.BOSS_THIEF_BOT_1_NAME,_loc7_ * 1.2,Race.§#%V§,450 + 8 * _loc6_ + 4 * _loc5_,_loc7_ * 1.5,_loc7_ * 1,§,$O§.BOSS_THIEF)]),new §-!`§(§0$N§.BOSS_THIEF_BOT_2_NAME,[UserProfile.§'#3§(§0$N§.BOSS_THIEF_BOT_2_NAME,_loc7_ * 1.1,Race.§1"^§,350 + 8 * _loc6_ + 3 * _loc5_,_loc7_ * 1.2,_loc7_ * 1.5,§,$O§.BOSS_THIEF)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc3_:int = 0;
         this.bosses = new Vector.<§+%]§>(0);
         var _loc2_:§+%]§ = §+%]§(param1[0].§1!n§()[0]);
         _loc2_.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.9),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.7),new §>%Q§(§+%z§.BAZOOKA_UPG_1,0.1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.3),new §>%Q§(§+%z§.CANNON_UPG_1,0.2)]);
         this.bosses.push(_loc2_);
         _loc2_ = §+%]§(param1[1].§1!n§()[0]);
         §§push(_loc2_);
         §§push(§§findproperty(§,%8§));
         var _temp_8:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.6),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.6),new §>%Q§(§+%z§.AK_47,0.6),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,0.4)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.5),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.6),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.6),new §>%Q§(§+%z§.AK_47,0.6),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,0.4)]);
         this.bosses.push(_loc2_);
         for each(_loc2_ in this.bosses)
         {
            _loc2_.aiMissFactor = 1;
            _loc2_.aiShotPower = 5;
            _loc2_.addEventListener(§0%v§.§&!D§,this.§'$R§);
            §-#M§.§&"r§(_loc2_);
         }
         this.§6V§ = new <uint>[0,0];
         this.§'%N§ = new Vector.<§9$U§>(0);
         this.§&!>§ = new Vector.<§4#;§>(0);
         _loc3_ = 0;
         while(_loc3_ < §=C§)
         {
            this.§'%N§[_loc3_] = null;
            this.§&!>§[_loc3_] = null;
            _loc3_++;
         }
         this.§+&A§();
         this.§8#E§();
         this.§3&#§();
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:int = 0;
         super.§ "a§(param1,param2);
         if(!§8"%§.§?!W§.§4"m§.§;#l§())
         {
            _loc3_ = 0;
            while(_loc3_ < §=C§)
            {
               if(!this.§'%N§[_loc3_] || this.§'%N§[_loc3_].disposed)
               {
                  this.§6"f§(_loc3_);
               }
               _loc3_++;
            }
         }
         else
         {
            _loc3_ = 0;
            while(_loc3_ < §=C§)
            {
               if(Boolean(this.§&!>§[_loc3_]) && !this.§&!>§[_loc3_].disposed)
               {
                  this.§&!>§[_loc3_].§>"7§();
               }
               _loc3_++;
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
      }
      
      public function getBosses() : Vector.<§+%]§>
      {
         return this.bosses;
      }
      
      override public function clear() : void
      {
         var _loc1_:§+%]§ = null;
         this.§!$v§();
         this.§9#N§.length = 0;
         this.§7$q§.length = 0;
         for each(_loc1_ in this.bosses)
         {
            _loc1_.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         }
         this.bosses.length = 0;
         this.bosses = null;
      }
      
      private function §3&#§() : void
      {
         var _loc1_:§"Z§ = null;
         var _loc2_:UserProfile = null;
         var _loc3_:§;#X§ = null;
         var _loc4_:BackpackItem = null;
         var _loc5_:int = 0;
         for each(_loc1_ in this.playerSquads)
         {
            _loc2_ = _loc1_.§&!G§();
            _loc3_ = new §;#X§();
            for each(_loc4_ in _loc2_.§3%^§().§+$!§())
            {
               if(§@"b§.indexOf(_loc4_.getId()) != -1)
               {
                  _loc3_.§0%8§(_loc4_.getRecord(),_loc4_.getCount(),_loc4_.§]!C§());
               }
               else if(_loc4_.isInfinite())
               {
                  _loc5_ = this.§6%3§(_loc4_);
                  if(_loc5_ != -1)
                  {
                     this.§<%@§[_loc5_] = _loc4_;
                  }
                  else if(this.§-!P§(_loc4_.getId()) == -1)
                  {
                     this.§<%@§.push(_loc4_);
                  }
               }
            }
            _loc2_.§>%q§(_loc3_);
            this.§9#N§.push(_loc2_);
         }
      }
      
      private function §6%3§(param1:BackpackItem) : int
      {
         var _loc3_:int = 0;
         var _loc4_:§&!e§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc2_:§&"3§ = §1@§.§&%u§(param1.getId());
         if(_loc2_)
         {
            for each(_loc3_ in _loc2_.§!"_§)
            {
               _loc4_ = §<$c§.§ !=§(_loc3_);
               var _temp_2:* = _loc4_.§,X§() > param1.getRecord().§,X§();
               _loc5_ = _loc4_.§,X§() > param1.getRecord().§,X§();
               if(_loc5_)
               {
                  _loc6_ = this.§-!P§(_loc3_);
                  if(_loc6_ != -1)
                  {
                     return _loc6_;
                  }
               }
            }
         }
         return -1;
      }
      
      private function §-!P§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<%@§.length)
         {
            if(this.§<%@§[_loc2_].getId() == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      private function §+&A§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:uint = 60;
         var _loc3_:DisplayObjectContainer = Application.scene.§7#o§.getChildByName("team0") as DisplayObjectContainer;
         _loc2_ = new MovieClip();
         _loc2_.y = _loc1_;
         _loc3_.addChild(_loc2_);
         this.§7$q§.push(_loc2_);
         _loc3_ = Application.scene.§7#o§.getChildByName("team1") as DisplayObjectContainer;
         _loc3_.y += _loc1_ / 2;
         _loc2_ = new MovieClip();
         _loc2_.y = _loc1_;
         _loc3_.addChild(_loc2_);
         this.§7$q§.push(_loc2_);
         var _loc4_:uint = 2;
         while(_loc4_ < 4)
         {
            _loc3_ = Application.scene.§7#o§.getChildByName("team" + _loc4_) as DisplayObjectContainer;
            if(_loc3_)
            {
               _loc3_.y += _loc1_ * 2 - _loc1_;
            }
            _loc4_++;
         }
      }
      
      private function §@"D§(param1:int, param2:String) : void
      {
         var _loc3_:MovieClip = this.§7$q§[param1];
         var _loc4_:MovieClip = §6#A§.§!&6§(param2);
         _loc4_.scaleX = _loc4_.scaleY = 0.4;
         _loc4_.x = 16 + _loc4_.width * _loc3_.numChildren + 10 * _loc3_.numChildren;
         _loc3_.addChild(_loc4_);
      }
      
      private function §3#^§(param1:int, param2:String) : void
      {
         var _loc6_:DisplayObject = null;
         var _loc7_:uint = 0;
         var _loc3_:MovieClip = this.§7$q§[param1];
         var _loc4_:Class = §6#A§.getClass(param2);
         var _loc5_:uint = uint(_loc3_.numChildren);
         _loc7_ = 0;
         while(_loc7_ < _loc5_)
         {
            _loc6_ = _loc3_.getChildAt(_loc7_);
            if(_loc3_.getChildAt(_loc7_) as _loc4_)
            {
               _loc3_.removeChild(_loc6_);
               break;
            }
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc5_ - 1)
         {
            _loc6_ = _loc3_.getChildAt(_loc7_);
            _loc6_.x = 16 + _loc6_.width * _loc7_ + 10 * _loc7_;
            _loc7_++;
         }
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:int = 0;
         if(Boolean(param1.source) && Boolean(param1.source.owner) && param1.source.owner.squad.getTeamId() == §>!^§.§6#S§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.bosses.length)
            {
               if(this.bosses[_loc2_] == param1.victim)
               {
                  this.§6V§[_loc2_] += int(param1.power);
                  if(this.§6V§[_loc2_] > §1!h§)
                  {
                     this.§6!I§(new Point(param1.target.x,param1.target.y));
                     this.§6V§[_loc2_] = 0;
                  }
                  break;
               }
               _loc2_++;
            }
         }
      }
      
      private function §6"f§(param1:int) : void
      {
         var _loc2_:Point = null;
         var _loc3_:uint = 0;
         var _loc4_:BackpackItem = null;
         var _loc5_:§9$U§ = null;
         if(this.§<%@§.length > 0)
         {
            _loc2_ = §-#M§.§`"5§(§""L§.§,"=§(this.§'%N§),150,60,false);
            _loc3_ = §8"%§.randomSeed.§,!q§(0,this.§<%@§.length - 1);
            _loc4_ = this.§<%@§[_loc3_];
            this.§<%@§.splice(_loc3_,1);
            _loc5_ = new §9$U§(_loc2_,_loc4_,param1);
            _loc5_.§4%$§(this.checkBox);
            _loc5_.addEventListener(§0%v§.§^$3§,this.§&$5§);
            this.§'%N§[param1] = _loc5_;
         }
      }
      
      private function §&$5§(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      private function §6!I§(param1:Point) : void
      {
         var _loc4_:uint = 0;
         var _loc5_:§4#;§ = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < §=C§)
         {
            if(this.§'%N§[_loc3_] != null && !this.§'%N§[_loc3_].disposed && (this.§&!>§[_loc3_] == null || this.§&!>§[_loc3_].disposed) && !this.§4&C§(_loc3_))
            {
               _loc2_.push(_loc3_);
            }
            _loc3_++;
         }
         if(_loc2_.length > 0)
         {
            _loc4_ = uint(§""L§.§=!W§(_loc2_,§8"%§.randomSeed));
            _loc5_ = new §4#;§(param1,_loc4_);
            _loc5_.addEventListener(§^!9§.NAME,this.§`"v§);
            this.§&!>§[_loc4_] = _loc5_;
            _loc5_.setSpeedXY(§8"%§.randomSeed.§,!q§(-6,6),-8);
         }
      }
      
      private function §4&C§(param1:uint) : Boolean
      {
         var _loc2_:Vector.<uint> = null;
         for each(_loc2_ in this.§-&'§)
         {
            if(_loc2_.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §8#E§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         this.§-&'§ = [new Vector.<uint>(0),new Vector.<uint>(0)];
         for each(_loc1_ in this.§7$q§)
         {
            _loc2_ = uint(_loc1_.numChildren);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc1_.removeChildAt(_loc3_);
               _loc3_++;
            }
         }
      }
      
      private function §!$v§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §=C§)
         {
            if(this.§'%N§[_loc1_] != null)
            {
               this.§'%N§[_loc1_].removeEventListener(§0%v§.§^$3§,this.§&$5§);
               if(!this.§'%N§[_loc1_].disposed)
               {
                  this.§'%N§[_loc1_].disposed = true;
               }
            }
            if(this.§&!>§[_loc1_] != null)
            {
               this.§&!>§[_loc1_].removeEventListener(§^!9§.NAME,this.§`"v§);
               if(!this.§&!>§[_loc1_].disposed)
               {
                  this.§&!>§[_loc1_].disposed = true;
               }
            }
            _loc1_++;
         }
         this.§'%N§.length = 0;
         this.§&!>§.length = 0;
      }
      
      private function §`"v§(param1:§^!9§) : void
      {
         dispatchEvent(param1);
         var _loc2_:uint = 0;
         while(_loc2_ < 2)
         {
            if(this.§9#N§[_loc2_] == param1.picker.squad.§&!G§())
            {
               this.§1!w§(_loc2_,§4#;§(param1.currentTarget));
               return;
            }
            _loc2_++;
         }
      }
      
      private function checkBox(param1:§9$U§, param2:§+%]§) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:uint = 0;
         for(; _loc3_ < this.§9#N§.length; _loc3_++)
         {
            if(this.§9#N§[_loc3_] == param2.squad.§&!G§())
            {
               _loc4_ = 0;
               while(_loc4_ < this.§-&'§[_loc3_].length)
               {
                  if(this.§-&'§[_loc3_][_loc4_] == param1.getType())
                  {
                     this.§-&'§[_loc3_].splice(_loc4_,1);
                     this.§3#^§(_loc3_,this.§&!>§[param1.getType()].§4!q§());
                     dispatchEvent(new Event(§!!c§.BOX_OPEN));
                     param1.removeEventListener(§0%v§.§^$3§,this.§&$5§);
                     return true;
                  }
                  _loc4_++;
               }
            }
         }
         return false;
      }
      
      private function §1!w§(param1:uint, param2:§4#;§) : void
      {
         this.§-&'§[param1].push(param2.getType());
         this.§@"D§(param1,param2.§4!q§());
      }
   }
}

