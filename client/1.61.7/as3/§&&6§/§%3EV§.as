package §&&6§
{
   import § "d§.§,!c§;
   import § &5§.§!$#§;
   import § &5§.§%$O§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§;!4§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!§.§8$Y§;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!0§.§%$t§;
   import §2!0§.§'$x§;
   import §2!0§.§-"Y§;
   import §2!0§.§=&%§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<K§.RankTabProgress;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$L§.§0"-§;
   import §?>§.§]!V§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^4§.§]"8§;
   import §`#x§.§"$r§;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import config.§5%T§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.globalization.DateTimeFormatter;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §>V§ extends §-"o§
   {
      
      private static const §["N§:§&$2§ = new §&$2§(50);
      
      private static const §?!G§:§&$2§ = new §&$2§(25);
      
      private static const §,#8§:int = 54;
      
      private static const SCALE_OBELISK:Number = 0.4;
      
      private var §7""§:§&$2§ = new §&$2§(0);
      
      private var obelisk:§&"T§;
      
      private var boss:§+%]§;
      
      public function §>V§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("paladin.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(13,1.3,0.9,param1);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.BOSS_PALADIN_NAME,[UserProfile.§'#3§(§0$N§.BOSS_PALADIN_NAME,_loc4_.level * 1.2,Race.§1"^§,500 + 15 * _loc4_.§?"-§ + 4 * _loc4_.§>$m§,_loc4_.level * 1.05,_loc4_.level * 1.4,§,$O§.BOSS_PALADIN,§]!E§.PALADIN_SWORD,§5%T§.§6I§)])];
         return new <§-!`§>[new §-!`§(§0$N§.BOSS_PALADIN_NAME,[UserProfile.§'#3§(§0$N§.BOSS_PALADIN_NAME,_loc4_.level * 1.2,Race.§1"^§,500 + 15 * _loc4_.§?"-§ + 4 * _loc4_.§>$m§,_loc4_.level * 1.05,_loc4_.level * 1.4,§,$O§.BOSS_PALADIN,§]!E§.PALADIN_SWORD,§5%T§.§6I§)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = §+%]§(param1[0].§1!n§()[0]);
         this.boss.aiMissFactor = 1;
         this.boss.aiShotPower = 5;
         this.boss.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.9),new §>%Q§(§+%z§.HOLY_GRENADE,0.1),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.5),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,0.5)]);
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         if(_loc2_)
         {
            this.boss.aiArsenal.subtractWeapons([§+%z§.CARPET_BAZOOKA,§+%z§.CARPET_BAZOOKA_UPG_1,§+%z§.HOLY_GRENADE,§+%z§.HOLY_GRENADE_UPG_1]);
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.6),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.4),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2A_EYE,0.5),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.5),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.7),new §>%Q§(§+%z§.RED_HOT_HAMMER,0.3),new §>%Q§(§+%z§.BLIZZARD,0.5)],uint.MAX_VALUE);
         }
         this.boss.addEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         this.§7""§.value = §-q§.§8$G§(§?!G§.value,this.boss.record.stats.§8+§.value);
         §-#M§.§&"r§(this.boss);
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var turnNumber:uint = param1;
         var currentUnit:§+%]§ = param2;
         super.§ "a§(turnNumber,currentUnit);
         if(currentUnit == this.boss)
         {
            this.§ %I§();
            if(Boolean(this.obelisk) && Boolean(!this.obelisk.disposed) && !this.boss.disposed)
            {
               §1"-§.§8"l§(this.boss,"PaladinHeal",38,function():void
               {
                  boss.attributes.hp.§#1§(§7""§.value,false,0,null,§8$Y§.§6"y§);
               },true);
               this.§2%p§();
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(currentUnit == this.boss)
         {
            this.§<#E§();
         }
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:UserProfile = null;
         var _loc4_:§"Z§ = null;
         this.§,[§();
         if(Boolean(this.obelisk) && !this.obelisk.disposed)
         {
            _loc2_ = new Point(this.obelisk.x,this.obelisk.y);
            §%$O§.§3%R§(Application.scene,_loc2_.x,_loc2_.y);
            §1"-§.explode(§;n§.§8!-§,_loc2_.x,_loc2_.y,40);
            _loc3_ = this.boss.record.§ "P§(true);
            _loc3_.stats.§8+§.value = this.§7""§.value * 2;
            _loc4_ = this.boss.squad;
            this.boss = Race.create(_loc3_,_loc2_.x,_loc2_.y);
            _loc4_.addUnit(this.boss);
            if(_loc4_.§1!n§().length > 0)
            {
               this.§+$L§(new <§"Z§>[_loc4_]);
            }
            Application.scene.§7#o§.§"W§(this.boss);
         }
      }
      
      private function § %I§() : void
      {
         var enemies:Vector.<§+%]§> = null;
         var enemy:§+%]§ = null;
         var selectedEnemy:§+%]§ = null;
         enemies = §4"m§.§6"M§(this.boss);
         for each(enemy in enemies)
         {
            if(!selectedEnemy || selectedEnemy.hp < enemy.hp)
            {
               selectedEnemy = enemy;
            }
         }
         if(selectedEnemy)
         {
            §1"-§.§8"l§(selectedEnemy,"SwordJustice",52,function():void
            {
               swordDamage(selectedEnemy);
               for each(enemy in enemies)
               {
                  if(!enemy.disposed && enemy != selectedEnemy && §-q§.distance(selectedEnemy.x,selectedEnemy.y,enemy.x,enemy.y) <= 12)
                  {
                     swordDamage(enemy);
                  }
               }
            },true);
         }
      }
      
      private function swordDamage(param1:§+%]§) : void
      {
         var _loc2_:int = 0;
         if(!param1.disposed)
         {
            _loc2_ = §-q§.§8$G§(§["N§.value,param1.hp);
            §'"$§.§]#I§(this.boss,param1.x,param1.y,param1,_loc2_,0,0,false,true,§&!E§.§=$-§);
            if(!param1.disposed)
            {
               param1.setSpeedXY(0,-5);
            }
         }
      }
      
      private function §<#E§() : void
      {
         var position:Point = null;
         var clip:MovieClip = null;
         position = §-#M§.§,#e§(80);
         if(position)
         {
            this.obelisk = new §&"T§();
            this.obelisk.physParams.addForce(§]%G§.§5$r§);
            this.obelisk.physParams.§5N§ = §9%1§.§&!A§;
            this.obelisk.physParams.§0#0§ = §<#`§.§&!c§;
            clip = §6#A§.§!&6§("Obelisk_apper");
            clip.scaleX = clip.scaleY = SCALE_OBELISK;
            this.obelisk.clip = clip;
            this.obelisk.x = position.x;
            this.obelisk.y = position.y;
            this.obelisk.canBeDamaged = true;
            this.obelisk.addEventListener(§0%v§.§&!D§,this.§8!0§);
            this.obelisk.addEventListener(§0%v§.DISPOSED,this.§2#g§,false,§[!F§.§6#@§);
            Application.scene.§@$I§.§1$+§(this.obelisk);
            §8$a§.§%!E§(§,#8§,function():void
            {
               var _loc1_:MovieClip = null;
               if(Boolean(obelisk) && !obelisk.disposed)
               {
                  _loc1_ = §6#A§.§!&6§("Obelisk_idle");
                  _loc1_.scaleX = _loc1_.scaleY = SCALE_OBELISK;
                  obelisk.swapClip(_loc1_);
               }
            });
         }
      }
      
      private function §2#g§(param1:Event) : void
      {
         var obeliskFading:§&"T§ = null;
         var e:Event = param1;
         obeliskFading = new §&"T§();
         var clip:MovieClip = §6#A§.§!&6§("Obelisk_fading");
         clip.scaleX = clip.scaleY = SCALE_OBELISK;
         obeliskFading.clip = clip;
         obeliskFading.x = this.obelisk.x;
         obeliskFading.y = this.obelisk.y;
         Application.scene.§@$I§.§1$+§(obeliskFading);
         §8$a§.§%!E§(60,function():void
         {
            obeliskFading.disposed = true;
         });
         dispatchEvent(e);
      }
      
      private function §8!0§(param1:DamageEvent) : void
      {
         param1.victim.disposed = true;
      }
      
      public function getBoss() : §+%]§
      {
         return this.boss;
      }
      
      private function §2%p§() : void
      {
         if(this.obelisk)
         {
            if(this.obelisk.hasEventListener(§0%v§.§&!D§))
            {
               this.obelisk.removeEventListener(§0%v§.§&!D§,this.§8!0§);
            }
            if(this.obelisk.hasEventListener(§0%v§.DISPOSED))
            {
               this.obelisk.removeEventListener(§0%v§.DISPOSED,this.§2#g§);
            }
            this.obelisk.disposed = true;
            this.obelisk = null;
         }
      }
      
      private function §,[§() : void
      {
         if(this.boss)
         {
            this.boss.removeEventListener(§0%v§.DISPOSED,this.onBossDisposed);
         }
      }
      
      override public function clear() : void
      {
         this.§2%p§();
         this.§,[§();
         this.boss = null;
      }
   }
}

