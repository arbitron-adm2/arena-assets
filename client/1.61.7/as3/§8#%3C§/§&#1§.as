package §8#<§
{
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§8"@§;
   import §#5§.*;
   import §%$[§.§1$J§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+#P§.§]!E§;
   import §+#U§.§'#w§;
   import §,$J§.§,$O§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §4!K§.*;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§=$,§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterMobilePayment;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §&#1§
   {
      
      private var §!%O§:Array = [{
         "familyId":§!#^§.§+z§,
         "hideInShop":true,
         "name":"HAT.CRAFT_SAMURAI_HELM",
         "charConfig":[{
            "iconClassName":"BoxerHatKabuto",
            "charName":"default",
            "hideFeatures":["ears"],
            "scale":0.1
         },{
            "iconClassName":"RobotHatKabuto",
            "charName":"dragon",
            "scale":0.1
         },{
            "iconClassName":"RobotHatKabuto",
            "charName":"robot",
            "scale":0.1
         },{
            "iconClassName":"RobotHatKabuto",
            "charName":"rhino",
            "scale":0.1
         }],
         "hp":70,
         "armor":8,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.SAMURAI),new §-$6§(§#"B§.BADGE,2)],
            "price":1500,
            "realprice":15
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,2)],
            "price":800,
            "realprice":8
         }
      },{
         "familyId":§!#^§.§@$E§,
         "hideInShop":true,
         "name":"HAT.CRAFT_RESPIRATOR",
         "charConfig":[{
            "iconClassName":"RespiratorHatBoxer",
            "charName":"default",
            "hideFeatures":["horn"],
            "scale":0.1
         }],
         "hp":40,
         "armor":5,
         "poisonDefense":80,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.§ ![§),new §-$6§(§,$O§.DARTH_VADER),new §-$6§(§#"B§.BADGE,4)],
            "price":1200,
            "realprice":12
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,6)],
            "price":3000,
            "realprice":30
         }
      },{
         "familyId":§!#^§.§5"B§,
         "hideInShop":true,
         "name":"HAT.CRAFT_PSYKER_HELM",
         "charConfig":[{
            "iconClassName":"PsyherHelmHatBoxer",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "hp":65,
         "armor":3,
         "attack":3,
         "shockDamage":20,
         "shockDefense":20,
         "frostDamage":10,
         "immobilityReduction":-1,
         "slowProtection":true,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.PSI_BIOTIC),new §-$6§(§,$O§.CROWN),new §-$6§(§#"B§.BADGE,8)],
            "price":1800,
            "realprice":18
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,8)],
            "price":2800,
            "realprice":28
         }
      },{
         "familyId":§!#^§.§`&F§,
         "hideInShop":true,
         "name":"HAT.CRAFT_CHAMPION_HELM",
         "charConfig":[{
            "iconClassName":"ChampionHelmHatBoxer",
            "charName":"default",
            "hideFeatures":["ears","topHorn"],
            "upFeatures":["horn"],
            "scale":0.1
         },{
            "iconClassName":"ChampionHelmHatDragon",
            "charName":"dragon",
            "scale":0.1
         }],
         "hp":40,
         "regeneration":5,
         "armor":2,
         "healBonus":25,
         "fireDamage":20,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§]!E§.PALADIN_SWORD),new §-$6§(§,$O§.NIMBUS),new §-$6§(§]!E§.§"%;§),new §-$6§(§#"B§.BADGE,6)],
            "price":1000,
            "realprice":10
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,10)],
            "price":3200,
            "realprice":32
         }
      },{
         "familyId":§!#^§.§?t§,
         "hideInShop":true,
         "name":"HAT.CRAFT_SPEC_OPS",
         "charConfig":[{
            "iconClassName":"SpecOpsHatBoxer",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "hp":75,
         "attack":4,
         "armor":2,
         "dodge":4,
         "fireDefense":30,
         "frostDefense":15,
         "speed":6,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.HERO_MASK),new §-$6§(§,$O§.§+%[§),new §-$6§(§#"B§.BADGE,8)],
            "price":1500,
            "realprice":15
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,14)],
            "price":4400,
            "realprice":44
         }
      },{
         "familyId":§!#^§.STEAMPUNK_GLASSES,
         "hideInShop":true,
         "name":"HAT.STEAMPUNK_GLASSES",
         "charConfig":[{
            "iconClassName":"SteampunkGlassesBoxer",
            "charName":"default",
            "upFeatures":["horn"],
            "scale":0.1
         }],
         "hp":40,
         "attack":4,
         "dodge":8,
         "speed":6,
         "airDamage":10,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.NEO),new §-$6§(§,$O§.ILLUSIONIST_GLASSES),new §-$6§(§#"B§.BADGE,6)],
            "realprice":12,
            "price":1200
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,8)],
            "realprice":20,
            "price":2000
         }
      },{
         "familyId":§!#^§.NORDIC_HELM,
         "hideInShop":true,
         "name":"HAT.NORDIC_HELM",
         "charConfig":[{
            "iconClassName":"NordicHelmBoxer",
            "charName":"default",
            "hideFeatures":["ears","topHorn"],
            "upFeatures":["horn"],
            "scale":0.1
         }],
         "hp":50,
         "attack":5,
         "armor":2,
         "dodge":5,
         "frostDefense":20,
         "immobilityReduction":-1,
         "frostDamage":20,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.§3"U§),new §-$6§(§,$O§.GLADIATOR_HELMET),new §-$6§(§#"B§.BADGE,8)],
            "realprice":14,
            "price":1400
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,10)],
            "realprice":28,
            "price":2800
         }
      },{
         "familyId":§!#^§.FIRESHEEP_HAT,
         "hideInShop":true,
         "name":"HAT.FIRESHEEP_HAT",
         "charConfig":[{
            "iconClassName":"FireSheepHatBoxer",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "hp":90,
         "armor":6,
         "attack":4,
         "fireDamage":20,
         "shockDamage":20,
         "fireDefense":10,
         "speed":6,
         "extraJump":1,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.DEMON_HAT),new §-$6§(§,$O§.ACE),new §-$6§(§#"B§.BADGE,10)],
            "realprice":18,
            "price":1800
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,14)],
            "realprice":46,
            "price":4600
         }
      },{
         "familyId":§!#^§.FIRE_MASK,
         "hideInShop":true,
         "name":"HAT.FIRE_MASK",
         "charConfig":[{
            "iconClassName":"FireMaskHatBoxer",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "hp":60,
         "attack":5,
         "fireDamage":20,
         "poisonDamage":20,
         "leech":10,
         "speed":6,
         "extraJump":1,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.LAVA_JAW),new §-$6§(§,$O§.BOSS_ASSASSIN_HOOD),new §-$6§(§#"B§.BADGE,10)],
            "realprice":22,
            "price":2200
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,16)],
            "realprice":50,
            "price":5000
         }
      },{
         "familyId":§!#^§.VILE_MASK,
         "hideInShop":true,
         "name":"HAT.VILE_MASK",
         "charConfig":[{
            "iconClassName":"VileMaskBoxer",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "hp":35,
         "attack":7,
         "leech":7,
         "speed":6,
         "extraJump":1,
         "healBonus":10,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.VAMPIRE),new §-$6§(§,$O§.MASK_SHAMAN_RABBITS),new §-$6§(§,$O§.§;"h§),new §-$6§(§#"B§.BADGE,8)],
            "realprice":16,
            "price":1600
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,14)],
            "realprice":52,
            "price":5200
         }
      },{
         "familyId":§!#^§.COMISSAR_HAT,
         "hideInShop":true,
         "name":"HAT.COMISSAR_HAT",
         "charConfig":[{
            "iconClassName":"GeneralsCap",
            "charName":"default",
            "hideFeatures":["ears","topHorn"],
            "upFeatures":["horn"],
            "scale":0.1
         }],
         "squadAttack":5,
         "squadArmor":4,
         "speed":6,
         "hp":80,
         "poisonDefense":20,
         "airDamage":20,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.OFFICER),new §-$6§(§,$O§.LEGIONER),new §-$6§(§,$O§.§'#j§),new §-$6§(§#"B§.BADGE,10)],
            "realprice":18,
            "price":1800
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,14)],
            "realprice":48,
            "price":4800
         }
      },{
         "familyId":§!#^§.§##s§,
         "hideInShop":true,
         "name":"HAT.HELM_SAPPER",
         "charConfig":[{
            "iconClassName":"SapperHelm",
            "charName":"default",
            "hideFeatures":["ears","topHorn"],
            "upFeatures":["horn"],
            "scale":0.1
         }],
         "hp":60,
         "attack":3,
         "armor":7,
         "speed":6,
         "fireDefense":20,
         "slowProtection":true,
         "airDefense":30,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.§,z§),new §-$6§(§,$O§.BOSS_VIKING),new §-$6§(§]!E§.§5"&§),new §-$6§(§#"B§.BADGE,4)],
            "realprice":14,
            "price":1400
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,10)],
            "price":3600,
            "realprice":36
         }
      },{
         "familyId":§!#^§.§1#A§,
         "hideInShop":true,
         "name":"HAT.RAVEN_MASK",
         "charConfig":[{
            "iconClassName":"RavenMask",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "menuIcon":"RavenMaskIcon",
         "hp":65,
         "attack":3,
         "speed":6,
         "regeneration":6,
         "poisonDamage":20,
         "poisonDefense":20,
         "frostDefense":20,
         "immobilityReduction":-1,
         "leech":8,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.BLACK_RAVEN),new §-$6§(§,$O§.MASK_SCREAM),new §-$6§(§,$O§.§ #2§),new §-$6§(§#"B§.BADGE,6)],
            "realprice":14,
            "price":1400
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,16)],
            "price":5200,
            "realprice":52
         }
      },{
         "familyId":§!#^§.FIEND_HELM,
         "hideInShop":true,
         "name":"HAT.FIEND_HELM",
         "charConfig":[{
            "iconClassName":"FiendHelm",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "hp":55,
         "attack":5,
         "armor":4,
         "penetration":10,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.§0#'§),new §-$6§(§,$O§.§0!w§),new §-$6§(§#"B§.BADGE,6)],
            "realprice":10,
            "price":1000
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,6)],
            "price":2200,
            "realprice":22
         }
      },{
         "familyId":§!#^§.§0&9§,
         "hideInShop":true,
         "name":"HAT.HELL_RACER_HELM",
         "charConfig":[{
            "iconClassName":"HellRacerHelm",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "hp":55,
         "attack":3,
         "armor":3,
         "fireDefense":20,
         "fireDamage":20,
         "speed":6,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.HELMET_STUNT),new §-$6§(§,$O§.FIREPROOF_HELMET),new §-$6§(§#"B§.BADGE,6)],
            "realprice":16,
            "price":1600
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,10)],
            "price":3000,
            "realprice":30
         }
      },{
         "hideInShop":true,
         "familyId":§!#^§.SITH_HOOD,
         "name":"HAT.SITH_HOOD",
         "charConfig":[{
            "iconClassName":"SithHood",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "hp":60,
         "attack":4,
         "poisonDefense":20,
         "shockDamage":10,
         "shockDefense":10,
         "penetration":15,
         "speed":6,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.§]#c§),new §-$6§(§,$O§.DARK_CULTIST_HOOD),new §-$6§(§,$O§.NIGHT_VISION_DEVICE),new §-$6§(§#"B§.BADGE,10)],
            "realprice":22,
            "price":2200
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,18)],
            "price":5800,
            "realprice":58
         }
      },{
         "hideInShop":true,
         "familyId":§!#^§.SURGEON_BAND,
         "name":"HAT.SURGEON_BAND",
         "charConfig":[{
            "iconClassName":"NinjaSurgeon",
            "charName":"default",
            "hideFeatures":["horn"],
            "scale":0.1
         },{
            "iconClassName":"NinjaSurgeonWide",
            "charName":"dragon",
            "scale":0.1
         },{
            "iconClassName":"NinjaSurgeonWide",
            "charName":"robot",
            "scale":0.1
         }],
         "hp":30,
         "speed":4,
         "armor":2,
         "regeneration":6,
         "dodge":4,
         "poisonDefense":20,
         "slowProtection":true,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.§0!o§),new §-$6§(§,$O§.NINJA_TURTLES),new §-$6§(§,$O§.BOSS_JARL_HELM),new §-$6§(§#"B§.BADGE,8)],
            "realprice":18,
            "price":1800
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,20)],
            "price":6200,
            "realprice":62
         }
      },{
         "hideInShop":true,
         "hideInCraft":true,
         "familyId":§!#^§.SPORTS_CAP,
         "name":"HAT.SPORTS_CAP",
         "charConfig":[{
            "iconClassName":"SportsCapBrown",
            "charName":"default",
            "hideFeatures":["ears","topHorn"],
            "upFeatures":["horn"],
            "scale":0.1
         }],
         "hp":60,
         "attack":8,
         "speed":6,
         "slowProtection":true,
         "poisonDamage":20,
         "fireDamage":20,
         "penetration":15,
         "craftCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "remakeCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         }
      },{
         "hideInShop":true,
         "hideInCraft":true,
         "familyId":§!#^§.WOLF_PELT,
         "name":"HAT.WOLF_PELT",
         "charConfig":[{
            "iconClassName":"WolfMasterHatBoxer",
            "charName":"default",
            "hideFeatures":["ears","topHorn"],
            "upFeatures":["horn"],
            "scale":0.1
         }],
         "hp":60,
         "attack":7,
         "armor":7,
         "speed":6,
         "fireDefense":10,
         "poisonDefense":20,
         "frostDamage":10,
         "craftCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "remakeCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         }
      },{
         "hideInShop":true,
         "hideInCraft":true,
         "familyId":§!#^§.HOCKEY_HELM,
         "name":"HAT.HOCKEY_HELM",
         "charConfig":[{
            "iconClassName":"HockeyPlayerMasterHatBoxer",
            "charName":"default",
            "hideFeatures":["ears","topHorn"],
            "scale":0.1
         }],
         "hp":50,
         "attack":6,
         "armor":6,
         "speed":6,
         "frostDefense":15,
         "poisonDamage":15,
         "slowProtection":true,
         "fortitude":15,
         "craftCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "remakeCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         }
      },{
         "hideInShop":true,
         "hideInCraft":true,
         "familyId":§!#^§.KNIGHT_HELM,
         "name":"HAT.KNIGHT_HELM",
         "charConfig":[{
            "iconClassName":"KnightMasterHatBoxer",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "hp":60,
         "attack":3,
         "armor":6,
         "speed":6,
         "poisonDefense":20,
         "shockDefense":10,
         "frostDamage":20,
         "healBonus":10,
         "craftCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "remakeCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "duration":23
      },{
         "hideInShop":true,
         "hideInCraft":true,
         "familyId":§!#^§.STRATEGIST_HAT,
         "name":"HAT.STRATEGIST_HAT",
         "charConfig":[{
            "iconClassName":"MonkMasterHatBoxer",
            "charName":"default",
            "scale":0.1
         }],
         "hp":50,
         "attack":4,
         "armor":4,
         "airDamage":10,
         "airDefense":20,
         "speed":6,
         "poisoningReduction":-3,
         "extraJump":1,
         "craftCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "remakeCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "duration":23
      },{
         "hideInShop":true,
         "familyId":§!#^§.PYROMANCER,
         "name":"HAT.PYROMANCER",
         "charConfig":[{
            "iconClassName":"HeavenlyPyromancer",
            "charName":"default",
            "hideFeatures":["horn"],
            "scale":0.1
         },{
            "iconClassName":"HeavenlyPyromancer",
            "charName":"rhino",
            "hideFeatures":["topHorn"],
            "scale":0.1,
            "x":-40
         },{
            "iconClassName":"HeavenlyPyromancer",
            "charName":"dragon",
            "scale":0.1,
            "x":-30
         },{
            "iconClassName":"HeavenlyPyromancer",
            "charName":"robot",
            "scale":0.1,
            "x":-30
         },{
            "iconClassName":"HeavenlyPyromancer",
            "charName":"boar",
            "scale":0.1,
            "x":-30
         }],
         "hp":20,
         "armor":3,
         "fireDamage":20,
         "poisoningReduction":-1,
         "speed":1,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§]!E§.NUNCHAKU),new §-$6§(§,$O§.ELVIS),new §-$6§(§,$O§.§=!]§),new §-$6§(§#"B§.BADGE,10)],
            "realprice":22,
            "price":2200
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,16)],
            "price":6000,
            "realprice":60
         }
      },{
         "hideInShop":true,
         "hideInCraft":true,
         "familyId":§!#^§.FALLING_PYROMANCER,
         "name":"HAT.FALLING_PYROMANCER",
         "charConfig":[{
            "iconClassName":"ApprenticePyromancer",
            "charName":"default",
            "hideFeatures":["horn"],
            "scale":0.1
         },{
            "iconClassName":"ApprenticePyromancer",
            "charName":"rhino",
            "hideFeatures":["topHorn"],
            "scale":0.1,
            "x":-40
         },{
            "iconClassName":"ApprenticePyromancer",
            "charName":"dragon",
            "scale":0.1,
            "x":-30
         },{
            "iconClassName":"ApprenticePyromancer",
            "charName":"robot",
            "scale":0.1,
            "x":-30
         },{
            "iconClassName":"ApprenticePyromancer",
            "charName":"boar",
            "scale":0.1,
            "x":-30
         }],
         "hp":20,
         "armor":2,
         "frostDamage":10,
         "shockDamage":10,
         "fireDefense":15,
         "poisonDefense":20,
         "craftCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "remakeCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "duration":23
      },{
         "hideInShop":true,
         "hideInCraft":true,
         "familyId":§!#^§.PHOENIX_COVER,
         "name":"HAT.PHOENIX_COVER",
         "charConfig":[{
            "iconClassName":"FieryHair",
            "charName":"default",
            "scale":0.1
         }],
         "hp":30,
         "armor":3,
         "fireDamage":30,
         "airDefense":20,
         "poisoningReduction":-2,
         "speed":4,
         "craftCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "remakeCost":{
            "reagents":new Vector.<§-$6§>(0),
            "realprice":§5&4§.§0#E§
         },
         "duration":23
      },{
         "hideInShop":true,
         "familyId":§!#^§.HOLOGRAM,
         "name":"HAT.HOLOGRAM",
         "charConfig":[{
            "iconClassName":"HologramAnim",
            "charName":"default",
            "scale":0.1
         },{
            "iconClassName":"HologramRabbitAnim",
            "charName":"rabbit",
            "scale":0.1
         }],
         "menuIcon":"HologramIcon",
         "hp":30,
         "speed":6,
         "leech":8,
         "poisonDamage":20,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§]!E§.BOSS_ARCHBOT_STUFF),new §-$6§(§]!E§.ZIRCON_SKULL),new §-$6§(§,$O§.MASTER),new §-$6§(§#"B§.BADGE,10)],
            "realprice":30,
            "price":3000
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,16)],
            "price":5500,
            "realprice":55
         }
      },{
         "hideInShop":true,
         "familyId":§!#^§.MAGMATIC_STETSON,
         "name":"HAT.MAGMATIC_STETSON",
         "charConfig":[{
            "iconClassName":"StetsonAnim",
            "charName":"default",
            "hideFeatures":["ears","topHorn"],
            "scale":0.1
         }],
         "menuIcon":"StetsonIcon",
         "hp":60,
         "armor":5,
         "speed":6,
         "fireDamage":20,
         "shockDefense":10,
         "immobilityReduction":-1,
         "fortitude":10,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.§5#U§),new §-$6§(§,$O§.§3!]§),new §-$6§(§,$O§.SHERIFF),new §-$6§(§#"B§.BADGE,10)],
            "realprice":40,
            "price":4000
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,16)],
            "price":6000,
            "realprice":60
         }
      },{
         "hideInShop":true,
         "familyId":§!#^§.HOKAGE_HELMET,
         "name":"HAT.HOKAGE_HELMET",
         "charConfig":[{
            "iconClassName":"BoxerHatHokage",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "hp":40,
         "attack":3,
         "armor":2,
         "speed":8,
         "reactionBonus":2,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.MONK),new §-$6§(§,$O§.§ %!§),new §-$6§(§#"B§.BADGE,5)],
            "realprice":10,
            "price":1000
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,5)],
            "price":1000,
            "realprice":10
         }
      },{
         "hideInShop":true,
         "isFemale":true,
         "familyId":§!#^§.GUL_MASK,
         "name":"HAT.GUL_MASK",
         "charConfig":[{
            "iconClassName":"BoxerHatGul",
            "charName":"default",
            "hideFeatures":["topHorn","horn"],
            "scale":0.1
         },{
            "iconClassName":"BoxerHatGul",
            "charName":"dragon",
            "scale":0.12,
            "x":-5
         },{
            "iconClassName":"BoxerHatGul",
            "charName":"boar",
            "scale":0.15,
            "x":-10,
            "y":-7
         }],
         "hp":20,
         "attack":2,
         "armor":1,
         "speed":4,
         "regeneration":8,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.BOSS_SHAMAN_VOODOO_MASK),new §-$6§(§,$O§.§9#r§),new §-$6§(§#"B§.BADGE,6)],
            "price":2500,
            "realprice":25
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,7)],
            "price":2400,
            "realprice":24
         }
      },{
         "hideInShop":true,
         "isFemale":true,
         "familyId":§!#^§.COCKED_HAT,
         "name":"HAT.COCKED_HAT",
         "charConfig":[{
            "iconClassName":"BoxerHatCocked",
            "charName":"default",
            "hideFeatures":["ears","topHorn"],
            "upFeatures":["horn"],
            "scale":0.1
         },{
            "iconClassName":"DragonHatCocked",
            "charName":"dragon",
            "scale":0.1
         },{
            "iconClassName":"BoxerHatCocked",
            "charName":"robot",
            "scale":0.1,
            "x":5
         },{
            "iconClassName":"BoarHatCocked",
            "charName":"boar",
            "scale":0.1
         },{
            "iconClassName":"AlienHatCocked",
            "charName":"alien",
            "scale":0.1
         }],
         "hp":40,
         "attack":3,
         "frostDamage":20,
         "revengeDamage":50,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.PIRATE),new §-$6§(§,$O§.BOSS_PIRATES),new §-$6§(§,$O§.BOSS_REVIVED_CAPTAIN),new §-$6§(§#"B§.BADGE,6)],
            "price":1700,
            "realprice":17
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,8)],
            "price":2900,
            "realprice":29
         }
      },{
         "hideInShop":true,
         "isNeuter":true,
         "familyId":§!#^§.RONINS_GARB,
         "name":"HAT.RONINS_GARB",
         "charConfig":[{
            "iconClassName":"BoxerHatRonin",
            "charName":"default",
            "hideFeatures":["ears","topHorn"],
            "upFeatures":["horn"],
            "scale":0.1
         },{
            "iconClassName":"BoarHatRonin",
            "charName":"dragon",
            "scale":0.1
         },{
            "iconClassName":"BoarHatRonin",
            "charName":"robot",
            "scale":0.1
         },{
            "iconClassName":"BoarHatRonin",
            "charName":"boar",
            "scale":0.1
         },{
            "iconClassName":"BoarHatRonin",
            "charName":"alien",
            "scale":0.1
         }],
         "hp":30,
         "attack":6,
         "armor":3,
         "speed":8,
         "immobilityReduction":-1,
         "damageBlock":10,
         "drowningProtectionFirstAct":true,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.ELEGANT_SAMURAI),new §-$6§(§]!E§.BATTLE_PAN),new §-$6§(§#"B§.BADGE,3)],
            "price":1400,
            "realprice":14
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,4)],
            "price":2600,
            "realprice":26
         }
      },{
         "hideInShop":true,
         "familyId":§!#^§.RUSTY_BOILER,
         "name":"HAT.RUSTY_BOILER",
         "charConfig":[{
            "iconClassName":"BoxerHatBoiler",
            "charName":"default",
            "hideFeatures":["ears"],
            "scale":0.1
         },{
            "iconClassName":"DragonHatBoiler",
            "charName":"dragon",
            "scale":0.1
         },{
            "iconClassName":"BoarHatBoiler",
            "charName":"boar",
            "scale":0.1
         },{
            "iconClassName":"RhinoHatBoiler",
            "charName":"rhino",
            "hideFeatures":["topHorn"],
            "upFeatures":["horn"],
            "scale":0.1
         },{
            "iconClassName":"AlienHatBoiler",
            "charName":"alien",
            "scale":0.1
         }],
         "hp":20,
         "attack":2,
         "extraJump":1,
         "healBonus":10,
         "shockDamage":10,
         "slowProtection":true,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.CYLINDER),new §-$6§(§,$O§.ELECTRIC),new §-$6§(§#"B§.BADGE,2)],
            "price":1500,
            "realprice":15
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,4)],
            "price":1000,
            "realprice":10
         }
      },{
         "hideInShop":true,
         "familyId":§!#^§.NEUROMANCER,
         "name":"HAT.NEUROMANCER",
         "charConfig":[{
            "iconClassName":"Neuromancer",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         }],
         "menuIcon":"NeuromancerIcon",
         "hp":30,
         "attack":2,
         "armor":1,
         "frostDamage":20,
         "poisonDamage":15,
         "poisonDefense":20,
         "leech":8,
         "speed":4,
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.§[&2§),new §-$6§(§,$O§.§="F§),new §-$6§(§,$O§.BOSS_SOUL_MASTER_HELM),new §-$6§(§#"B§.BADGE,15)],
            "price":4500,
            "realprice":45
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,20)],
            "price":6000,
            "realprice":60
         }
      },{
         "hideInShop":true,
         "familyId":§!#^§.INQUISITOR,
         "name":"HAT.INQUISITOR",
         "charConfig":[{
            "iconClassName":"Destroyer",
            "charName":"default",
            "hideFeatures":["ears","topHorn","horn"],
            "scale":0.1
         },{
            "iconClassName":"Destroyer",
            "charName":"dragon",
            "scale":0.1,
            "x":-25,
            "y":5
         },{
            "iconClassName":"Destroyer",
            "charName":"robot",
            "scale":0.1,
            "x":-18
         },{
            "iconClassName":"Destroyer",
            "charName":"boar",
            "scale":0.1,
            "x":-12
         }],
         "menuIcon":"DestroyerIcon",
         "bonuses":{
            "hp":50,
            "attack":4,
            "armor":2,
            "fireDamage":20,
            "fireDefense":10,
            "speed":4
         },
         "craftCost":{
            "reagents":new <§-$6§>[new §-$6§(§,$O§.§01§),new §-$6§(§,$O§.§3!]§),new §-$6§(§]!E§.§^T§),new §-$6§(§#"B§.BADGE,10)],
            "price":3000,
            "realprice":30
         },
         "remakeCost":{
            "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,20)],
            "price":6000,
            "realprice":60
         }
      }];
      
      private var §'#S§:Array;
      
      public function §&#1§()
      {
         §§push(this);
         §§push({
            "familyId":§!#^§.§5$_§,
            "hideInShop":true,
            "name":"ARTIFACT.CRAFT_CHROME_SHIELD",
            "iconClassName":"ChromeShield",
            "handFront":false,
            "hp":45,
            "armor":6,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.METAL_SHIELD),new §-$6§(§]!E§.WOODEN_SHIELD),new §-$6§(§]!E§.TRAINING_SHIELD),new §-$6§(§#"B§.BADGE,4)],
               "price":400,
               "realprice":4
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,3)],
               "price":1200,
               "realprice":12
            }
         });
         §§push({
            "familyId":§!#^§.§4j§,
            "hideInShop":true,
            "name":"ARTIFACT.CRAFT_BLADE",
            "iconClassName":"Blade",
            "menuIcon":"BladeIcon",
            "handFront":false,
            "hp":20,
            "attack":4,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.BROKEN_SWORD),new §-$6§(§]!E§.WHINGER),new §-$6§(§#"B§.BADGE,4)],
               "price":600,
               "realprice":6
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,4)],
               "price":1400,
               "realprice":14
            }
         });
         §§push({
            "familyId":§!#^§.ARCHIDEMON_SWORD,
            "hideInShop":true,
            "name":"ARTIFACT.ARCHIDEMON_SWORD",
            "iconClassName":"ArchiDemonSword",
            "menuIcon":"ArchiDemonSwordIcon",
            "handFront":true,
            "hp":25,
            "attack":5,
            "fireDamage":20,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.BROKEN_SWORD),new §-$6§(§]!E§.TOTEM_FIRE),new §-$6§(§]!E§.BOSS_ARCHIDEMON_SHIELD),new §-$6§(§#"B§.BADGE,8)],
               "price":1500,
               "realprice":15
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,12)],
               "price":3600,
               "realprice":36
            }
         });
         §§push({
            "familyId":§!#^§.SNAKE_STAFF,
            "hideInShop":true,
            "name":"ARTIFACT.SNAKE_STAFF",
            "iconClassName":"SnakeStaff",
            "menuIcon":"SnakeStaffIcon",
            "handVisible":false,
            "attack":4,
            "dodge":4,
            "poisonDamage":20,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.SKULL_STAFF),new §-$6§(§]!E§.JEDI_SWORD),new §-$6§(§#"B§.BADGE,7)],
               "price":1800,
               "realprice":18
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,10)],
               "price":2400,
               "realprice":24
            }
         });
         §§push({
            "familyId":§!#^§.JAWBLADE,
            "hideInShop":true,
            "name":"ARTIFACT.JAWBLADE",
            "iconClassName":"Jawblade",
            "menuIcon":"JawbladeIcon",
            "handVisible":false,
            "bonuses":{
               "hp":20,
               "attack":4,
               "shockDefense":5,
               "penetration":15,
               "leech":7,
               "speed":4
            },
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.VAMPIRIC_SWORD),new §-$6§(§]!E§.SAW),new §-$6§(§#"B§.BADGE,8)],
               "price":2000,
               "realprice":20
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,14)],
               "price":4600,
               "realprice":46
            }
         });
         §§push({
            "familyId":§!#^§.FROST_SHIELD,
            "hideInShop":true,
            "name":"ARTIFACT.FROST_SHIELD",
            "iconClassName":"FrostShield",
            "menuIcon":"FrostShieldIcon",
            "handVisible":false,
            "armor":3,
            "shockDamage":5,
            "shockDefense":10,
            "frostDamage":10,
            "frostDefense":10,
            "immobilityReduction":-1,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.§3"5§),new §-$6§(§]!E§.ROBO_SHIELD),new §-$6§(§#"B§.BADGE,6)],
               "price":1600,
               "realprice":16
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,10)],
               "price":3800,
               "realprice":38
            }
         });
         §§push({
            "familyId":§!#^§.BLAZING_AXE,
            "hideInShop":true,
            "name":"ARTIFACT.BLAZING_AXE",
            "iconClassName":"BlazingAxe",
            "menuIcon":"BlazingAxeIcon",
            "handVisible":false,
            "attack":3,
            "fireDamage":20,
            "fireDefense":10,
            "healBonus":20,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.BOSS_ENCHANTER_FIERY_DAGGER),new §-$6§(§!#^§.KNIGHT_HELM + 1),new §-$6§(§#"B§.BADGE,10)],
               "price":2400,
               "realprice":24
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,14)],
               "price":4200,
               "realprice":42
            }
         });
         §§push({
            "familyId":§!#^§.HAM_MACE,
            "hideInShop":true,
            "name":"ARTIFACT.HAM_MACE",
            "iconClassName":"HamMace",
            "menuIcon":"HamMaceIcon",
            "handVisible":false,
            "attack":2,
            "regeneration":3,
            "hp":10,
            "hamHeal":30,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.GNAWED_BONE),new §-$6§(§#"B§.BADGE,4)],
               "price":1000,
               "realprice":10
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,6)],
               "price":1000,
               "realprice":10
            }
         });
         §§push({
            "familyId":§!#^§.DEATH_HAMMER,
            "hideInShop":true,
            "name":"ARTIFACT.DEATH_HAMMER",
            "iconClassName":"DeathHammer",
            "menuIcon":"DeathHammerIcon",
            "handVisible":false,
            "leech":5,
            "healBonus":5,
            "criticalHit":30,
            "frostDamage":10,
            "squadAttack":2,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.BOSS_SOUL_MASTER_STAFF),new §-$6§(§]!E§.§3"5§),new §-$6§(§#"B§.BADGE,10)],
               "price":3200,
               "realprice":32
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,14)],
               "price":5400,
               "realprice":54
            }
         });
         §§push({
            "familyId":§!#^§.§##&§,
            "hideInShop":true,
            "hideInCraft":true,
            "name":"ARTIFACT.JEDI_SWORD_RED",
            "iconClassName":"JediSwordRed",
            "menuIcon":"JediSwordRedIcon",
            "attack":2,
            "penetration":10,
            "shockDamage":10,
            "craftCost":{
               "reagents":new Vector.<§-$6§>(0),
               "realprice":§5&4§.§0#E§
            },
            "remakeCost":{
               "reagents":new Vector.<§-$6§>(0),
               "realprice":§5&4§.§0#E§
            }
         });
         §§push({
            "familyId":§!#^§.§]%>§,
            "hideInShop":true,
            "hideInCraft":true,
            "name":"ARTIFACT.JEDI_SWORD_RED_CROSS",
            "iconClassName":"JediSwordRedCross",
            "menuIcon":"JediSwordRedCrossIcon",
            "armor":3,
            "penetration":15,
            "airDamage":10,
            "shockDefense":10,
            "craftCost":{
               "reagents":new Vector.<§-$6§>(0),
               "realprice":§5&4§.§0#E§
            },
            "remakeCost":{
               "reagents":new Vector.<§-$6§>(0),
               "realprice":§5&4§.§0#E§
            }
         });
         §§push({
            "familyId":§!#^§.HEALER_STAFF,
            "hideInShop":true,
            "name":"ARTIFACT.HEALER_STAFF",
            "iconClassName":"HealerStaff",
            "animatedSubClipNames":new <String>["stay","move","jumpBack","dragonFly","special4Rhino_Alien"],
            "menuIcon":"HealerStaffIcon",
            "handVisible":false,
            "hp":15,
            "squadHp":15,
            "squadArmor":3,
            "poisonDefense":20,
            "regeneration":5,
            "damageBlock":10,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.TOTEM_POISON),new §-$6§(§]!E§.JARL_STONE_HAMMER),new §-$6§(§,$O§.EAGLE_HAT),new §-$6§(§#"B§.BADGE,10)],
               "price":2000,
               "realprice":20
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,14)],
               "price":5400,
               "realprice":54
            }
         });
         §§push({
            "familyId":§!#^§.STRATEGIST_FAN,
            "hideInShop":true,
            "name":"ARTIFACT.STRATEGIST_FAN",
            "iconClassName":"StrategistFan",
            "menuIcon":"StrategistFanIcon",
            "handVisible":false,
            "hp":15,
            "squadArmor":3,
            "poisonDefense":15,
            "airDamage":20,
            "criticalHit":20,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.BOSS_ARCTIC_SWORD),new §-$6§(§!#^§.STRATEGIST_HAT + 1),new §-$6§(§#"B§.BADGE,10)],
               "price":3000,
               "realprice":30
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,16)],
               "price":5200,
               "realprice":52
            }
         });
         §§push({
            "familyId":§!#^§.MIRAGE,
            "hideInShop":true,
            "name":"ARTIFACT.MIRAGE",
            "iconClassName":"Mirage",
            "menuIcon":"MirageIcon",
            "handFront":true,
            "hp":30,
            "armor":4,
            "shockDamage":10,
            "poisonDefense":20,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§,$O§.BOSS_ENGINEER),new §-$6§(§]!E§.GOLDEN_HORN),new §-$6§(§]!E§.WATER_SWORD),new §-$6§(§#"B§.BADGE,10)],
               "price":3000,
               "realprice":30
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,14)],
               "price":5200,
               "realprice":52
            }
         });
         §§push({
            "familyId":§!#^§.ABSORBER,
            "hideInShop":true,
            "name":"ARTIFACT.ABSORBER",
            "iconClassName":"JadeAbsorber",
            "menuIcon":"JadeAbsorberIcon",
            "handVisible":false,
            "squadArmor":2,
            "frostDamage":10,
            "poisonDamage":10,
            "speed":4,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§,$O§.GREEN_IROQUOIS),new §-$6§(§]!E§.§?%t§),new §-$6§(§]!E§.BOSS_GRAVITY_MASTER_SHIELD),new §-$6§(§#"B§.BADGE,10)],
               "price":2200,
               "realprice":22
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,14)],
               "price":5400,
               "realprice":54
            }
         });
         §§push({
            "hideInShop":true,
            "hideInCraft":true,
            "handVisible":false,
            "familyId":§!#^§.POLAR_SHARD,
            "name":"ARTIFACT.POLAR_SHARD",
            "iconClassName":"ArcticAbsorber",
            "menuIcon":"ArcticAbsorberIcon",
            "frostDamage":15,
            "frostDefense":15,
            "airDefense":15,
            "speed":4,
            "bounceProtection":4,
            "craftCost":{
               "reagents":new Vector.<§-$6§>(0),
               "realprice":§5&4§.§0#E§
            },
            "remakeCost":{
               "reagents":new Vector.<§-$6§>(0),
               "realprice":§5&4§.§0#E§
            },
            "duration":23
         });
         §§push({
            "hideInShop":true,
            "hideInCraft":true,
            "handVisible":false,
            "familyId":§!#^§.NEPHRONOZH,
            "name":"ARTIFACT.NEPHRONOZH",
            "iconClassName":"JadeSword",
            "menuIcon":"JadeSwordIcon",
            "attack":3,
            "shockDamage":10,
            "poisonDefense":20,
            "fireDefense":10,
            "speed":4,
            "criticalHit":20,
            "craftCost":{
               "reagents":new Vector.<§-$6§>(0),
               "realprice":§5&4§.§0#E§
            },
            "remakeCost":{
               "reagents":new Vector.<§-$6§>(0),
               "realprice":§5&4§.§0#E§
            },
            "duration":23
         });
         §§push({
            "isFemale":true,
            "hideInShop":true,
            "handVisible":false,
            "familyId":§!#^§.BIOLAMP,
            "name":"ARTIFACT.BIOLAMP",
            "iconClassName":"Biolamp",
            "menuIcon":"BiolampIcon",
            "airDamage":10,
            "frostDamage":10,
            "poisoningReduction":-2,
            "leech":4,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.PHOSPHORUS_LAMP),new §-$6§(§]!E§.BOSS_SCORPION_STAFF),new §-$6§(§]!E§.BOSS_SYMBIOTE_BIOBLADE),new §-$6§(§#"B§.BADGE,10)],
               "price":3200,
               "realprice":32
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,16)],
               "price":5600,
               "realprice":56
            }
         });
         §§push({
            "isFemale":true,
            "hideInShop":true,
            "handVisible":false,
            "familyId":§!#^§.SPYGLASS,
            "name":"ARTIFACT.SPYGLASS",
            "iconClassName":"Spyglass",
            "menuIcon":"SpyglassIcon",
            "attack":2,
            "armor":1,
            "speed":4,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§,$O§.BOSS_REVIVED_CAPTAIN),new §-$6§(§]!E§.PIRATE_HOOK),new §-$6§(§]!E§.TOPOGRAPHIC_MAP),new §-$6§(§#"B§.BADGE,4)],
               "price":1300,
               "realprice":13
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,5)],
               "price":1800,
               "realprice":18
            }
         });
         §§push({
            "hideInShop":true,
            "handVisible":false,
            "familyId":§!#^§.BULLFIGHTERS_CLOAK,
            "name":"ARTIFACT.BULLFIGHTERS_CLOAK",
            "iconClassName":"Cloak",
            "menuIcon":"CloakIcon",
            "hp":40,
            "squadArmor":1,
            "speed":6,
            "fortitude":5,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§,$O§.PINK_HELMET),new §-$6§(§]!E§.PROVOKER_SHIELD),new §-$6§(§#"B§.BADGE,3)],
               "price":1000,
               "realprice":10
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,4)],
               "price":1400,
               "realprice":14
            }
         });
         §§push({
            "hideInShop":true,
            "handVisible":false,
            "familyId":§!#^§.SOUL_DESTROYER,
            "name":"ARTIFACT.SOUL_DESTROYER",
            "iconClassName":"SoulDestroyerBow1",
            "menuIcon":"SoulDestroyerBow1Icon",
            "hp":30,
            "attack":4,
            "penetration":15,
            "poisoningReduction":-3,
            "speed":2,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§,$O§.ROBINHOOD_HAT),new §-$6§(§]!E§.GLEFA),new §-$6§(§]!E§.ROBINHOOD_BOW),new §-$6§(§#"B§.BADGE,8)],
               "price":3200,
               "realprice":32
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,16)],
               "price":6000,
               "realprice":60
            }
         });
         §§push({
            "hideInShop":true,
            "handVisible":false,
            "familyId":§!#^§.PULSAR,
            "name":"ARTIFACT.PULSAR",
            "iconClassName":"PulsarStuff",
            "menuIcon":"PulsarStuffIcon",
            "squadAttack":2,
            "airDamage":10,
            "shockDamage":10,
            "fireDefense":10,
            "regeneration":3,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§]!E§.§%$F§),new §-$6§(§]!E§.§!%M§),new §-$6§(§#"B§.BADGE,10)],
               "price":4000,
               "realprice":40
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,16)],
               "price":5200,
               "realprice":52
            }
         });
         §§push({
            "hideInShop":true,
            "handVisible":false,
            "familyId":§!#^§.DRAGON_STAFF,
            "name":"ARTIFACT.DRAGON_STAFF",
            "iconClassName":"FireAbyss",
            "menuIcon":"FireAbyssIcon",
            "hp":20,
            "armor":2,
            "leech":8,
            "fireDamage":10,
            "reactionBonus":2,
            "extraDragonFlyUpswing":1,
            "dragonFlySpeed":20,
            "craftCost":{
               "reagents":new <§-$6§>[new §-$6§(§,$O§.§'#j§),new §-$6§(§]!E§.BOSS_ARCHBOT_STUFF),new §-$6§(§]!E§.FLAMBEAU),new §-$6§(§#"B§.BADGE,10)],
               "price":3000,
               "realprice":30
            },
            "remakeCost":{
               "reagents":new <§-$6§>[new §-$6§(§#"B§.BADGE,16)],
               "price":5500,
               "realprice":55
            }
         });
         §§push("hideInShop");
         §§push(true);
         §§push("handVisible");
         §§push(false);
         §§push("familyId");
         §§push(§!#^§.§;l§);
         §§push("name");
         §§push("ARTIFACT.GRIM_REAPER");
         §§push("iconClassName");
         §§push("GrimReaper");
         §§push("menuIcon");
         §§push("GrimReaperIcon");
         §§push("bonuses");
         §§push({
            "attack":4,
            "poisonDamage":15,
            "criticalHit":15,
            "fireDefense":10,
            "leech":5,
            "speed":4
         });
         §§push("craftCost");
         §§push({
            "reagents":new <§-$6§>[new §-$6§(§,$O§.BOSS_KING_DEAD),new §-$6§(§]!E§.§=%>§),new §-$6§(§]!E§.CURSED_BROOM),new §-$6§(§#"B§.BADGE,10)],
            "price":3000,
            "realprice":30
         });
         §§push("remakeCost");
         §§push("reagents");
         var _temp_214:* = new <§-$6§>[new §-$6§(§#"B§.BADGE,16)];
         §§pop().§'#S§ = null;
         super();
      }
      
      public function §<#'§() : Array
      {
         return this.§!%O§;
      }
      
      public function §+8§() : Array
      {
         return this.§'#S§;
      }
      
      public function §1^§() : Array
      {
         return this.§!%O§.concat(this.§'#S§);
      }
   }
}

