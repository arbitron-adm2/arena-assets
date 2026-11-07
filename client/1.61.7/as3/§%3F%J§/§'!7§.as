package §?%J§
{
   import § "d§.§,!c§;
   import § &5§.§9X§;
   import §!$D§.§2$^§;
   import §!L§.*;
   import §"!C§.§3#n§;
   import §"$+§.*;
   import §"%H§.§6$3§;
   import §#",§.§?§;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §#k§.§9$v§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%%A§.§6"A§;
   import §&!?§.§"_§;
   import §&!@§.§>"B§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §+%S§.§=t§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!§.*;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2"$§.*;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§6$V§;
   import §4$b§.§2m§;
   import §4'§.§`"q§;
   import §5!9§.§6$,§;
   import §6$0§.§=!N§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §8$V§.§]!i§;
   import §8$V§.§`"c§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §<%E§.§6$=§;
   import §<%E§.§;!y§;
   import §<%k§.*;
   import §=!p§.§8#x§;
   import §=#g§.§!"X§;
   import §=&!§.§]$d§;
   import §=1§.*;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §?$K§.§!"t§;
   import §?$K§.§,$[§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^#o§.§%%2§;
   import §`#x§.§"$r§;
   import §`%&§.§,%§;
   import §`%&§.§5$1§;
   import §`%&§.§8U§;
   import §`%c§.§8"6§;
   import api.com.adobe.json.JSON;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.game.rules.§;!f§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetMercenariesDefs;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §'!7§ extends §-"o§
   {
      
      private static const §@!3§:§&$2§ = new §&$2§(12);
      
      private static const § $5§:§&$2§ = new §&$2§(38);
      
      private static const §>$C§:§&$2§ = new §&$2§(30);
      
      private static const §`[§:§&$2§ = new §&$2§(30);
      
      private const §3$j§:§&$2§ = new §&$2§(0);
      
      private var boss:§+%]§;
      
      private var §="q§:§"Z§;
      
      private var §4&@§:§6"A§;
      
      private var §5j§:§+%]§;
      
      private var §0#3§:§6$V§;
      
      private var §7$ §:Boolean;
      
      private var §'"I§:Boolean;
      
      public function §'!7§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("archbot.swf");
         var _loc2_:int = §6&'§.getInstance().getRecord(§+#N§.§@"f§).getId();
         §2a§ = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = null;
         _loc4_ = new §,!c§(5,1.2,1,param1);
         var _loc5_:Vector.<§-!`§> = new Vector.<§-!`§>(0);
         var _loc6_:UserProfile = UserProfile.§'#3§(§0$N§.BOSS_ARCHBOT_NAME,_loc4_.level,Race.§-K§,920 + 7 * _loc4_.§?"-§ + 20 * _loc4_.§3"`§,_loc4_.level * 1.1,_loc4_.level * 1.5,§,$O§.§[&2§,§]!E§.BOSS_ARCHBOT_STUFF);
         if(§^i§)
         {
            _loc5_.push(new §-!`§(§0$N§.BOSS_ARCHBOT_NAME,[_loc6_,this.§8&=§(_loc4_),this.§8&=§(_loc4_)]));
         }
         else
         {
            _loc5_.push(new §-!`§(§0$N§.BOSS_ARCHBOT_NAME,[_loc6_]),new §-!`§(§0$N§.BOSS_ARCHBOT_ASISSTANT_TEAM,[this.§8&=§(_loc4_),this.§8&=§(_loc4_),this.§8&=§(_loc4_),this.§8&=§(_loc4_)]));
         }
         return _loc5_;
      }
      
      private function §8&=§(param1:§,!c§) : UserProfile
      {
         return UserProfile.§'#3§(§0$N§.BOSS_ARCHBOT_GOLEM,param1.level * 0.9,Race.§-K§,360 + 3 * param1.§?"-§ + 10 * param1.§3"`§,param1.level * 0.8,param1.level * 1.2,§,$O§.BOMB,§]!E§.TOTEM_POISON,82);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = param1[0].§1!n§()[0];
         this.§0!I§(this.boss);
         this.boss.buffs.place(new §!"t§(100));
         this.boss.buffs.place(new §,$[§());
         if(!§^i§)
         {
            this.boss.addEventListener(§0%v§.DISPOSED,this.onBossDisposed);
            this.boss.addEventListener(§0%v§.NEW_GUARDIAN_DRONE_ADDED,this.§!$S§);
         }
         this.§="q§ = §^i§ ? param1[0] : param1[1];
         var _loc2_:Vector.<§+%]§> = this.§="q§.§1!n§();
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_.length)
         {
            if(!§^i§ || _loc2_[_loc3_] != this.boss)
            {
               this.§]$9§(_loc2_[_loc3_]);
            }
            _loc3_++;
         }
         super.§+$L§(param1);
      }
      
      private function §!$S§(param1:Event) : void
      {
         dispatchEvent(new §7%K§(§>"B§.§,!v§));
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         if(this.§="q§.§'"H§() > 0)
         {
            dispatchEvent(new §7%K§(§>"B§.§8#h§));
         }
      }
      
      private function §0!I§(param1:§+%]§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         var _temp_9:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.9),new §>%Q§(§+%z§.§?$2§,0.4),new §>%Q§(§+%z§.§8#d§,0.3),new §>%Q§(§+%z§.BLIZZARD,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2)];
         var _loc2_:Vector.<§>%Q§> = new <§>%Q§>[new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.9),new §>%Q§(§+%z§.§?$2§,0.4),new §>%Q§(§+%z§.§8#d§,0.3),new §>%Q§(§+%z§.BLIZZARD,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2)];
         if(§^i§)
         {
            _loc4_ = 0;
            _loc5_ = 0;
            switch(§8"%§.§?!W§.§^!U§().§^"g§)
            {
               case §8"e§.HARD:
                  _loc4_ = 0.4;
                  _loc5_ = 2;
                  break;
               case §8"e§.§?=§:
                  _loc4_ = 0.5;
                  _loc5_ = -1;
            }
            _loc2_.push(new §>%Q§(§+%z§.§[$A§,_loc4_,_loc5_));
         }
         param1.aiArsenal = new §,%8§(_loc2_,99);
         var _loc3_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         if(_loc3_)
         {
            param1.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8)],uint.MAX_VALUE);
         }
         §-#M§.§&"r§(param1);
      }
      
      private function §]$9§(param1:§+%]§) : void
      {
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_1:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         var _temp_2:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         var _temp_3:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         var _temp_4:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         var _temp_5:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         var _temp_8:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.GRENADE_UPG_2_STUN,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.BAZOOKA_UPG_2_CUMULATIVE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE,_loc2_ ? 0.7 : 1),new §>%Q§(§+%z§.CROSSBOW,0.7),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1)],99);
         if(_loc2_)
         {
            param1.aiArsenal.subtractWeapons([§+%z§.SNIPER_RIFLE,§+%z§.SNIPER_RIFLE_UPG_1,§+%z§.AIR_BLOCKER]);
            §§push(param1.aiArsenal);
            var _temp_17:* = new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.3),new §>%Q§(§+%z§.BLIZZARD),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.4,1),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.4,1),new §>%Q§(§+%z§.GAS_GRENADE_SHOCK,0.3,1),new §>%Q§(§+%z§.DYNAMITE_U1B_KAMIKAZE,0.7,1),new §>%Q§(§+%z§.TELEPORT,1,1)];
            §§pop().addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.3),new §>%Q§(§+%z§.BLIZZARD),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.4,1),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.4,1),new §>%Q§(§+%z§.GAS_GRENADE_SHOCK,0.3,1),new §>%Q§(§+%z§.DYNAMITE_U1B_KAMIKAZE,0.7,1),new §>%Q§(§+%z§.TELEPORT,1,1)],uint.MAX_VALUE);
         }
         §-#M§.§&"r§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         super.§ "a§(param1,param2);
         var _loc3_:Boolean = !param2.squad.isAi();
         var _loc4_:Boolean = §^i§ && param2.squad.getNumber() == this.boss.squad.getNumber() || !§^i§ && param2.squad.getTeamId() == this.boss.squad.getTeamId();
         if(_loc3_)
         {
            if(!this.§="q§.eliminated && param1 > 1)
            {
               this.§!#G§(param2);
            }
            if(!this.§>$r§ && (§^i§ && !this.§="q§.eliminated) || !§^i§ && !this.boss.disposed)
            {
               this.§%!L§();
            }
         }
         else if(_loc4_)
         {
            this.§+$i§();
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         this.§>#2§();
         this.§5$z§();
         if(!§^i§ && this.§'"I§)
         {
            if(!this.§7$ §)
            {
               dispatchEvent(new §7%K§(§>"B§.§-<§));
            }
            this.§'"I§ = false;
         }
      }
      
      private function §%!L§() : void
      {
         this.§>#2§();
         this.§4&@§ = new §6"A§(this.boss);
      }
      
      private function §+$i§() : void
      {
         if(this.§>$r§)
         {
            this.§4&@§.attack();
         }
      }
      
      private function §>#2§() : void
      {
         if(Boolean(this.§4&@§) && Boolean(this.§4&@§.isUsed) && !this.§4&@§.disposed)
         {
            this.§4&@§.hide();
         }
      }
      
      private function §!#G§(param1:§+%]§) : void
      {
         var homingFeat:§%%2§;
         var units:Vector.<§+%]§> = null;
         var unit:§+%]§ = null;
         var tn:uint = 0;
         var speed:uint = 0;
         var ammo:§6$V§ = null;
         var target:§+%]§ = param1;
         units = this.§="q§.§1!n§();
         unit = units[int(randomSeed.§,!q§(0,units.length - 1))];
         unit.addEventListener(§0%v§.§&!D§,this.§6$#§);
         this.§5j§ = unit;
         tn = Math.min(§`[§.value,this.§3$j§.value);
         speed = §@!3§.value + § $5§.value / §`[§.value * tn;
         var _loc3_:§&$2§ = this.§3$j§;
         var _loc4_:Number = _loc3_.value + 1;
         _loc3_.value = _loc4_;
         ammo = new §6$V§(this.§5j§,this.§5j§.x,this.§5j§.y,target,§>$C§.value,speed,90);
         ammo.swapClip(§6#A§.§!&6§("ArchbotSpell"));
         ammo.§^"F§(§-q§.§@$H§(ammo,target),3);
         if(!§^i§)
         {
            ammo.addEventListener(§0%v§.TARGET_HIT,this.§"%6§);
            this.§7$ § = false;
            this.§'"I§ = true;
         }
         this.§0#3§ = ammo;
         homingFeat = ammo.homingFeat;
         homingFeat.§<&E§ = 0;
         homingFeat.§`"#§ = 0;
         homingFeat.§'"x§ = 0;
         homingFeat.§<$1§ = Math.PI / 180;
         §8$a§.§%!E§(330,function onWaitAndDoHauntAmmo():void
         {
            if(!§^i§ && Boolean(ammo))
            {
               ammo.removeEventListener(§0%v§.TARGET_HIT,§"%6§);
            }
            if(Application.scene.§@$I§.§=%d§())
            {
               return;
            }
            if(!ammo || ammo.disposed)
            {
               return;
            }
            if(ammo == §0#3§)
            {
               §5$z§();
            }
            else
            {
               ammo.disposed = true;
               if(!§5j§ || §5j§ != unit)
               {
                  unit.removeEventListener(§0%v§.§&!D§,§6$#§);
               }
            }
         });
         §@%;§.play(§`!v§.§'7§);
      }
      
      private function §"%6§(param1:Event) : void
      {
         §6$V§(param1.target).removeEventListener(§0%v§.TARGET_HIT,this.§"%6§);
         this.§7$ § = true;
      }
      
      protected function §6$#§(param1:Event) : void
      {
         this.§5$z§();
      }
      
      private function §5$z§() : void
      {
         if(this.§0#3§)
         {
            if(!§^i§)
            {
               this.§0#3§.removeEventListener(§0%v§.TARGET_HIT,this.§"%6§);
            }
            this.§0#3§.disposed = true;
            this.§0#3§ = null;
            this.§5j§.removeEventListener(§0%v§.§&!D§,this.§6$#§);
         }
      }
      
      private function get §>$r§() : Boolean
      {
         return Boolean(this.§4&@§) && this.§4&@§.§;#+§;
      }
      
      override public function clear() : void
      {
         if(!§^i§)
         {
            this.boss.removeEventListener(§0%v§.DISPOSED,this.onBossDisposed);
            this.boss.removeEventListener(§0%v§.NEW_GUARDIAN_DRONE_ADDED,this.§!$S§);
         }
         super.clear();
      }
   }
}

