package §?$7§
{
   import § &5§.Water;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §&&6§.§'%"§;
   import §&&6§.§+"§;
   import §&&6§.§0&I§;
   import §&&6§.§0_§;
   import §&&6§.§1!'§;
   import §&&6§.§5%J§;
   import §&&6§.§8"O§;
   import §&&6§.§>V§;
   import §&&6§.§]$T§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §,#c§.ArenaMenu;
   import §,$J§.§,$O§;
   import §-@§.*;
   import §0%[§.§1%"§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §5"J§.*;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §?#g§.Race;
   import §?%J§.§ $=§;
   import §?%J§.§ 2§;
   import §?%J§.§""d§;
   import §?%J§.§#%G§;
   import §?%J§.§%$d§;
   import §?%J§.§'!7§;
   import §?%J§.§'!I§;
   import §?%J§.§,!0§;
   import §?%J§.§-$n§;
   import §?%J§.§0%-§;
   import §?%J§.§0%d§;
   import §?%J§.§2%S§;
   import §?%J§.§4$E§;
   import §?%J§.§6"&§;
   import §?%J§.§6%5§;
   import §?%J§.§7"h§;
   import §?%J§.§9"=§;
   import §?%J§.§=!>§;
   import §?%J§.§="b§;
   import §?%J§.§>!r§;
   import §?%J§.§?§;
   import §?%J§.§[%m§;
   import §?%J§.§]j§;
   import §?%J§.§`"]§;
   import §?%J§.§`9§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^!"§.§"$k§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import config.§5%T§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.treasury.CashMedalsClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §`%2§
   {
      
      public static const §&!d§:int = -1;
      
      private static const §#"-§:Array = [{
         "id":§+#N§.§`%b§,
         "name":§0$N§.BOSS_FARMER_NAME,
         "script":§,!0§,
         "race":Race.§+#T§,
         "hatId":§,$O§.PANAMA
      },{
         "id":§+#N§.§[$]§,
         "name":§0$N§.BOSS_HUNTER_NAME,
         "script":§]j§,
         "race":Race.§+&8§,
         "skinId":§5%T§.§4#=§,
         "hatId":§,$O§.INDIAN
      },{
         "id":§+#N§.§<"7§,
         "name":§0$N§.BOSS_MANIACS_NAME,
         "script":§9"=§,
         "race":Race.§"$H§,
         "skinId":§5%T§.§`$K§,
         "hatId":§,$O§.§0#'§
      },{
         "id":§+#N§.MINER,
         "name":§0$N§.BOSS_MINER_NAME,
         "script":§?#9§,
         "race":Race.§9"B§,
         "skinId":§5%T§.§,!6§,
         "hatId":§,$O§.BOSS_MINER_CAP
      },{
         "id":§+#N§.SAMURAI,
         "name":§0$N§.BOSS_SAMURAI_CAT_NAME,
         "script":§0%d§,
         "race":Race.§#%V§,
         "hatId":§,$O§.SAMURAI
      },{
         "id":§+#N§.§]"T§,
         "name":§0$N§.BOSS_SERGEANT_NAME,
         "script":§2%S§,
         "race":Race.§+#T§,
         "hatId":§,$O§.§ ![§
      },{
         "id":§+#N§.§9&0§,
         "name":§0$N§.BOSS_BURNING_ZOMBIES_NAME,
         "script":§="b§,
         "race":Race.§"$H§,
         "skinId":§5%T§.§3#Y§,
         "hatId":§,$O§.BOSS_BURNING_ZOMBIES_FLAME
      },{
         "id":§+#N§.§1"m§,
         "name":§0$N§.BOSS_SOUL_NAME,
         "script":§-$n§,
         "race":Race.§+&8§,
         "hatId":§,$O§.DARTH_VADER
      },{
         "id":§+#N§.§>%§,
         "name":§0$N§.BOSS_SHAMAN_NAME,
         "script":§`9§,
         "race":Race.§ "w§,
         "skinId":§5%T§.§>%D§,
         "hatId":§,$O§.BOSS_SHAMAN_VOODOO_MASK
      },{
         "id":§+#N§.§9$6§,
         "name":§0$N§.BOSS_ILLUSIONIST_NAME,
         "script":§[%m§,
         "race":Race.§+&8§,
         "skinId":§5%T§.§?%@§,
         "hatId":§,$O§.BOSS_ILLUSIONIST_CYLINDER
      },{
         "id":§+#N§.§5#I§,
         "name":§0$N§.BOSS_VIKING_NAME,
         "script":§6%5§,
         "race":Race.§!!S§,
         "hatId":§,$O§.BOSS_VIKING
      },{
         "id":§+#N§.§ #z§,
         "name":§0$N§.BOSS_PIRATE_NAME,
         "script":§""d§,
         "race":Race.§+#T§,
         "hatId":§,$O§.BOSS_PIRATES
      },{
         "id":§+#N§.§@#5§,
         "name":§0$N§.BOSS_WIND_MASTER_NAME,
         "script":§ 2§,
         "race":Race.§+&8§,
         "hatId":§,$O§.BOSS_WIND_MASTER
      },{
         "id":§+#N§.§1!+§,
         "name":§0$N§.BOSS_YAKUZA_NAME,
         "script":§4$E§,
         "race":Race.§ "w§,
         "hatId":§,$O§.BOSS_YAKUZA_STORM
      },{
         "id":§+#N§.§,&7§,
         "name":§0$N§.BOSS_REVIVED_CAPTAIN_NAME,
         "script":§0%-§,
         "race":Race.§"$H§,
         "skinId":§5%T§.§`$K§,
         "hatId":§,$O§.BOSS_REVIVED_CAPTAIN,
         "artifactId":§]!E§.WATER_SWORD
      },{
         "id":§+#N§.§7$c§,
         "name":§0$N§.BOSS_ROMEO_JULIET_NAME,
         "script":§=!>§,
         "race":Race.§#%V§,
         "skinId":§5%T§.§?$P§,
         "hatId":§,$O§.BOSS_ROMEO
      },{
         "id":§+#N§.§]!j§,
         "name":§0$N§.BOSS_KING_DEAD_NAME,
         "script":§7"h§,
         "race":Race.§"$H§,
         "hatId":§,$O§.BOSS_KING_DEAD,
         "artifactId":§]!E§.SKULL_STAFF
      },{
         "id":§+#N§.GHOST,
         "name":§0$N§.BOSS_GHOST_NAME,
         "script":§6"&§,
         "race":Race.§+&8§,
         "skinId":§5%T§.§=#b§,
         "hatId":§,$O§.§;"h§
      },{
         "id":§+#N§.§'#L§,
         "name":§0$N§.BOSS_ENGINEER_NAME,
         "script":§#%G§,
         "race":Race.§#%V§,
         "hatId":§,$O§.BOSS_ENGINEER
      },{
         "id":§+#N§.§]%v§,
         "name":§0$N§.BOSS_GUARDIANS_DEPTHS_NAME,
         "script":§'!I§,
         "race":Race.§+&8§,
         "hatId":§,$O§.§9#r§
      },{
         "id":§+#N§.§<$N§,
         "name":§0$N§.BOSS_DARK_KNIGHT_NAME,
         "script":§%$d§,
         "race":Race.§+#T§,
         "hatId":§,$O§.§01§,
         "artifactId":§]!E§.BROKEN_SWORD
      },{
         "id":§+#N§.§[#J§,
         "name":§0$N§.BOSS_ASSASSIN_NAME,
         "script":§ $=§,
         "race":(§0#2§.§"!w§() ? Race.§@T§ : Race.§1"^§),
         "skinId":(§0#2§.§"!w§() ? 0 : §5%T§.§!$H§),
         "hatId":§,$O§.BOSS_ASSASSIN_HOOD,
         "artifactId":§]!E§.TOTEM_POISON
      },{
         "id":§+#N§.§[<§,
         "name":§0$N§.BOSS_ALCHEMIST_NAME,
         "script":§`"]§,
         "race":Race.§#%V§,
         "skinId":§5%T§.§<"0§,
         "hatId":§,$O§.§ #2§
      },{
         "id":§+#N§.§@"f§,
         "name":§0$N§.BOSS_ARCHBOT_NAME,
         "script":§'!7§,
         "race":Race.§-K§,
         "hatId":§,$O§.§[&2§,
         "artifactId":§]!E§.BOSS_ARCHBOT_STUFF
      },{
         "id":§+#N§.EMPEROR,
         "name":§0$N§.BOSS_EMPEROR_NAME,
         "script":null,
         "race":Race.§"$H§,
         "skinId":§5%T§.§8%y§,
         "hatId":§,$O§.§'#j§,
         "artifactId":§]!E§.§6%m§
      },{
         "id":§+#N§.SCIENTIST,
         "name":§0$N§.BOSS_SCIENTIST_NAME,
         "script":null,
         "race":Race.§ "w§,
         "hatId":§,$O§.§!&H§,
         "artifactId":§]!E§.§%$F§
      },{
         "id":§+#N§.§9!E§,
         "name":§0$N§.BOSS_SYMBIOTE_NAME,
         "script":null,
         "race":Race.§+#T§,
         "skinId":§5%T§.§["§,
         "hatId":§,$O§.BOSS_SYMBIOTE_HELM,
         "artifactId":§]!E§.BOSS_SYMBIOTE_BIOBLADE
      },{
         "id":§+#N§.§>& §,
         "name":§0$N§.BOSS_BLACKSMITH_NAME,
         "script":§>!r§,
         "race":Race.§9"B§,
         "hatId":§,$O§.§3!]§,
         "artifactId":§]!E§.§^T§
      },{
         "id":§+#N§.§]"f§,
         "name":§0$N§.BOSS_SOUL_MASTER_NAME,
         "script":null,
         "race":Race.§"$H§,
         "skinId":§5%T§.§3#Y§,
         "hatId":§,$O§.BOSS_SOUL_MASTER_HELM,
         "artifactId":§]!E§.BOSS_SOUL_MASTER_STAFF
      },{
         "id":§+#N§.§!"p§,
         "name":§0$N§.BOSS_REBEL_ROBOT_NAME,
         "script":null,
         "race":Race.§-K§,
         "skinId":§5%T§.§-%Z§,
         "hatId":§,$O§.§=!]§,
         "artifactId":§]!E§.§@!4§
      },{
         "id":§+#N§.§8"7§,
         "name":§0$N§.BOSS_DEVOTEE_NAME,
         "script":null,
         "race":Race.ALIEN,
         "skinId":§5%T§.§]"2§,
         "hatId":§,$O§.§="F§,
         "artifactId":§!#^§.MIRAGE + 6
      },{
         "id":§+#N§.§"v§,
         "name":§0$N§.BOSS_PALADIN_NAME,
         "script":§>V§,
         "race":Race.§1"^§,
         "skinId":§5%T§.§6I§,
         "hatId":§,$O§.BOSS_PALADIN,
         "artifactId":§]!E§.PALADIN_SWORD
      },{
         "id":§+#N§.§<!Z§,
         "name":§0$N§.BOSS_HACKER_NAME,
         "script":null,
         "race":Race.§ "w§,
         "hatId":§,$O§.BOSS_HACKER
      },{
         "id":§+#N§.THIEVES,
         "name":§0$N§.BOSS_THIEVES_NAME,
         "script":null,
         "race":Race.§#%V§,
         "hatId":§,$O§.BOSS_THIEF
      },{
         "id":§+#N§.§2$&§,
         "name":§0$N§.BOSS_PSIONICS_NAME,
         "script":§0_§,
         "race":Race.§+#T§,
         "hatId":§,$O§.BOSS_PSI_TELEPATHIST
      },{
         "id":§+#N§.§=!q§,
         "name":§0$N§.BOSS_PHANTOMS_NAME,
         "script":null,
         "race":Race.§"$H§,
         "hatId":§,$O§.BOSS_PHANTOM
      },{
         "id":§+#N§.§ %§,
         "name":§0$N§.BOSS_ARCHDEMON_NAME,
         "script":§]$T§,
         "race":Race.§+&8§,
         "skinId":§5%T§.§4#=§,
         "hatId":§,$O§.LAVA_JAW,
         "artifactId":§]!E§.BOSS_ARCHIDEMON_SHIELD
      },{
         "id":§+#N§.§+F§,
         "name":§0$N§.BOSS_DRUID_NAME,
         "script":§0&I§,
         "race":Race.§1"^§,
         "skinId":§5%T§.§6!$§,
         "hatId":§,$O§.EAGLE_HAT,
         "artifactId":§]!E§.§"%;§
      },{
         "id":§+#N§.PHARAOH,
         "name":§0$N§.BOSS_PHARAOH_NAME,
         "script":§1!'§,
         "race":Race.§+&8§,
         "hatId":§,$O§.§6$;§,
         "artifactId":§!#^§.SNAKE_STAFF + 6
      },{
         "id":§+#N§.CYBORG,
         "name":§0$N§.BOSS_CYBORG_NAME,
         "script":§'%"§,
         "race":Race.§-K§,
         "hatId":§,$O§.BOSS_CYBORG,
         "artifactId":§]!E§.ROBO_SHIELD
      },{
         "id":§+#N§.§+W§,
         "name":§0$N§.BOSS_JARL_NAME,
         "script":null,
         "race":Race.§ "w§,
         "hatId":§,$O§.BOSS_JARL_HELM,
         "artifactId":§]!E§.BOSS_JARL_SPEAR
      },{
         "id":§+#N§.§&$R§,
         "name":§0$N§.BOSS_ENCHANTER_NAME,
         "script":§5%J§,
         "race":Race.§ "w§,
         "hatId":§,$O§.BOSS_ENCHANTER_MASK,
         "artifactId":§]!E§.BOSS_ENCHANTER_FIERY_DAGGER
      },{
         "id":§+#N§.ARCHIVIST,
         "name":§0$N§.BOSS_ARCHIVIST_NAME,
         "script":null,
         "race":Race.§+#T§,
         "skinId":§5%T§.§'%j§,
         "hatId":§,$O§.§5"=§,
         "artifactId":§]!E§.§=%>§
      },{
         "id":§+#N§.§^%+§,
         "name":§0$N§.GRAVITY_MASTER_NAME,
         "script":§8"O§,
         "race":Race.§9"B§,
         "skinId":§5%T§.§2#l§,
         "hatId":§,$O§.BOSS_GRAVITY_MASTER_HELM,
         "artifactId":§]!E§.BOSS_GRAVITY_MASTER_SHIELD
      },{
         "id":§+#N§.SOLAR_PRIEST,
         "name":§0$N§.BOSS_SOLAR_PRIEST_NAME,
         "script":null,
         "race":Race.§ "w§,
         "hatId":§,$O§.§5#U§,
         "artifactId":§]!E§.§!%M§
      },{
         "id":§+#N§.§0"]§,
         "name":§0$N§.BOSS_ARCTIC_WARRIOR_NAME,
         "script":null,
         "race":Race.§!!S§,
         "skinId":§5%T§.§"!x§,
         "hatId":§,$O§.BOSS_ARCTIC_HELM,
         "artifactId":§]!E§.BOSS_ARCTIC_SWORD
      },{
         "id":§+#N§.§!%Z§,
         "name":§0$N§.BOSS_QUEEN_SPIDERS_NAME,
         "script":§+"§,
         "race":Race.ALIEN,
         "skinId":0,
         "hatId":§,$O§.BOSS_TARANTUL_HELMET,
         "artifactId":§]!E§.BOSS_SCORPION_STAFF
      }];
      
      public function §`%2§()
      {
         super();
      }
      
      public static function get list() : Array
      {
         return §#"-§;
      }
      
      public static function §>!+§(param1:int) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §#"-§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}

