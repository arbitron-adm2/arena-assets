package §<%k§
{
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §2"L§.§,'§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §=$#§.*;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §>$q§.*;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import §`%&§.§8U§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.WipeProfile;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §`!v§
   {
      
      public static const §2"H§:§=#?§ = new §=#?§("MainMenuTheme");
      
      public static const §&#!§:§=#?§ = new §=#?§("MainMenuThemeLoop");
      
      public static const BATTLE_THEME_1:§=#?§ = new §=#?§("BattleTheme1");
      
      public static const BATTLE_THEME_2:§=#?§ = new §=#?§("BattleTheme2");
      
      public static const BATTLE_THEME_3:§=#?§ = new §=#?§("BattleTheme3");
      
      private static const §9!6§:Array = [BATTLE_THEME_1,BATTLE_THEME_2,BATTLE_THEME_3];
      
      public static const §[$=§:§=#?§ = new §=#?§("move_drop",0.1);
      
      public static const §;$t§:§=#?§ = new §=#?§("armory");
      
      public static const ARENA:§=#?§ = new §=#?§("arena");
      
      public static const §8#O§:§=#?§ = new §=#?§("bag",3);
      
      public static const §=#2§:§=#?§ = new §=#?§("bank");
      
      public static const §^""§:§=#?§ = new §=#?§("best");
      
      public static const §4#7§:§=#?§ = new §=#?§("menu_open");
      
      public static const §@"`§:§=#?§ = new §=#?§("menu_close");
      
      public static const §2$e§:§=#?§ = new §=#?§("menu_deny");
      
      public static const §1M§:§=#?§ = new §=#?§("menu_grant");
      
      public static const §;$u§:§=#?§ = new §=#?§("menu_select");
      
      public static const §3"[§:§=#?§ = new §=#?§("menu_turn");
      
      public static const SHOP:§=#?§ = new §=#?§("shop");
      
      public static const §'%o§:§=#?§ = new §=#?§("message");
      
      public static const §1$0§:§=#?§ = new §=#?§("message",30);
      
      public static const §,#K§:§=#?§ = new §=#?§("battle_start");
      
      public static const BONUS:§=#?§ = new §=#?§("bonus");
      
      public static const §6$G§:§=#?§ = new §=#?§("lose");
      
      public static const §!#@§:§=#?§ = new §=#?§("screenshot");
      
      public static const WATER_SPLASH1:§=#?§ = new §=#?§("water_splash1");
      
      public static const WATER_SPLASH2:§=#?§ = new §=#?§("water_splash2");
      
      public static const WATER_SPLASH3:§=#?§ = new §=#?§("water_splash3");
      
      public static const WATER_IMPACT1:§=#?§ = new §=#?§("water_impact_random1");
      
      public static const WATER_IMPACT2:§=#?§ = new §=#?§("water_impact_random2");
      
      public static const WATER_IMPACT3:§=#?§ = new §=#?§("water_impact_random3");
      
      public static const §^#3§:§=#?§ = new §=#?§("kanat_impact");
      
      public static const §?&$§:§=#?§ = new §=#?§("icegun_attack");
      
      public static const § !h§:§=#?§ = new §=#?§("icegun_explosion");
      
      public static const §`'§:§=#?§ = new §=#?§("icegun_icecrash");
      
      public static const §0!h§:§=#?§ = new §=#?§("hrumhrum");
      
      public static const COUGH1:§=#?§ = new §=#?§("cough1");
      
      public static const COUGH2:§=#?§ = new §=#?§("cough2");
      
      public static const COUGH3:§=#?§ = new §=#?§("cough3");
      
      public static const COUGH4:§=#?§ = new §=#?§("cough4");
      
      public static const §8x§:§=#?§ = new §=#?§("bat_swoosh",2);
      
      public static const §5$"§:§=#?§ = new §=#?§("bat_smash",2);
      
      public static const §=%N§:§=#?§ = new §=#?§("balka",2);
      
      public static const §#%u§:§=#?§ = new §=#?§("arbalet_attack");
      
      public static const AIR_STRIKE:§=#?§ = new §=#?§("airstrike",2);
      
      public static const §;!w§:§=#?§ = new §=#?§("СatAirStrike");
      
      public static const §5%;§:§=#?§ = new §=#?§("arbuz_bounce");
      
      public static const §]%2§:§=#?§ = new §=#?§("direction");
      
      public static const §2#u§:§=#?§ = new §=#?§("dynamite_explosion");
      
      public static const §^K§:§=#?§ = new §=#?§("dynamite_fuse_loop");
      
      public static const §`%9§:§=#?§ = new §=#?§("electroshocker");
      
      public static const §`@§:§=#?§ = new §=#?§("fire_loop");
      
      public static const §>"6§:§=#?§ = new §=#?§("flamer");
      
      public static const §[$y§:§=#?§ = new §=#?§("flamer_loop",1.5);
      
      public static const §7#O§:§=#?§ = new §=#?§("grenade_attack");
      
      public static const §1#[§:§=#?§ = new §=#?§("grenade1_bounce");
      
      public static const §=!5§:§=#?§ = new §=#?§("grenade1_bounce_stop");
      
      public static const §["s§:§=#?§ = new §=#?§("grenade1_explosion",2);
      
      public static const §0#O§:§=#?§ = new §=#?§("ground_loop");
      
      public static const §]!d§:§=#?§ = new §=#?§("haliluya");
      
      public static const §>%l§:§=#?§ = new §=#?§("jackhammer");
      
      public static const §+"v§:§=#?§ = new §=#?§("jetpack_loop",0.5);
      
      public static const §6%;§:§=#?§ = new §=#?§("jetpack_start");
      
      public static const §6#O§:§=#?§ = new §=#?§("jetpack_stop");
      
      public static const §^%§:§=#?§ = new §=#?§("mine_beep");
      
      public static const §]!?§:§=#?§ = new §=#?§("molotov_broke");
      
      public static const RIKOSHET1:§=#?§ = new §=#?§("rikoshet1");
      
      public static const RIKOSHET2:§=#?§ = new §=#?§("rikoshet2");
      
      public static const §["p§:§=#?§ = new §=#?§("rocket_attack");
      
      public static const §4"t§:§=#?§ = new §=#?§("rocket1_explosion",4);
      
      public static const §>l§:§=#?§ = new §=#?§("salute_explosion");
      
      public static const §'$f§:§=#?§ = new §=#?§("salute_start");
      
      public static const SHEEP:§=#?§ = new §=#?§("Swine");
      
      public static const §7#d§:§=#?§ = new §=#?§("shotgun_attack");
      
      public static const §-$z§:§=#?§ = new §=#?§("slimer");
      
      public static const §?#§:§=#?§ = new §=#?§("sniper");
      
      public static const §<!L§:§=#?§ = new §=#?§("sheep_super_loop");
      
      public static const §,!3§:§=#?§ = new §=#?§("shotgun2_attack");
      
      public static const TELEPORT:§=#?§ = new §=#?§("teleport",2);
      
      public static const §2%U§:§=#?§ = new §=#?§("throwpower");
      
      public static const §]#Y§:§=#?§ = new §=#?§("vulcan_loop");
      
      public static const §&#?§:§=#?§ = new §=#?§("uzi_loop");
      
      public static const CASSETE_EXPLOSION1:§=#?§ = new §=#?§("cassete_explosion_random1",2);
      
      public static const CASSETE_EXPLOSION2:§=#?§ = new §=#?§("cassete_explosion_random2",2);
      
      public static const CASSETE_EXPLOSION3:§=#?§ = new §=#?§("cassete_explosion_random3",2);
      
      public static const §[% §:§=#?§ = new §=#?§("SpiderMineWalk_LOOP");
      
      public static const SPIDERMINE_WALK_LOOP2:§=#?§ = new §=#?§("SpiderMineWalk_LOOP2");
      
      public static const §8#w§:§=#?§ = new §=#?§("SpiderMineArmed");
      
      public static const §?%<§:§=#?§ = new §=#?§("SpiderMineAttack");
      
      public static const SHURIKEN_ATTACK_01:§=#?§ = new §=#?§("ShurikenAttack01");
      
      public static const SHURIKEN_ATTACK_02:§=#?§ = new §=#?§("ShurikenAttack02");
      
      public static const SHURIKEN_ATTACK_03:§=#?§ = new §=#?§("ShurikenAttack03");
      
      public static const SHURIKEN_ATTACK_04:§=#?§ = new §=#?§("ShurikenAttack04");
      
      public static const SHURIKEN_HITGROUND_01:§=#?§ = new §=#?§("ShurikenHitGround01");
      
      public static const SHURIKEN_HITGROUND_02:§=#?§ = new §=#?§("ShurikenHitGround02");
      
      public static const SHURIKEN_HITGROUND_03:§=#?§ = new §=#?§("ShurikenHitGround03");
      
      public static const SHURIKEN_HITGROUND_04:§=#?§ = new §=#?§("ShurikenHitGround04");
      
      public static const SHURIKEN_HITWORM_01:§=#?§ = new §=#?§("ShurikenHitWorm01");
      
      public static const SHURIKEN_HITWORM_02:§=#?§ = new §=#?§("ShurikenHitWorm02");
      
      public static const SHURIKEN_HITWORM_03:§=#?§ = new §=#?§("ShurikenHitWorm03");
      
      public static const SHURIKEN_HITWORM_04:§=#?§ = new §=#?§("ShurikenHitWorm04");
      
      public static const §"!T§:§=#?§ = new §=#?§("VintageCannonAttack");
      
      public static const §4&3§:§=#?§ = new §=#?§("VintageCannonballExplosion");
      
      public static const VINTAGE_CANNONBALL_HIT_01:§=#?§ = new §=#?§("VintageCannonballHit01",0.5);
      
      public static const VINTAGE_CANNONBALL_HIT_02:§=#?§ = new §=#?§("VintageCannonballHit02",0.5);
      
      public static const VINTAGE_CANNONBALL_HIT_03:§=#?§ = new §=#?§("VintageCannonballHit03",0.5);
      
      public static const §2%T§:§=#?§ = new §=#?§("WoodClubAttack");
      
      public static const §;$N§:§=#?§ = new §=#?§("boomerang_attack");
      
      public static const §2#j§:§=#?§ = new §=#?§("boomerang_bounce");
      
      public static const §3"Q§:§=#?§ = new §=#?§("disc_attack");
      
      public static const §;!?§:§=#?§ = new §=#?§("disc_bounce",0.5);
      
      public static const §="6§:§=#?§ = new §=#?§("grenade_jump");
      
      public static const §4$8§:§=#?§ = new §=#?§("helicopter_loop");
      
      public static const §=Y§:§=#?§ = new §=#?§("helicopter_shot");
      
      public static const §@"6§:§=#?§ = new §=#?§("shield_activation");
      
      public static const §+$a§:§=#?§ = new §=#?§("shield_loop");
      
      public static const §,&2§:§=#?§ = new §=#?§("ufo_loop",0.3);
      
      public static const §@v§:§=#?§ = new §=#?§("ufo_pickup");
      
      public static const §6";§:§=#?§ = new §=#?§("jet_aero");
      
      public static const §"d§:§=#?§ = new §=#?§("move_drop",2);
      
      public static const §1$t§:§=#?§ = new §=#?§("impact");
      
      public static const ANTITOXIN:§=#?§ = new §=#?§("AntitoxinSound");
      
      public static const BANDAGE:§=#?§ = new §=#?§("BandageSound");
      
      public static const ANTIFREEZE:§=#?§ = new §=#?§("antifreeze");
      
      public static const EMERGENCY_TELEPORT:§=#?§ = new §=#?§("ExtraTeleportSound");
      
      public static const §>#+§:§=#?§ = new §=#?§("GravigunAttackSound");
      
      public static const §@S§:§=#?§ = new §=#?§("GravigunExplosion");
      
      public static const §-%5§:§=#?§ = new §=#?§("LaserbarActivationSound",0.5);
      
      public static const §7"4§:§=#?§ = new §=#?§("LaserbarBounceSound",0.75);
      
      public static const §-%D§:§=#?§ = new §=#?§("WeaponCraftSound");
      
      public static const §7D§:§=#?§ = new §=#?§("WeaponUncraftSound");
      
      public static const §"#M§:§=#?§ = new §=#?§("DragonFlightSound",0.5);
      
      public static const §+"#§:§=#?§ = new §=#?§("dragon_firewalk");
      
      public static const §`%=§:§=#?§ = new §=#?§("aura_off");
      
      public static const §#%w§:§=#?§ = new §=#?§("aura_on");
      
      public static const §;]§:§=#?§ = new §=#?§("damage_burn");
      
      public static const §0&C§:§=#?§ = new §=#?§("darkknight_aura_off");
      
      public static const §+Q§:§=#?§ = new §=#?§("darkknight_aura_on");
      
      public static const §9y§:§=#?§ = new §=#?§("water_up");
      
      public static const §9% §:§=#?§ = new §=#?§("apple_explosion");
      
      public static const §1&"§:§=#?§ = new §=#?§("apple_take");
      
      public static const §]%7§:§=#?§ = new §=#?§("parasite_bounce");
      
      public static const §>#Z§:§=#?§ = new §=#?§("parasite_explosion",0.5);
      
      public static const §+!d§:§=#?§ = new §=#?§("parasite_fire");
      
      public static const §-#"§:§=#?§ = new §=#?§("parasite_impact");
      
      public static const §'7§:§=#?§ = new §=#?§("soulgun_fire",0.5);
      
      public static const §3"A§:§=#?§ = new §=#?§("soulgun_hit",0.5);
      
      public static const §""^§:§=#?§ = new §=#?§("zombie_soul");
      
      public static const §?"x§:§=#?§ = new §=#?§("box_bounce");
      
      public static const §9#q§:§=#?§ = new §=#?§("box_dress",0.5);
      
      public static const §+#O§:§=#?§ = new §=#?§("box_explosion");
      
      public static const §5$e§:§=#?§ = new §=#?§("nuclear_aim");
      
      public static const §`!Y§:§=#?§ = new §=#?§("nuclear_explosion");
      
      public static const §+!+§:§=#?§ = new §=#?§("snowball_absorb",0.5);
      
      public static const §-$L§:§=#?§ = new §=#?§("snowball_explosion");
      
      public static const §"m§:§=#?§ = new §=#?§("snowball_move");
      
      public static const §0#]§:§=#?§ = new §=#?§("star_collect");
      
      public static const §=O§:§=#?§ = new §=#?§("IonExplosionSound");
      
      public static const §7$$§:§=#?§ = new §=#?§("IonShotSound");
      
      public static const §8#Y§:Object = {
         "worm":{
            "damage1":new §=#?§("worm.damage1"),
            "damage2":new §=#?§("worm.damage2"),
            "damage3":new §=#?§("worm.damage3"),
            "damage4":new §=#?§("worm.damage4"),
            "speak_cheknutiy":new §=#?§("worm.speak_cheknutiy"),
            "speak_granata":new §=#?§("worm.speak_granata"),
            "speak_hoho":new §=#?§("worm.speak_hoho"),
            "speak_lojis":new §=#?§("worm.speak_lojis"),
            "speak_mest":new §=#?§("worm.speak_mest"),
            "speak_nashol":new §=#?§("worm.speak_nashol"),
            "speak_nepopal":new §=#?§("worm.speak_nepopal"),
            "speak_nukanuka":new §=#?§("worm.speak_nukanuka"),
            "speak_ogon":new §=#?§("worm.speak_ogon"),
            "speak_pervayakrov":new §=#?§("worm.speak_pervayakrov"),
            "speak_pogodi":new §=#?§("worm.speak_pogodi"),
            "speak_predatel":new §=#?§("worm.speak_predatel"),
            "speak_prijok1":new §=#?§("worm.speak_prijok1"),
            "speak_prijok2":new §=#?§("worm.speak_prijok2"),
            "speak_promazal":new §=#?§("worm.speak_promazal"),
            "speak_smeh1":new §=#?§("worm.speak_smeh1"),
            "speak_smeh2":new §=#?§("worm.speak_smeh2"),
            "speak_smotri":new §=#?§("worm.speak_smotri"),
            "speak_ubit":new §=#?§("worm.speak_ubit"),
            "speak_vottebe":new §=#?§("worm.speak_vottebe"),
            "speak_vpered":new §=#?§("worm.speak_vpered"),
            "speak_yessir":new §=#?§("worm.speak_yessir"),
            "speak_vboy":new §=#?§("worm.speak_vboy"),
            "speak_v_ataku":new §=#?§("worm.speak_v_ataku"),
            "speak_komandir":new §=#?§("worm.speak_komandir"),
            "speak_jdu_prikaza":new §=#?§("worm.speak_jdu_prikaza"),
            "speak_cel_obnarujena":new §=#?§("worm.speak_cel_obnarujena"),
            "win":new §=#?§("worm.win")
         },
         "boxer":{
            "damage1":new §=#?§("boxer.damage1"),
            "damage2":new §=#?§("boxer.damage2"),
            "damage3":new §=#?§("boxer.damage3"),
            "damage4":new §=#?§("boxer.damage4"),
            "speak_cel_obnarujena":new §=#?§("boxer.speak_cel_obnarujena"),
            "speak_cheknutiy":new §=#?§("boxer.speak_cheknutiy"),
            "speak_granata":new §=#?§("boxer.speak_granata"),
            "speak_hoho":new §=#?§("boxer.speak_hoho"),
            "speak_jdu_prikaza":new §=#?§("boxer.speak_jdu_prikaza"),
            "speak_komandir":new §=#?§("boxer.speak_komandir"),
            "speak_lojis":new §=#?§("boxer.speak_lojis"),
            "speak_mest":new §=#?§("boxer.speak_mest"),
            "speak_nashol":new §=#?§("boxer.speak_nashol"),
            "speak_nepopal":new §=#?§("boxer.speak_nepopal"),
            "speak_nukanuka":new §=#?§("boxer.speak_nukanuka"),
            "speak_ogon":new §=#?§("boxer.speak_ogon"),
            "speak_pervayakrov":new §=#?§("boxer.speak_pervayakrov"),
            "speak_pobeda":new §=#?§("boxer.speak_pobeda"),
            "speak_pogodi":new §=#?§("boxer.speak_pogodi"),
            "speak_predatel":new §=#?§("boxer.speak_predatel"),
            "speak_prijok1":new §=#?§("boxer.speak_prijok1"),
            "speak_prijok2":new §=#?§("boxer.speak_prijok2"),
            "speak_promazal":new §=#?§("boxer.speak_promazal"),
            "speak_smeh1":new §=#?§("boxer.speak_smeh1"),
            "speak_smeh2":new §=#?§("boxer.speak_smeh2"),
            "speak_smotri":new §=#?§("boxer.speak_smotri"),
            "speak_ubit":new §=#?§("boxer.speak_ubit"),
            "speak_v_ataku":new §=#?§("boxer.speak_v_ataku"),
            "speak_vboy":new §=#?§("boxer.speak_vboy"),
            "speak_vottebe":new §=#?§("boxer.speak_vottebe"),
            "speak_vpered":new §=#?§("boxer.speak_vpered"),
            "win":new §=#?§("boxer.win_boxer_rus")
         },
         "zombie":{
            "damage1":new §=#?§("zombie.damage1"),
            "damage2":new §=#?§("zombie.damage2"),
            "damage3":new §=#?§("zombie.damage3"),
            "damage4":new §=#?§("zombie.damage4"),
            "speak_cel_obnarujena":new §=#?§("zombie.speak_cel_obnarujena"),
            "speak_cheknutiy":new §=#?§("zombie.speak_cheknutiy"),
            "speak_granata":new §=#?§("zombie.speak_granata"),
            "speak_hoho":new §=#?§("zombie.speak_hoho"),
            "speak_jdu_prikaza":new §=#?§("zombie.speak_jdu_prikaza"),
            "speak_komandir":new §=#?§("zombie.speak_komandir"),
            "speak_lojis":new §=#?§("zombie.speak_lojis"),
            "speak_mest":new §=#?§("zombie.speak_mest"),
            "speak_nashol":new §=#?§("zombie.speak_nashol"),
            "speak_nepopal":new §=#?§("zombie.speak_nepopal"),
            "speak_nukanuka":new §=#?§("zombie.speak_nukanuka"),
            "speak_ogon":new §=#?§("zombie.speak_ogon"),
            "speak_pervayakrov":new §=#?§("zombie.speak_pervayakrov"),
            "speak_pobeda":new §=#?§("zombie.speak_pobeda"),
            "speak_pogodi":new §=#?§("zombie.speak_pogodi"),
            "speak_predatel":new §=#?§("zombie.speak_predatel"),
            "speak_prijok1":new §=#?§("zombie.speak_prijok1"),
            "speak_prijok2":new §=#?§("zombie.speak_prijok2"),
            "speak_promazal":new §=#?§("zombie.speak_promazal"),
            "speak_smeh1":new §=#?§("zombie.speak_smeh1"),
            "speak_smeh2":new §=#?§("zombie.speak_smeh2"),
            "speak_smotri":new §=#?§("zombie.speak_smotri"),
            "speak_ubit":new §=#?§("zombie.speak_ubit"),
            "speak_v_ataku":new §=#?§("zombie.speak_v_ataku"),
            "speak_vboy":new §=#?§("zombie.speak_vboy"),
            "speak_vottebe":new §=#?§("zombie.speak_vottebe"),
            "speak_vpered":new §=#?§("zombie.speak_vpered"),
            "win":new §=#?§("zombie.win_zombie_rus")
         }
      };
      
      public static const §^#N§:Object = {
         "worm":{
            "damage1":new §=#?§("worm.damage1"),
            "damage2":new §=#?§("worm.damage2"),
            "damage3":new §=#?§("worm.damage3"),
            "damage4":new §=#?§("worm.damage4"),
            "speak_cheknutiy":new §=#?§("worm.speak_cheknutiy"),
            "speak_granata":new §=#?§("worm.speak_granata"),
            "speak_hoho":new §=#?§("worm.speak_hoho"),
            "speak_lojis":new §=#?§("worm.speak_lojis"),
            "speak_mest":new §=#?§("worm.speak_mest"),
            "speak_nashol":new §=#?§("worm.speak_nashol"),
            "speak_nepopal":new §=#?§("worm.speak_nepopal"),
            "speak_nukanuka":new §=#?§("worm.speak_nukanuka"),
            "speak_ogon":new §=#?§("worm.speak_ogon"),
            "speak_pervayakrov":new §=#?§("worm.speak_pervayakrov"),
            "speak_pogodi":new §=#?§("worm.speak_pogodi"),
            "speak_predatel":new §=#?§("worm.speak_predatel"),
            "speak_prijok1":new §=#?§("worm.speak_prijok1"),
            "speak_prijok2":new §=#?§("worm.speak_prijok2"),
            "speak_promazal":new §=#?§("worm.speak_promazal"),
            "speak_smeh1":new §=#?§("worm.speak_smeh1"),
            "speak_smeh2":new §=#?§("worm.speak_smeh2"),
            "speak_smotri":new §=#?§("worm.speak_smotri"),
            "speak_ubit":new §=#?§("worm.speak_ubit"),
            "speak_vottebe":new §=#?§("worm.speak_vottebe"),
            "speak_vpered":new §=#?§("worm.speak_vpered"),
            "speak_yessir":new §=#?§("worm.speak_yessir"),
            "speak_vboy":new §=#?§("worm.speak_vboy"),
            "speak_v_ataku":new §=#?§("worm.speak_v_ataku"),
            "speak_komandir":new §=#?§("worm.speak_komandir"),
            "speak_jdu_prikaza":new §=#?§("worm.speak_jdu_prikaza"),
            "speak_cel_obnarujena":new §=#?§("worm.speak_cel_obnarujena"),
            "win":new §=#?§("worm.win")
         },
         "boxer":{
            "damage1":new §=#?§("boxer.damage1"),
            "damage2":new §=#?§("boxer.damage2"),
            "damage3":new §=#?§("boxer.damage3"),
            "damage4":new §=#?§("boxer.damage4"),
            "speak_cel_obnarujena":new §=#?§("boxer.speak_cel_obnarujena"),
            "speak_cheknutiy":new §=#?§("boxer.speak_cheknutiy"),
            "speak_granata":new §=#?§("boxer.speak_granata"),
            "speak_hoho":new §=#?§("boxer.speak_hoho"),
            "speak_jdu_prikaza":new §=#?§("boxer.speak_jdu_prikaza"),
            "speak_komandir":new §=#?§("boxer.speak_komandir"),
            "speak_lojis":new §=#?§("boxer.speak_lojis"),
            "speak_mest":new §=#?§("boxer.speak_mest"),
            "speak_nashol":new §=#?§("boxer.speak_nashol"),
            "speak_nepopal":new §=#?§("boxer.speak_nepopal"),
            "speak_nukanuka":new §=#?§("boxer.speak_nukanuka"),
            "speak_ogon":new §=#?§("boxer.speak_ogon"),
            "speak_pervayakrov":new §=#?§("boxer.speak_pervayakrov"),
            "speak_pobeda":new §=#?§("boxer.speak_pobeda"),
            "speak_pogodi":new §=#?§("boxer.speak_pogodi"),
            "speak_predatel":new §=#?§("boxer.speak_predatel"),
            "speak_prijok1":new §=#?§("boxer.speak_prijok1"),
            "speak_prijok2":new §=#?§("boxer.speak_prijok2"),
            "speak_promazal":new §=#?§("boxer.speak_promazal"),
            "speak_smeh1":new §=#?§("boxer.speak_smeh1"),
            "speak_smeh2":new §=#?§("boxer.speak_smeh2"),
            "speak_smotri":new §=#?§("boxer.speak_smotri"),
            "speak_ubit":new §=#?§("boxer.speak_ubit"),
            "speak_v_ataku":new §=#?§("boxer.speak_v_ataku"),
            "speak_vboy":new §=#?§("boxer.speak_vboy"),
            "speak_vottebe":new §=#?§("boxer.speak_vottebe"),
            "speak_vpered":new §=#?§("boxer.speak_vpered"),
            "win":new §=#?§("boxer.win_boxer_eng")
         }
      };
      
      public static const §1%1§:Object = {"worm":{
         "damage1":new §=#?§("worm.damage1"),
         "damage2":new §=#?§("worm.damage2"),
         "damage3":new §=#?§("worm.damage3"),
         "damage4":new §=#?§("worm.damage4"),
         "speak_cheknutiy":new §=#?§("worm.speak_cheknutiy"),
         "speak_granata":new §=#?§("worm.speak_granata"),
         "speak_hoho":new §=#?§("worm.speak_hoho"),
         "speak_lojis":new §=#?§("worm.speak_lojis"),
         "speak_mest":new §=#?§("worm.speak_mest"),
         "speak_nashol":new §=#?§("worm.speak_nashol"),
         "speak_nepopal":new §=#?§("worm.speak_nepopal"),
         "speak_nukanuka":new §=#?§("worm.speak_nukanuka"),
         "speak_ogon":new §=#?§("worm.speak_ogon"),
         "speak_pervayakrov":new §=#?§("worm.speak_pervayakrov"),
         "speak_pogodi":new §=#?§("worm.speak_pogodi"),
         "speak_predatel":new §=#?§("worm.speak_predatel"),
         "speak_prijok1":new §=#?§("worm.speak_prijok1"),
         "speak_prijok2":new §=#?§("worm.speak_prijok2"),
         "speak_promazal":new §=#?§("worm.speak_promazal"),
         "speak_smeh1":new §=#?§("worm.speak_smeh1"),
         "speak_smeh2":new §=#?§("worm.speak_smeh2"),
         "speak_smotri":new §=#?§("worm.speak_smotri"),
         "speak_ubit":new §=#?§("worm.speak_ubit"),
         "speak_vottebe":new §=#?§("worm.speak_vottebe"),
         "speak_vpered":new §=#?§("worm.speak_vpered"),
         "speak_yessir":new §=#?§("worm.speak_yessir"),
         "speak_vboy":new §=#?§("worm.speak_vboy"),
         "speak_v_ataku":new §=#?§("worm.speak_v_ataku"),
         "speak_komandir":new §=#?§("worm.speak_komandir"),
         "speak_jdu_prikaza":new §=#?§("worm.speak_jdu_prikaza"),
         "speak_cel_obnarujena":new §=#?§("worm.speak_cel_obnarujena"),
         "win":new §=#?§("worm.win")
      }};
      
      public static const §^#_§:Object = {
         "boxer":{
            "damage1":new §=#?§("boxer.damage1"),
            "damage2":new §=#?§("boxer.damage2"),
            "damage3":new §=#?§("boxer.damage3"),
            "damage4":new §=#?§("boxer.damage4"),
            "charge":new §=#?§("boxer.charge"),
            "comeOn":new §=#?§("boxer.comeOn"),
            "commander":new §=#?§("boxer.commander"),
            "fire":new §=#?§("boxer.fire"),
            "firstBlood":new §=#?§("boxer.firstBlood"),
            "forward":new §=#?§("boxer.forward"),
            "foundIt1":new §=#?§("boxer.foundIt1"),
            "foundIt2":new §=#?§("boxer.foundIt2"),
            "getDown":new §=#?§("boxer.getDown"),
            "granade":new §=#?§("boxer.granade"),
            "hop1":new §=#?§("boxer.hop1"),
            "hop2":new §=#?§("boxer.hop2"),
            "IgetYou":new §=#?§("boxer.IgetYou"),
            "laugh1":new §=#?§("boxer.laugh1"),
            "laugh2":new §=#?§("boxer.laugh2"),
            "laugh3":new §=#?§("boxer.laugh3"),
            "missed":new §=#?§("boxer.missed"),
            "nuts":new §=#?§("boxer.nuts"),
            "revenge":new §=#?§("boxer.revenge"),
            "takeThis":new §=#?§("boxer.takeThis"),
            "targetSided":new §=#?§("boxer.targetSided"),
            "toBattle":new §=#?§("boxer.toBattle"),
            "traitor":new §=#?§("boxer.traitor"),
            "victory":new §=#?§("boxer.victory"),
            "waitingOrders":new §=#?§("boxer.waitingOrders"),
            "watch":new §=#?§("boxer.watch"),
            "yesSir":new §=#?§("boxer.yesSir")
         },
         "worm":{
            "damage1":new §=#?§("worm.damage1"),
            "damage2":new §=#?§("worm.damage2"),
            "damage3":new §=#?§("worm.damage3"),
            "damage4":new §=#?§("worm.damage4"),
            "charge":new §=#?§("worm.charge"),
            "comeOn":new §=#?§("worm.comeOn"),
            "commander":new §=#?§("worm.commander"),
            "fire":new §=#?§("worm.fire"),
            "firstBlood":new §=#?§("worm.firstBlood"),
            "forward":new §=#?§("worm.forward"),
            "foundIt":new §=#?§("worm.foundIt"),
            "getDown":new §=#?§("worm.getDown"),
            "granade":new §=#?§("worm.granade"),
            "hop1":new §=#?§("worm.hop1"),
            "hop2":new §=#?§("worm.hop2"),
            "IgetYou":new §=#?§("worm.IgetYou"),
            "laugh1":new §=#?§("worm.laugh1"),
            "laugh2":new §=#?§("worm.laugh2"),
            "laugh3":new §=#?§("worm.laugh3"),
            "missed":new §=#?§("worm.missed"),
            "nuts":new §=#?§("worm.nuts"),
            "revenge":new §=#?§("worm.revenge"),
            "takeThis1":new §=#?§("worm.takeThis1"),
            "takeThis2":new §=#?§("worm.takeThis2"),
            "targetSided":new §=#?§("worm.targetSided"),
            "toBattle":new §=#?§("worm.toBattle"),
            "traitor":new §=#?§("worm.traitor"),
            "victory":new §=#?§("worm.victory"),
            "waitingOrders":new §=#?§("worm.waitingOrders"),
            "watch":new §=#?§("worm.watch"),
            "yesSir":new §=#?§("worm.yesSir")
         }
      };
      
      public function §`!v§()
      {
         super();
      }
      
      public static function §=%2§(param1:Array, param2:§,'§ = null) : §=#?§
      {
         var _loc3_:int = param2 ? int(param2.§,!q§(0,param1.length - 1)) : int(Math.random() * param1.length);
         return param1[_loc3_];
      }
      
      public static function §"%^§() : §=#?§
      {
         return §=%2§(§9!6§);
      }
      
      public static function §[!o§(param1:§=#?§, param2:Boolean = false) : §7#P§
      {
         var _loc3_:Boolean = false;
         _loc3_ = §8"%§.§&S§.§ $ §() && !§@%;§.§4$u§();
         return §@%;§.play(param1,param2,_loc3_);
      }
   }
}

