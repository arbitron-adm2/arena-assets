package ru.pragmatix.wormix.model.bonus
{
   import § !8§.§`!d§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#7§.§+#g§;
   import §"#7§.§1"Z§;
   import §"#7§.§6"C§;
   import §"#7§.§7$]§;
   import §"#7§.§7$n§;
   import §"#7§.§7%4§;
   import §"#7§.§]#^§;
   import §"#x§.§'"$§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §#"V§.*;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §#P§.§`o§;
   import §#k§.§-#S§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%# §.§##U§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&!m§.§-$6§;
   import §&"R§.§`&7§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §+%S§.§ !!§;
   import §+%S§.§"$7§;
   import §,!f§.§0$A§;
   import §,!f§.§0v§;
   import §,!f§.§9$>§;
   import §,!f§.§`7§;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4!!§.§6$V§;
   import §4$b§.§6!G§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §6$0§.§![§;
   import §6$0§.§%$z§;
   import §6$z§.BonusStat;
   import §6$z§.BonusTrait;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!B§.§`"d§;
   import §7!B§.§`s§;
   import §7!y§.§""$§;
   import §7!y§.§%#t§;
   import §7!y§.§+!s§;
   import §7!y§.§+"d§;
   import §7!y§.§?"Z§;
   import §7!y§.§`$$§;
   import §7!y§.§`&+§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §9![§.§ !q§;
   import §9![§.§"$;§;
   import §9![§.§#$k§;
   import §9![§.§,&B§;
   import §9![§.§3"L§;
   import §9![§.§[%e§;
   import §9![§.§^§;
   import §9![§.§`#+§;
   import §9![§.§`§;
   import §9%W§.§!7§;
   import §9%k§.*;
   import §9m§.§1"#§;
   import §9m§.§2"W§;
   import §9m§.§3$7§;
   import §9m§.§6%o§;
   import §9m§.§7"M§;
   import §9m§.§>%2§;
   import §9m§.BonusInverter;
   import §9m§.§[$1§;
   import §9m§.§[$Q§;
   import §9m§.§^#M§;
   import §9m§.§`"N§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&!§.§ "^§;
   import §=&!§.§<$Z§;
   import §>!_§.*;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§8%6§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §["3§.§-%q§;
   import §["3§.§?%Q§;
   import §["3§.§@%^§;
   import §]#[§.*;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §^#o§.§%%2§;
   import §`"x§.§[a§;
   import §`#x§.*;
   import §`%&§.§5$1§;
   import §`%&§.§8U§;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import com.greensock.loading.*;
   import config.achievements.*;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.client.PumpReactionRate;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Bonus
   {
      
      private static const §?#u§:Vector.<Bonus> = new Vector.<Bonus>(0);
      
      public static const HP:Bonus = new Bonus("hp",§7$n§,§0$N§.HP,§&%C§,167660,§+"'§.§"$^§);
      
      public static const SQUAD_HP:Bonus = new Bonus("squadHp",§+!s§,§0$N§.§+k§,§&%C§,167660,§+"'§.§6$I§);
      
      public static const ATTACK:Bonus = new Bonus("attack",§6"C§,§0$N§.ATTACK,§&%C§,11730944,§+"'§.§+!1§);
      
      public static const ARMOR:Bonus = new Bonus("armor",§7%4§,§0$N§.ARMOR,§&%C§,6856467,§+"'§.§,<§);
      
      public static const SQUAD_ATTACK:Bonus = new Bonus("squadAttack",§""$§,§0$N§.§;!m§,§&%C§,11730944,§+"'§.§+"h§);
      
      public static const SQUAD_ARMOR:Bonus = new Bonus("squadArmor",§`$$§,§0$N§.§ !m§,§&%C§,6856467,§+"'§.§<%_§);
      
      public static const POISON_DAMAGE:Bonus = new Bonus("poisonDamage",BonusStat,§0$N§.§9!>§,§9%J§,32768,§+"'§.§ "1§);
      
      public static const FIRE_DAMAGE:Bonus = new Bonus("fireDamage",BonusStat,§0$N§.§[#S§,§9%J§,16711680,§+"'§.§9#f§);
      
      public static const FROST_DAMAGE:Bonus = new Bonus("frostDamage",BonusStat,§0$N§.§=8§,§9%J§,2854655,§+"'§.§]$[§);
      
      public static const SHOCK_DAMAGE:Bonus = new Bonus("shockDamage",BonusStat,§0$N§.§5!X§,§9%J§,13792536,§+"'§.§`!^§);
      
      public static const AIR_DAMAGE:Bonus = new Bonus("airDamage",BonusStat,§0$N§.§"%h§,§9%J§,4008735,§+"'§.§"%A§);
      
      public static const POISON_DEFENSE:Bonus = new Bonus("poisonDefense",BonusStat,§0$N§.§!"a§,§9%J§,32768,§+"'§.§`$P§);
      
      public static const FIRE_DEFENSE:Bonus = new Bonus("fireDefense",BonusStat,§0$N§.§0$$§,§9%J§,16711680,§+"'§.§>$N§);
      
      public static const FROST_DEFENSE:Bonus = new Bonus("frostDefense",BonusStat,§0$N§.§^b§,§9%J§,2854655,§+"'§.§5%Z§);
      
      public static const SHOCK_DEFENSE:Bonus = new Bonus("shockDefense",BonusStat,§0$N§.§+f§,§9%J§,13792536,§+"'§.§@!u§);
      
      public static const AIR_DEFENSE:Bonus = new Bonus("airDefense",BonusStat,§0$N§.§1%S§,§9%J§,4008735,§+"'§.§8#Q§);
      
      public static const PHYSICAL_DEFENSE:Bonus = new Bonus("physicalDefense",BonusStat,§0$N§.§>$D§,§9%J§,4008735,§+"'§.§,<§);
      
      public static const REGENERATION:Bonus = new Bonus("regeneration",§7"M§,§0$N§.§5$;§,§&%C§,16737894,§+"'§.§]%a§);
      
      public static const §;#-§:Bonus = new Bonus("healBonus",BonusStat,§0$N§.§""D§,§9%J§,16750848,§+"'§.§-"G§);
      
      public static const LEECH:Bonus = new Bonus("leech",§2"W§,§0$N§.§0#V§,§9%J§,10027212,§+"'§.§51§);
      
      public static const HAM_HEAL03:Bonus = new Bonus("hamHeal",§`#+§,§0$N§.§`&"§,"",7829367,§+"'§.§-%8§,§`#+§.THRESHOLD_03);
      
      public static const HAM_HEAL05:Bonus = new Bonus("hamHeal05",§`#+§,§0$N§.BONUS_HAM_HEAL05,"",7829367,§+"'§.§-%8§,§`#+§.THRESHOLD_05);
      
      public static const HAM_HEAL06:Bonus = new Bonus("hamHeal06",§`#+§,§0$N§.BONUS_HAM_HEAL06,"",7829367,§+"'§.§-%8§,§`#+§.THRESHOLD_06);
      
      public static const §,,§:Bonus = new Bonus("hpPct",§]#^§,"");
      
      public static const REVIVAL_HP:Bonus = new Bonus("revivalHpBonus",BonusStat,§0$N§.§5H§,§9%J§,167660,§+"'§.§"&6§);
      
      public static const SPEED:Bonus = new Bonus("speed",§7$]§,§0$N§.§<%$§,§&%C§,7829367,§+"'§.§>$x§);
      
      public static const SQUAD_SPEED:Bonus = new Bonus("squadSpeed",§+"d§,§0$N§.§,#6§,§&%C§,7829367,§+"'§.§!$E§);
      
      public static const DRAGON_FLY_SPEED:Bonus = new Bonus("dragonFlySpeed",BonusStat,§0$N§.§]n§,§9%J§,7829367,§+"'§.§#!N§);
      
      public static const EXTRA_JUMP:Bonus = new Bonus("extraJump",§+#g§,§0$N§.§<#v§,§&%C§,7829367,§+"'§.§,H§);
      
      public static const MIGHTY_JUMP:Bonus = new Bonus("mightyJump",§^#8§,§0$N§.§4$w§,§&%C§,7829367,§+"'§.§>$x§);
      
      public static const EXTRA_DRAGON_FLY_UPSWING:Bonus = new Bonus("extraDragonFlyUpswing",§1"Z§,§0$N§.§`$a§,§&%C§,7829367,§+"'§.§3!!§);
      
      public static const FORTITUDE:Bonus = new Bonus("fortitude",§%#t§,§0$N§.§^"J§,§&%C§,7829367,§+"'§.§;%"§);
      
      public static const ATTACK_POWER_ADDITION:Bonus = new Bonus("attackPowerAddition",§`&+§,§0$N§.§4!%§,§&%C§,7829367,§+"'§.§^"+§);
      
      public static const PENETRATION:Bonus = new Bonus("penetration",BonusStat,§0$N§.§0%c§,§9%J§,8323072,§+"'§.§[!;§);
      
      public static const REVENGE_DAMAGE:Bonus = new Bonus("revengeDamage",BonusStat,§0$N§.§""w§,§9%J§,11730944,§+"'§.§83§);
      
      public static const REACTION_ADDITION:Bonus = new Bonus("reactionBonus",null,§0$N§.§'$b§,§&%C§,7829367,§+"'§.§0#K§);
      
      public static const IMMOBILITY_ADDITION:Bonus = new Bonus("immobilityAddition",BonusStat,§0$N§.§9%h§,§&%C§,2854655,§+"'§.§^%H§);
      
      public static const POISONING_ADDITION:Bonus = new Bonus("poisoningAddition",BonusStat,§0$N§.§1"`§,§&%C§,32768,§+"'§.§]M§);
      
      public static const SLOW_PROTECTION:Bonus = new Bonus("slowProtection",BonusTrait,§0$N§.§9N§,"",7829367,§+"'§.§?j§);
      
      public static const DODGE:Bonus = new Bonus("dodge",§[$1§,§0$N§.§<#u§,§9%J§,10040064,§+"'§.§0"E§);
      
      public static const REPELL:Bonus = new Bonus("repell",§[$Q§,§0$N§.§1!X§,§]!%§,10040064,§+"'§.§@!t§);
      
      public static const EXPLOSION_DEATH:Bonus = new Bonus("explosionDeath",§`"N§,§0$N§.§4#U§,"",7829367,§+"'§.§>%'§);
      
      public static const DAMAGE_BLOCK:Bonus = new Bonus("damageBlock",§6%o§,§0$N§.§]" §,"",7829367,§+"'§.§2#C§);
      
      public static const BOUNCE_PROTECTION:Bonus = new Bonus("bounceProtection",§^#M§,§0$N§.§!"D§,§&%C§,4849773,§+"'§.§ "0§);
      
      public static const IMMOBILITY_REDUCTION:Bonus = new Bonus("immobilityReduction",BonusStat,§0$N§.§3!e§,§&%C§,2854655,§+"'§.§4$X§);
      
      public static const POISONING_REDUCTION:Bonus = new Bonus("poisoningReduction",BonusStat,§0$N§.§81§,§&%C§,32768,§+"'§.§5!N§);
      
      public static const REACTION_REDUCTION:Bonus = new Bonus("reactionReduction",null,§0$N§.§3!K§,§&%C§,7829367,§+"'§.§!%f§);
      
      public static const §&$x§:Bonus = new Bonus("waterBreath",§3"L§,§0$N§.§`$z§,"",7829367,§+"'§.§-!Q§);
      
      public static const §@$G§:Bonus = new Bonus("legendaryHatFirstAct",§9$>§,§0$N§.LEGENDARY_ITEM_FIRST_ACT,"",7829367,§+"'§.§-%s§);
      
      public static const §^?§:Bonus = new Bonus("legendaryArtifactFirstAct",§0v§,§0$N§.LEGENDARY_ITEM_FIRST_ACT,"",7829367,§+"'§.§-%s§);
      
      public static const §2H§:Bonus = new Bonus("epicHatFirstAct",§`7§,§0$N§.EPIC_ITEM_FIRST_ACT,"",7829367,§+"'§.§-%s§);
      
      public static const § $P§:Bonus = new Bonus("epicArtifactFirstAct",§0$A§,§0$N§.EPIC_ITEM_FIRST_ACT,"",7829367,§+"'§.§-%s§);
      
      public static const §7I§:Bonus = new Bonus("drowningProtectionFirstAct",§[%e§,§0$N§.§+%j§,"",7829367,§+"'§.§]"v§);
      
      public static const §!$=§:Bonus = new Bonus("drowningProtectionOnce",§#$k§,§0$N§.§["E§,"",7829367,§+"'§.§`!h§);
      
      public static const §55§:Bonus = new Bonus("rhinoSquadBonus",§?"Z§,"");
      
      public static const LEECH_REGEN:Bonus = new Bonus("leechRegeneration",§1"#§,§0$N§.§^$4§,§9%J§,10027212,§+"'§.§8$c§);
      
      public static const REDUCE_HEALING:Bonus = new Bonus("reduceHealing",§3$7§,§0$N§.§5%H§,§9%J§,10027212,§+"'§.§-"G§);
      
      public static const ANTI_HEAL_BONUS:Bonus = new Bonus("antiHealBonus",§ !q§,§0$N§.§70§,§9%J§,10027212,§+"'§.§!$u§);
      
      public static const INVERTER_BONUS:Bonus = new Bonus("inverterBonus",BonusInverter,§0$N§.§1%W§,§9%J§,13792536,§+"'§.§"4§);
      
      public static const DEATH_GRIP:Bonus = new Bonus("deathGripBonus",§"$;§,§0$N§.§="O§,§&%C§,7829367,§+"'§.§4$%§);
      
      public static const CIRCUS_WEAPON_DAMAGE:Bonus = new Bonus("circusWeaponDamage",BonusStat,§0$N§.§#"O§,§9%J§,11730944,§+"'§.§7&;§);
      
      public static const CRITICAL_HIT4:Bonus = new Bonus("criticalHit",§>%2§,§0$N§.§^&@§,"",7829367,§+"'§.§6%T§,§>%2§.PERIOD_4);
      
      public static const CRITICAL_HIT2:Bonus = new Bonus("criticalHit2",§>%2§,§0$N§.BONUS_CRITICAL_HIT2,"",7829367,§+"'§.§6%T§,§>%2§.PERIOD_2);
      
      public static const CRITICAL_HIT3:Bonus = new Bonus("criticalHit3",§>%2§,§0$N§.BONUS_CRITICAL_HIT3,"",7829367,§+"'§.§6%T§,§>%2§.PERIOD_3);
      
      public static const CRITICAL_HIT10:Bonus = new Bonus("criticalHit10",§>%2§,§0$N§.BONUS_CRITICAL_HIT10,"",7829367,§+"'§.§6%T§,§>%2§.PERIOD_10);
      
      public static const GROUND_DESTROY:Bonus = new Bonus("groundDestroy",§,&B§,§0$N§.§8#n§,"",7829367,§+"'§.§1#n§);
      
      public static const ATTACK_BOOSTER:Bonus = new Bonus("attackBooster",§`#0§,§0$N§.§3%>§,"",7829367,§+"'§.§7"§);
      
      public static const §<$H§:Bonus = new Bonus("bonusFuel",BonusStat,§0$N§.§=v§,§]!%§,39321);
      
      public static const DEVICE_DURATION:Bonus = new Bonus("deviceDuration",BonusStat,§0$N§.§]&,§,§&%C§,39321);
      
      public static const WEAPON_DEVICE_DURATION:Bonus = new Bonus("weaponDeviceDuration",BonusStat,§0$N§.§5J§,§&%C§,39321,§+"'§.§,#`§);
      
      public static const СHRISTMAS_MOOD:Bonus = new Bonus("christmasMood",null,§0$N§.§0h§,§&%C§,167660,§+"'§.§+$o§);
      
      private static const §&%C§:String = "{sign}{value}";
      
      private static const §]!%§:String = "{value}%";
      
      private static const §9%J§:String = "{sign}{value}%";
      
      private static const §#r§:Vector.<Bonus> = new <Bonus>[HP,REACTION_ADDITION,REACTION_REDUCTION,HAM_HEAL03,HAM_HEAL05,HAM_HEAL06,EXTRA_JUMP];
      
      private static const §`$-§:Vector.<Bonus> = new <Bonus>[§!$=§,§@$G§,§^?§];
      
      private static const §&%%§:Vector.<Bonus> = new <Bonus>[§7I§,§2H§,§ $P§];
      
      private var name:String;
      
      private var §#$q§:Class;
      
      private var title:String;
      
      private var format:String;
      
      private var iconClassName:String;
      
      private var textColor:uint;
      
      private var param:Number;
      
      public function Bonus(param1:String, param2:Class, param3:String, param4:String = "", param5:uint = 7829367, param6:String = "", param7:Number = 0)
      {
         super();
         this.name = param1;
         this.§#$q§ = param2;
         this.title = param3;
         this.format = param4;
         this.textColor = param5;
         this.iconClassName = param6;
         this.param = param7;
         §?#u§.push(this);
      }
      
      public static function §]#l§(param1:String) : Bonus
      {
         var _loc2_:Bonus = null;
         for each(_loc2_ in §?#u§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §7&#§() : Vector.<Bonus>
      {
         return §?#u§;
      }
      
      public static function §'%9§(param1:Bonus) : Boolean
      {
         return §#r§.indexOf(param1) == -1;
      }
      
      public static function §8!G§(param1:Bonus) : Boolean
      {
         return §`$-§.indexOf(param1) > -1;
      }
      
      public static function §>"I§(param1:Bonus) : Bonus
      {
         return §&%%§[§`$-§.indexOf(param1)];
      }
      
      public static function §8"V§(param1:Bonus) : Boolean
      {
         return §&%%§.indexOf(param1) > -1;
      }
      
      public function toString() : String
      {
         return "Bonus{" + "name=" + this.name + ",bonusClass=" + this.§#$q§ + ",title=" + this.title + ",iconClassName=" + this.iconClassName + (this.§8$$§() ? ",param=" + this.param : "") + "}";
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function getClass() : Class
      {
         return this.§#$q§;
      }
      
      public function §@$+§() : String
      {
         return this.title;
      }
      
      public function §5&9§() : String
      {
         return this.format;
      }
      
      public function §2!q§() : String
      {
         return this.iconClassName;
      }
      
      public function §4&,§() : uint
      {
         return this.textColor;
      }
      
      public function §`X§() : Number
      {
         return this.param;
      }
      
      public function §8$$§() : Boolean
      {
         return this.param != 0;
      }
   }
}

