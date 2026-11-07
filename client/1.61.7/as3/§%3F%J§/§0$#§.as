package §?%J§
{
   import § "L§.§`#r§;
   import § "d§.§,!c§;
   import § $q§.§3U§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"% §.LevelUpDialog;
   import §"%H§.*;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §#%!§.§7V§;
   import §#%!§.§[%U§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%$!§.§9$p§;
   import §%L§.§%%w§;
   import §&"R§.*;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §+%S§.§ #R§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2B§.§8"n§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4$b§.§6!G§;
   import §4%_§.§3§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §8#<§.§!#^§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §;#O§.§+%7§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="?§.§ %#§;
   import §="?§.§`$F§;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$K§.§!"t§;
   import §?$K§.§3#j§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import com.greensock.TweenMax;
   import com.greensock.loading.core.*;
   import config.§5%T§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.client.StartBattle;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class §0$#§ extends §-"o§
   {
      
      private static const §6U§:uint = 100;
      
      private static const §7"a§:uint = 35;
      
      private static const §5!m§:uint = 15;
      
      private static const §!%Q§:uint = §!#^§.MIRAGE + 6;
      
      private var boss:§+%]§;
      
      private var §,#1§:§5$n§;
      
      private var §7&?§:§`$F§;
      
      private var stats:§,!c§;
      
      private var squad:§"Z§;
      
      private var §0%$§:Function;
      
      public function §0$#§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("devotee.swf");
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.§8"7§).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var mainTeam:Function;
         var aiTeams:Vector.<§-!`§>;
         var playerSquads:Vector.<§"Z§> = param1;
         var maxLevel:uint = param2;
         var unitCount:uint = param3;
         this.stats = new §,!c§(5,1 + unitCount * 0.2,1,playerSquads);
         mainTeam = function():UserProfile
         {
            return UserProfile.§'#3§(§0$N§.BOSS_DEVOTEE_NAME,stats.level * (1 + unitCount * 0.2),Race.ALIEN,1200 + maxLevel * ((§2a§ ? 25 : 30) + (unitCount - 1) * 13),stats.level * 3,stats.level * 3,§,$O§.§="F§,§!%Q§,§5%T§.§]"2§);
         };
         this.§0%$§ = function():UserProfile
         {
            var _loc1_:uint = §,!c§.§=$k§(playerSquads);
            return UserProfile.§'#3§(§0$N§.BOSS_DEVOTEE_MINION_NAME,stats.level * 1.5,Race.ALIEN,800 + maxLevel * (13 + (_loc1_ - 1) * 4),stats.level * 2,stats.level * 2,§,$O§.§##z§,§!%Q§,§5%T§.§##Y§);
         };
         aiTeams = new Vector.<§-!`§>(0);
         aiTeams.push(new §-!`§(§0$N§.BOSS_DEVOTEE_NAME,[mainTeam()]));
         return aiTeams;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.squad = param1[0];
         var _loc2_:Vector.<§+%]§> = param1[0].§1!n§();
         var _loc3_:§+%]§ = _loc2_[0];
         var _loc4_:Vector.<§>%Q§> = this.§]d§();
         _loc4_.push(new §>%Q§(§+%z§.FORCE_FIELD,0.1,1));
         _loc4_.push(new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.6));
         _loc4_.push(new §>%Q§(§+%z§.BUNKER_BUSTER_UPG_2,0.15));
         _loc4_.push(new §>%Q§(§+%z§.§<!;§,0.15));
         _loc4_.push(new §>%Q§(§+%z§.PUPPET,0.1));
         _loc3_.§7"i§(null);
         _loc3_.§;"U§(null);
         §-#M§.§&"r§(_loc3_);
         _loc3_.buffs.§6C§(§`""§.NAME);
         _loc3_.buffs.place(new §!"t§());
         this.§;$`§(_loc3_,_loc4_);
         _loc3_.§,#x§(§,$O§.§="F§);
         this.boss = _loc3_;
         this.boss.addEventListener(§0%v§.DISPOSED,this.§&$Q§);
         super.§+$L§(param1);
         this.§,#1§ = new §5$n§();
         this.§,#1§.damageRadius = new §&$2§(§7"a§);
         this.§,#1§.explosionRadius = new §&$2§(§5!m§);
         this.§,#1§.damage = new §&$2§(§6U§ * (§2a§ ? 1 : 1.5));
      }
      
      private function §]d§() : Vector.<§>%Q§>
      {
         var _temp_12:* = new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,1),new §>%Q§(§+%z§.PLASMAGUN,0.8),new §>%Q§(§+%z§.§[$X§,0.7),new §>%Q§(§+%z§.BLIZZARD,0.5),new §>%Q§(§+%z§.DEEP_FREEZE,0.3),new §>%Q§(§+%z§.ROBO_PIRANHA,0.15,2),new §>%Q§(§+%z§.GUARDING_BOT,0.2),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.2),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.2),new §>%Q§(§+%z§.ALCHEMIST_FLASK,0.1,1),new §>%Q§(§+%z§.BOULDER_UPG_2,0.1,1),new §>%Q§(§+%z§.STICKY_MINE,0.1),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.2),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.2),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.1),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.1),new §>%Q§(§+%z§.SHOCKER_UPG_2,0.2),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1,0.1),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1B,0.1),new §>%Q§(§+%z§.BAT_UPG_2A,0.1),new §>%Q§(§+%z§.BAT_UPG_2B,0.1),new §>%Q§(§+%z§.ANTITOXIN,0.2),new §>%Q§(§+%z§.BANDAGE,0.2),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.2),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.2)];
         var _temp_23:* = new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,1),new §>%Q§(§+%z§.PLASMAGUN,0.8),new §>%Q§(§+%z§.§[$X§,0.7),new §>%Q§(§+%z§.BLIZZARD,0.5),new §>%Q§(§+%z§.DEEP_FREEZE,0.3),new §>%Q§(§+%z§.ROBO_PIRANHA,0.15,2),new §>%Q§(§+%z§.GUARDING_BOT,0.2),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.2),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.2),new §>%Q§(§+%z§.ALCHEMIST_FLASK,0.1,1),new §>%Q§(§+%z§.BOULDER_UPG_2,0.1,1),new §>%Q§(§+%z§.STICKY_MINE,0.1),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.2),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.2),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.1),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.1),new §>%Q§(§+%z§.SHOCKER_UPG_2,0.2),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1,0.1),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1B,0.1),new §>%Q§(§+%z§.BAT_UPG_2A,0.1),new §>%Q§(§+%z§.BAT_UPG_2B,0.1),new §>%Q§(§+%z§.ANTITOXIN,0.2),new §>%Q§(§+%z§.BANDAGE,0.2),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.2),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.2)];
         return new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,1),new §>%Q§(§+%z§.PLASMAGUN,0.8),new §>%Q§(§+%z§.§[$X§,0.7),new §>%Q§(§+%z§.BLIZZARD,0.5),new §>%Q§(§+%z§.DEEP_FREEZE,0.3),new §>%Q§(§+%z§.ROBO_PIRANHA,0.15,2),new §>%Q§(§+%z§.GUARDING_BOT,0.2),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.2),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.2),new §>%Q§(§+%z§.ALCHEMIST_FLASK,0.1,1),new §>%Q§(§+%z§.BOULDER_UPG_2,0.1,1),new §>%Q§(§+%z§.STICKY_MINE,0.1),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.2),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.2),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.1),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.1),new §>%Q§(§+%z§.SHOCKER_UPG_2,0.2),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1,0.1),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1B,0.1),new §>%Q§(§+%z§.BAT_UPG_2A,0.1),new §>%Q§(§+%z§.BAT_UPG_2B,0.1),new §>%Q§(§+%z§.ANTITOXIN,0.2),new §>%Q§(§+%z§.BANDAGE,0.2),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.2),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.2)];
      }
      
      private function §2!P§(param1:§+%]§) : void
      {
         param1.§;"U§(null);
         param1.buffs.place(new §3#j§());
         param1.§0!e§ = false;
         var _loc2_:Vector.<§>%Q§> = this.§]d§();
         _loc2_.push(new §>%Q§(§+%z§.§6&8§,0.1));
         _loc2_.push(new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.1));
         _loc2_.push(new §>%Q§(§+%z§.PARASITE_UPG_2,0.1));
         _loc2_.push(new §>%Q§(§+%z§.VILE_PUMPKIN,0.1));
         _loc2_.push(new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2A,0.2));
         _loc2_.push(new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_2B,0.2));
         _loc2_.push(new §>%Q§(§+%z§.§7&E§,0.2));
         _loc2_.push(new §>%Q§(§+%z§.VACUUM_GRENADE,0.3));
         _loc2_.push(new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_2,0.3));
         _loc2_.push(new §>%Q§(§+%z§.AK_47_UPG_2B_MOROZKO,0.3));
         _loc2_.push(new §>%Q§(§+%z§.HANDICRAFTED_RIFLE,0.15));
         _loc2_.push(new §>%Q§(§+%z§.DOCTOR_BAG,0.2,1));
         _loc2_.push(new §>%Q§(§+%z§.ADRENALINE,0.2,1));
         _loc2_.push(new §>%Q§(§+%z§.ANTIDOTE,0.2,1));
         this.§;$`§(param1,_loc2_);
      }
      
      private function §;$`§(param1:§+%]§, param2:Vector.<§>%Q§>) : void
      {
         param1.aiArsenal = new §,%8§(param2,uint.MAX_VALUE,false);
         param1.aiMissFactor = 0;
         param1.aiShotPower = 6;
         param1.§;"U§(§<$c§.§"$h§(§!%Q§));
      }
      
      private function §7%o§() : void
      {
         var i:int;
         var dummy:§&"T§ = null;
         var amount:int = 2 + (§2a§ ? 0 : 1);
         dummy = Application.scene.§,$z§();
         §8$a§.§%!E§(amount * 60,function():void
         {
            if(dummy)
            {
               dummy.disposed = true;
            }
         });
         i = 0;
         while(i < amount)
         {
            §8$a§.§%!E§(1 + i * 30,function():void
            {
               var point:Point = null;
               point = §-#M§.§,#e§();
               while(!point)
               {
                  point = §-#M§.§,#e§();
               }
               new § %#§(boss,point.x,point.y,function():void
               {
                  spawnUnit(point);
               });
            });
            i++;
         }
      }
      
      private function spawnUnit(param1:Point) : void
      {
         var _loc2_:§+%]§ = Race.create(this.§0%$§(),param1.x,param1.y);
         this.§2!P§(_loc2_);
         this.squad.addUnit(_loc2_);
         Application.scene.§7#o§.§"W§(_loc2_);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         super.§ "a§(param1,param2);
         if(!param2.squad.isAi())
         {
            if(§^i§)
            {
               §-#M§.§0"%§(200);
            }
            else if(!§2a§ && this.squad.§'"H§() > 1)
            {
               §-#M§.§0"%§(300);
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(!currentUnit.squad.isAi())
         {
            if(!this.boss.disposed)
            {
               this.§-!c§(currentUnit);
            }
            this.§#$=§(param1);
         }
      }
      
      private function §#$=§(param1:uint) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:§+%]§ = null;
         var _loc5_:Point = null;
         var _loc6_:int = 0;
         if(§4"m§.§=$S§().§`%?§.§8"p§ > 0 && param1 < 15)
         {
            _loc2_ = this.squad.§1!n§();
            _loc3_ = §-#M§.§]U§();
            for each(_loc4_ in _loc2_)
            {
               if(§-#M§.§%#K§(_loc4_))
               {
                  _loc5_ = §-#M§.§,#e§();
                  _loc6_ = 0;
                  while(!_loc5_ || _loc5_.y < _loc3_)
                  {
                     _loc5_ = §-#M§.§,#e§();
                     if(++_loc6_ == 5)
                     {
                        break;
                     }
                  }
                  if(_loc5_)
                  {
                     new §'$V§(_loc4_,_loc4_.x,_loc4_.y,true,_loc4_,16763904,16776960,80);
                     §<H§.§"%8§(_loc4_,_loc5_.x,_loc5_.y);
                     _loc4_.stable = false;
                     _loc4_.physicModel.stop();
                  }
               }
            }
         }
      }
      
      private function §-!c§(param1:§+%]§) : void
      {
         var dummy:§&"T§ = null;
         var target:§+%]§ = param1;
         dummy = Application.scene.§,$z§();
         this.§7&?§ = new §`$F§(this.boss,target,this.§,#1§);
         this.§7&?§.addEventListener(§0%v§.DISPOSED,function(param1:Event):void
         {
            if(dummy)
            {
               dummy.disposed = true;
            }
         });
      }
      
      private function §&$Q§(param1:Event) : void
      {
         this.boss.removeEventListener(§0%v§.DISPOSED,this.§&$Q§);
         §4"m§.§3D§.§5% §();
         this.§7%o§();
      }
      
      private function §>%=§() : void
      {
         if(this.§7&?§)
         {
            if(!this.§7&?§.disposed)
            {
               this.§7&?§.disposed = true;
            }
            this.§7&?§ = null;
         }
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc1_:§?!d§ = super.§,$j§();
         _loc1_.§`%?§ = §"%r§.BOSS_DEVOTEE;
         return _loc1_;
      }
      
      override public function clear() : void
      {
         this.boss.removeEventListener(§0%v§.DISPOSED,this.§&$Q§);
         this.boss = null;
         this.§>%=§();
      }
   }
}

