package §?%J§
{
   import § "d§.§,!c§;
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §&#h§.§5f§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.*;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-&5§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#8§.§6"a§;
   import §2#H§.§+$^§;
   import §2#W§.PvpChestBox;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§!%n§;
   import §4%_§.ZombieGrave;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §8#<§.§!#^§;
   import §9%W§.§!7§;
   import §9%W§.§`"y§;
   import §<!W§.*;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@"x§.*;
   import §@$v§.§%3§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §[%§.*;
   import §^#[§.§&$2§;
   import com.adobe.images.JPGEncoder;
   import config.§=%A§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.WeaponTipsPanel;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7"h§ extends §-"o§
   {
      
      private static const §1b§:uint = 15;
      
      private static const §-"h§:int = 10;
      
      private static const §&"_§:int = 5;
      
      private var boss:§+%]§;
      
      private var §1#z§:§+%]§;
      
      private var §8I§:uint;
      
      private var §["B§:uint;
      
      private var §=#D§:§,%8§;
      
      public function §7"h§(param1:Boolean = false)
      {
         super(param1);
         §5"i§ = false;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = null;
         _loc4_ = new §,!c§(13,1,0.7,param1);
         var _loc5_:Vector.<§-!`§> = new Vector.<§-!`§>(0);
         var _loc6_:UserProfile = UserProfile.§'#3§(§0$N§.BOSS_KING_DEAD_NAME,_loc4_.level,Race.§"$H§,17 * _loc4_.§?"-§ + 4 * _loc4_.§>$m§ + 420,_loc4_.level * 1,_loc4_.level * 0.25,§,$O§.BOSS_KING_DEAD,§]!E§.SKULL_STAFF);
         var _loc7_:UserProfile = UserProfile.§'#3§(§0$N§.BOT_KING_DEAD_SUMMONER,_loc4_.level,Race.§"$H§,15 * _loc4_.§?"-§ + 4 * _loc4_.§>$m§ + 190,_loc4_.level * 0.95,_loc4_.level * 0.24,§,$O§.CROWN,§!#^§.SNAKE_STAFF + 5);
         if(§^i§)
         {
            _loc5_.push(new §-!`§(§0$N§.BOSS_KING_DEAD_NAME,[_loc7_,_loc6_]));
         }
         else
         {
            _loc5_.push(new §-!`§(§0$N§.TEAM_KING_DEAD_MINIONS,[_loc7_]));
            _loc5_.push(new §-!`§(§0$N§.BOSS_KING_DEAD_NAME,[_loc6_]));
         }
         this.§8I§ = 3;
         this.§["B§ = _loc4_.level * 0.5;
         return _loc5_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         super.§+$L§(param1);
         var _loc2_:Boolean = §<#A§();
         this.boss = §^i§ ? param1[0].§1!n§()[1] : param1[1].§1!n§()[0];
         this.boss.aiMissFactor = 1;
         this.boss.aiShotPower = 5;
         §§push(this.boss);
         §§push(§§findproperty(§,%8§));
         var _temp_1:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.AK_47,0.8,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.MOLOTOV,0.7,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.5,2),new §>%Q§(§+%z§.BANDAGE,0.5,2),new §>%Q§(§+%z§.VILE_PUMPKIN,0.3,2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.2,2)];
         var _temp_2:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.AK_47,0.8,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.MOLOTOV,0.7,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.5,2),new §>%Q§(§+%z§.BANDAGE,0.5,2),new §>%Q§(§+%z§.VILE_PUMPKIN,0.3,2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.2,2)];
         var _temp_3:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.AK_47,0.8,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.MOLOTOV,0.7,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.5,2),new §>%Q§(§+%z§.BANDAGE,0.5,2),new §>%Q§(§+%z§.VILE_PUMPKIN,0.3,2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.2,2)];
         var _temp_4:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.AK_47,0.8,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.MOLOTOV,0.7,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.5,2),new §>%Q§(§+%z§.BANDAGE,0.5,2),new §>%Q§(§+%z§.VILE_PUMPKIN,0.3,2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.2,2)];
         var _temp_5:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.AK_47,0.8,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.MOLOTOV,0.7,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.5,2),new §>%Q§(§+%z§.BANDAGE,0.5,2),new §>%Q§(§+%z§.VILE_PUMPKIN,0.3,2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.2,2)];
         var _temp_6:* = new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.AK_47,0.8,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.MOLOTOV,0.7,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.5,2),new §>%Q§(§+%z§.BANDAGE,0.5,2),new §>%Q§(§+%z§.VILE_PUMPKIN,0.3,2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.2,2)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT,1,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.AK_47,0.8,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.MOLOTOV,0.7,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.5,2),new §>%Q§(§+%z§.BANDAGE,0.5,2),new §>%Q§(§+%z§.VILE_PUMPKIN,0.3,2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.2,2)],uint.MAX_VALUE,true,true);
         if(_loc2_)
         {
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.5,1),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.DOCTOR_BAG,0.9,2),new §>%Q§(§+%z§.ANTIDOTE,0.9,2),new §>%Q§(§+%z§.ADRENALINE,0.9,2),new §>%Q§(§+%z§.BLIZZARD,0.9),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.7,2),new §>%Q§(§+%z§.PARASITE_UPG_2,0.5),new §>%Q§(§+%z§.§;%Z§,0.9),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.7),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.7)],uint.MAX_VALUE);
         }
         this.boss.addEventListener(§0%v§.§&!D§,this.§?$u§);
         this.boss.buffs.place(new §3#j§());
         this.§1#z§ = param1[0].§1!n§()[0];
         this.§1#z§.aiMissFactor = 1;
         this.§1#z§.aiShotPower = 5;
         §§push(this.§1#z§);
         §§push(§§findproperty(§,%8§));
         var _temp_22:* = new <§>%Q§>[new §>%Q§(§+%z§.AK_47,0.4,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.§8#d§,0.6,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.8,3),new §>%Q§(§+%z§.BANDAGE,0.8,3),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.3,1)];
         var _temp_23:* = new <§>%Q§>[new §>%Q§(§+%z§.AK_47,0.4,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.§8#d§,0.6,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.8,3),new §>%Q§(§+%z§.BANDAGE,0.8,3),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.3,1)];
         var _temp_25:* = new <§>%Q§>[new §>%Q§(§+%z§.AK_47,0.4,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.§8#d§,0.6,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.8,3),new §>%Q§(§+%z§.BANDAGE,0.8,3),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.3,1)];
         var _temp_28:* = new <§>%Q§>[new §>%Q§(§+%z§.AK_47,0.4,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.§8#d§,0.6,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.8,3),new §>%Q§(§+%z§.BANDAGE,0.8,3),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.AK_47,0.4,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(_loc2_ ? §+%z§.SNIPER_RIFLE_UPG_3A_DINO : §+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.§!`§),new §>%Q§(§+%z§.§8#d§,0.6,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.ANTITOXIN,0.8,3),new §>%Q§(§+%z§.BANDAGE,0.8,3),new §>%Q§(§+%z§.CROSSBOW,0.5,_loc2_ ? 0 : §>%Q§.§2&"§),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.3,1)],uint.MAX_VALUE,true,true);
         if(_loc2_)
         {
            this.§1#z§.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.5,1),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.DOCTOR_BAG,0.9,2),new §>%Q§(§+%z§.ANTIDOTE,0.9,2),new §>%Q§(§+%z§.ADRENALINE,0.9,2),new §>%Q§(§+%z§.BLIZZARD,0.7),new §>%Q§(§+%z§.§[$X§,0.9),new §>%Q§(§+%z§.ENERGY_RIFLE_UPG_3,0.6),new §>%Q§(§+%z§.ION_CANNON,0.8,2),new §>%Q§(§+%z§.§?$2§,0.3),new §>%Q§(§+%z§.FROST_STASIS,0.5,2),new §>%Q§(§+%z§.§;%Z§,0.9),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.5),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.5)],uint.MAX_VALUE);
         }
         this.§1#z§.buffs.place(new §3#j§());
         this.§1#z§.addEventListener(§0%v§.§&!D§,this.§?$u§);
         this.§=#D§ = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,0.9),new §>%Q§(§+%z§.SNIPER_RIFLE,0.8),new §>%Q§(§+%z§.STICKY_GRENADE,0.8),new §>%Q§(§+%z§.RIFLE,0.6),new §>%Q§(§+%z§.§8#d§,0.6),new §>%Q§(§+%z§.BAZOOKA_UPG_1,0.4)],uint.MAX_VALUE,true,false,true);
         if(_loc2_)
         {
            this.§=#D§.subtractWeapons([§+%z§.SNIPER_RIFLE,§+%z§.SNIPER_RIFLE_UPG_1,§+%z§.SNIPER_RIFLE_UPG_2A,§+%z§.SNIPER_RIFLE_UPG_2B,§+%z§.STICKY_GRENADE,§+%z§.STICKY_GRENADE_UPG_1]);
            this.§=#D§.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.5,1),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2),new §>%Q§(§+%z§.DOCTOR_BAG,0.9,2),new §>%Q§(§+%z§.ANTIDOTE,0.9,2),new §>%Q§(§+%z§.ADRENALINE,0.9,2),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.5),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,0.5),new §>%Q§(§+%z§.AK_47_UPG_2A,0.4),new §>%Q§(§+%z§.§;%Z§,0.7),new §>%Q§(§+%z§.DYNAMITE_U1B_KAMIKAZE,0.7,1),new §>%Q§(§+%z§.TELEPORT,1,1)],uint.MAX_VALUE);
         }
         if(!§^i§)
         {
            Application.scene.§-%[§(new ColorTransform(1,1,1,1,-48,-48,-48));
            Application.scene.§6%Z§(new ColorTransform(1,1,1,1,-68,-128,-158));
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:Vector.<§+%]§> = null;
         var _loc6_:Vector.<§+%]§> = null;
         var _loc7_:§+%]§ = null;
         var _loc8_:§+%]§ = null;
         super.§ "a§(param1,param2);
         if(!this.§1#z§.disposed && param2.squad == this.§1#z§.squad)
         {
            _loc3_ = this.§<x§();
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§5&+§();
               _loc4_++;
            }
         }
         if(!this.boss.disposed && param2.squad == this.boss.squad)
         {
            _loc6_ = §8"%§.§?!W§.§4"m§.§="T§(this.boss,false,true);
            for each(_loc7_ in _loc6_)
            {
               _loc5_ = §8"%§.§?!W§.§4"m§.§6"M§();
               _loc8_ = _loc5_[int(randomSeed.§5!p§() * _loc5_.length)];
               new §!%n§(_loc7_,_loc7_.x,_loc7_.y,false,_loc8_,this.§["B§,0);
            }
         }
      }
      
      private function §<x§() : uint
      {
         var _loc1_:uint = §8"%§.§?!W§.§4"m§.§="T§(this.§1#z§).length - (this.boss.disposed ? 0 : 1);
         var _loc2_:uint = 3;
         var _loc3_:int = Math.min(int(this.§8I§ >> 1),_loc2_);
         var _loc4_:int = §^i§ ? (§8"%§.§?!W§.§^!U§().missionIds[0] == §8"%§.§?!W§.§^!U§().missionIds[1] ? int(§1b§ * 0.5) : int(§1b§ * 0.7)) : int(§1b§);
         if(_loc4_ - _loc1_ - _loc3_ < 0)
         {
            _loc3_ = _loc4_ - _loc1_;
         }
         if(_loc3_ < 0)
         {
            _loc3_ = 1;
         }
         var _temp_2:* = this;
         ++this.§8I§;
         this.§7"H§(this.§8I§,_loc1_ + _loc3_);
         return _loc3_;
      }
      
      private function §5&+§() : void
      {
         var grave:ZombieGrave = null;
         var position:Point = §-#M§.§,#e§();
         if(position != null)
         {
            grave = new ZombieGrave(this.§1#z§.record.getRace().graveType,position.x,position.y,this.§1#z§,§0$N§.BOT_KING_DEAD_MINION,this.§1#z§.record.getLevel() * 0.5,this.§1#z§.squad,this.§=#D§);
            if(§^i§)
            {
               if(§8"%§.§?!W§.§^!U§().missionIds[0] == §+#N§.§<$N§ || §8"%§.§?!W§.§^!U§().missionIds[1] == §+#N§.§<$N§)
               {
                  grave.§7##§ = function callbackOnSpawnDarkSummoner(param1:§+%]§):void
                  {
                     param1.buffs.place(new §+$^§());
                  };
               }
            }
         }
      }
      
      private function §7"H§(param1:uint, param2:uint) : void
      {
         if(§^i§)
         {
            return;
         }
         if(param1 >= §&"_§)
         {
            dispatchEvent(new §7%K§(BossAchieves.KING_DEAD_DONT_LET_RES_FIVE_TIMES));
         }
         if(param2 >= §-"h§)
         {
            dispatchEvent(new §7%K§(BossAchieves.KING_DEAD_LET_SPAWN_10_ZOMBIES));
         }
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         if(!§^i§)
         {
            dispatchEvent(param1);
         }
      }
      
      override public function clear() : void
      {
         this.boss.removeEventListener(§0%v§.§&!D§,this.§?$u§);
         this.§1#z§.removeEventListener(§0%v§.§&!D§,this.§?$u§);
         this.boss = null;
         this.§1#z§ = null;
      }
      
      public function isMinion(param1:§+%]§) : Boolean
      {
         return this.§1#z§.squad.§1!n§().indexOf(param1) > -1;
      }
   }
}

