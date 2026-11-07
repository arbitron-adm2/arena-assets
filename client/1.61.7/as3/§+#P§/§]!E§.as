package §+#P§
{
   import § #9§.§9j§;
   import § #m§.§[&H§;
   import §#$e§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§;!d§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2#x§.§]s§;
   import §7!B§.§&"T§;
   import §8!Y§.§`#Q§;
   import §<$q§.§?!d§;
   import §=!p§.§8#x§;
   import §="z§.§9%1§;
   import §?$7§.§8"e§;
   import §?X§.§36§;
   import §@!i§.*;
   import §@$§.§+%>§;
   import §@$§.§6$[§;
   import §@%I§.§2R§;
   import §^#[§.§&$2§;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   
   public class §]!E§
   {
      
      public static const §&%H§:Vector.<int> = new <int>[ROBINHOOD_BOW];
      
      public static const §6%6§:Vector.<int> = new <int>[BOSS_SOUL_MASTER_STAFF,BOSS_ARCTIC_SWORD,§!%M§,§5!P§,BOSS_GRAVITY_MASTER_SHIELD,§=%>§,BOSS_ENCHANTER_FIERY_DAGGER,§@!4§,§^T§,BOSS_SYMBIOTE_BIOBLADE,§%$F§,§6%m§,BOSS_ARCHBOT_STUFF,BOSS_SCORPION_STAFF,TANK_SHIELD,PICK,WATER_SWORD,CURSED_BROOM,CHRISTMAS_TREE,SCYTHE];
      
      public static const WOODEN_SHIELD:uint = 2001;
      
      public static const TRAINING_SHIELD:uint = 2002;
      
      public static const BROKEN_SWORD:uint = 2003;
      
      public static const WHINGER:uint = 2004;
      
      public static const §"%;§:uint = 2005;
      
      public static const SKULL_STAFF:uint = 2006;
      
      public static const BOSS_ARCHIDEMON_SHIELD:uint = 2007;
      
      public static const METAL_SHIELD:uint = 2008;
      
      public static const JEDI_SWORD:uint = 2009;
      
      public static const TOTEM_FIRE:uint = 2010;
      
      public static const TOTEM_POISON:uint = 2011;
      
      public static const SAW:uint = 2012;
      
      public static const PIRATE_HOOK:uint = 2013;
      
      public static const PALADIN_SWORD:uint = 2014;
      
      public static const ROBO_SHIELD:uint = 2015;
      
      public static const BOSS_JARL_SPEAR:uint = 2016;
      
      public static const JARL_STONE_HAMMER:uint = 2017;
      
      public static const BOSS_ARCHBOT_STUFF:uint = 2018;
      
      public static const §3"5§:uint = 2019;
      
      public static const WATER_SWORD:uint = 2020;
      
      public static const VAMPIRIC_SWORD:uint = 2021;
      
      public static const §,"'§:uint = 2022;
      
      public static const BOSS_ENCHANTER_FIERY_DAGGER:uint = 2023;
      
      public static const §=%>§:uint = 2024;
      
      public static const §6%m§:uint = 2025;
      
      public static const §%$F§:uint = 2026;
      
      public static const BOSS_SYMBIOTE_BIOBLADE:uint = 2027;
      
      public static const §5"&§:uint = 2028;
      
      public static const GNAWED_BONE:uint = 2029;
      
      public static const PROVOKER_SHIELD:uint = 2030;
      
      public static const BOSS_GRAVITY_MASTER_SHIELD:uint = 2031;
      
      public static const TANK_SHIELD:uint = 2032;
      
      public static const ARMY_KNIFE:uint = 2033;
      
      public static const §!%M§:uint = 2034;
      
      public static const §5!P§:uint = 2035;
      
      public static const BOSS_ARCTIC_SWORD:uint = 2036;
      
      public static const §<& §:uint = 2037;
      
      public static const §^T§:uint = 2038;
      
      public static const BOSS_SOUL_MASTER_STAFF:uint = 2039;
      
      public static const §@!4§:uint = 2040;
      
      public static const PICK:uint = 2041;
      
      public static const FIRE_FIGHTER_AXE:uint = 2042;
      
      public static const §?%t§:uint = 2043;
      
      public static const TOPOGRAPHIC_MAP:uint = 2044;
      
      public static const FLAMBEAU:uint = 2045;
      
      public static const GOLDEN_HORN:uint = 2046;
      
      public static const WINE_HORN:uint = 2047;
      
      public static const NUNCHAKU:uint = 2048;
      
      public static const PHOSPHORUS_LAMP:uint = 2049;
      
      public static const CURSED_BROOM:uint = 2050;
      
      public static const GATEKEEPER:uint = 2051;
      
      public static const PLASMA_SHIELD:uint = 2052;
      
      public static const PIRATE_FLAG:uint = 2053;
      
      public static const BATTLE_PAN:uint = 2054;
      
      public static const BATTLE_HOT_PAN:uint = 2055;
      
      public static const CRYSTAL_SKULL:uint = 2056;
      
      public static const ZIRCON_SKULL:uint = 2057;
      
      public static const BOSS_SCORPION_STAFF:uint = 2058;
      
      public static const ROBINHOOD_BOW:uint = 2059;
      
      public static const GLEFA:uint = 2060;
      
      public static const GLEFA_BLACK:uint = 2061;
      
      public static const SCYTHE:uint = 2062;
      
      public static const CHRISTMAS_TREE:uint = 2063;
      
      public static const ARCHIDEMON_SPEAR:uint = 2064;
      
      public static const ARCHIDEMON_SCYTHE:uint = 2065;
      
      public static const ARCHIDEMON_MUG:uint = 2066;
      
      public static const ARCHIDEMON_MUG_EMPTY:uint = 2067;
      
      public static const ADJUSTABLE_WRENCH:uint = 2068;
      
      public function §]!E§()
      {
         super();
      }
      
      public static function §]$G§(param1:int) : Boolean
      {
         return §6%6§.indexOf(param1) > -1;
      }
      
      public static function §]%m§(param1:int) : Boolean
      {
         return int(param1 / 1000) == int(§8"j§.§;9§ / 1000);
      }
   }
}

