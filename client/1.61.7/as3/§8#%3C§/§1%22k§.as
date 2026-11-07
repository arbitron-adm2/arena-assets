package §8#<§
{
   import §!"r§.*;
   import §!L§.§+"'§;
   import §"$+§.§ G§;
   import §"$+§.§`&$§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §5!,§.§9$h§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §>!_§.§'!&§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@8§.§%Z§;
   import §@8§.§5%>§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.StatusEvent;
   import flash.geom.ColorTransform;
   import flash.net.LocalConnection;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ArenaResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §1"k§
   {
      
      public static const §+%2§:int = 1500;
      
      public static const §;#h§:int = 2500;
      
      §§push(§§findproperty(§;"f§));
      §§push({
         "familyId":§!#^§.§+z§,
         "legendFilters":[],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "armor":2,
            "shockDamage":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "armor":2,
            "attack":2,
            "poisonDefense":10,
            "shockDamage":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "armor":2,
            "attack":4,
            "poisonDefense":15,
            "shockDamage":15
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":20,
            "armor":4,
            "attack":4,
            "poisonDefense":20,
            "shockDamage":20,
            "speed":4
         })]
      });
      §§push({
         "familyId":§!#^§.§@$E§,
         "legendFilters":[],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{"attack":3}),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "armor":2,
            "attack":3,
            "poisonDefense":5
         }),new §5%>§(4,§%Z§.EPIC,{
            "hp":20,
            "armor":3,
            "attack":3,
            "poisonDefense":10,
            "slowProtection":true
         })]
      });
      §§push({
         "familyId":§!#^§.§5"B§,
         "legendFilters":[],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":5,
            "attack":1,
            "armor":1,
            "shockDamage":5,
            "frostDamage":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":5,
            "attack":2,
            "armor":2,
            "shockDamage":10,
            "frostDamage":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "armor":3,
            "attack":3,
            "shockDamage":10,
            "frostDamage":15,
            "shockDefense":10
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":15,
            "armor":5,
            "attack":5,
            "shockDamage":10,
            "frostDamage":20,
            "shockDefense":20
         })]
      });
      §§push({
         "familyId":§!#^§.§`&F§,
         "legendFilters":[§2!%§.§'#,§,§2!%§.§'&5§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "attack":3
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "armor":2,
            "attack":3,
            "healBonus":5,
            "fireDamage":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "armor":3,
            "attack":3,
            "healBonus":5,
            "fireDamage":10,
            "regeneration":1,
            "immobilityReduction":-1
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":20,
            "armor":4,
            "attack":3,
            "healBonus":10,
            "fireDamage":20,
            "regeneration":1,
            "speed":4,
            "immobilityReduction":-1
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":20,
            "armor":6,
            "attack":4,
            "healBonus":15,
            "fireDamage":20,
            "regeneration":1,
            "speed":6,
            "immobilityReduction":-1,
            "explosionDeath":1
         })]
      });
      §§push({
         "familyId":§!#^§.§?t§,
         "legendFilters":[§2!%§.§+$V§,§2!%§.§!!#§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.AGGRESSIVE,{
            "hp":5,
            "armor":3
         }),new §5%>§(3,§%Z§.VIOLENT,{
            "hp":10,
            "armor":3,
            "attack":3,
            "frostDefense":5,
            "shockDamage":10
         }),new §5%>§(4,§%Z§.EPIC,{
            "hp":20,
            "armor":4,
            "attack":4,
            "frostDefense":5,
            "shockDamage":15,
            "immobilityReduction":-1
         }),new §5%>§(5,§%Z§.LEGENDARY,{
            "hp":20,
            "armor":4,
            "attack":4,
            "dodge":1,
            "frostDefense":5,
            "shockDamage":20,
            "immobilityReduction":-2
         })]
      });
      §§push({
         "familyId":§!#^§.STEAMPUNK_GLASSES,
         "legendFilters":[§2!%§.§%'§,§2!%§.§0?§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "attack":1
         }),new §5%>§(3,§%Z§.VIOLENT,{
            "hp":10,
            "attack":1,
            "airDamage":10,
            "frostDamage":10
         }),new §5%>§(4,§%Z§.EPIC,{
            "hp":20,
            "attack":2,
            "airDamage":20,
            "frostDamage":20
         }),new §5%>§(5,§%Z§.LEGENDARY,{
            "hp":25,
            "attack":3,
            "airDamage":30,
            "frostDamage":30,
            "dodge":2
         })]
      });
      §§push({
         "familyId":§!#^§.NORDIC_HELM,
         "legendFilters":[§2!%§.§+&%§,§2!%§.§ "f§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "armor":2,
            "frostDefense":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "armor":2,
            "attack":1,
            "speed":6,
            "frostDefense":5
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":20,
            "armor":3,
            "attack":2,
            "speed":6,
            "frostDamage":10,
            "frostDefense":5
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":20,
            "armor":4,
            "attack":2,
            "speed":6,
            "frostDamage":20,
            "frostDefense":10,
            "leech":5
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":30,
            "armor":4,
            "attack":3,
            "speed":6,
            "frostDamage":30,
            "frostDefense":15,
            "leech":10
         })]
      });
      §§push({
         "familyId":§!#^§.FIRESHEEP_HAT,
         "legendFilters":[§2!%§.§&%x§,§2!%§.§6$x§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "attack":1,
            "armor":1
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":20,
            "attack":3,
            "armor":1,
            "fireDamage":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":30,
            "attack":3,
            "armor":1,
            "shockDamage":10,
            "fireDamage":10,
            "fortitude":15
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":30,
            "attack":4,
            "armor":2,
            "shockDamage":10,
            "fireDefense":10,
            "fireDamage":20,
            "fortitude":15
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":40,
            "attack":4,
            "armor":2,
            "shockDamage":10,
            "fireDefense":20,
            "fireDamage":20,
            "fortitude":15
         })]
      });
      §§push({
         "familyId":§!#^§.FIRE_MASK,
         "legendFilters":[§2!%§.§&%x§,§2!%§.§6$x§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "attack":3
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "attack":3,
            "poisonDamage":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":15,
            "attack":3,
            "poisonDamage":20,
            "fireDamage":10
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":15,
            "attack":3,
            "poisonDamage":20,
            "fireDamage":20,
            "leech":5
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":20,
            "attack":3,
            "poisonDamage":20,
            "fireDamage":20,
            "leech":5,
            "dodge":4,
            "poisoningAddition":2
         })]
      });
      §§push({
         "familyId":§!#^§.VILE_MASK,
         "legendFilters":[§2!%§.§=!+§,§2!%§.§]!B§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "healBonus":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":15,
            "healBonus":10,
            "leech":3
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":20,
            "healBonus":10,
            "leech":3,
            "penetration":10
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":20,
            "healBonus":20,
            "leech":5,
            "attack":3,
            "explosionDeath":1,
            "penetration":10,
            "frostDefense":20
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":25,
            "healBonus":20,
            "leech":8,
            "attack":5,
            "explosionDeath":1,
            "penetration":20,
            "frostDefense":30
         })]
      });
      §§push({
         "familyId":§!#^§.COMISSAR_HAT,
         "legendFilters":[§2!%§.§'#,§,§2!%§.§'&5§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "airDamage":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "airDamage":5,
            "squadArmor":1,
            "poisonDefense":10,
            "frostDefense":20
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "airDamage":5,
            "squadAttack":1,
            "squadArmor":2,
            "poisonDefense":10,
            "frostDefense":20,
            "slowProtection":true
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":10,
            "airDamage":10,
            "squadAttack":1,
            "squadArmor":2,
            "poisonDefense":20,
            "frostDefense":30,
            "slowProtection":true
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":20,
            "airDamage":10,
            "squadAttack":2,
            "squadArmor":3,
            "poisonDefense":30,
            "frostDefense":40,
            "slowProtection":true
         })]
      });
      §§push({
         "familyId":§!#^§.§##s§,
         "legendFilters":[§2!%§.§6%P§,§2!%§.§1#=§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "attack":1
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "armor":2,
            "attack":1,
            "airDefense":10,
            "shockDefense":20
         }),new §5%>§(4,§%Z§.EPIC,{
            "hp":15,
            "armor":2,
            "attack":2,
            "airDefense":10,
            "fortitude":15,
            "shockDefense":20
         }),new §5%>§(5,§%Z§.LEGENDARY,{
            "hp":20,
            "armor":3,
            "attack":3,
            "airDefense":20,
            "fireDefense":10,
            "fortitude":15,
            "shockDefense":30
         })]
      });
      §§push({
         "familyId":§!#^§.§1#A§,
         "legendFilters":[§2!%§.§?!w§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":5,
            "poisonDefense":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":5,
            "poisonDefense":10,
            "poisonDamage":5,
            "frostDefense":5
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":5,
            "poisonDefense":10,
            "poisonDamage":10,
            "frostDefense":5,
            "leech":2
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":5,
            "poisonDefense":20,
            "poisonDamage":10,
            "frostDefense":10,
            "leech":2,
            "regeneration":2
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":10,
            "attack":2,
            "poisonDefense":20,
            "poisonDamage":10,
            "frostDefense":10,
            "leech":4,
            "regeneration":4
         })]
      });
      §§push({
         "familyId":§!#^§.FIEND_HELM,
         "legendFilters":[§2!%§.§&%x§,§2!%§.§6$x§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":5,
            "attack":2,
            "penetration":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "attack":2,
            "penetration":15
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "attack":2,
            "speed":6,
            "penetration":15
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":10,
            "attack":3,
            "speed":6,
            "penetration":15,
            "fireDefense":10
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":15,
            "attack":4,
            "speed":6,
            "penetration":25,
            "fireDefense":20
         })]
      });
      §§push({
         "familyId":§!#^§.§0&9§,
         "legendFilters":[§2!%§.§&%x§,§2!%§.§6$x§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":5,
            "attack":1,
            "armor":1,
            "shockDefense":20
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":5,
            "attack":2,
            "armor":2,
            "shockDefense":20,
            "slowProtection":true,
            "fireDamage":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":5,
            "attack":3,
            "armor":3,
            "shockDefense":30,
            "slowProtection":true,
            "fireDefense":10,
            "fireDamage":10,
            "speed":2
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":5,
            "attack":4,
            "armor":4,
            "shockDefense":30,
            "slowProtection":true,
            "fireDefense":20,
            "fireDamage":20,
            "speed":4
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":15,
            "attack":5,
            "armor":5,
            "shockDefense":40,
            "slowProtection":true,
            "fireDefense":20,
            "fireDamage":20,
            "speed":6
         })]
      });
      §§push({
         "familyId":§!#^§.SITH_HOOD,
         "legendFilters":[§2!%§.§+-§,§2!%§.§^!L§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{"extraJump":1}),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "extraJump":1,
            "attack":2,
            "penetration":5,
            "shockDefense":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "extraJump":1,
            "attack":3,
            "penetration":10,
            "shockDefense":10,
            "shockDamage":5,
            "hp":5
         }),new §5%>§(5,§%Z§.EPIC,{
            "extraJump":1,
            "attack":4,
            "penetration":15,
            "shockDamage":10,
            "shockDefense":20,
            "poisonDefense":10,
            "hp":10
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "extraJump":1,
            "attack":4,
            "penetration":15,
            "shockDamage":10,
            "shockDefense":20,
            "poisonDefense":20,
            "drowningProtectionFirstAct":true,
            "hp":20
         })]
      });
      §§push({
         "familyId":§!#^§.SURGEON_BAND,
         "legendFilters":[§2!%§.§?!w§,§2!%§.§@t§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "regeneration":1
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "armor":2,
            "poisonDefense":10,
            "regeneration":2,
            "frostDamage":15,
            "speed":2
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":20,
            "armor":2,
            "poisonDefense":20,
            "regeneration":3,
            "dodge":1,
            "frostDamage":20,
            "fireDefense":10,
            "speed":2
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":20,
            "armor":3,
            "poisonDefense":30,
            "regeneration":4,
            "dodge":2,
            "frostDamage":25,
            "fireDefense":20,
            "speed":4
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":30,
            "armor":3,
            "poisonDefense":40,
            "regeneration":6,
            "dodge":3,
            "frostDamage":30,
            "fireDefense":30,
            "speed":4
         })]
      });
      §§push({
         "familyId":§!#^§.SPORTS_CAP,
         "legendFilters":[§2!%§.§&%x§,§2!%§.§6$x§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "attack":2,
            "penetration":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "attack":2,
            "penetration":10,
            "poisonDefense":20,
            "fireDamage":5,
            "poisonDamage":5,
            "shockDefense":20
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "attack":2,
            "penetration":10,
            "poisonDefense":20,
            "fireDamage":5,
            "poisonDamage":5,
            "shockDefense":20,
            "extraJump":1
         },{"charConfig":[{"iconClassName":"SportsCapDark"}]}),new §5%>§(5,§%Z§.EPIC,{
            "hp":10,
            "attack":2,
            "penetration":20,
            "poisonDefense":30,
            "fireDamage":5,
            "poisonDamage":5,
            "shockDefense":30,
            "extraJump":1
         },{"charConfig":[{"iconClassName":"SportsCapDark"}]}),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":20,
            "attack":4,
            "penetration":20,
            "poisonDefense":30,
            "fireDamage":10,
            "poisonDamage":10,
            "shockDefense":30,
            "bounceProtection":6,
            "extraJump":1
         },{"charConfig":[{"iconClassName":"SportsCapRed"}]})]
      });
      §§push({
         "familyId":§!#^§.WOLF_PELT,
         "legendFilters":[§2!%§.§!!z§,§2!%§.§^"=§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "attack":1,
            "armor":1,
            "fireDefense":10,
            "leech":10,
            "frostDamage":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":20,
            "attack":1,
            "armor":1,
            "frostDamage":20,
            "poisonDefense":10,
            "fireDefense":10,
            "leech":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":30,
            "attack":2,
            "armor":2,
            "fireDefense":20,
            "poisonDefense":10,
            "leech":10,
            "frostDamage":20,
            "drowningProtectionFirstAct":true
         },{"charConfig":[{"iconClassName":"WolfAceHatBoxer"}]}),new §5%>§(5,§%Z§.EPIC,{
            "hp":40,
            "attack":2,
            "armor":2,
            "frostDamage":30,
            "poisonDefense":10,
            "fireDefense":20,
            "speed":2,
            "leech":12,
            "drowningProtectionFirstAct":true
         },{"charConfig":[{"iconClassName":"WolfAceHatBoxer"}]}),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":50,
            "attack":3,
            "armor":3,
            "speed":4,
            "fireDefense":30,
            "poisonDefense":20,
            "leech":15,
            "frostDamage":30,
            "drowningProtectionFirstAct":true
         },{"charConfig":[{"iconClassName":"WolfEliteHatBoxer"}]})]
      });
      §§push({
         "familyId":§!#^§.HOCKEY_HELM,
         "legendFilters":[§2!%§.§,"-§,§2!%§.§[$n§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "attack":1,
            "armor":1,
            "speed":2,
            "poisonDefense":20,
            "frostDefense":5,
            "poisonDamage":5,
            "shockDamage":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":20,
            "attack":2,
            "armor":2,
            "speed":2,
            "poisonDefense":20,
            "frostDefense":5,
            "poisonDamage":5,
            "shockDamage":15,
            "immobilityReduction":-1
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":30,
            "attack":3,
            "armor":3,
            "speed":4,
            "poisonDefense":30,
            "frostDefense":5,
            "poisonDamage":5,
            "shockDamage":20,
            "immobilityReduction":-1,
            "extraJump":1
         },{"charConfig":[{"iconClassName":"HockeyPlayerAceHatBoxer"}]}),new §5%>§(5,§%Z§.EPIC,{
            "hp":40,
            "attack":3,
            "armor":3,
            "speed":4,
            "poisonDefense":30,
            "frostDefense":10,
            "poisonDamage":15,
            "shockDamage":25,
            "immobilityReduction":-2,
            "extraJump":1
         },{"charConfig":[{"iconClassName":"HockeyPlayerAceHatBoxer"}]}),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":50,
            "attack":4,
            "armor":4,
            "speed":6,
            "poisonDefense":40,
            "frostDefense":15,
            "poisonDamage":15,
            "shockDamage":30,
            "immobilityReduction":-2,
            "extraJump":1
         },{"charConfig":[{"iconClassName":"HockeyPlayerEliteHatBoxer"}]})]
      });
      §§push({
         "familyId":§!#^§.KNIGHT_HELM,
         "legendFilters":[§2!%§.§'#,§,§2!%§.§'&5§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.VIOLENT,{
            "hp":20,
            "attack":2,
            "armor":4,
            "shockDamage":20,
            "frostDamage":10
         }),new §5%>§(3,§%Z§.EPIC,{
            "hp":30,
            "attack":3,
            "armor":6,
            "poisonDefense":10,
            "shockDefense":10,
            "frostDamage":20,
            "shockDamage":30
         },{"charConfig":[{"iconClassName":"KnightAceHatBoxer"}]}),new §5%>§(4,§%Z§.LEGENDARY,{
            "hp":40,
            "attack":3,
            "armor":6,
            "poisonDefense":20,
            "shockDefense":10,
            "fireDefense":10,
            "frostDamage":20,
            "shockDamage":30,
            "healBonus":10,
            "waterBreath":1
         },{
            "charConfig":[{"iconClassName":"KnightEliteHatBoxer"}],
            "duration":44
         })]
      });
      §§push({
         "familyId":§!#^§.STRATEGIST_HAT,
         "legendFilters":[§2!%§.§?"5§,§2!%§.§2"S§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.VIOLENT,{
            "hp":10,
            "attack":2,
            "armor":2,
            "airDamage":10,
            "airDefense":20,
            "fireDefense":10,
            "poisoningReduction":-2,
            "bounceProtection":6
         }),new §5%>§(3,§%Z§.EPIC,{
            "hp":20,
            "attack":3,
            "armor":3,
            "airDamage":15,
            "airDefense":20,
            "fireDefense":10,
            "poisoningReduction":-3,
            "healBonus":10,
            "drowningProtectionFirstAct":true
         },{"charConfig":[{"iconClassName":"MonkAceHatBoxer"}]}),new §5%>§(4,§%Z§.LEGENDARY,{
            "hp":30,
            "attack":4,
            "armor":4,
            "airDamage":20,
            "airDefense":30,
            "fireDefense":20,
            "speed":4,
            "poisoningReduction":-5,
            "healBonus":20,
            "drowningProtectionFirstAct":true
         },{
            "charConfig":[{"iconClassName":"MonkEliteHatBoxer"}],
            "duration":44
         })]
      });
      §§push({
         "familyId":§!#^§.PYROMANCER,
         "legendFilters":[§2!%§.§3Z§,§2!%§.§%#H§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "armor":1,
            "frostDamage":10,
            "poisoningReduction":-1,
            "speed":1
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":20,
            "armor":2,
            "fireDamage":5,
            "poisoningReduction":-2,
            "speed":2,
            "drowningProtectionFirstAct":true,
            "frostDamage":15
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":30,
            "armor":3,
            "fireDamage":10,
            "poisoningReduction":-3,
            "speed":3,
            "drowningProtectionFirstAct":true,
            "damageBlock":10,
            "frostDamage":20
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":40,
            "armor":4,
            "fireDamage":15,
            "poisoningReduction":-4,
            "speed":4,
            "drowningProtectionFirstAct":true,
            "damageBlock":15,
            "frostDamage":25
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":60,
            "armor":5,
            "fireDamage":20,
            "poisoningReduction":-5,
            "speed":5,
            "drowningProtectionFirstAct":true,
            "damageBlock":20,
            "reactionReduction":-4,
            "frostDamage":30
         })]
      });
      §§push({
         "familyId":§!#^§.FALLING_PYROMANCER,
         "legendFilters":[§2!%§.§=!+§,§2!%§.§]!B§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":20,
            "shockDamage":5,
            "poisonDefense":5,
            "fireDefense":5,
            "bounceProtection":2
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":20,
            "armor":1,
            "speed":2,
            "frostDamage":10,
            "shockDamage":5,
            "poisonDefense":10,
            "fireDefense":5,
            "bounceProtection":3
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":30,
            "armor":2,
            "speed":3,
            "frostDamage":15,
            "shockDamage":10,
            "poisonDefense":15,
            "fireDefense":10,
            "bounceProtection":4,
            "revengeDamage":50
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":45,
            "armor":3,
            "speed":4,
            "frostDamage":15,
            "shockDamage":15,
            "poisonDefense":20,
            "fireDefense":10,
            "bounceProtection":5,
            "revengeDamage":100
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":60,
            "armor":3,
            "speed":6,
            "frostDamage":20,
            "shockDamage":20,
            "poisonDefense":30,
            "fireDefense":15,
            "bounceProtection":6,
            "revengeDamage":150,
            "revivalHpBonus":50
         })]
      });
      §§push({
         "familyId":§!#^§.PHOENIX_COVER,
         "legendFilters":[§2!%§.§3Z§,§2!%§.§%#H§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "poisonDamage":20,
            "poisoningReduction":-2
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "armor":1,
            "poisonDamage":20,
            "poisoningReduction":-2,
            "airDefense":10,
            "speed":2,
            "drowningProtectionFirstAct":true
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "armor":1,
            "poisonDamage":30,
            "airDefense":10,
            "speed":2,
            "poisoningReduction":-4,
            "immobilityReduction":-1,
            "extraJump":1,
            "drowningProtectionFirstAct":true
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":20,
            "armor":2,
            "fireDamage":10,
            "poisonDamage":30,
            "airDefense":20,
            "speed":4,
            "poisoningReduction":-4,
            "immobilityReduction":-2,
            "poisoningAddition":1,
            "extraJump":1,
            "drowningProtectionFirstAct":true
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":30,
            "armor":2,
            "fireDamage":20,
            "poisonDamage":30,
            "airDefense":20,
            "speed":6,
            "poisoningReduction":-6,
            "immobilityReduction":-2,
            "poisoningAddition":2,
            "extraJump":1,
            "drowningProtectionFirstAct":true
         })]
      });
      §§push({
         "familyId":§!#^§.HOLOGRAM,
         "legendFilters":[§2!%§.§ %'§,§2!%§.§,$w§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "poisonDamage":10,
            "damageBlock":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "leech":2,
            "poisonDamage":10,
            "damageBlock":10,
            "shockDamage":20
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "speed":2,
            "leech":2,
            "poisonDamage":20,
            "damageBlock":10,
            "shockDamage":20,
            "reactionBonus":1
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":20,
            "speed":2,
            "leech":4,
            "poisonDamage":20,
            "damageBlock":20,
            "shockDamage":30,
            "reactionBonus":2,
            "extraJump":1
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":30,
            "speed":4,
            "leech":4,
            "poisonDamage":20,
            "damageBlock":30,
            "shockDamage":30,
            "reactionBonus":3,
            "extraJump":1,
            "drowningProtectionFirstAct":true
         })]
      });
      §§push({
         "familyId":§!#^§.MAGMATIC_STETSON,
         "legendFilters":[§2!%§.§=!+§,§2!%§.§]!B§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "armor":1,
            "immobilityReduction":-1,
            "healBonus":20
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "armor":1,
            "airDamage":20,
            "shockDefense":10,
            "immobilityReduction":-1,
            "healBonus":20
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "armor":2,
            "speed":2,
            "fireDamage":10,
            "airDamage":20,
            "shockDefense":10,
            "immobilityReduction":-2,
            "healBonus":20,
            "fortitude":5
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":10,
            "armor":2,
            "speed":2,
            "fireDamage":20,
            "airDamage":30,
            "shockDefense":20,
            "immobilityReduction":-3,
            "healBonus":25,
            "fortitude":10
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":20,
            "armor":3,
            "speed":4,
            "fireDamage":20,
            "airDamage":30,
            "shockDefense":20,
            "airDefense":30,
            "immobilityReduction":-3,
            "healBonus":30,
            "fortitude":15
         })]
      });
      §§push({
         "familyId":§!#^§.HOKAGE_HELMET,
         "legendFilters":[],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "armor":1,
            "speed":1,
            "reactionBonus":1
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "attack":1,
            "armor":1,
            "speed":2,
            "reactionBonus":2
         }),new §5%>§(4,§%Z§.EPIC,{
            "hp":10,
            "attack":2,
            "armor":2,
            "speed":2,
            "reactionBonus":3,
            "extraJump":1
         })]
      });
      §§push("familyId");
      §§push(§!#^§.GUL_MASK);
      §§push("legendFilters");
      §§push([]);
      §§push("prefixes");
      var _temp_159:* = new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
         "attack":2,
         "armor":1,
         "frostDefense":10,
         "poisonDamage":10
      }),new §5%>§(3,§%Z§.AGGRESSIVE,{
         "hp":10,
         "attack":3,
         "armor":2,
         "speed":2,
         "frostDefense":15,
         "poisonDamage":15,
         "regeneration":2
      }),new §5%>§(4,§%Z§.VIOLENT,{
         "hp":10,
         "attack":3,
         "armor":2,
         "speed":2,
         "frostDefense":20,
         "poisonDamage":20,
         "regeneration":2,
         "drowningProtectionFirstAct":true
      }),new §5%>§(5,§%Z§.EPIC,{
         "hp":20,
         "attack":4,
         "armor":3,
         "speed":4,
         "frostDefense":25,
         "poisonDamage":30,
         "regeneration":4,
         "drowningProtectionFirstAct":true,
         "extraJump":1
      })];
      §§push(null);
      §§push({
         "familyId":§!#^§.COCKED_HAT,
         "legendFilters":[],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "poisonDamage":15,
            "frostDamage":5,
            "poisonDefense":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":20,
            "attack":1,
            "poisonDamage":15,
            "frostDamage":10,
            "revengeDamage":50,
            "poisonDefense":10,
            "waterBreath":1
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":30,
            "attack":2,
            "poisonDamage":20,
            "frostDamage":15,
            "revengeDamage":50,
            "poisonDefense":15,
            "waterBreath":1,
            "drowningProtectionFirstAct":true
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":40,
            "attack":3,
            "poisonDamage":25,
            "frostDamage":20,
            "revengeDamage":100,
            "poisonDefense":25,
            "waterBreath":1,
            "drowningProtectionFirstAct":true
         })]
      });
      §§push({
         "familyId":§!#^§.RONINS_GARB,
         "legendFilters":[],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":20,
            "armor":2
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":40,
            "armor":3,
            "fireDamage":15,
            "damageBlock":5
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":50,
            "armor":4,
            "speed":2,
            "fireDamage":20,
            "immobilityReduction":-1,
            "damageBlock":5
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":60,
            "armor":6,
            "speed":4,
            "fireDamage":25,
            "immobilityReduction":-1,
            "damageBlock":10
         })]
      });
      §§push({
         "familyId":§!#^§.RUSTY_BOILER,
         "legendFilters":[],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "armor":2,
            "healBonus":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "armor":4,
            "healBonus":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":20,
            "armor":4,
            "healBonus":15,
            "shockDamage":5
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":30,
            "armor":6,
            "extraJump":1,
            "healBonus":20,
            "shockDamage":10
         })]
      });
      §§push({
         "familyId":§!#^§.NEUROMANCER,
         "legendFilters":[§2!%§.§1!;§,§2!%§.§]!@§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "armor":1,
            "frostDamage":5,
            "poisonDamage":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":15,
            "attack":2,
            "armor":2,
            "frostDamage":10,
            "poisonDamage":5,
            "poisonDefense":10,
            "speed":2
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":20,
            "attack":3,
            "armor":3,
            "frostDamage":15,
            "poisonDamage":5,
            "poisonDefense":20,
            "leech":2,
            "speed":2,
            "drowningProtectionFirstAct":true
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":25,
            "attack":3,
            "armor":4,
            "frostDamage":20,
            "poisonDamage":15,
            "poisonDefense":30,
            "penetration":10,
            "leech":2,
            "speed":4,
            "drowningProtectionFirstAct":true
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":30,
            "attack":6,
            "armor":5,
            "frostDamage":20,
            "poisonDamage":15,
            "poisonDefense":40,
            "penetration":20,
            "leech":4,
            "speed":6,
            "drowningProtectionFirstAct":true,
            "extraJump":1
         })]
      });
      §§push({
         "familyId":§!#^§.INQUISITOR,
         "legendFilters":[§2!%§.§+-§,§2!%§.§^!L§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":5,
            "attack":1,
            "armor":1,
            "speed":2,
            "airDefense":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "attack":1,
            "armor":1,
            "fireDefense":10,
            "speed":4,
            "penetration":10,
            "airDefense":10,
            "immobilityReduction":-1
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "attack":2,
            "armor":2,
            "fireDamage":10,
            "fireDefense":10,
            "speed":4,
            "penetration":10,
            "airDefense":20,
            "immobilityReduction":-1,
            "drowningProtectionFirstAct":true
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":20,
            "attack":3,
            "armor":3,
            "fireDamage":10,
            "fireDefense":20,
            "speed":6,
            "penetration":15,
            "airDefense":20,
            "immobilityReduction":-1,
            "drowningProtectionFirstAct":true,
            "groundDestroy":10
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":30,
            "attack":4,
            "armor":4,
            "fireDamage":10,
            "fireDefense":30,
            "speed":8,
            "penetration":20,
            "airDefense":30,
            "immobilityReduction":-1,
            "drowningProtectionFirstAct":true,
            "groundDestroy":20
         })]
      });
      §§push({
         "familyId":§!#^§.§5$_§,
         "legendFilters":[§2!%§.§6%P§,§2!%§.§1#=§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "armor":2
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":15,
            "armor":4
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":15,
            "attack":2,
            "armor":4
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":20,
            "attack":3,
            "armor":4
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":30,
            "attack":4,
            "armor":6,
            "hamHeal":60
         })]
      });
      §§push({
         "familyId":§!#^§.§4j§,
         "legendFilters":[],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "attack":2
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":15,
            "attack":4
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":15,
            "attack":4,
            "shockDamage":10
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":15,
            "attack":4,
            "shockDamage":20,
            "criticalHit":15
         })]
      });
      §§push({
         "familyId":§!#^§.ARCHIDEMON_SWORD,
         "legendFilters":[§2!%§.GLOW_DARKRED2,§2!%§.GLOW_DARKRED2_INNER],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "armor":2,
            "criticalHit":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":5,
            "attack":1,
            "armor":2,
            "fireDefense":5,
            "criticalHit":15
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "attack":3,
            "armor":2,
            "fireDefense":15,
            "criticalHit":20
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":10,
            "attack":3,
            "armor":2,
            "fireDefense":30,
            "criticalHit":25,
            "drowningProtectionFirstAct":true
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":15,
            "attack":3,
            "armor":2,
            "fireDefense":30,
            "fireDamage":10,
            "criticalHit":30,
            "drowningProtectionFirstAct":true
         })]
      });
      §§push({
         "familyId":§!#^§.SNAKE_STAFF,
         "legendFilters":[§2!%§.§?!w§,§2!%§.§@t§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "attack":2,
            "speed":2,
            "immobilityReduction":-1
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "attack":2,
            "speed":4,
            "poisonDamage":10,
            "immobilityReduction":-1,
            "slowProtection":true
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "attack":2,
            "speed":6,
            "poisonDamage":10,
            "poisonDefense":10,
            "immobilityReduction":-2,
            "slowProtection":true
         }),new §5%>§(5,§%Z§.EPIC,{
            "attack":2,
            "speed":8,
            "poisonDamage":10,
            "poisonDefense":20,
            "immobilityReduction":-2,
            "slowProtection":true,
            "dodge":1
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "attack":2,
            "speed":10,
            "poisonDamage":10,
            "poisonDefense":30,
            "immobilityReduction":-3,
            "slowProtection":true,
            "dodge":1
         })]
      });
      §§push({
         "familyId":§!#^§.JAWBLADE,
         "legendFilters":[§2!%§.§3Z§,§2!%§.§%#H§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "shockDefense":5,
            "bounceProtection":1
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "attack":2,
            "shockDefense":5,
            "leech":2,
            "bounceProtection":2
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":15,
            "attack":3,
            "shockDefense":10,
            "leech":3,
            "speed":2,
            "bounceProtection":3
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":15,
            "attack":4,
            "shockDefense":10,
            "penetration":5,
            "leech":5,
            "speed":2,
            "bounceProtection":4,
            "attackBooster":3
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":20,
            "attack":6,
            "shockDefense":15,
            "penetration":10,
            "leech":8,
            "speed":2,
            "bounceProtection":5,
            "attackBooster":6
         })]
      });
      §§push({
         "familyId":§!#^§.FROST_SHIELD,
         "legendFilters":[§2!%§.§ %'§,§2!%§.§,$w§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "armor":2,
            "frostDamage":5,
            "frostDefense":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "armor":3,
            "shockDamage":5,
            "frostDamage":10,
            "frostDefense":5
         }),new §5%>§(4,§%Z§.EPIC,{
            "armor":3,
            "shockDamage":5,
            "frostDamage":15,
            "shockDefense":10,
            "frostDefense":10
         }),new §5%>§(5,§%Z§.LEGENDARY,{
            "armor":5,
            "frostDamage":20,
            "shockDamage":15,
            "shockDefense":10,
            "frostDefense":10,
            "immobilityReduction":-1
         })]
      });
      §§push({
         "familyId":§!#^§.BLAZING_AXE,
         "legendFilters":[§2!%§.§3Z§,§2!%§.§%#H§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{"attack":3}),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "attack":3,
            "fireDamage":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "attack":3,
            "fireDamage":10,
            "speed":4,
            "poisonDamage":10
         }),new §5%>§(5,§%Z§.EPIC,{
            "attack":3,
            "fireDamage":10,
            "speed":4,
            "healBonus":10,
            "poisonDamage":20,
            "shockDefense":20
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "attack":7,
            "fireDamage":10,
            "fireDefense":10,
            "speed":4,
            "healBonus":20,
            "poisonDamage":30,
            "shockDefense":20,
            "immobilityReduction":-1
         })]
      });
      §§push({
         "familyId":§!#^§.HAM_MACE,
         "legendFilters":[],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hamHeal":10,
            "regeneration":1
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "attack":1,
            "regeneration":2,
            "hamHeal":20
         }),new §5%>§(4,§%Z§.EPIC,{
            "attack":2,
            "hp":10,
            "regeneration":2,
            "hamHeal":30
         })]
      });
      §§push({
         "familyId":§!#^§.DEATH_HAMMER,
         "legendFilters":[§2!%§.§1!;§,§2!%§.§]!@§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{"healBonus":10}),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "healBonus":10,
            "squadAttack":1
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "healBonus":15,
            "squadAttack":1,
            "criticalHit":10,
            "frostDamage":5
         }),new §5%>§(5,§%Z§.EPIC,{
            "healBonus":15,
            "squadAttack":2,
            "criticalHit":20,
            "frostDamage":10,
            "leech":3
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "healBonus":15,
            "squadAttack":3,
            "criticalHit":20,
            "frostDamage":20,
            "leech":5,
            "immobilityAddition":1
         })]
      });
      §§push({
         "familyId":§!#^§.§##&§,
         "legendFilters":[§2!%§.§=!+§,§2!%§.§]!B§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "attack":1,
            "repell":6
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "attack":2,
            "penetration":5,
            "repell":7,
            "extraJump":1
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "attack":3,
            "penetration":5,
            "repell":8,
            "shockDamage":5,
            "bounceProtection":2,
            "extraJump":1
         }),new §5%>§(5,§%Z§.EPIC,{
            "attack":4,
            "penetration":10,
            "repell":9,
            "shockDamage":5,
            "bounceProtection":4,
            "extraJump":1
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "attack":5,
            "penetration":10,
            "repell":10,
            "shockDamage":10,
            "bounceProtection":6,
            "extraJump":1
         })]
      });
      §§push({
         "familyId":§!#^§.§]%>§,
         "legendFilters":[§2!%§.§3Z§,§2!%§.§%#H§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "penetration":5,
            "squadAttack":2,
            "airDamage":5,
            "shockDefense":5,
            "repell":5,
            "immobilityReduction":-1
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "armor":1,
            "penetration":5,
            "squadAttack":3,
            "airDamage":5,
            "shockDefense":10,
            "repell":8,
            "immobilityReduction":-1,
            "bounceProtection":2
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "armor":2,
            "speed":6,
            "penetration":10,
            "squadAttack":4,
            "airDamage":10,
            "shockDamage":5,
            "shockDefense":10,
            "repell":12,
            "immobilityReduction":-1,
            "bounceProtection":4
         }),new §5%>§(5,§%Z§.EPIC,{
            "armor":2,
            "speed":8,
            "penetration":10,
            "squadAttack":5,
            "airDamage":10,
            "shockDamage":8,
            "shockDefense":20,
            "repell":15,
            "immobilityReduction":-1,
            "bounceProtection":6
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "armor":3,
            "speed":10,
            "penetration":20,
            "squadAttack":6,
            "airDamage":20,
            "shockDamage":10,
            "shockDefense":20,
            "repell":20,
            "immobilityReduction":-1,
            "bounceProtection":8
         })]
      });
      §§push({
         "familyId":§!#^§.HEALER_STAFF,
         "legendFilters":[§2!%§.§`$c§,§2!%§.§`!4§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":5,
            "poisonDefense":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":5,
            "squadHp":5,
            "poisonDefense":10,
            "regeneration":1
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":5,
            "squadHp":5,
            "poisonDefense":20,
            "regeneration":1,
            "damageBlock":5
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":5,
            "squadHp":10,
            "poisonDefense":20,
            "regeneration":2,
            "damageBlock":10
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":5,
            "squadHp":15,
            "poisonDefense":30,
            "regeneration":3,
            "damageBlock":10,
            "drowningProtectionFirstAct":true
         })]
      });
      §§push({
         "familyId":§!#^§.STRATEGIST_FAN,
         "legendFilters":[§2!%§.§?"5§,§2!%§.§2"S§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":5,
            "poisonDefense":5,
            "airDamage":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":5,
            "poisonDefense":5,
            "airDamage":5,
            "extraJump":1
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":15,
            "poisonDefense":5,
            "frostDefense":20,
            "airDamage":10,
            "extraJump":1,
            "squadArmor":1,
            "criticalHit":5
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":15,
            "poisonDefense":15,
            "frostDefense":20,
            "airDamage":10,
            "extraJump":1,
            "squadArmor":1,
            "criticalHit":10
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":25,
            "poisonDefense":15,
            "frostDefense":30,
            "airDamage":20,
            "extraJump":1,
            "squadArmor":1,
            "criticalHit":20
         })]
      });
      §§push({
         "familyId":§!#^§.MIRAGE,
         "legendFilters":[§2!%§.§=!+§,§2!%§.§]!B§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":10,
            "poisonDefense":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":20,
            "armor":1,
            "poisonDefense":10,
            "airDefense":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":30,
            "armor":2,
            "shockDamage":5,
            "poisonDefense":10,
            "airDefense":10,
            "drowningProtectionFirstAct":true
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":30,
            "armor":3,
            "shockDamage":5,
            "poisonDefense":20,
            "airDefense":20,
            "drowningProtectionFirstAct":true
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":40,
            "armor":4,
            "shockDamage":10,
            "poisonDefense":20,
            "airDefense":30,
            "drowningProtectionFirstAct":true,
            "explosionDeath":1
         })]
      });
      §§push({
         "familyId":§!#^§.ABSORBER,
         "legendFilters":[§2!%§.§1!f§,§2!%§.§^!r§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "poisonDamage":10,
            "poisoningReduction":-2
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "squadArmor":1,
            "poisonDamage":10,
            "speed":2,
            "airDefense":10,
            "poisoningReduction":-3
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "squadArmor":2,
            "frostDamage":10,
            "poisonDamage":10,
            "speed":2,
            "airDefense":20,
            "poisoningReduction":-4,
            "bounceProtection":2
         }),new §5%>§(5,§%Z§.EPIC,{
            "squadArmor":3,
            "frostDamage":10,
            "poisonDamage":20,
            "speed":2,
            "airDefense":30,
            "poisoningReduction":-5,
            "bounceProtection":4,
            "slowProtection":true
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "squadArmor":4,
            "frostDamage":20,
            "poisonDamage":20,
            "speed":2,
            "airDefense":30,
            "poisoningReduction":-6,
            "bounceProtection":6,
            "extraJump":1,
            "slowProtection":true
         })]
      });
      §§push({
         "familyId":§!#^§.POLAR_SHARD,
         "legendFilters":[§2!%§.§ %'§,§2!%§.§,$w§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "frostDamage":5,
            "airDefense":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "frostDamage":5,
            "shockDamage":10,
            "frostDefense":5,
            "airDefense":10,
            "speed":1,
            "bounceProtection":1
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "frostDamage":10,
            "shockDamage":15,
            "immobilityReduction":-1,
            "frostDefense":10,
            "airDefense":15,
            "speed":2,
            "bounceProtection":2
         }),new §5%>§(5,§%Z§.EPIC,{
            "frostDamage":10,
            "shockDamage":20,
            "immobilityReduction":-1,
            "frostDefense":15,
            "airDefense":20,
            "speed":3,
            "bounceProtection":3,
            "repell":5
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "frostDamage":15,
            "shockDamage":20,
            "immobilityReduction":-1,
            "frostDefense":20,
            "airDefense":25,
            "speed":4,
            "bounceProtection":4,
            "repell":10
         })]
      });
      §§push({
         "familyId":§!#^§.NEPHRONOZH,
         "legendFilters":[§2!%§.§1!f§,§2!%§.§^!r§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "attack":1,
            "criticalHit":10
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "attack":2,
            "shockDamage":10,
            "fireDefense":10,
            "speed":2,
            "criticalHit":10
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "attack":3,
            "shockDamage":10,
            "poisonDefense":10,
            "fireDefense":10,
            "speed":2,
            "criticalHit":20,
            "healBonus":10
         }),new §5%>§(5,§%Z§.EPIC,{
            "attack":4,
            "shockDamage":20,
            "poisonDefense":10,
            "fireDefense":10,
            "speed":4,
            "criticalHit":20,
            "healBonus":10,
            "damageBlock":10
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "attack":5,
            "shockDamage":20,
            "poisonDefense":10,
            "fireDefense":20,
            "speed":6,
            "criticalHit":30,
            "healBonus":20,
            "damageBlock":20
         })]
      });
      §§push({
         "familyId":§!#^§.BIOLAMP,
         "legendFilters":[§2!%§.§1!f§,§2!%§.§^!r§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "airDamage":5,
            "frostDamage":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "fireDamage":20,
            "airDamage":5,
            "frostDamage":5,
            "poisoningReduction":-1,
            "leech":2
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "fireDamage":20,
            "airDamage":10,
            "frostDamage":5,
            "poisoningReduction":-2,
            "leech":2,
            "shockDefense":10
         }),new §5%>§(5,§%Z§.EPIC,{
            "fireDamage":20,
            "airDamage":10,
            "frostDamage":10,
            "poisoningReduction":-3,
            "leech":4,
            "shockDefense":20,
            "speed":6
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "fireDamage":20,
            "airDamage":10,
            "frostDamage":10,
            "poisoningReduction":-4,
            "leech":4,
            "shockDefense":20,
            "speed":6,
            "leechRegeneration":20
         })]
      });
      §§push({
         "familyId":§!#^§.SPYGLASS,
         "legendFilters":[§2!%§.§1!f§,§2!%§.§^!r§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "armor":1,
            "poisonDamage":5,
            "airDamage":5
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "attack":2,
            "armor":1,
            "speed":2,
            "poisonDamage":10,
            "airDamage":10,
            "drowningProtectionFirstAct":true
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "attack":2,
            "armor":2,
            "speed":2,
            "poisonDamage":10,
            "airDamage":15,
            "regeneration":2,
            "drowningProtectionFirstAct":true
         }),new §5%>§(5,§%Z§.EPIC,{
            "attack":2,
            "armor":2,
            "speed":2,
            "poisonDamage":15,
            "airDamage":20,
            "immobilityReduction":-1,
            "regeneration":4,
            "drowningProtectionFirstAct":true
         })]
      });
      §§push({
         "familyId":§!#^§.BULLFIGHTERS_CLOAK,
         "legendFilters":[§2!%§.§1!f§,§2!%§.§^!r§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":20,
            "squadArmor":1,
            "reactionReduction":-1
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":30,
            "squadArmor":1,
            "fortitude":5,
            "reactionReduction":-2
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":40,
            "squadArmor":2,
            "fortitude":10,
            "reactionReduction":-3
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":50,
            "squadArmor":3,
            "speed":4,
            "fortitude":15,
            "reactionReduction":-4
         })]
      });
      §§push({
         "familyId":§!#^§.SOUL_DESTROYER,
         "legendFilters":[§2!%§.§+-§,§2!%§.§^!L§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "hp":5,
            "attack":1,
            "poisoningReduction":-1,
            "speed":2
         },{
            "iconClassName":"SoulDestroyerBow2",
            "menuIcon":"SoulDestroyerBow2Icon"
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":5,
            "attack":2,
            "penetration":5,
            "poisoningReduction":-1,
            "speed":2,
            "drowningProtectionFirstAct":true
         },{
            "iconClassName":"SoulDestroyerBow3",
            "menuIcon":"SoulDestroyerBow3Icon"
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "attack":3,
            "penetration":5,
            "poisoningReduction":-2,
            "speed":4,
            "drowningProtectionFirstAct":true,
            "extraJump":1
         },{
            "iconClassName":"SoulDestroyerBow4",
            "menuIcon":"SoulDestroyerBow4Icon"
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":15,
            "attack":4,
            "penetration":10,
            "poisoningReduction":-3,
            "speed":6,
            "slowProtection":true,
            "drowningProtectionFirstAct":true,
            "attackPowerAddition":10,
            "extraJump":1
         },{
            "iconClassName":"SoulDestroyerBow5",
            "menuIcon":"SoulDestroyerBow5Icon"
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":20,
            "attack":4,
            "penetration":15,
            "poisoningReduction":-3,
            "speed":8,
            "slowProtection":true,
            "drowningProtectionFirstAct":true,
            "attackPowerAddition":20,
            "extraJump":1,
            "antiHealBonus":30
         },{
            "iconClassName":"SoulDestroyerBow6",
            "menuIcon":"SoulDestroyerBow6Icon"
         })]
      });
      §§push({
         "familyId":§!#^§.PULSAR,
         "legendFilters":[§2!%§.§6%P§,§2!%§.§1#=§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "squadAttack":1,
            "airDamage":5,
            "regeneration":1,
            "speed":2
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "squadAttack":1,
            "airDamage":5,
            "shockDamage":5,
            "fireDefense":10,
            "regeneration":2,
            "speed":4
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "squadAttack":2,
            "airDamage":10,
            "shockDamage":5,
            "fireDefense":10,
            "regeneration":3,
            "speed":4,
            "drowningProtectionFirstAct":true
         }),new §5%>§(5,§%Z§.EPIC,{
            "squadAttack":2,
            "airDamage":10,
            "shockDamage":10,
            "fireDefense":20,
            "regeneration":4,
            "speed":6,
            "drowningProtectionFirstAct":true
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "squadAttack":3,
            "airDamage":20,
            "shockDamage":10,
            "fireDefense":20,
            "regeneration":4,
            "speed":6,
            "inverterBonus":5,
            "drowningProtectionFirstAct":true
         })]
      });
      §§push({
         "familyId":§!#^§.DRAGON_STAFF,
         "legendFilters":[§2!%§.§=!+§,§2!%§.§]!B§],
         "prefixes":new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
            "fireDamage":10,
            "poisonDefense":20,
            "speed":4
         }),new §5%>§(3,§%Z§.AGGRESSIVE,{
            "hp":10,
            "armor":1,
            "leech":2,
            "fireDamage":10,
            "poisonDefense":20,
            "speed":4,
            "reactionBonus":1,
            "slowProtection":true
         }),new §5%>§(4,§%Z§.VIOLENT,{
            "hp":10,
            "armor":2,
            "leech":2,
            "fireDamage":10,
            "poisonDefense":30,
            "speed":4,
            "reactionBonus":2,
            "immobilityReduction":-1,
            "slowProtection":true
         }),new §5%>§(5,§%Z§.EPIC,{
            "hp":20,
            "armor":2,
            "leech":2,
            "fireDamage":20,
            "poisonDefense":30,
            "speed":6,
            "reactionBonus":2,
            "immobilityReduction":-1,
            "slowProtection":true,
            "drowningProtectionFirstAct":true
         }),new §5%>§(6,§%Z§.LEGENDARY,{
            "hp":20,
            "armor":3,
            "leech":4,
            "fireDamage":20,
            "poisonDefense":40,
            "reactionBonus":3,
            "squadSpeed":6,
            "immobilityReduction":-1,
            "dragonFlySpeed":20,
            "slowProtection":true,
            "drowningProtectionFirstAct":true
         })]
      });
      §§push("familyId");
      §§push(§!#^§.§;l§);
      §§push("legendFilters");
      §§push([§2!%§.§+$V§,§2!%§.§!!#§]);
      §§push("prefixes");
      var _temp_325:* = new <§5%>§>[new §5%>§(1,§%Z§.NORMAL,{}),new §5%>§(2,§%Z§.SUPERIOR,{
         "attack":1,
         "criticalHit":5,
         "leech":1,
         "extraJump":1,
         "deathGripBonus":10
      }),new §5%>§(3,§%Z§.AGGRESSIVE,{
         "attack":2,
         "poisonDamage":5,
         "criticalHit":5,
         "fireDefense":10,
         "leech":1,
         "speed":2,
         "extraJump":1,
         "revivalHpBonus":20,
         "deathGripBonus":20
      }),new §5%>§(4,§%Z§.VIOLENT,{
         "attack":2,
         "poisonDamage":10,
         "criticalHit":10,
         "fireDefense":10,
         "leech":3,
         "speed":2,
         "extraJump":1,
         "revivalHpBonus":20,
         "drowningProtectionFirstAct":true,
         "immobilityReduction":-1,
         "deathGripBonus":20
      }),new §5%>§(5,§%Z§.EPIC,{
         "attack":3,
         "poisonDamage":15,
         "criticalHit":15,
         "fireDefense":20,
         "leech":3,
         "speed":4,
         "extraJump":1,
         "revivalHpBonus":40,
         "drowningProtectionFirstAct":true,
         "immobilityReduction":-1,
         "deathGripBonus":30
      }),new §5%>§(6,§%Z§.LEGENDARY,{
         "attack":4,
         "poisonDamage":15,
         "criticalHit":15,
         "fireDefense":20,
         "leech":5,
         "speed":6,
         "extraJump":1,
         "revivalHpBonus":50,
         "drowningProtectionFirstAct":true,
         "immobilityReduction":-2,
         "deathGripBonus":50
      })];
      
      private static var §;"f§:Array = null;
      
      public function §1"k§()
      {
         super();
      }
      
      public static function §1^§() : Array
      {
         return §;"f§;
      }
      
      public function get config() : Array
      {
         return §1^§();
      }
      
      public function §=[§(param1:uint) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §;"f§)
         {
            if(_loc2_.familyId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}

