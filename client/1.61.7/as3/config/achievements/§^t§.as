package config.achievements
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §&!@§.§!6§;
   import §&!@§.§5"`§;
   import §&!@§.Assassin;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Miner;
   import §&!@§.Samurai;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§0%§;
   import §0%z§.§1&6§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §4%_§.ZombieGrave;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §^t§
   {
      
      private static const §>""§:Array = [{
         "id":§+#N§.§`%b§,
         "achievs":[rec(BossAchieves.§6!&§,"IRON_FARMER",null,{
            "type":§1&6§.FUZY.value,
            "count":50
         },§+"'§.IRON_FARMER,10),rec(BossAchieves.§ ##§,"PICK_APPLES_FARMER",Farmer.§;#n§,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.PICK_APPLES_FARMER,10),rec(BossAchieves.§=d§,"FARMER_MANIPULATOR",Farmer.§%$B§,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.§1%Y§,10)],
         "totalAchieve":rec(BossAchieves.FARMER_TOTAL,"FARMER_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.§1%Y§,20)
      },{
         "id":§+#N§.§[$]§,
         "achievs":[rec(BossAchieves.§9!-§,"NOT_GET_DAMAGE_HUNTER",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.§+#K§,10),rec(BossAchieves.§#%C§,"NOT_DESTROY_GENERATION_HUNTER",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.§]!7§,10),rec(BossAchieves.§3#8§,"DESTROY_ACTIVATOR_HUNTER",Hunter.§;#E§,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§ !,§,10)],
         "totalAchieve":rec(BossAchieves.HUNTER_TOTAL,"HUNTER_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.§ !,§,20)
      },{
         "id":§+#N§.§<"7§,
         "achievs":[rec(BossAchieves.§#?§,"DODGE_HOOK_MANIACS",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.DODGE_HOOK_MANIACS,10),rec(BossAchieves.§]$D§,"KILL_TOGETHER_MANIACS",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.KILL_TOGETHER_MANIACS,10),rec(BossAchieves.§"!_§,"FLOODING_BOSSES_MANIACS",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§,w§,10)],
         "totalAchieve":rec(BossAchieves.MANIACS_TOTAL,"MANIACS_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.KILL_TOGETHER_MANIACS,20)
      },{
         "id":§+#N§.MINER,
         "achievs":[rec(BossAchieves.§4&!§,"DODGER_MINER",null,{
            "type":§1&6§.FUZY.value,
            "count":100
         },§+"'§.DODGER_MINER,10),rec(BossAchieves.§'!a§,"SCOUNDREL_MINER",null,{
            "type":§1&6§.FUZY.value,
            "count":70
         },§+"'§.SCOUNDREL_MINER,10),rec(BossAchieves.§^#q§,"DESTROYER_MINER",Miner.§@%g§,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.DESTROYER_MINER,10)],
         "totalAchieve":rec(BossAchieves.MINER_TOTAL,"MINER_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.SCOUNDREL_MINER,20)
      },{
         "id":§+#N§.SAMURAI,
         "achievs":[rec(BossAchieves.§?#o§,"DODGER_SAMURAI",Samurai.§?4§,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.DODGER_SAMURAI,10),rec(BossAchieves.§%!p§,"FIRE_KILL_SAMURAI",Samurai.§5"g§,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.FIRE_KILL_SAMURAI,10),rec(BossAchieves.§8$^§,"SINK_ALL_SAMURAI",Samurai.§]$#§,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.SINK_ALL_SAMURAI,10)],
         "totalAchieve":rec(BossAchieves.SAMURAI_TOTAL,"SAMURAI_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.FIRE_KILL_SAMURAI,20)
      },{
         "id":§+#N§.§]"T§,
         "achievs":[rec(BossAchieves.§?!V§,"KILL_SERGEANT_ON_FIRST_TURN",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§'"O§,10),rec(BossAchieves.§%+§,"DODGER_SERGEANT",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.DODGER_SERGEANT,10),rec(BossAchieves.§4%9§,"KILL_SERGEANT_LATEST",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§^%Y§,10)],
         "totalAchieve":rec(BossAchieves.SERGEANT_TOTAL,"SERGEANT_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.§'"O§,20)
      },{
         "id":§+#N§.§9&0§,
         "achievs":[rec(BossAchieves.§9"r§,"DODGER_BURNING_DEAD",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.DODGER_BURNING_DEAD,10),rec(BossAchieves.§`$%§,"FAIL_DROP_THREE_METEORS",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.§07§,10),rec(BossAchieves.§7$b§,"METEOR_ON_ZOMBIE",BurningZombies.§7#z§,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§[!H§,10)],
         "totalAchieve":rec(BossAchieves.BURNING_DEAD_TOTAL,"BURNING_DEAD_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.§[!H§,20)
      },{
         "id":§+#N§.§1"m§,
         "achievs":[rec(BossAchieves.§=$U§,"DONT_LET_REGENERATE",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.DONT_LET_REGENERATE,10),rec(BossAchieves.§[#U§,"WIN_WITH_MORE_THAN_HALF_HP",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§@$i§,10),rec(BossAchieves.§<?§,"KILL_FOES_IN_ONE_TURN",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.§%"I§,10)],
         "totalAchieve":rec(BossAchieves.WANDERING_SOUL_TOTAL,"WANDERING_SOUL_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.DONT_LET_REGENERATE,20)
      },{
         "id":§+#N§.§>%§,
         "achievs":[rec(BossAchieves.§ "R§,"KILL_SUPPORT_AFTER_TELEPORT",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§3#e§,10),rec(BossAchieves.§ $A§,"LAST_BOSS_STANDING",null,{
            "type":§1&6§.FUZY.value,
            "count":70
         },§+"'§.§3![§,10),rec(BossAchieves.SHAMAN_KILL_IN_TWO_TURNS,"SHAMAN_KILL_IN_TWO_TURNS",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.§`%'§,10)],
         "totalAchieve":rec(BossAchieves.SHAMAN_TOTAL,"SHAMAN_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.§3![§,20)
      },{
         "id":§+#N§.§9$6§,
         "achievs":[rec(BossAchieves.ILLUSIONIST_DROWN_FIVE_TIMES,"ILLUSIONIST_DROWN_FIVE_TIMES",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§<%l§,10),rec(BossAchieves.§["f§,"KILL_ALL_CLONES",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.§;^§,10),rec(BossAchieves.§1q§,"DONT_LET_SPAWN_3_ILLS",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.§%0§,10)],
         "totalAchieve":rec(BossAchieves.ILLUSIONIST_TOTAL,"ILLUSIONIST_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.§%0§,20)
      },{
         "id":§+#N§.§5#I§,
         "achievs":[rec(BossAchieves.VIKINGS_DROWN_ALL,"VIKINGS_DROWN_ALL",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.§"#o§,10),rec(BossAchieves.VIKINGS_KILL_TWO_IN_TURN,"VIKINGS_KILL_TWO_IN_TURN",null,{
            "type":§1&6§.FUZY.value,
            "count":70
         },§+"'§.§@$g§,10),rec(BossAchieves.VIKINGS_WIN_WITH_FULL_HP,"VIKINGS_WIN_WITH_FULL_HP",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.§0$M§,10)],
         "totalAchieve":rec(BossAchieves.VIKINGS_TOTAL,"VIKINGS_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.§@$g§,20)
      },{
         "id":§+#N§.§ #z§,
         "achievs":[rec(BossAchieves.PIRATE_DROWN_SUPPORTS,"PIRATE_DROWN_SUPPORTS",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.§?$I§,10),rec(BossAchieves.PIRATE_KILL_LAST,"PIRATE_KILL_LAST",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.PIRATE_KILL_LAST,10),rec(BossAchieves.PIRATE_DONT_SINK,"PIRATE_DONT_SINK",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.PIRATE_DONT_SINK,10)],
         "totalAchieve":rec(BossAchieves.PIRATE_TOTAL,"PIRATE_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.PIRATE_KILL_LAST,20)
      },{
         "id":§+#N§.§@#5§,
         "achievs":[rec(BossAchieves.WIND_MASTER_DROWN_GUARDIANS,"WIND_MASTER_DROWN_GUARDIANS",null,{
            "type":§1&6§.FUZY.value,
            "count":70
         },§+"'§.WIND_MASTER_DROWN_GUARDIANS,10),rec(BossAchieves.WIND_MASTER_KILL_LAST,"WIND_MASTER_KILL_LAST",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.WIND_MASTER_KILL_LAST,10),rec(BossAchieves.WIND_MASTER_DONT_DROWN_ENEMIES,"WIND_MASTER_DONT_DROWN_ENEMIES",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.WIND_MASTER_DONT_DROWN_ENEMIES,10)],
         "totalAchieve":rec(BossAchieves.WIND_MASTER_TOTAL,"WIND_MASTER_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.WIND_MASTER_KILL_LAST,20)
      },{
         "id":§+#N§.§1!+§,
         "achievs":[rec(BossAchieves.YAKUZA_KILL_STEEL_LAST,"YAKUZA_KILL_STEEL_LAST",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.YAKUZA_KILL_STEEL_LAST,10),rec(BossAchieves.YAKUZA_KILL_TWO_IN_TURN,"YAKUZA_KILL_TWO_IN_TURN",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.YAKUZA_KILL_TWO_IN_TURN,10),rec(BossAchieves.YAKUZA_DO_MONSTER_THREE_TIMES,"YAKUZA_DO_MONSTER_THREE_TIMES",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.YAKUZA_DO_MONSTER_THREE_TIMES,10)],
         "totalAchieve":rec(BossAchieves.YAKUZA_TOTAL,"YAKUZA_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.YAKUZA_KILL_STEEL_LAST,20)
      },{
         "id":§+#N§.§,&7§,
         "achievs":[rec(BossAchieves.PIRATE_REVENGE_DROWN_SUPPORTS,"PIRATE_REVENGE_DROWN_SUPPORTS",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.PIRATE_REVENGE_DROWN_SUPPORTS,10),rec(BossAchieves.PIRATE_REVENGE_AVOID_METEORS,"PIRATE_REVENGE_AVOID_METEORS",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.PIRATE_REVENGE_AVOID_METEORS,10),rec(BossAchieves.PIRATE_REVENGE_DROWN_THREE_TIMES,"PIRATE_REVENGE_DROWN_THREE_TIMES",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.PIRATE_REVENGE_DROWN_THREE_TIMES,10)],
         "totalAchieve":rec(BossAchieves.PIRATE_REVENGE_TOTAL,"PIRATE_REVENGE_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.PIRATE_REVENGE_DROWN_THREE_TIMES,20)
      },{
         "id":§+#N§.§7$c§,
         "achievs":[rec(BossAchieves.ROMEO_KILL_WITH_ONE_SHOT,"ROMEO_KILL_WITH_ONE_SHOT",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.ROMEO_KILL_WITH_ONE_SHOT,10),rec(BossAchieves.ROMEO_DONT_LET_DODGE,"ROMEO_DONT_LET_DODGE",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§=&B§,10),rec(BossAchieves.ROMEO_KILL_AS_ZOMBIES,"ROMEO_KILL_AS_ZOMBIES",null,{
            "type":§1&6§.FUZY.value,
            "count":70
         },§+"'§.ROMEO_KILL_AS_ZOMBIES,10)],
         "totalAchieve":rec(BossAchieves.ROMEO_TOTAL,"ROMEO_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.ROMEO_KILL_AS_ZOMBIES,20)
      },{
         "id":§+#N§.§]!j§,
         "achievs":[rec(BossAchieves.KING_DEAD_LET_SPAWN_10_ZOMBIES,"KING_DEAD_LET_SPAWN_10_ZOMBIES",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§=%Y§,10),rec(BossAchieves.KING_DEAD_DONT_LET_RES_FIVE_TIMES,"KING_DEAD_DONT_LET_RES_FIVE_TIMES",null,{
            "type":§1&6§.FUZY.value,
            "count":70
         },§+"'§.KING_DEAD_DONT_LET_RES_FIVE_TIMES,10),rec(BossAchieves.KING_DEAD_KILL_IN_ONE_TURN,"KING_DEAD_KILL_IN_ONE_TURN",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.KING_DEAD_KILL_IN_ONE_TURN,10)],
         "totalAchieve":rec(BossAchieves.KING_DEAD_TOTAL,"KING_DEAD_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.§=%Y§,20)
      },{
         "id":§+#N§.GHOST,
         "achievs":[rec(BossAchieves.ANCIENT_GHOST_AVOID_CLOUDS,"ANCIENT_GHOST_AVOID_CLOUDS",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.ANCIENT_GHOST_AVOID_CLOUDS,10),rec(BossAchieves.ANCIENT_GHOST_DONT_MOVE,"ANCIENT_GHOST_DONT_MOVE",null,{
            "type":§1&6§.FUZY.value,
            "count":70
         },§+"'§.§4$P§,10),rec(BossAchieves.ANCIENT_GHOST_KILL_WITH_CLOUD,"ANCIENT_GHOST_KILL_WITH_CLOUD",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.ANCIENT_GHOST_KILL_WITH_CLOUD,10)],
         "totalAchieve":rec(BossAchieves.ANCIENT_GHOST_TOTAL,"ANCIENT_GHOST_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.§4$P§,20)
      },{
         "id":§+#N§.§'#L§,
         "achievs":[rec(BossAchieves.ENGINEER_AVOID_LASERS,"ENGINEER_AVOID_LASERS",null,{
            "type":§1&6§.FUZY.value,
            "count":70
         },§+"'§.ENGINEER_AVOID_LASERS,10),rec(BossAchieves.ENGINEER_KILL_WITH_ROCKETS,"ENGINEER_KILL_WITH_ROCKETS",null,{
            "type":§1&6§.FUZY.value,
            "count":80
         },§+"'§.ENGINEER_KILL_WITH_ROCKETS,10),rec(BossAchieves.ENGINEER_DONT_LET_SPAWN_2_DRONES,"ENGINEER_DONT_LET_SPAWN_2_DRONES",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.§8O§,10)],
         "totalAchieve":rec(BossAchieves.ENGINEER_TOTAL,"ENGINEER_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.ENGINEER_KILL_WITH_ROCKETS,20)
      },{
         "id":§+#N§.§]%v§,
         "achievs":[rec(BossAchieves.GUARDIANS_ALARM,"GUARDIANS_ALARM",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.GUARDIANS_ALARM,10),rec(BossAchieves.GUARDIANS_CATACLYSM,"GUARDIANS_CATACLYSM",§5"`§.§"&9§,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.GUARDIANS_CATACLYSM,10),rec(BossAchieves.GUARDIANS_TELEPORT,"GUARDIANS_TELEPORT",§5"`§.§4%k§,{
            "type":§1&6§.FUZY.value,
            "count":120
         },§+"'§.GUARDIANS_TELEPORT,10)],
         "totalAchieve":rec(BossAchieves.GUARDIANS_TOTAL,"GUARDIANS_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.GUARDIANS_TELEPORT,20)
      },{
         "id":§+#N§.§<$N§,
         "achievs":[rec(BossAchieves.DARK_KNIGHT_UNDERWATER,"DARK_KNIGHT_UNDERWATER",DarkKnight.§;"d§,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.DARK_KNIGHT_UNDERWATER,10),rec(BossAchieves.DARK_KNIGHT_RITUAL,"DARK_KNIGHT_RITUAL",DarkKnight.§3$8§,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.DARK_KNIGHT_RITUAL,10),rec(BossAchieves.DARK_KNIGHT_DOWNWITH,"DARK_KNIGHT_DOWNWITH",null,{
            "type":§1&6§.FUZY.value,
            "count":120
         },§+"'§.DARK_KNIGHT_DOWNWITH,10)],
         "totalAchieve":rec(BossAchieves.DARK_KNIGHT_TOTAL,"DARK_KNIGHT_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.DARK_KNIGHT_DOWNWITH,20)
      },{
         "id":§+#N§.§[#J§,
         "achievs":[rec(BossAchieves.ASSASSIN_SHREDDER,"ASSASSIN_SHREDDER",Assassin.§+$S§,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.ASSASSIN_SHREDDER,10),rec(BossAchieves.ASSASSIN_JUMPS,"ASSASSIN_JUMPS",Assassin.§9$L§,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.ASSASSIN_JUMPS,10),rec(BossAchieves.ASSASSIN_DANCER,"ASSASSIN_DANCER",Assassin.§=#@§,{
            "type":§1&6§.FUZY.value,
            "count":120
         },§+"'§.ASSASSIN_DANCER,10)],
         "totalAchieve":rec(BossAchieves.ASSASSIN_TOTAL,"ASSASSIN_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.ASSASSIN_DANCER,20)
      },{
         "id":§+#N§.§[<§,
         "achievs":[rec(BossAchieves.ALCHEMIST_EMPLOYEE,"ALCHEMIST_EMPLOYEE",§!6§.REAGENTS,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.ALCHEMIST_EMPLOYEE,10),rec(BossAchieves.ALCHEMIST_SAFETY,"ALCHEMIST_SAFETY",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.ALCHEMIST_SAFETY,10),rec(BossAchieves.ALCHEMIST_ELEMENTS,"ALCHEMIST_ELEMENTS",null,{
            "type":§1&6§.FUZY.value,
            "count":120
         },§+"'§.ALCHEMIST_ELEMENTS,10)],
         "totalAchieve":rec(BossAchieves.ALCHEMIST_TOTAL,"ALCHEMIST_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.ALCHEMIST_EMPLOYEE,20)
      },{
         "id":§+#N§.§@"f§,
         "achievs":[rec(BossAchieves.ARCHBOT_LAST,"ARCHBOT_LAST",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.ARCHBOT_LAST,10),rec(BossAchieves.ARCHBOT_DROID,"ARCHBOT_DROID",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.ARCHBOT_DROID,10),rec(BossAchieves.ARCHBOT_MAGIC,"ARCHBOT_MAGIC",null,{
            "type":§1&6§.FUZY.value,
            "count":120
         },§+"'§.ARCHBOT_MAGIC,10)],
         "totalAchieve":rec(BossAchieves.ARCHBOT_TOTAL,"ARCHBOT_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.ARCHBOT_MAGIC,20)
      }];
      
      private static const §7m§:Array = [{
         "id":§+#N§.§"v§,
         "achievs":[rec(BossAchieves.PALADIN_SURVIVE_ALL,"PALADIN_SURVIVE_ALL",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.PALADIN_SURVIVE_ALL,10),rec(BossAchieves.PALADIN_MERMAN,"PALADIN_MERMAN",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.PALADIN_MERMAN,10),rec(BossAchieves.PALADIN_OLD_GOD,"PALADIN_OLD_GOD",null,{
            "type":§1&6§.FUZY.value,
            "count":120
         },§+"'§.PALADIN_OLD_GOD,10)],
         "totalAchieve":rec(BossAchieves.PALADIN_TOTAL,"PALADIN_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.PALADIN_OLD_GOD,20)
      },{
         "id":§+#N§.§<!Z§,
         "achievs":[rec(BossAchieves.HACKER_DO_MONSTER,"HACKER_DO_MONSTER",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.HACKER_DO_MONSTER,10),rec(BossAchieves.HACKER_FIREWALL,"HACKER_FIREWALL",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.HACKER_FIREWALL,10),rec(BossAchieves.HACKER_NUMERATOR,"HACKER_NUMERATOR",null,{
            "type":§1&6§.FUZY.value,
            "count":120
         },§+"'§.HACKER_NUMERATOR,10)],
         "totalAchieve":rec(BossAchieves.HACKER_TOTAL,"HACKER_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.HACKER_NUMERATOR,20)
      },{
         "id":§+#N§.THIEVES,
         "achievs":[rec(BossAchieves.THIEVES_GANG_LEADER,"THIEVES_GANG_LEADER",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.THIEVES_GANG_LEADER,10),rec(BossAchieves.THIEVES_DIGGER,"THIEVES_DIGGER",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.THIEVES_DIGGER,10),rec(BossAchieves.THIEVES_AUTHORITY,"THIEVES_AUTHORITY",null,{
            "type":§1&6§.FUZY.value,
            "count":120
         },§+"'§.THIEVES_AUTHORITY,10)],
         "totalAchieve":rec(BossAchieves.THIEVES_TOTAL,"THIEVES_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.THIEVES_AUTHORITY,20)
      },{
         "id":§+#N§.§2$&§,
         "achievs":[rec(BossAchieves.TELEPATHIST_PEDANT,"TELEPATHIST_PEDANT",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.TELEPATHIST_PEDANT,10),rec(BossAchieves.TELEPATHIST_LIFESAVER,"TELEPATHIST_LIFESAVER",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.TELEPATHIST_LIFESAVER,10),rec(BossAchieves.TELEPATHIST_PSIONIC,"TELEPATHIST_PSIONIC",null,{
            "type":§1&6§.FUZY.value,
            "count":120
         },§+"'§.TELEPATHIST_PSIONIC,10)],
         "totalAchieve":rec(BossAchieves.TELEPATHIST_TOTAL,"TELEPATHIST_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.TELEPATHIST_PSIONIC,20)
      },{
         "id":§+#N§.§=!q§,
         "achievs":[rec(BossAchieves.PHANTOMS_FANTOMAS,"PHANTOMS_FANTOMAS",null,{
            "type":§1&6§.FUZY.value,
            "count":60
         },§+"'§.PHANTOMS_FANTOMAS,10),rec(BossAchieves.PHANTOMS_POLTERGEIST,"PHANTOMS_POLTERGEIST",null,{
            "type":§1&6§.FUZY.value,
            "count":90
         },§+"'§.PHANTOMS_POLTERGEIST,10),rec(BossAchieves.PHANTOMS_GHOSTBUSTER,"PHANTOMS_GHOSTBUSTER",null,{
            "type":§1&6§.FUZY.value,
            "count":120
         },§+"'§.PHANTOMS_GHOSTBUSTER,10)],
         "totalAchieve":rec(BossAchieves.PHANTOMS_TOTAL,"PHANTOMS_TOTAL",null,{
            "type":§1&6§.RUBY.value,
            "count":1
         },§+"'§.PHANTOMS_GHOSTBUSTER,20)
      }];
      
      private static const single:Array = [{
         "id":§`&<§.ADD_IN_MENU,
         "achievs":[rec(BossAchieves.ADD_IN_MENU,"ACHIEV_ADD_IN_MENU",null,{
            "type":§1&6§.FUZY.value,
            "count":500
         },§+"'§.ADD_IN_MENU,0),rec(BossAchieves.§^#C§,"ACHIEV_ADD_IN_MENU",null,{
            "type":§1&6§.FUZY.value,
            "count":0
         },§+"'§.ADD_IN_MENU,0)]
      }];
      
      private static const achievs:Object = {
         "bosses":getBosses(),
         "single":single
      };
      
      public function §^t§()
      {
         super();
      }
      
      private static function rec(param1:int, param2:String, param3:§&$2§, param4:Object, param5:String, param6:uint) : §'%u§
      {
         var _loc7_:Boolean = param2.indexOf("_TOTAL") > -1;
         var _loc8_:String = §0$N§.§<N§(param2 + "_NAME");
         var _loc9_:String = param3 != null ? §0%§.format(§0$N§.§<N§(param2),{"value":param3.value}) : §0$N§.§<N§(param2);
         return new §'%u§(param1,_loc8_,_loc9_,param4,param5,param6,_loc7_);
      }
      
      public static function §3"1§(param1:uint) : Array
      {
         var _loc2_:Object = null;
         for each(_loc2_ in getBosses())
         {
            if(_loc2_.id == param1)
            {
               return _loc2_.achievs;
            }
         }
         return [];
      }
      
      public static function §,$u§(param1:int) : §'%u§
      {
         var _loc2_:Object = null;
         for each(_loc2_ in getBosses())
         {
            if(_loc2_.id == param1)
            {
               return _loc2_.totalAchieve;
            }
         }
         return null;
      }
      
      public static function §1!3§(param1:int) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in getBosses())
         {
            if(§'%u§(_loc2_.totalAchieve).id == param1)
            {
               return _loc2_.id;
            }
         }
         return -1;
      }
      
      public static function §0%h§(param1:int) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in getBosses())
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function getBosses() : Array
      {
         return §>""§.concat(§7m§);
      }
      
      public static function §1&%§(param1:int) : §'%u§
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         var _loc4_:§'%u§ = null;
         var _loc5_:§'%u§ = null;
         for each(_loc2_ in achievs)
         {
            loop1:
            for each(_loc3_ in _loc2_)
            {
               _loc4_ = §'%u§(_loc3_.totalAchieve);
               if((Boolean(_loc4_)) && _loc4_.id == param1)
               {
                  return _loc4_;
               }
               var _loc10_:int = 0;
               var _loc11_:* = _loc3_.achievs;
               do
               {
                  for each(_loc5_ in _loc11_)
                  {
                  }
                  continue loop1;
               }
               while(!(Boolean(_loc5_) && _loc5_.id == param1));
               return _loc5_;
            }
         }
         return null;
      }
   }
}

