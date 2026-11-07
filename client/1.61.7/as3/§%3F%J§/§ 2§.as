package §?%J§
{
   import § !P§.*;
   import § "%§.§0$[§;
   import § "d§.§,!c§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%E§.§5%C§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&$Y§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.§-!6§;
   import §2!-§.NewUnitEvent;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2#H§.§!%C§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3#a§.§-!`§;
   import §4#`§.*;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7$1§.§=!?§;
   import §7$t§.§;#_§;
   import §9%W§.§ !@§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §9&+§.§>&5§;
   import §<%E§.§,$2§;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§6%k§;
   import §?$K§.§3#j§;
   import §?$K§.§`""§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[!`§.§8%U§;
   import §]#[§.*;
   import §]$v§.§]%_§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class § 2§ extends §-"o§
   {
      
      private var boss:§+%]§;
      
      private var map:§9$Z§;
      
      private var enemySquads:Vector.<§"Z§>;
      
      private var §`!'§:Vector.<§=!?§> = new Vector.<§=!?§>(0);
      
      public function § 2§(param1:Boolean = false)
      {
         super(param1);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = null;
         var _loc5_:uint = 0;
         _loc4_ = new §,!c§(0,0,0,param1);
         _loc5_ = 5 + (_loc4_.§?"-§ + _loc4_.level) / 4;
         var _loc6_:§-!`§ = new §-!`§(§0$N§.§%! §("TEAM_NAME_WIND1"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_WIND1"),5 + _loc5_ * 2,Race.§+&8§,230 + _loc5_ * 39,_loc5_ * 2,10 + _loc5_ * 2,§,$O§.BOSS_WIND_MASTER),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_WIND2"),_loc5_ * 2,Race.§"$H§,212 + _loc5_ * 29,_loc5_ * 1.8,_loc5_ * 2.1,§,$O§.§0!w§)]);
         var _loc7_:Vector.<§-!`§> = new Vector.<§-!`§>(0);
         if(§^i§)
         {
            _loc7_.push(_loc6_);
         }
         else
         {
            _loc7_.push(_loc6_);
            _loc7_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_WIND2"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_WIND3"),_loc5_ * 1.2,Race.§+#T§,200 + 18 * _loc5_,_loc5_,1.3 * _loc5_,§,$O§.ELEGANT_SAMURAI),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_WIND3"),_loc5_ * 1.2,Race.§+#T§,180 + 19 * _loc5_,1.15 * _loc5_,1.15 * _loc5_,§,$O§.SAMURAI),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_WIND3"),_loc5_ * 1.2,Race.§ "w§,150 + 20 * _loc5_,1.3 * _loc5_,_loc5_,§,$O§.SAMURAI)]));
         }
         return _loc7_;
      }
      
      public function setMap(param1:§9$Z§) : void
      {
         this.map = param1;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc6_:§"Z§ = null;
         var _loc7_:§+%]§ = null;
         var _loc8_:Vector.<§+%]§> = null;
         this.enemySquads = param1;
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         var _loc3_:Vector.<§+%]§> = param1[0].§1!n§();
         this.boss = _loc3_[0];
         for each(_loc4_ in _loc3_)
         {
            §§push(_loc4_);
            §§push(§§findproperty(§,%8§));
            var _temp_2:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.§ %L§,0.4),new §>%Q§(§+%z§.§^&6§,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.BANDAGE,0.6,2),new §>%Q§(§+%z§.ANTITOXIN,0.6,2),new §>%Q§(§+%z§.BLIZZARD,_loc2_ ? (_loc4_ == this.boss ? 0.9 : 0.85) : 0.3),new §>%Q§(§+%z§.BUNKER_BUSTER,0.3)];
            var _temp_3:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.§ %L§,0.4),new §>%Q§(§+%z§.§^&6§,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.BANDAGE,0.6,2),new §>%Q§(§+%z§.ANTITOXIN,0.6,2),new §>%Q§(§+%z§.BLIZZARD,_loc2_ ? (_loc4_ == this.boss ? 0.9 : 0.85) : 0.3),new §>%Q§(§+%z§.BUNKER_BUSTER,0.3)];
            var _temp_5:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.§ %L§,0.4),new §>%Q§(§+%z§.§^&6§,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.BANDAGE,0.6,2),new §>%Q§(§+%z§.ANTITOXIN,0.6,2),new §>%Q§(§+%z§.BLIZZARD,_loc2_ ? (_loc4_ == this.boss ? 0.9 : 0.85) : 0.3),new §>%Q§(§+%z§.BUNKER_BUSTER,0.3)];
            var _temp_8:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.§ %L§,0.4),new §>%Q§(§+%z§.§^&6§,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.BANDAGE,0.6,2),new §>%Q§(§+%z§.ANTITOXIN,0.6,2),new §>%Q§(§+%z§.BLIZZARD,_loc2_ ? (_loc4_ == this.boss ? 0.9 : 0.85) : 0.3),new §>%Q§(§+%z§.BUNKER_BUSTER,0.3)];
            §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2A_RADIUS,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.§ %L§,0.4),new §>%Q§(§+%z§.§^&6§,_loc2_ ? 0.8 : 1),new §>%Q§(§+%z§.BANDAGE,0.6,2),new §>%Q§(§+%z§.ANTITOXIN,0.6,2),new §>%Q§(§+%z§.BLIZZARD,_loc2_ ? (_loc4_ == this.boss ? 0.9 : 0.85) : 0.3),new §>%Q§(§+%z§.BUNKER_BUSTER,0.3)]);
            if(!§^i§)
            {
               _loc4_.buffs.place(new §`""§());
            }
         }
         this.boss.buffs.place(new §3#j§());
         this.boss.addEventListener(§0%v§.DISPOSED,this.§-%H§);
         if(_loc2_)
         {
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.5,1),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.6),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.7)],uint.MAX_VALUE);
            _loc7_ = _loc3_[1];
            _loc7_.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.5,1)],uint.MAX_VALUE);
         }
         var _loc5_:int = 0;
         while(_loc5_ < this.map.§0$D§.length)
         {
            this.§`!'§[_loc5_] = new §=!?§(this.boss,this.map.§0$D§[_loc5_].x,this.map.§0$D§[_loc5_].y,§'%_§.getWeapon(§+%z§.GUARDING_BOT).§4!J§().clone(),false);
            this.§`!'§[_loc5_].addEventListener(§0%v§.§^$3§,this.§9&5§);
            _loc5_++;
         }
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§6E§);
         super.§+$L§(param1);
         for each(_loc6_ in param1)
         {
            _loc8_ = _loc6_.§1!n§();
            for each(_loc4_ in _loc8_)
            {
               _loc4_.addEventListener(§0%v§.§^$3§,this.onSink);
            }
         }
         Application.scene.weather = §0&$§.§`#@§;
      }
      
      private function §6E§(param1:NewUnitEvent = null) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         if(!param1)
         {
            _loc2_ = §4"m§.§6"M§(this.boss);
            for each(_loc3_ in _loc2_)
            {
               _loc3_.physParams.addForce(§]%G§.§-4§);
            }
         }
         else if(!param1.unit.disposed && !param1.unit.squad.isAi())
         {
            param1.unit.physParams.addForce(§]%G§.§-4§);
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            this.§6E§();
         }
         if(!this.boss.disposed && !§4"m§.§;#l§())
         {
            §]%G§.§!%7§(-600);
         }
         else
         {
            §]%G§.§!%7§(randomSeed.§,!q§(-200,200));
         }
      }
      
      private function §-%H§(param1:Event) : void
      {
         var _loc3_:§+%]§ = null;
         if(Application.scene)
         {
            Application.scene.weather = §0&$§.§]$7§;
         }
         var _loc2_:Vector.<§+%]§> = §4"m§.§6"M§(this.boss);
         for each(_loc3_ in _loc2_)
         {
            _loc3_.physParams.§"%<§(§]%G§.§0#m§);
         }
      }
      
      private function onSink(param1:Event) : void
      {
         dispatchEvent(new §7%K§(BossAchieves.WIND_MASTER_DONT_DROWN_ENEMIES));
      }
      
      private function §9&5§(param1:Event) : void
      {
         dispatchEvent(new §7%K§(BossAchieves.WIND_MASTER_DROWN_GUARDIANS));
      }
      
      override public function clear() : void
      {
         var _loc1_:§"Z§ = null;
         var _loc2_:§=!?§ = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         this.boss.removeEventListener(§0%v§.DISPOSED,this.§-%H§);
         for each(_loc1_ in this.enemySquads)
         {
            _loc3_ = _loc1_.§1!n§();
            for each(_loc4_ in _loc3_)
            {
               _loc4_.removeEventListener(§0%v§.§^$3§,this.onSink);
            }
         }
         for each(_loc2_ in this.§`!'§)
         {
            _loc2_.removeEventListener(§0%v§.§^$3§,this.§9&5§);
         }
         this.boss = null;
      }
   }
}

