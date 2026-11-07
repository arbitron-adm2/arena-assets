package §0%"§
{
   import § $N§.§<%j§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&%X§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#H§.§#$A§;
   import §2#H§.§,#V§;
   import §2B§.§#&E§;
   import §3%?§.§=E§;
   import §4%_§.§3§;
   import §4'§.§^"p§;
   import §6$z§.BonusBuff;
   import §7$t§.§=?§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §>"l§.*;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.data.TweenLiteVars;
   import config.§5%T§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §`"`§
   {
      
      public static const §;9§:int = 4000;
      
      private static const §!#>§:Array = [{
         "id":§[!^§.FIRE_FIGHTER,
         "name":"SET.FIRE_FIGHTER",
         "attack":12,
         "healBonus":30,
         "fireDefense":30,
         "hat":§,$O§.FIRE_FIGHTER_HAT,
         "artifact":§]!E§.FIRE_FIGHTER_AXE
      },{
         "id":§[!^§.PIRATE,
         "name":"SET.PIRATE",
         "armor":5,
         "criticalHit":40,
         "frostDamage":50,
         "hat":§,$O§.PIRATE,
         "artifact":§]!E§.PIRATE_HOOK,
         "races":[Race.§+#T§.getId(),Race.§+&8§.getId()]
      },{
         "id":§[!^§.EMINENCE,
         "name":"SET.EMINENCE",
         "attack":6,
         "fireDamage":20,
         "slowProtection":true,
         "poisoningReduction":-3,
         "hat":§,$O§.NIMBUS,
         "artifact":§]!E§.§5!P§
      },{
         "id":§[!^§.VOLT,
         "name":"SET.VOLT",
         "squadAttack":6,
         "damageBlock":20,
         "hat":§,$O§.ELECTRIC,
         "artifact":§]!E§.PROVOKER_SHIELD
      },{
         "id":§[!^§.HARDENED_TANKER,
         "name":"SET.HARDENED_TANKER",
         "penetration":30,
         "airDamage":40,
         "frostDefense":50,
         "hat":§,$O§.§3"U§,
         "artifact":§]!E§.TANK_SHIELD
      },{
         "id":§[!^§.GRAVES_DIGGER,
         "name":"SET.GRAVES_DIGGER",
         "armor":7,
         "poisonDefense":30,
         "repell":12,
         "hat":§,$O§.NIGHT_VISION_DEVICE,
         "artifact":§]!E§.§5"&§,
         "races":[Race.§"$H§.getId(),Race.ALIEN.getId()]
      },{
         "id":§[!^§.LIGHT_MESSENGER,
         "name":"SET.LIGHT_MESSENGER",
         "regeneration":10,
         "fireDamage":30,
         "extraJump":1,
         "hat":§,$O§.MASTER,
         "artifact":§]!E§.PALADIN_SWORD
      },{
         "id":§[!^§.SHINTO,
         "name":"SET.SHINTO",
         "speed":8,
         "dodge":10,
         "slowProtection":true,
         "hat":§,$O§.MONK,
         "artifact":§]!E§.§"%;§
      },{
         "id":§[!^§.DARTH_VADER,
         "name":"SET.DARTH_VADER",
         "squadArmor":6,
         "leech":15,
         "hat":§,$O§.DARTH_VADER,
         "artifact":§!#^§.§##&§,
         "races":[Race.§-K§.getId(),Race.ALIEN.getId()]
      },{
         "id":§[!^§.TOXIC_CREATURE,
         "name":"SET.TOXIC_CREATURE",
         "revengeDamage":300,
         "revivalHpBonus":100,
         "hat":§,$O§.§ ![§,
         "artifact":§]!E§.TOTEM_POISON,
         "races":[Race.§"$H§.getId()]
      },{
         "id":§[!^§.TRIPLE_GILLS,
         "name":"SET.TRIPLE_GILLS",
         "regeneration":5,
         "poisonDefense":30,
         "drowningProtectionFirstAct":true,
         "hats":[§,$O§.AQUALUNG,§,$O§.§^"h§],
         "artifact":§]!E§.§%$F§,
         "races":[Race.§+&8§.getId()]
      },{
         "id":§[!^§.SERVANT_OF_ODIN,
         "name":"SET.SERVANT_OF_ODIN",
         "attack":7,
         "fortitude":15,
         "damageBlock":15,
         "hat":§,$O§.GLADIATOR_HELMET,
         "artifact":§]!E§.JARL_STONE_HAMMER,
         "races":[Race.§9"B§.getId()]
      },{
         "id":§[!^§.ELM_STREET,
         "name":"SET.ELM_STREET",
         "attack":5,
         "criticalHit":40,
         "explosionDeath":1,
         "hat":§,$O§.§0#'§,
         "artifact":§]!E§.SAW
      },{
         "id":§[!^§.SEEKER_RESOURCES,
         "name":"SET.SEEKER_RESOURCES",
         "waterBreath":1,
         "shockDamage":40,
         "immobilityReduction":-1,
         "hat":§,$O§.MINER_HELM,
         "artifact":§]!E§.PICK,
         "races":[Race.§+#T§.getId()]
      },{
         "id":§[!^§.VLAD_THE_IMPALER,
         "name":"SET.VLAD_THE_IMPALER",
         "slowProtection":true,
         "hat":§,$O§.VAMPIRE,
         "artifact":§]!E§.VAMPIRIC_SWORD,
         "races":[Race.§9"B§.getId()]
      },{
         "id":§[!^§.PATRON_OF_NATURE,
         "name":"SET.PATRON_OF_NATURE",
         "repell":10,
         "poisonDamage":30,
         "explosionDeath":1,
         "hat":§,$O§.DOCTOR_MASK,
         "artifact":§]!E§.SKULL_STAFF,
         "races":[Race.§ "w§.getId()]
      },{
         "id":§[!^§.KILLER_WAYNE,
         "name":"SET.KILLER_WAYNE",
         "attack":8,
         "dodge":10,
         "hat":§,$O§.§+%[§,
         "artifact":§]!E§.ARMY_KNIFE
      },{
         "id":§[!^§.FIRE_ATRONACH,
         "name":"SET.FIRE_ATRONACH",
         "fireDamage":40,
         "fireDefense":40,
         "immobilityReduction":-1,
         "hat":§,$O§.ACE,
         "artifact":§]!E§.TOTEM_FIRE
      },{
         "id":§[!^§.ERIK_THE_RED,
         "name":"SET.ERIK_THE_RED",
         "frostDefense":30,
         "penetration":25,
         "immobilityReduction":-2,
         "hat":§,$O§.BOSS_VIKING,
         "artifact":§]!E§.TRAINING_SHIELD
      },{
         "id":§[!^§.NEIL_ARMSTRONG,
         "name":"SET.NEIL_ARMSTRONG",
         "frostDamage":40,
         "airDefense":40,
         "fortitude":15,
         "hat":§,$O§.COSMONAUT,
         "artifact":§]!E§.JEDI_SWORD
      },{
         "id":§[!^§.FUTURE_SOLDIER,
         "name":"SET.FUTURE_SOLDIER",
         "squadAttack":6,
         "leech":12,
         "shockDamage":20,
         "hat":§,$O§.§]#c§,
         "artifact":§]!E§.BROKEN_SWORD
      },{
         "id":§[!^§.PAPUANS_LEADER,
         "name":"SET.PAPUANS_LEADER",
         "squadAttack":6,
         "regeneration":5,
         "criticalHit":40,
         "hat":§,$O§.CHIEFTAIN,
         "artifact":§]!E§.GNAWED_BONE
      },{
         "id":§[!^§.RESIDENTS,
         "name":"SET.RESIDENTS",
         "armor":8,
         "airDefense":30,
         "penetration":20,
         "hat":§,$O§.LEGIONER,
         "artifact":§]!E§.WHINGER
      },{
         "id":§[!^§.THIS_IS_WORMIX,
         "name":"SET.THIS_IS_WORMIX",
         "extraJump":1,
         "speed":6,
         "hat":§,$O§.RED_CAP,
         "artifact":-1,
         "races":[Race.§#%V§.getId()]
      },{
         "id":§[!^§.SCYTHIAN,
         "name":"SET.SCYTHIAN",
         "attack":5,
         "armor":5,
         "explosionDeath":1,
         "hat":§,$O§.§4$W§,
         "artifact":§]!E§.WOODEN_SHIELD
      },{
         "id":§[!^§.MAGNETO,
         "name":"SET.MAGNETO",
         "shockDamage":30,
         "shockDefense":10,
         "airDamage":40,
         "hat":§,$O§.PAN,
         "artifact":§]!E§.ROBO_SHIELD
      },{
         "id":§[!^§.SCROOGE,
         "name":"SET.SCROOGE",
         "repell":15,
         "slowProtection":true,
         "hat":§,$O§.CYLINDER,
         "artifact":§]!E§.METAL_SHIELD
      },{
         "id":§[!^§.SANTA,
         "name":"SET.SANTA",
         "waterBreath":1,
         "hat":§,$O§.WINTER_HAT,
         "artifact":§]!E§.§3"5§
      },{
         "id":§[!^§.BOSS_SMITH,
         "name":"SET.BOSS_SMITH",
         "attack":12,
         "criticalHit":40,
         "penetration":20,
         "hat":§,$O§.§3!]§,
         "artifact":§]!E§.§^T§,
         "races":[Race.§9"B§.getId()]
      },{
         "id":§[!^§.IVAN_KOZHEDUB,
         "name":"SET.IVAN_KOZHEDUB",
         "regeneration":4,
         "airDamage":40,
         "airDefense":20,
         "hat":§,$O§.AVIATOR,
         "artifact":§]!E§.TOPOGRAPHIC_MAP
      },{
         "id":§[!^§.DON_VITO_CORLEONE,
         "name":"SET.DON_VITO_CORLEONE",
         "squadArmor":5,
         "fireDamage":20,
         "healBonus":35,
         "hat":§,$O§.ELVIS,
         "artifact":§]!E§.§?%t§,
         "races":[Race.§+#T§.getId(),Race.§+&8§.getId()]
      },{
         "id":§[!^§.SLY,
         "name":"SET.SLY",
         "shockDamage":25,
         "penetration":25,
         "fireDefense":20,
         "fortitude":15,
         "hat":§,$O§.DEMON_HAT,
         "artifact":§]!E§.FLAMBEAU,
         "races":[Race.§"$H§.getId(),Race.§1"^§.getId()]
      },{
         "id":§[!^§.HABSBURG,
         "name":"SET.HABSBURG",
         "armor":4,
         "speed":1,
         "hamHeal":90,
         "hat":§,$O§.CROWN,
         "artifact":§]!E§.GOLDEN_HORN,
         "races":[Race.§#%V§.getId(),Race.§ "w§.getId()]
      },{
         "id":§[!^§.ANCIENT_WIZARD,
         "name":"SET.ANCIENT_WIZARD",
         "attack":4,
         "leech":10,
         "dodge":4,
         "hat":§,$O§.NINJA_TURTLES,
         "artifact":§]!E§.NUNCHAKU
      },{
         "id":§[!^§.KVIBERN,
         "name":"SET.KVIBERN",
         "poisonDamage":30,
         "poisonDefense":30,
         "immobilityReduction":-1,
         "drowningProtectionFirstAct":true,
         "hat":§,$O§.DARK_CULTIST_HOOD,
         "artifact":§]!E§.PHOSPHORUS_LAMP
      },{
         "isHidden":true,
         "id":§[!^§.ALSO_WORMIX,
         "name":"SET.ALSO_WORMIX",
         "repell":100,
         "hat":§,$O§.BOSS_MINER_CAP,
         "artifact":§]!E§.BOSS_ARCTIC_SWORD,
         "races":[Race.§+#L§.getId(),Race.§@T§.getId(),Race.§ &F§.getId()]
      },{
         "isHidden":true,
         "id":§[!^§.ILLUSION,
         "name":"SET.ILLUSION",
         "leech":100,
         "hat":§,$O§.ILLUSIONIST_GLASSES,
         "artifact":§]!E§.WINE_HORN,
         "races":[Race.§+#L§.getId(),Race.§@T§.getId(),Race.§ &F§.getId()]
      },{
         "id":§[!^§.SEA_STORM,
         "name":"SET.SEA_STORM",
         "speed":5,
         "shockDamage":20,
         "hat":§,$O§.BOSS_YAKUZA_STEEL,
         "artifact":§]!E§.PIRATE_FLAG
      },{
         "id":§[!^§.POWER_AZTECS,
         "name":"SET.POWER_AZTECS",
         "shockDamage":20,
         "fireDamage":30,
         "explosionDeath":1,
         "hat":§,$O§.SOMBRERO,
         "artifact":§]!E§.CRYSTAL_SKULL
      },{
         "id":§[!^§.SHERIFF_FUTURE,
         "name":"SET.SHERIFF_FUTURE",
         "shockDamage":30,
         "frostDamage":30,
         "poisoningReduction":-4,
         "extraJump":1,
         "hat":§,$O§.SHERIFF,
         "artifact":§]!E§.PLASMA_SHIELD
      },{
         "id":§[!^§.HOT_REVENGE,
         "name":"SET.HOT_REVENGE",
         "criticalHit":50,
         "fireDamage":20,
         "explosionDeath":1,
         "hat":§,$O§.FIREPROOF_HELMET,
         "artifact":-1,
         "races":[Race.§"$H§.getId()],
         "isForRevived":true
      },{
         "id":§[!^§.EASTERN_CUISINE,
         "name":"SET.EASTERN_CUISINE",
         "fireDamage":40,
         "poisoningReduction":-4,
         "extraJump":1,
         "hat":§,$O§.HELMET_STUNT,
         "artifact":§]!E§.BATTLE_PAN
      },{
         "id":§[!^§.SOVIET_TECHNOLOGIES,
         "name":"SET.SOVIET_TECHNOLOGIES",
         "poisonDefense":40,
         "shockDamage":30,
         "hat":§,$O§.SOVIET,
         "artifact":§]!E§.GATEKEEPER
      },{
         "id":§[!^§.MAGIC_VOODOO,
         "name":"SET.MAGIC_VOODOO",
         "frostDamage":30,
         "drowningProtectionFirstAct":true,
         "hat":§,$O§.MASK_SHAMAN_RABBITS,
         "artifact":§]!E§.ZIRCON_SKULL
      },{
         "id":§[!^§.FUTURE_TECHNOLOGIES,
         "name":"SET.FUTURE_TECHNOLOGIES",
         "shockDamage":20,
         "hat":§,$O§.BOSS_MINER_CAP,
         "artifact":-1,
         "races":[Race.§9"B§.getId()]
      },{
         "id":§[!^§.CURSE_ZOMBIES,
         "name":"SET.CURSE_ZOMBIES",
         "poisonDamage":40,
         "drowningProtectionFirstAct":true,
         "hat":§,$O§.BOSS_BURNING_ZOMBIES_FLAME,
         "artifact":-1,
         "races":[Race.§"$H§.getId()]
      },{
         "id":§[!^§.PREDATOR,
         "name":"SET.PREDATOR",
         "poisonDamage":40,
         "waterBreath":1,
         "hat":§,$O§.BOSS_SYMBIOTE_HELM,
         "artifact":§]!E§.BOSS_SYMBIOTE_BIOBLADE,
         "races":[Race.§+#T§.getId()]
      },{
         "id":§[!^§.NECROMANCER,
         "name":"SET.NECROMANCER",
         "frostDamage":40,
         "revivalHpBonus":100,
         "hat":§,$O§.BOSS_SOUL_MASTER_HELM,
         "artifact":§]!E§.BOSS_SOUL_MASTER_STAFF,
         "races":[Race.§"$H§.getId()]
      },{
         "id":§[!^§.THAI_DRAGON,
         "name":"SET.THAI_DRAGON",
         "extraJump":2,
         "criticalHit":40,
         "hat":§,$O§.BOSS_ENCHANTER_MASK,
         "artifact":§]!E§.BOSS_ENCHANTER_FIERY_DAGGER,
         "races":[Race.§ "w§.getId()]
      },{
         "id":§[!^§.FELT_TIP_PLASTER,
         "name":"SET.FELT_TIP_PLASTER",
         "frostDamage":20,
         "immobilityReduction":-2,
         "hat":§,$O§.BOSS_GRAVITY_MASTER_HELM,
         "artifact":§]!E§.BOSS_GRAVITY_MASTER_SHIELD,
         "races":[Race.§9"B§.getId()]
      },{
         "id":§[!^§.POWER_NORTH,
         "name":"SET.POWER_NORTH",
         "shockDamage":30,
         "immobilityReduction":-1,
         "hat":§,$O§.BOSS_JARL_HELM,
         "artifact":§]!E§.BOSS_JARL_SPEAR,
         "races":[Race.§ "w§.getId()]
      },{
         "id":§[!^§.MASTER_HELL,
         "name":"SET.MASTER_HELL",
         "fireDamage":40,
         "poisoningReduction":-4,
         "hat":§,$O§.LAVA_JAW,
         "artifact":§]!E§.BOSS_ARCHIDEMON_SHIELD,
         "races":[Race.§+&8§.getId()]
      },{
         "id":§[!^§.LIGHTNING_FORCE,
         "name":"SET.LIGHTNING_FORCE",
         "criticalHit":30,
         "shockDamage":10,
         "bounceProtection":4,
         "poisoningReduction":-4,
         "hat":§,$O§.PSI_BIOTIC,
         "artifact":§]!E§.BOSS_ARCHBOT_STUFF
      },{
         "id":§[!^§.ARCTIC_EARTHQUAKE,
         "name":"SET.ARCTIC_EARTHQUAKE",
         "fireDamage":30,
         "frostDamage":50,
         "hat":§,$O§.BOSS_ARCTIC_HELM,
         "artifact":§]!E§.BOSS_ARCTIC_SWORD,
         "races":[Race.§!!S§.getId()]
      },{
         "firstApril":true,
         "id":§[!^§.MAGIC_COLD,
         "name":"SET.MAGIC_COLD",
         "immobilityAddition":2,
         "hat":§,$O§.WIZARD,
         "artifact":-1,
         "races":[Race.§+#L§.getId(),Race.§@T§.getId(),Race.§ &F§.getId()]
      },{
         "firstApril":true,
         "id":§[!^§.MUTATION,
         "name":"SET.MUTATION",
         "healBonus":40,
         "regeneration":8,
         "poisoningAddition":2,
         "hat":-1,
         "artifact":§]!E§.TOTEM_POISON,
         "races":[Race.§+#L§.getId(),Race.§@T§.getId(),Race.§ &F§.getId()]
      },{
         "id":§[!^§.ROBINHOOD,
         "name":"SET.ROBINHOOD",
         "poisoningReduction":-10,
         "leechRegeneration":20,
         "penetration":60,
         "criticalHit":50,
         "dodge":15,
         "speed":15,
         "extraJump":2,
         "hat":§,$O§.ROBINHOOD_HAT,
         "artifact":§]!E§.ROBINHOOD_BOW
      },{
         "id":§[!^§.ARCHIVIST_GARB,
         "name":"SET.ARCHIVIST_GARB",
         "shockDamage":10,
         "fireDefense":30,
         "airDefense":30,
         "hat":§,$O§.§5"=§,
         "artifact":§]!E§.§=%>§,
         "races":[Race.§+#T§.getId()]
      },{
         "shopState":§^"p§.§9%t§,
         "id":§[!^§.CHRISTMAS_MAGIC,
         "name":"SET.CHRISTMAS_MAGIC",
         "bonuses":{
            "christmasMood":50,
            "drowningProtectionFirstAct":true
         },
         "hat":§,$O§.GIFT_BAG,
         "artifact":§]!E§.CHRISTMAS_TREE
      }];
      
      public function §`"`§()
      {
         super();
      }
      
      public static function get §9#0§() : Array
      {
         return §!#>§;
      }
      
      public static function §^!o§(param1:int) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §!#>§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §5$U§(param1:int) : Vector.<Object>
      {
         var _loc3_:Object = null;
         var _loc2_:Vector.<Object> = new Vector.<Object>(0);
         for each(_loc3_ in §!#>§)
         {
            if(_loc3_.hat == param1 || Boolean(_loc3_.hats) && Boolean(_loc3_.hats.indexOf(param1) > -1))
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public static function §5$^§(param1:int) : Vector.<Object>
      {
         var _loc3_:Object = null;
         var _loc2_:Vector.<Object> = new Vector.<Object>(0);
         for each(_loc3_ in §!#>§)
         {
            if(_loc3_.artifact == param1 || Boolean(_loc3_.artifacts) && Boolean(_loc3_.artifacts.indexOf(param1) > -1))
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public static function §+o§(param1:§=?§) : Vector.<Object>
      {
         var _loc2_:int = 0;
         _loc2_ = param1.getId();
         var _loc3_:int = int(_loc2_ / 10) * 10;
         if(param1 is §^$E§)
         {
            return §5$U§(§!#^§.§3&5§(_loc2_) ? _loc3_ : _loc2_);
         }
         if(param1 is §^%%§)
         {
            return §5$^§(§!#^§.§7%#§(_loc2_) ? _loc3_ : _loc2_);
         }
         return null;
      }
      
      public static function §7#e§(param1:§^$E§, param2:§^%%§) : Object
      {
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         if(!param1 && !param2)
         {
            return null;
         }
         var _loc3_:int = param1 ? param1.getId() : 0;
         var _loc4_:Vector.<Object> = param1 ? §5$U§(§!#^§.§3&5§(_loc3_) ? int(int(_loc3_ / 10) * 10) : _loc3_) : null;
         var _loc5_:int = param2 ? param2.getId() : 0;
         var _loc6_:Vector.<Object> = param2 ? §5$^§(§!#^§.§7%#§(_loc5_) ? int(int(_loc5_ / 10) * 10) : _loc5_) : null;
         var _loc7_:Object = §#"Y§(_loc4_,_loc6_);
         if(_loc7_)
         {
            return _loc7_;
         }
         _loc8_ = §+%^§(_loc4_);
         if(Boolean(_loc4_) && Boolean(_loc4_.length) && Boolean(_loc8_))
         {
            return _loc8_;
         }
         _loc9_ = §!%d§(_loc6_);
         if(Boolean(_loc6_) && Boolean(_loc6_.length) && Boolean(_loc9_))
         {
            return _loc9_;
         }
         return null;
      }
      
      private static function §+%^§(param1:Vector.<Object>) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.artifact == -1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §!%d§(param1:Vector.<Object>) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.hat == -1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §#"Y§(param1:Vector.<Object>, param2:Vector.<Object>) : Object
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(Boolean(param1 && param2) && Boolean(param1.length) && Boolean(param2.length))
         {
            loop0:
            for each(_loc3_ in param1)
            {
               var _loc7_:int = 0;
               var _loc8_:* = param2;
               do
               {
                  for each(_loc4_ in _loc8_)
                  {
                  }
                  continue loop0;
               }
               while(_loc3_ != _loc4_);
               return _loc4_;
            }
         }
         return null;
      }
      
      public function get §9#0§() : Array
      {
         return §!#>§;
      }
   }
}

