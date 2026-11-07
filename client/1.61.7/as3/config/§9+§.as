package config
{
   import § !8§.§`!d§;
   import §!L§.§+"'§;
   import §"!C§.*;
   import §#",§.*;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §&#h§.§-"F§;
   import §'!Z§.*;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §4%_§.§3§;
   import §4%_§.§6#W§;
   import §7!B§.§&"T§;
   import §7!y§.§?"Z§;
   import §9%W§.§&!P§;
   import §<!W§.§#"1§;
   import §<!W§.§#&#§;
   import §<!W§.§%#l§;
   import §<!W§.§'0§;
   import §<!W§.§'i§;
   import §<!W§.§+%_§;
   import §<!W§.§1$1§;
   import §<!W§.§1N§;
   import §<!W§.§3#M§;
   import §<!W§.§4!I§;
   import §<!W§.§9%,§;
   import §<!W§.§;#A§;
   import §<!W§.§=y§;
   import §<!W§.§>&@§;
   import §<!W§.§?#L§;
   import §<!W§.§?$S§;
   import §<!W§.§@!J§;
   import §<!W§.§[2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.§-!k§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@$R§.Crab;
   import §@$R§.Donut;
   import §@$R§.Snail;
   import §@<§.§+%]§;
   import §[$P§.§8%R§;
   import §[$P§.§>%a§;
   import §[%§.Alien;
   import §[%§.Boar;
   import §[%§.Boxer;
   import §[%§.Cat;
   import §[%§.Demon;
   import §[%§.Dragon;
   import §[%§.Rabbit;
   import §[%§.Rhino;
   import §[%§.Zombie;
   import §[%§.§^"n§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetColiseumState;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §9+§
   {
      
      public static const §3%7§:int = 4;
      
      public static const §#%H§:int = 1;
      
      §§push(§§findproperty(§#"-§));
      §§push({
         "id":§;"I§.§+#T§,
         "abilities":new <§-!k§>[new §-!k§("ABILITY_HP","boxer_hp",null,"",1,false,["hpPct"]),new §-!k§("ABILITY_ARMOR",§`!a§.§=#_§,§'0§,§'0§.NAME,12),new §-!k§("ABILITY_ENCOURAGING_ROAR","boxer_roar",§?#L§,§?#L§.NAME,30,true)],
         "bonus":{
            "hpPct":15,
            "valueDefenseFrom":§'0§.§5& §.value,
            "valueDefenseTo":§'0§.§5& §.value + §'0§.§1O§.value,
            "valueAdditionTo":§?#L§.§=!K§.value + §?#L§.§>#'§.value
         },
         "className":Boxer,
         "configName":"boxer",
         "fraction":1,
         "name":"RACE_BOXER_NAME",
         "descr":"RACE_BOXER_DESCR",
         "price":1000,
         "realprice":10,
         "playable":true,
         "graveType":"BoxerGrave",
         "soulType":"BigSoul",
         "titleIcon":[§+"'§.§"$^§,§+"'§.§2#C§,§+"'§.§+"h§]
      });
      §§push({
         "id":§;"I§.§"$H§,
         "abilities":new <§-!k§>[new §-!k§("ABILITY_REVENGE","zombie_reincarnation"),new §-!k§("ABILITY_REVIVAL",§`!a§.§-%J§,null,"",12,false,null),new §-!k§("ABILITY_MASS_REVIVAL","zombie_apocalypse",§=y§,§=y§.NAME,30,true,null)],
         "bonus":{
            "hpEachLevelValue":§1N§.§=!-§.value,
            "massiveHpEachLevelValue":§1N§.§4!'§.value
         },
         "className":Zombie,
         "configName":"zombie",
         "fraction":2,
         "name":"RACE_ZOMBIE_NAME",
         "descr":"RACE_ZOMBIE_DESCR",
         "price":1800,
         "realprice":18,
         "requiredLevel":6,
         "playable":true,
         "graveType":"ZombieGrave",
         "soulType":"BigSoul",
         "titleIcon":[§+"'§.§ "1§,§+"'§.§"&6§]
      });
      §§push({
         "id":§;"I§.§ "w§,
         "abilities":new <§-!k§>[new §-!k§("ABILITY_SPEED","rabbit_run",null,"",1,false,["speed"]),new §-!k§("ABILITY_REGEN",§`!a§.§4!W§,null,"",14,false,null),new §-!k§("ABILITY_GENEROSITY","rabbit_generosity",§%#l§,§%#l§.NAME,30,true)],
         "bonus":{
            "valueJumpPowerBonus":Rabbit.§+"z§.value,
            "speed":10,
            "valueThreshold":§>&@§.§?!r§,
            "valueCarrotsFrom":Rabbit.§'#^§.value,
            "valueCarrotsTo":Rabbit.§'#^§.value + Rabbit.§@%,§.value,
            "valueHealFrom":§>&@§.§ #r§.value,
            "valueHealTo":§>&@§.§ #r§.value + §>&@§.§ #O§.value,
            "valueFriendly":§%#l§.§?!r§
         },
         "className":Rabbit,
         "configName":"rabbit",
         "fraction":1,
         "name":"RACE_RABBIT_NAME",
         "descr":"RACE_RABBIT_DESCR",
         "price":2000,
         "realprice":20,
         "requiredLevel":8,
         "playable":true,
         "graveType":"RabbitGrave",
         "soulType":"BigSoul",
         "titleIcon":[§+"'§.§,H§,§+"'§.§]%a§,§+"'§.§-"G§]
      });
      §§push({
         "id":§;"I§.§+&8§,
         "abilities":new <§-!k§>[new §-!k§("ABILITY_UNDERWATER","demon_water",null,"",1,false,["waterBreath"]),new §-!k§("ABILITY_POISON","demon_poison",null,"",14,false,["poisonDamage"]),new §-!k§("ABILITY_UNDERWATER_SQUAD","demon_trapper",§'i§,§'i§.NAME,30,true,null)],
         "bonus":{
            "valuePoison":60,
            "poisonDamage":60,
            "waterBreath":1
         },
         "className":Demon,
         "configName":"demon",
         "fraction":2,
         "name":"RACE_DEMON_NAME",
         "descr":"RACE_DEMON_DESCR",
         "price":3200,
         "realprice":32,
         "requiredLevel":10,
         "playable":true,
         "graveType":"DemonGrave",
         "soulType":"BigSoul",
         "titleIcon":[§+"'§.§ "1§,§+"'§.§-!Q§]
      });
      §§push({
         "id":§;"I§.§#%V§,
         "abilities":new <§-!k§>[new §-!k§("ABILITY_CLIMBING","cat_climbing",null,"",1,false,null),new §-!k§("ABILITY_PHASING",§`!a§.§9$4§,null,"",16,false,null),new §-!k§("ABILITY_SHARP_CLAWS","cat_uberdodge",§1$1§,§1$1§.NAME,30,true,null)],
         "bonus":{
            "valueClimbingSpeed":Cat.§##R§.value,
            "valueChance":§[2§.§1!=§.value,
            "valueHpPercent":§[2§.§1%g§.value,
            "valueAddAttack":§3#M§.§ "J§.value,
            "valueMaxAttack":§3#M§.§4!X§.value,
            "valueDamageThreshold":§1$1§.§1!h§,
            "valueInDamagePercent":§1$1§.§%c§,
            "valueLimitDamage":§1$1§.§!$w§,
            "valueTurnDuration":§#&#§.§%!y§
         },
         "className":Cat,
         "configName":"cat",
         "fraction":1,
         "name":"RACE_CAT_NAME",
         "descr":"RACE_CAT_DESCR",
         "price":3600,
         "realprice":36,
         "requiredLevel":12,
         "playable":true,
         "graveType":"CatGrave",
         "soulType":"BigSoul",
         "titleIcon":§+"'§.§0"E§
      });
      §§push("id");
      §§push(§;"I§.§1"^§);
      §§push("abilities");
      
      private static const §#"-§:Array = null;
      
      public function §9+§()
      {
         super();
      }
      
      public static function get list() : Array
      {
         return §#"-§;
      }
   }
}

