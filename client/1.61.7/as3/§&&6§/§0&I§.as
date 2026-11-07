package §&&6§
{
   import § !8§.§`!d§;
   import § "d§.§,!c§;
   import §!$d§.§<$c§;
   import §"#]§.*;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'&"§.§,&3§;
   import §'&"§.TutorialCard;
   import §+#P§.§8"j§;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §+%S§.§ !!§;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§>&&§;
   import §0%[§.§^"5§;
   import §0%z§.BossAchieveHint;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §1A§.§#"§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#H§.§0"u§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §2$]§.*;
   import §3#T§.§]!6§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§%$$§;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §=$#§.§1!$§;
   import §=&!§.§<$!§;
   import §=&!§.§]$d§;
   import §>%I§.§-#f§;
   import §>%I§.§`!g§;
   import §?#g§.Race;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import config.§5%T§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.StatusEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Mouse;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.client.ExecuteSpecialDeal;
   import ru.pragmatix.wormix.messages.client.ReturnFriend;
   import ru.pragmatix.wormix.messages.server.ExecuteSpecialDealResponse;
   import ru.pragmatix.wormix.messages.server.ReturnFriendResult;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   
   public class §0&I§ extends §-"o§
   {
      
      private static const §,m§:uint = 100;
      
      private static const §-%I§:uint = 5;
      
      private static const §!!G§:int = 40;
      
      private static const §>&3§:int = 30;
      
      private static const §,"9§:int = 10;
      
      private var boss:§+%]§;
      
      private var §'%6§:§"Z§;
      
      private var § "Q§:FrameTimer;
      
      private const §3%Y§:§#"§ = new §#"§(§,m§);
      
      public function §0&I§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("druid.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = null;
         var _loc7_:Vector.<§-!`§> = null;
         var _loc8_:Boolean = false;
         _loc4_ = new §,!c§(5,1.5,1,param1);
         var _loc5_:§,!c§ = new §,!c§(5,2,1.5,param1);
         var _loc6_:UserProfile = UserProfile.§'#3§(§0$N§.BOSS_DRUID_NAME,_loc4_.level * 0.8,Race.§1"^§,380 + _loc4_.level * (§^i§ ? 22 : 30),_loc4_.level * 0.9,_loc4_.level * 1.5,§,$O§.EAGLE_HAT,§]!E§.§"%;§,§5%T§.§6!$§);
         if(§^i§)
         {
            _loc8_ = §<#A§();
            var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.BOSS_DRUID_NAME,[_loc6_,this.§8&=§(_loc8_ ? _loc5_ : _loc4_,§]!E§.TOTEM_FIRE,§0$N§.BOSS_DRUID_HELPER_FIRE),this.§8&=§(_loc8_ ? _loc5_ : _loc4_,§]!E§.TOTEM_POISON,§0$N§.BOSS_DRUID_HELPER_POISON)])];
            _loc7_ = new <§-!`§>[new §-!`§(§0$N§.BOSS_DRUID_NAME,[_loc6_,this.§8&=§(_loc8_ ? _loc5_ : _loc4_,§]!E§.TOTEM_FIRE,§0$N§.BOSS_DRUID_HELPER_FIRE),this.§8&=§(_loc8_ ? _loc5_ : _loc4_,§]!E§.TOTEM_POISON,§0$N§.BOSS_DRUID_HELPER_POISON)])];
         }
         else
         {
            var _temp_3:* = new <§-!`§>[new §-!`§(§0$N§.BOSS_DRUID_NAME,[_loc6_]),new §-!`§(§0$N§.BOSS_DRUID_HELPER_TEAM,[this.§8&=§(_loc4_,§]!E§.TOTEM_FIRE,§0$N§.BOSS_DRUID_HELPER_FIRE),this.§8&=§(_loc4_,§]!E§.TOTEM_POISON,§0$N§.BOSS_DRUID_HELPER_POISON)])];
            _loc7_ = new <§-!`§>[new §-!`§(§0$N§.BOSS_DRUID_NAME,[_loc6_]),new §-!`§(§0$N§.BOSS_DRUID_HELPER_TEAM,[this.§8&=§(_loc4_,§]!E§.TOTEM_FIRE,§0$N§.BOSS_DRUID_HELPER_FIRE),this.§8&=§(_loc4_,§]!E§.TOTEM_POISON,§0$N§.BOSS_DRUID_HELPER_POISON)])];
         }
         return _loc7_;
      }
      
      private function §8&=§(param1:§,!c§, param2:uint, param3:String) : UserProfile
      {
         return UserProfile.§'#3§(param3,param1.level * 0.8,Race.§ "w§,400 + (§^i§ ? 4.5 : 3 * param1.§?"-§) + (§^i§ ? 25 : 15) * param1.§3"`§,param1.level * 0.9,param1.level * 1.5,§,$O§.WOLF_MASTER,param2);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc5_:§"Z§ = null;
         var _loc6_:§+%]§ = null;
         this.boss = param1[0].§1!n§()[0];
         this.§&&"§(this.boss,true);
         this.§'%6§ = param1[§^i§ ? 0 : 1];
         var _loc2_:Vector.<§+%]§> = this.§'%6§.§1!n§();
         var _loc3_:int = 0;
         var _loc4_:int = int(_loc2_.length);
         while(_loc3_ < _loc4_)
         {
            if(!§^i§ || _loc2_[_loc3_] != this.boss)
            {
               this.§&&"§(_loc2_[_loc3_]);
            }
            _loc3_++;
         }
         super.§+$L§(param1);
         if(§^i§)
         {
            Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
            for each(_loc5_ in param1)
            {
               for each(_loc6_ in _loc5_.§1!n§())
               {
                  _loc6_.buffs.place(new §0"u§());
               }
            }
         }
      }
      
      private function §&&"§(param1:§+%]§, param2:Boolean = false) : void
      {
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         var _loc3_:Boolean = §<#A§();
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_1:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc3_ ? 0.75 : 1),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.SOUL_GUN,0.8,3),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON),new §>%Q§(§+%z§.CROSSBOW,0.7,_loc3_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 1.15 : 0.2,2),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         var _temp_5:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc3_ ? 0.75 : 1),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.SOUL_GUN,0.8,3),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON),new §>%Q§(§+%z§.CROSSBOW,0.7,_loc3_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 1.15 : 0.2,2),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         var _temp_6:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc3_ ? 0.75 : 1),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.SOUL_GUN,0.8,3),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON),new §>%Q§(§+%z§.CROSSBOW,0.7,_loc3_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 1.15 : 0.2,2),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc3_ ? 0.75 : 1),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.SOUL_GUN,0.8,3),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON),new §>%Q§(§+%z§.CROSSBOW,0.7,_loc3_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.BLIZZARD,_loc3_ ? 1.15 : 0.2,2),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)],99,false);
         if(_loc3_)
         {
            §§push(param1.aiArsenal);
            var _temp_11:* = new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.6,1),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.6,1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.85,2),new §>%Q§(§+%z§.§;%Z§,0.1,1),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,param2 ? 0.7 : 0.5,2),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,param2 ? 0.7 : 0.5,2)];
            var _temp_14:* = new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.6,1),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.6,1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.85,2),new §>%Q§(§+%z§.§;%Z§,0.1,1),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,param2 ? 0.7 : 0.5,2),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,param2 ? 0.7 : 0.5,2)];
            var _temp_15:* = new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.6,1),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.6,1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.85,2),new §>%Q§(§+%z§.§;%Z§,0.1,1),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,param2 ? 0.7 : 0.5,2),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,param2 ? 0.7 : 0.5,2)];
            §§pop().addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.6,1),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.6,1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.85,2),new §>%Q§(§+%z§.§;%Z§,0.1,1),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,param2 ? 0.7 : 0.5,2),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,param2 ? 0.7 : 0.5,2)],99);
            if(param2)
            {
               param1.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.PLASMAGUN,0.5),new §>%Q§(§+%z§.PUPPET_U2B_GHOSTLY,0.2,2),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.6,2),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.6,2),new §>%Q§(§+%z§.FROST_STASIS,0.05,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1,30)],99);
            }
            else
            {
               param1.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.FROST_STASIS,0.04,1)],99);
            }
         }
         §-#M§.§&"r§(param1);
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(param1.unit.squad.isAi())
         {
            param1.unit.buffs.place(new §0"u§());
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:int = 0;
         super.§ "a§(param1,param2);
         if(!this.boss.disposed && param2.squad.getTeamId() != this.boss.squad.getTeamId())
         {
            if(param1 > 1)
            {
               this.§,"]§();
               Application.scene.addEventListener(§0%v§.DAMAGE,this.§%n§);
            }
         }
         if(param2.squad.getTeamId() == this.boss.squad.getTeamId() && param2 != this.boss && (!§^i§ || param2.§4!R§(this.boss)))
         {
            _loc3_ = int(Application.scene.§@$I§.§;%a§.§"L§([§`!g§]).length);
            if(_loc3_ < §-%I§)
            {
               this.§6"u§(param2);
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(param1 > 1)
         {
            this.§8"b§();
            Application.scene.removeEventListener(§0%v§.DAMAGE,this.§%n§);
         }
      }
      
      private function §%n§(param1:DamageEvent) : void
      {
         if(Boolean(param1.source) && Boolean(param1.source is §-#f§) && param1.victim == §8"%§.§?!W§.§4"m§.activeUnit)
         {
            this.§8"b§();
         }
      }
      
      private function §,"]§() : void
      {
         this.§3%Y§.reset();
         this.§ "Q§ = new FrameTimer(10);
         this.§ "Q§.addEventListener(FrameTimerEvent.§8$`§,this.§9d§);
         this.§ "Q§.start();
      }
      
      private function §8"b§() : void
      {
         var _loc1_:Vector.<§&"T§> = null;
         var _loc2_:§-#f§ = null;
         if(Boolean(this.§ "Q§) && this.§ "Q§.running)
         {
            _loc1_ = Application.scene.§@$I§.§;%a§.§"L§([§-#f§]);
            for each(_loc2_ in _loc1_)
            {
               _loc2_.disposed = true;
            }
            this.§ "Q§.stop();
            this.§ "Q§ = null;
         }
      }
      
      private function §9d§(param1:FrameTimerEvent) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:§5$n§ = null;
         var _loc5_:int = 0;
         var _loc2_:§+%]§ = §4"m§.activeUnit;
         if(Boolean(param1.iterations > 8 && !this.boss.disposed && _loc2_ && !_loc2_.disposed && _loc2_.stable) && Boolean(§4"m§.§#"G§()) && this.§3%Y§.tick())
         {
            _loc3_ = §6#A§.§!&6§("PoisonSporeExplode");
            _loc4_ = §5$n§.§<#=§("AmFreezingBazooka",§!!G§,§>&3§,§,"9§);
            _loc5_ = §,m§ - 15 - _loc3_.totalFrames;
            new §-#f§(_loc3_,this.boss,_loc2_.x,_loc2_.y + §<H§.§-#C§,_loc4_,_loc5_,§^i§);
         }
      }
      
      private function §6"u§(param1:§+%]§) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Point = §-#M§.§,#e§(120,true,40);
         if(_loc2_)
         {
            _loc3_ = param1.§+!b§().getId() == §]!E§.TOTEM_FIRE ? §`!g§.FIRE : §`!g§.POISON;
            new §`!g§(param1,_loc2_.x,_loc2_.y - 5,_loc3_,§^i§);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(§^i§)
         {
            Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         }
      }
   }
}

