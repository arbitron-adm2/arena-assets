package config.achievements
{
   import § !P§.§9%Z§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§6!=§;
   import §+%o§.*;
   import §0%z§.§,$h§;
   import §0%z§.§1&6§;
   import §2#i§.§+%z§;
   import §4'§.§`"q§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObject;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §%#c§
   {
      
      private static const list:Object = {
         "battle":[new §1! §(§!$L§.§6!n§,§0$N§.ACHIEV_BURNED_ENEMIES_DESCR,[new §`"w§(§0$N§.ACHIEV_BURNED_ENEMIES_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":3
         },50,§+"'§.§%%p§,50),new §`"w§(§0$N§.ACHIEV_BURNED_ENEMIES_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":5
         },200,§+"'§.§4$a§,60),new §`"w§(§0$N§.ACHIEV_BURNED_ENEMIES_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },500,§+"'§.§0#'§,70)]),new §1! §(§!$L§.§?#3§,§0$N§.ACHIEV_DESTROYED_SQUARE_DESCR,[new §`"w§(§0$N§.ACHIEV_DESTROYED_SQUARE_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },1000,§+"'§.§7!^§,60),new §`"w§(§0$N§.ACHIEV_DESTROYED_SQUARE_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":15
         },10000,§+"'§.§1!m§,70),new §`"w§(§0$N§.ACHIEV_DESTROYED_SQUARE_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":5
         },30000,§+"'§.§`%v§,80)]),new §1! §(§!$L§.§^!m§,§0$N§.ACHIEV_DROWNED_OPPONENTS_DESCR,[new §`"w§(§0$N§.ACHIEV_DROWNED_OPPONENTS_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":3
         },50,§+"'§.§@"_§,45),new §`"w§(§0$N§.ACHIEV_DROWNED_OPPONENTS_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":5
         },250,§+"'§.§1$C§,60),new §`"w§(§0$N§.ACHIEV_DROWNED_OPPONENTS_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },600,§+"'§.§^&G§,75)]),new §1! §(§!$L§.§2#1§,§0$N§.ACHIEV_WAGER_WINNER_DESCR,[new §`"w§(§0$N§.ACHIEV_WAGER_WINNER_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":5
         },50,§+"'§.§+%I§,80),new §`"w§(§0$N§.ACHIEV_WAGER_WINNER_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },400,§+"'§.§ #8§,90),new §`"w§(§0$N§.ACHIEV_WAGER_WINNER_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":20
         },1000,§+"'§.§6!j§,100)]),new §1! §(§!$L§.§0"3§,§0$N§.ACHIEV_DIPLOMAT_DESCR,[new §`"w§(§0$N§.ACHIEV_DIPLOMAT_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },5,§+"'§.§9!'§,60),new §`"w§(§0$N§.ACHIEV_DIPLOMAT_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },10,§+"'§.§0"3§,70),new §`"w§(§0$N§.ACHIEV_DIPLOMAT_3LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":200
         },15,§+"'§.§1!4§,80)]),new §1! §(§!$L§.§?!2§,§0$N§.ACHIEV_WIND_KILLS_DESCR,[new §`"w§(§0$N§.ACHIEV_WIND_KILLS_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },20,§+"'§.§ !n§,60),new §`"w§(§0$N§.ACHIEV_WIND_KILLS_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":5
         },75,§+"'§.§3!<§,65),new §`"w§(§0$N§.ACHIEV_WIND_KILLS_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },200,§+"'§.§>%§,70)]),new §1! §(§!$L§.MASSIVE_DAMAGE,§0$N§.ACHIEV_MASSIVE_DAMAGE_DESCR,[new §`"w§(§0$N§.ACHIEV_MASSIVE_DAMAGE_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":3
         },20,§+"'§.§94§,60),new §`"w§(§0$N§.ACHIEV_MASSIVE_DAMAGE_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },100,§+"'§.§"!3§,65),new §`"w§(§0$N§.ACHIEV_MASSIVE_DAMAGE_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },250,§+"'§.§1#X§,70)]),new §1! §(§!$L§.GRAVES_SANK,§0$N§.ACHIEV_GRAVES_SANK_DESCR,[new §`"w§(§0$N§.ACHIEV_GRAVES_SANK_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":50
         },25,§+"'§.§<%y§,50),new §`"w§(§0$N§.ACHIEV_GRAVES_SANK_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },80,§+"'§.§<##§,60),new §`"w§(§0$N§.ACHIEV_GRAVES_SANK_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },200,§+"'§.§4#Q§,70)]),new §1! §(§!$L§.§0"I§,§0$N§.ACHIEV_ONE_HP_WIN_DESCR,[new §`"w§(§0$N§.ACHIEV_ONE_HP_WIN_1LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":1
         },2,§+"'§.§[$?§,70),new §`"w§(§0$N§.ACHIEV_ONE_HP_WIN_2LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":2
         },4,§+"'§.LUCKY2,80),new §`"w§(§0$N§.ACHIEV_ONE_HP_WIN_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },6,§+"'§.§!W§,90)]),new §1! §(§!$L§.§3%u§,§0$N§.ACHIEV_IMMOBILE_KILLS_DESCR,[new §`"w§(§0$N§.ACHIEV_IMMOBILE_KILLS_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":120
         },20,§+"'§.STABLE,60),new §`"w§(§0$N§.ACHIEV_IMMOBILE_KILLS_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":7
         },50,§+"'§.§>!5§,65),new §`"w§(§0$N§.ACHIEV_IMMOBILE_KILLS_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":15
         },150,§+"'§.§%!P§,70)]),new §1! §(§!$L§.§"!i§,§0$N§.ACHIEV_FLAWLESS_VICTORIES,[new §`"w§(§0$N§.ACHIEV_FLAWLESS_VICTORIES_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },50,§+"'§.SECRETIVE,60),new §`"w§(§0$N§.ACHIEV_FLAWLESS_VICTORIES_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },250,§+"'§.§=!$§,70),new §`"w§(§0$N§.ACHIEV_FLAWLESS_VICTORIES_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":20
         },1000,§+"'§.§,#Z§,80)]),new §1! §(§!$L§.§3%X§,§0$N§.ACHIEV_FLEW_MILES_DESCR,[new §`"w§(§0$N§.ACHIEV_FLEW_MILES_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":40
         },1500,§+"'§.§>"§,50),new §`"w§(§0$N§.ACHIEV_FLEW_MILES_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":80
         },3500,§+"'§.§6!q§,60),new §`"w§(§0$N§.ACHIEV_FLEW_MILES_3LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":120
         },8000,§+"'§.ACE,70)]),new §1! §(§!$L§.§2"%§,§0$N§.ACHIEV_DOUBLE_KILLLS_DESCR,[new §`"w§(§0$N§.ACHIEV_DOUBLE_KILLLS_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":3
         },20,§+"'§.§6!@§,50),new §`"w§(§0$N§.ACHIEV_DOUBLE_KILLLS_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },100,§+"'§.§]"E§,60),new §`"w§(§0$N§.ACHIEV_DOUBLE_KILLLS_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },250,§+"'§.§%#A§,70)]),new §1! §(§!$L§.§<"I§,§0$N§.ACHIEV_MEDKIT_KILLS_DESCR,[new §`"w§(§0$N§.ACHIEV_MEDKIT_KILLS_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":75
         },15,§+"'§.§4!>§,60),new §`"w§(§0$N§.ACHIEV_MEDKIT_KILLS_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },40,§+"'§.§&$`§,70),new §`"w§(§0$N§.ACHIEV_MEDKIT_KILLS_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },75,§+"'§.§0!o§,80)]),new §1! §(§!$L§.§#&<§,§0$N§.ACHIEV_GATHERED_SUPPLIES_DESCR,[new §`"w§(§0$N§.ACHIEV_GATHERED_SUPPLIES_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },100,§+"'§.§'!'§,45),new §`"w§(§0$N§.ACHIEV_GATHERED_SUPPLIES_2LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },350,§+"'§.§&%D§,55),new §`"w§(§0$N§.ACHIEV_GATHERED_SUPPLIES_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":20
         },800,§+"'§.§!$8§,65)]),new §1! §(§!$L§.KAMIKAZE,§0$N§.ACHIEV_KAMIKAZE_DESCR,[new §`"w§(§0$N§.ACHIEV_KAMIKAZE_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":3
         },25,§+"'§.§`#k§,45),new §`"w§(§0$N§.ACHIEV_KAMIKAZE_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },100,§+"'§.§9%7§,55),new §`"w§(§0$N§.ACHIEV_KAMIKAZE_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },250,§+"'§.§;!A§,65)]),new §1! §(§!$L§.§^"R§,§0$N§.ACHIEV_ROPED_MILES_DESCR,[new §`"w§(§0$N§.ACHIEV_ROPED_MILES_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":40
         },200,§+"'§.§!!]§,50),new §`"w§(§0$N§.ACHIEV_ROPED_MILES_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":80
         },800,§+"'§.§+"y§,55),new §`"w§(§0$N§.ACHIEV_ROPED_MILES_3LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":120
         },2000,§+"'§.§#!v§,60)]),new §1! §(§!$L§.§?#%§,§0$N§.ACHIEV_DROP_WATER_DESCR,[new §`"w§(§0$N§.ACHIEV_DROP_WATER_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":50
         },30,§+"'§.§"&@§,45),new §`"w§(§0$N§.ACHIEV_DROP_WATER_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },80,§+"'§.§9#=§,55),new §`"w§(§0$N§.ACHIEV_DROP_WATER_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },200,§+"'§.§>% §,65)]),new §1! §(§!$L§.§?!3§,§0$N§.ACHIEV_KILL_WALKING_ZOMBIES_DESCR,[new §`"w§(§0$N§.ACHIEV_KILL_WALKING_ZOMBIES_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":5
         },15,§+"'§.§%"T§,50),new §`"w§(§0$N§.ACHIEV_KILL_WALKING_ZOMBIES_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":80
         },50,§+"'§.INQUISITOR,60),new §`"w§(§0$N§.ACHIEV_KILL_WALKING_ZOMBIES_3LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },100,§+"'§.§?$T§,70)]),new §1! §(§!$L§.§1"Y§,§0$N§.ACHIEV_WEAR_HATS_DESCR,[new §`"w§(§0$N§.ACHIEV_KILL_WEAR_HATS_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":70
         },50,§+"'§.§]"u§,60),new §`"w§(§0$N§.ACHIEV_KILL_WEAR_HATS_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":120
         },300,§+"'§.§1F§,70),new §`"w§(§0$N§.ACHIEV_KILL_WEAR_HATS_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },800,§+"'§.§+&"§,80)]),new §1! §(§!$L§.§!"W§,§0$N§.ACHIEV_PARTISAN_DESCR,[new §`"w§(§0$N§.ACHIEV_PARTISAN_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":80
         },5,§+"'§.PARTISAN_LVL_1,60),new §`"w§(§0$N§.ACHIEV_PARTISAN_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },20,§+"'§.PARTISAN_LVL_2,70),new §`"w§(§0$N§.ACHIEV_PARTISAN_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },50,§+"'§.PARTISAN_LVL_3,80)]),new §1! §(§!$L§.§,^§,§0$N§.ACHIEV_COLLECTOR_DESCR,[new §`"w§(§0$N§.ACHIEV_COLLECTOR_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":70
         },25,§+"'§.COLLECTOR_LVL_1,60),new §`"w§(§0$N§.ACHIEV_COLLECTOR_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":120
         },70,§+"'§.COLLECTOR_LVL_2,65),new §`"w§(§0$N§.ACHIEV_COLLECTOR_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },150,§+"'§.COLLECTOR_LVL_3,70)]),new §1! §(§!$L§.§<#!§,§0$N§.ACHIEV_DROP_WATER_FIRST_TURN_DESCR,[new §`"w§(§0$N§.ACHIEV_DROP_WATER_FIRST_TURN_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":50
         },5,§+"'§.DROP_WATER_FIRST_TURN_LVL_1,50),new §`"w§(§0$N§.ACHIEV_DROP_WATER_FIRST_TURN_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },30,§+"'§.DROP_WATER_FIRST_TURN_LVL_2,60),new §`"w§(§0$N§.ACHIEV_DROP_WATER_FIRST_TURN_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":30
         },100,§+"'§.DROP_WATER_FIRST_TURN_LVL_3,70)]),new §1! §(§!$L§.§+"2§,§0$N§.ACHIEV_SUPERBOSS_DEFEATED_DESCR,[new §`"w§(§0$N§.ACHIEV_SUPERBOSS_DEFEATED_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":200
         },3,§+"'§.SUPERBOSS_DEFEATED_LVL_1,80),new §`"w§(§0$N§.ACHIEV_SUPERBOSS_DEFEATED_2LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },15,§+"'§.SUPERBOSS_DEFEATED_LVL_2,90),new §`"w§(§0$N§.ACHIEV_SUPERBOSS_DEFEATED_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":7
         },40,§+"'§.SUPERBOSS_DEFEATED_LVL_3,100)]),new §1! §(§!$L§.§6%K§,§0$N§.ACHIEV_GLADIATOR_WINNER_DESCR,[new §`"w§(§0$N§.ACHIEV_GLADIATOR_WINNER_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },10,§+"'§.GLADIATOR_WINNER_LVL_1,70),new §`"w§(§0$N§.ACHIEV_GLADIATOR_WINNER_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },50,§+"'§.GLADIATOR_WINNER_LVL_2,80),new §`"w§(§0$N§.ACHIEV_GLADIATOR_WINNER_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":40
         },200,§+"'§.GLADIATOR_WINNER_LVL_3,90)]),new §1! §(§!$L§.§&"<§,§0$N§.ACHIEV_COOP_FRIEND_WINNER_DESCR,[new §`"w§(§0$N§.ACHIEV_COOP_FRIEND_WINNER_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":80
         },20,§+"'§.COOP_FRIEND_WINNER_LVL_1,70),new §`"w§(§0$N§.ACHIEV_COOP_FRIEND_WINNER_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":20
         },100,§+"'§.COOP_FRIEND_WINNER_LVL_2,80),new §`"w§(§0$N§.ACHIEV_COOP_FRIEND_WINNER_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":40
         },400,§+"'§.COOP_FRIEND_WINNER_LVL_3,90)]),new §1! §(§!$L§.§'#o§,§0$N§.ACHIEV_GLADIATOR_TEN_WINNER_DESCR,[new §`"w§(§0$N§.ACHIEV_GLADIATOR_TEN_WINNER_1LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },1,§+"'§.GLADIATOR_TEN_WINNER_LVL_1,90,§0$N§.ACHIEV_GLADIATOR_TEN_WINNER_1LEVEL_DESCR),new §`"w§(§0$N§.ACHIEV_GLADIATOR_TEN_WINNER_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":40
         },3,§+"'§.GLADIATOR_TEN_WINNER_LVL_2,100,§0$N§.ACHIEV_GLADIATOR_TEN_WINNER_2LEVEL_DESCR),new §`"w§(§0$N§.ACHIEV_GLADIATOR_TEN_WINNER_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":5
         },5,§+"'§.GLADIATOR_TEN_WINNER_LVL_3,110)]),new §1! §(§!$L§.§[%J§,§0$N§.ACHIEV_EXOTIC_WEAPON_MASTER_DESCR,[new §`"w§(§0$N§.ACHIEV_EXOTIC_WEAPON_MASTER_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":50
         },1000,§+"'§.EXOTIC_WEAPON_MASTER_LVL_1,50),new §`"w§(§0$N§.ACHIEV_EXOTIC_WEAPON_MASTER_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":8
         },3000,§+"'§.EXOTIC_WEAPON_MASTER_LVL_2,60),new §`"w§(§0$N§.ACHIEV_EXOTIC_WEAPON_MASTER_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":2
         },10000,§+"'§.EXOTIC_WEAPON_MASTER_LVL_3,70)]),new §1! §(§!$L§.§>"2§,§0$N§.ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_DESCR,[new §`"w§(§0$N§.ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },5,§+"'§.RISING_ZOMBIES_WINNER_1,80),new §`"w§(§0$N§.ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":500
         },50,§+"'§.RISING_ZOMBIES_WINNER_2,100),new §`"w§(§0$N§.ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":5
         },500,§+"'§.RISING_ZOMBIES_WINNER_3,120)]),new §1! §(§!$L§.§;v§,§0$N§.ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_DESCR,[new §`"w§(§0$N§.ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },1,§+"'§.RISING_ZOMBIES_FOUR_1,80),new §`"w§(§0$N§.ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":500
         },10,§+"'§.RISING_ZOMBIES_FOUR_2,100),new §`"w§(§0$N§.ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":5
         },100,§+"'§.RISING_ZOMBIES_FOUR_3,120)]),new §1! §(§!$L§.§1%O§,§0$N§.ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_DESCR,[new §`"w§(§0$N§.ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },5,§+"'§.RISING_ZOMBIES_RARE_1,80),new §`"w§(§0$N§.ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":500
         },25,§+"'§.RISING_ZOMBIES_RARE_2,100),new §`"w§(§0$N§.ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":5
         },100,§+"'§.RISING_ZOMBIES_RARE_3,120)]),new §1! §(§!$L§.§;q§,§0$N§.ACHIEV_SHOCKED_ENEMIES_DESCR,[new §`"w§(§0$N§.ACHIEV_SHOCKED_ENEMIES_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },50,§+"'§.ELECTROKILL_1,50),new §`"w§(§0$N§.ACHIEV_SHOCKED_ENEMIES_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":200
         },200,§+"'§.ELECTROKILL_2,60),new §`"w§(§0$N§.ACHIEV_SHOCKED_ENEMIES_3LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":300
         },500,§+"'§.ELECTROKILL_3,70)]),new §1! §(§!$L§.§#"n§,§0$N§.ACHIEV_BOSS_EXTRA_REWARD_DESCR,[new §`"w§(§0$N§.ACHIEV_BOSS_EXTRA_REWARD_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },5,§+"'§.BOSS_EXTRAS_1,80),new §`"w§(§0$N§.ACHIEV_BOSS_EXTRA_REWARD_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":500
         },10,§+"'§.BOSS_EXTRAS_2,90),new §`"w§(§0$N§.ACHIEV_BOSS_EXTRA_REWARD_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":5
         },15,§+"'§.BOSS_EXTRAS_3,100)]),new §1! §(§!$L§.§`&3§,§0$N§.ACHIEV_MERC_WIN_DESCR,[new §`"w§(§0$N§.ACHIEV_MERC_WIN_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },10,§+"'§.MERCS_WIN_1,70),new §`"w§(§0$N§.ACHIEV_MERC_WIN_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },50,§+"'§.MERCS_WIN_2,80),new §`"w§(§0$N§.ACHIEV_MERC_WIN_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":40
         },200,§+"'§.MERCS_WIN_3,90)]),new §1! §(§!$L§.§<!3§,§0$N§.ACHIEV_ROPE_PERFECT_WIN_DESCR,[new §`"w§(§0$N§.ACHIEV_ROPE_PERFECT_WIN_1LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },5,§+"'§.ROPERACE_1,70),new §`"w§(§0$N§.ACHIEV_ROPE_PERFECT_WIN_2LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":4
         },10,§+"'§.ROPERACE_2,80),new §`"w§(§0$N§.ACHIEV_ROPE_PERFECT_WIN_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":5
         },20,§+"'§.ROPERACE_3,90)])],
         "game":[new §1! §(§!$L§.§0"K§,§0$N§.ACHIEV_FUZZES_SPENT_DESCR,[new §`"w§(§0$N§.ACHIEV_FUZZES_SPENT_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },10000,§+"'§.§!"0§,50),new §`"w§(§0$N§.ACHIEV_FUZZES_SPENT_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":25
         },25000,§+"'§.§9!V§,70),new §`"w§(§0$N§.ACHIEV_FUZZES_SPENT_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":50
         },60000,§+"'§.§="X§,90)]),new §1! §(§!$L§.§`&0§,§0$N§.ACHIEV_RUBIES_SPENT_DESCR,[new §`"w§(§0$N§.ACHIEV_RUBIES_SPENT_1LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":5
         },100,§+"'§.§"#3§,80),new §`"w§(§0$N§.ACHIEV_RUBIES_SPENT_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":40
         },300,§+"'§.§+#>§,100),new §`"w§(§0$N§.ACHIEV_RUBIES_SPENT_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":80
         },800,§+"'§.§[u§,150)]),new §1! §(§!$L§.§?&+§,§0$N§.ACHIEV_PUMPED_REACTION_DESCR,[new §`"w§(§0$N§.ACHIEV_PUMPED_REACTION_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":50
         },100,§+"'§.FRIEND,50),new §`"w§(§0$N§.ACHIEV_PUMPED_REACTION_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },250,§+"'§.§8$@§,55),new §`"w§(§0$N§.ACHIEV_PUMPED_REACTION_3LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":200
         },1000,§+"'§.§;!§,60)]),new §1! §(§!$L§.RUBIES_FOUND,§0$N§.ACHIEV_RUBIES_FOUND_DESCR,[new §`"w§(§0$N§.ACHIEV_RUBIES_FOUND_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":3
         },10,§+"'§.MINER,50),new §`"w§(§0$N§.ACHIEV_RUBIES_FOUND_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":6
         },25,§+"'§.§,"5§,60),new §`"w§(§0$N§.ACHIEV_RUBIES_FOUND_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":12
         },50,§+"'§.§=$<§,70)]),new §1! §(§!$L§.§0$&§,§0$N§.ACHIEV_MADE_PHOTO_DESCR,[new §`"w§(§0$N§.ACHIEV_MADE_PHOTO_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":40
         },10,§+"'§.§<$S§,40),new §`"w§(§0$N§.ACHIEV_MADE_PHOTO_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":80
         },25,§+"'§.§1$L§,50),new §`"w§(§0$N§.ACHIEV_MADE_PHOTO_3LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":120
         },100,§+"'§.§9%w§,60)]),new §1! §(§!$L§.§]w§,§0$N§.ACHIEV_MADE_VIDEO_DESCR,[new §`"w§(§0$N§.ACHIEV_MADE_VIDEO_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":40
         },5,§+"'§.§9%!§,40),new §`"w§(§0$N§.ACHIEV_MADE_VIDEO_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":80
         },10,§+"'§.§=F§,50),new §`"w§(§0$N§.ACHIEV_MADE_VIDEO_3LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":120
         },30,§+"'§.§;%R§,60)]),new §1! §(§!$L§.§1&<§,§0$N§.ACHIEV_GAME_VISITS_DESCR,[new §`"w§(§0$N§.ACHIEV_GAME_VISITS_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":200
         },5,§+"'§.§9#X§,100),new §`"w§(§0$N§.ACHIEV_GAME_VISITS_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":20
         },10,§+"'§.§+"=§,150),new §`"w§(§0$N§.ACHIEV_GAME_VISITS_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":5
         },20,§+"'§.§,"P§,300)]),new §1! §(§!$L§.§%%x§,§0$N§.ACHIEV_GUNS_IN_BOX_DESCR,[new §`"w§(§0$N§.ACHIEV_GUNS_IN_BOX_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },20,§+"'§.GUNS_IN_BOX_LVL_1,60),new §`"w§(§0$N§.ACHIEV_GUNS_IN_BOX_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":15
         },80,§+"'§.GUNS_IN_BOX_LVL_2,65),new §`"w§(§0$N§.ACHIEV_GUNS_IN_BOX_3LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":250
         },300,§+"'§.GUNS_IN_BOX_LVL_3,70)]),new §1! §(§!$L§.§!"4§,§0$N§.ACHIEV_WEAPONS_UPGRADE_DESCR,[new §`"w§(§0$N§.ACHIEV_WEAPONS_UPGRADE_1LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":1
         },5,§+"'§.WEAPONS_UPGRADE_LVL_1,60),new §`"w§(§0$N§.ACHIEV_WEAPONS_UPGRADE_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":150
         },15,§+"'§.WEAPONS_UPGRADE_LVL_2,70),new §`"w§(§0$N§.ACHIEV_WEAPONS_UPGRADE_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },50,§+"'§.WEAPONS_UPGRADE_LVL_3,80)]),new §1! §(§!$L§.CRAFT_LEGENDARY,§0$N§.ACHIEV_CRAFT_LEGENDARY_DESCR,[new §`"w§(§0$N§.ACHIEV_CRAFT_LEGENDARY_1LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":5
         },1,§+"'§.CRAFT_LEGENDARY_LVL_1,100,§0$N§.ACHIEV_CRAFT_LEGENDARY_1LEVEL_DESCR),new §`"w§(§0$N§.ACHIEV_CRAFT_LEGENDARY_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":50
         },2,§+"'§.CRAFT_LEGENDARY_LVL_2,120),new §`"w§(§0$N§.ACHIEV_CRAFT_LEGENDARY_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":15
         },3,§+"'§.CRAFT_LEGENDARY_LVL_3,150)]),new §1! §(§!$L§.§5$'§,§0$N§.ACHIEV_SOCIAL_POST_DESCR,[new §`"w§(§0$N§.ACHIEV_SOCIAL_POST_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":40
         },5,§+"'§.SOCIAL_POST_LVL_1,40),new §`"w§(§0$N§.ACHIEV_SOCIAL_POST_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":60
         },20,§+"'§.SOCIAL_POST_LVL_2,50),new §`"w§(§0$N§.ACHIEV_SOCIAL_POST_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":2
         },50,§+"'§.SOCIAL_POST_LVL_3,60)]),new §1! §(§!$L§.§%%3§,§0$N§.ACHIEV_OPEN_RACE_DESCR,[new §`"w§(§0$N§.ACHIEV_OPEN_RACE_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":5
         },3,§+"'§.OPEN_RACE_LVL_1,45,§0$N§.ACHIEV_OPEN_RACE_1LEVEL_DESCR),new §`"w§(§0$N§.ACHIEV_OPEN_RACE_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },5,§+"'§.OPEN_RACE_LVL_2,50),new §`"w§(§0$N§.ACHIEV_OPEN_RACE_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":2
         },7,§+"'§.OPEN_RACE_LVL_3,55)]),new §1! §(§!$L§.§9"@§,§0$N§.ACHIEV_RETURN_FRIENDS_DESCR,[new §`"w§(§0$N§.ACHIEV_RETURN_FRIENDS_1LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":40
         },2,§+"'§.RETURN_FRIENDS_LVL_1,40),new §`"w§(§0$N§.ACHIEV_RETURN_FRIENDS_2LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },5,§+"'§.RETURN_FRIENDS_LVL_2,45),new §`"w§(§0$N§.ACHIEV_RETURN_FRIENDS_3LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":100
         },15,§+"'§.RETURN_FRIENDS_LVL_3,50)]),new §1! §(§!$L§.§;#Y§,§0$N§.ACHIEV_REWARD_CHEST_DESCR,[new §`"w§(§0$N§.ACHIEV_REWARD_CHEST_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":5
         },5,§+"'§.REWARD_CHEST_LVL_1,40),new §`"w§(§0$N§.ACHIEV_REWARD_CHEST_2LEVEL_TITLE,{
            "type":§1&6§.FUZY.value,
            "count":60
         },40,§+"'§.REWARD_CHEST_LVL_2,50),new §`"w§(§0$N§.ACHIEV_REWARD_CHEST_3LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":2
         },100,§+"'§.REWARD_CHEST_LVL_3,60)]),new §1! §(§!$L§.§4#J§,§0$N§.ACHIEV_OPEN_SKIN_DESCR,[new §`"w§(§0$N§.ACHIEV_OPEN_SKIN_1LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":10
         },2,§+"'§.OPEN_SKIN_LVL_1,60),new §`"w§(§0$N§.ACHIEV_OPEN_SKIN_2LEVEL_TITLE,{
            "type":§1&6§.RUBY.value,
            "count":3
         },5,§+"'§.OPEN_SKIN_LVL_2,70),new §`"w§(§0$N§.ACHIEV_OPEN_SKIN_3LEVEL_TITLE,{
            "type":§1&6§.REACTION.value,
            "count":30
         },12,§+"'§.OPEN_SKIN_LVL_3,80)])]
      };
      
      public function §%#c§()
      {
         super();
      }
      
      public static function init(param1:§1#+§) : void
      {
         if(!param1.§7&@§())
         {
            §2%K§(§!$L§.§]w§);
         }
         if(!Social.settings.§2$@§())
         {
            §2%K§(§!$L§.§0$&§);
         }
      }
      
      private static function §2%K§(param1:int) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         for each(_loc2_ in list)
         {
            _loc3_ = 0;
            _loc4_ = int(_loc2_.length);
            while(_loc3_ < _loc4_)
            {
               if(_loc2_[_loc3_].id == param1)
               {
                  _loc2_.splice(_loc3_,1);
                  §9%Z§.§;!i§(param1);
                  return;
               }
               _loc3_++;
            }
         }
      }
      
      public static function §=$W§(param1:Vector.<int>) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:§;#_§ = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:§1! § = null;
         if(!list.season)
         {
            _loc2_ = [];
            list.season = _loc2_;
            for each(_loc3_ in param1)
            {
               _loc4_ = §<$c§.§ !=§(_loc3_);
               _loc5_ = _loc4_.getMenuIcon();
               _loc6_ = §0$N§.ACHIEV_SEASON_WEAPON_COLLECT_TITLE + " " + _loc4_.§7%z§();
               _loc7_ = new §1! §(§!$L§.§`x§ + _loc3_,§0$N§.ACHIEV_SEASON_WEAPON_COLLECT_DESCR,[new §`"w§(_loc6_,{
                  "type":§1&6§.FUZY.value,
                  "count":100
               },5,_loc5_,0),new §`"w§(_loc6_,{
                  "type":§1&6§.FUZY.value,
                  "count":300
               },15,_loc5_,0),new §`"w§(_loc6_,{
                  "type":§1&6§.RUBY.value,
                  "count":5
               },50,_loc5_,0)]);
               _loc2_.push(_loc7_);
            }
         }
      }
      
      public static function getRecord(param1:int) : §1! §
      {
         var _loc2_:Array = null;
         var _loc3_:§1! § = null;
         loop0:
         for each(_loc2_ in list)
         {
            var _loc6_:int = 0;
            var _loc7_:* = _loc2_;
            do
            {
               for each(_loc3_ in _loc7_)
               {
               }
               continue loop0;
            }
            while(_loc3_.id != param1);
            return _loc3_;
         }
         return null;
      }
      
      public static function §7#]§(param1:int) : String
      {
         var _loc2_:§,$h§ = §"",§(param1);
         return _loc2_ ? _loc2_.value : "";
      }
      
      public static function §"",§(param1:int) : §,$h§
      {
         var _loc2_:Array = null;
         var _loc3_:§1! § = null;
         for each(_loc2_ in list)
         {
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_.id == param1)
               {
                  if(_loc2_ == list.battle)
                  {
                     return §,$h§.§-!l§;
                  }
                  if(_loc2_ == list.game)
                  {
                     return §,$h§.§%R§;
                  }
                  if(_loc2_ == list.season)
                  {
                     return §,$h§.§[Q§;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §;$"§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:§1! § = null;
         var _loc5_:String = null;
         var _loc6_:§`"w§ = null;
         for each(_loc1_ in list)
         {
            if(_loc1_ == list.battle)
            {
            }
            if(_loc1_ == list.game)
            {
            }
            _loc2_ = 0;
            _loc3_ = {};
            for each(_loc4_ in _loc1_)
            {
               for each(_loc6_ in _loc4_.levels)
               {
                  _loc2_ += _loc6_.points;
                  if(!_loc3_[_loc6_.reward.type])
                  {
                     _loc3_[_loc6_.reward.type] = 0;
                  }
                  _loc3_[_loc6_.reward.type] += _loc6_.reward.count;
               }
            }
            for(_loc5_ in _loc3_)
            {
            }
         }
      }
      
      public static function §0E§(param1:§,$h§) : Array
      {
         return list[param1.value];
      }
      
      public static function §7$i§() : Object
      {
         return list;
      }
   }
}

