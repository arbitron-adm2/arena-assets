package §8#<§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §"!C§.§2v§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§8"j§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<!^§.MeteorShard;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=&!§.§<$Z§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!#^§
   {
      
      public static const §+z§:uint = 1500;
      
      public static const §@$E§:uint = 1510;
      
      public static const §5"B§:uint = 1520;
      
      public static const §`&F§:uint = 1530;
      
      public static const §?t§:uint = 1540;
      
      public static const STEAMPUNK_GLASSES:uint = 1550;
      
      public static const NORDIC_HELM:uint = 1560;
      
      public static const FIRESHEEP_HAT:uint = 1570;
      
      public static const FIRE_MASK:uint = 1580;
      
      public static const VILE_MASK:uint = 1590;
      
      public static const COMISSAR_HAT:uint = 1600;
      
      public static const §##s§:uint = 1610;
      
      public static const §1#A§:uint = 1620;
      
      public static const FIEND_HELM:uint = 1630;
      
      public static const §0&9§:uint = 1640;
      
      public static const SITH_HOOD:uint = 1650;
      
      public static const SURGEON_BAND:uint = 1660;
      
      public static const SPORTS_CAP:uint = 1670;
      
      public static const WOLF_PELT:uint = 1680;
      
      public static const HOCKEY_HELM:uint = 1690;
      
      public static const KNIGHT_HELM:uint = 1700;
      
      public static const STRATEGIST_HAT:uint = 1710;
      
      public static const PYROMANCER:uint = 1720;
      
      public static const FALLING_PYROMANCER:uint = 1730;
      
      public static const PHOENIX_COVER:uint = 1740;
      
      public static const HOLOGRAM:uint = 1750;
      
      public static const MAGMATIC_STETSON:uint = 1760;
      
      public static const HOKAGE_HELMET:uint = 1770;
      
      public static const GUL_MASK:uint = 1780;
      
      public static const COCKED_HAT:uint = 1790;
      
      public static const RONINS_GARB:uint = 1800;
      
      public static const RUSTY_BOILER:uint = 1810;
      
      public static const NEUROMANCER:uint = 1820;
      
      public static const INQUISITOR:uint = 1830;
      
      public static const §5$_§:uint = 2500;
      
      public static const §4j§:uint = 2510;
      
      public static const ARCHIDEMON_SWORD:uint = 2520;
      
      public static const SNAKE_STAFF:uint = 2530;
      
      public static const JAWBLADE:uint = 2540;
      
      public static const FROST_SHIELD:uint = 2550;
      
      public static const BLAZING_AXE:uint = 2560;
      
      public static const HAM_MACE:uint = 2570;
      
      public static const DEATH_HAMMER:uint = 2580;
      
      public static const §##&§:uint = 2590;
      
      public static const §]%>§:uint = 2600;
      
      public static const HEALER_STAFF:uint = 2610;
      
      public static const STRATEGIST_FAN:uint = 2620;
      
      public static const MIRAGE:uint = 2630;
      
      public static const ABSORBER:uint = 2640;
      
      public static const POLAR_SHARD:uint = 2650;
      
      public static const NEPHRONOZH:uint = 2660;
      
      public static const BIOLAMP:uint = 2670;
      
      public static const SPYGLASS:uint = 2680;
      
      public static const BULLFIGHTERS_CLOAK:uint = 2690;
      
      public static const SOUL_DESTROYER:uint = 2700;
      
      public static const PULSAR:uint = 2710;
      
      public static const DRAGON_STAFF:uint = 2720;
      
      public static const §;l§:uint = 2730;
      
      public static const §2$h§:uint = 3000;
      
      §§push(§§findproperty(§-%A§));
      var _temp_15:* = new <uint>[§+z§,§@$E§,§5"B§,§`&F§,§?t§,STEAMPUNK_GLASSES,NORDIC_HELM,FIRESHEEP_HAT,FIRE_MASK,VILE_MASK,COMISSAR_HAT,§##s§,§1#A§,FIEND_HELM,§0&9§,SITH_HOOD,WOLF_PELT,SPORTS_CAP,HOCKEY_HELM,KNIGHT_HELM,STRATEGIST_HAT,PYROMANCER,FALLING_PYROMANCER,PHOENIX_COVER,HOLOGRAM,MAGMATIC_STETSON,HOKAGE_HELMET,GUL_MASK,COCKED_HAT,RONINS_GARB,RUSTY_BOILER,NEUROMANCER,INQUISITOR];
      
      public static const §-%A§:Vector.<uint> = new <uint>[§+z§,§@$E§,§5"B§,§`&F§,§?t§,STEAMPUNK_GLASSES,NORDIC_HELM,FIRESHEEP_HAT,FIRE_MASK,VILE_MASK,COMISSAR_HAT,§##s§,§1#A§,FIEND_HELM,§0&9§,SITH_HOOD,WOLF_PELT,SPORTS_CAP,HOCKEY_HELM,KNIGHT_HELM,STRATEGIST_HAT,PYROMANCER,FALLING_PYROMANCER,PHOENIX_COVER,HOLOGRAM,MAGMATIC_STETSON,HOKAGE_HELMET,GUL_MASK,COCKED_HAT,RONINS_GARB,RUSTY_BOILER,NEUROMANCER,INQUISITOR];
      
      public static const §@$V§:Vector.<uint> = new <uint>[§5$_§,§4j§,ARCHIDEMON_SWORD,SNAKE_STAFF,JAWBLADE,FROST_SHIELD,BLAZING_AXE,HAM_MACE,DEATH_HAMMER,§##&§,§]%>§,STRATEGIST_FAN,MIRAGE,ABSORBER,POLAR_SHARD,NEPHRONOZH,BIOLAMP,SPYGLASS,BULLFIGHTERS_CLOAK,SOUL_DESTROYER,PULSAR,DRAGON_STAFF,§;l§];
      
      public static const §2&%§:Vector.<uint> = new <uint>[§##&§,§]%>§];
      
      public static const §=#1§:Vector.<uint> = new <uint>[WOLF_PELT,SPORTS_CAP,HOCKEY_HELM,FALLING_PYROMANCER,PHOENIX_COVER,POLAR_SHARD,NEPHRONOZH];
      
      §§push(§§findproperty(§0"O§));
      var _temp_66:* = new <uint>[KNIGHT_HELM,STRATEGIST_HAT];
      
      public static const §0"O§:Vector.<uint> = new <uint>[KNIGHT_HELM,STRATEGIST_HAT];
      
      public static const §9!v§:Vector.<uint> = new Vector.<uint>().concat(§-%A§,§@$V§);
      
      public function §!#^§()
      {
         super();
      }
      
      public static function §3&5§(param1:int) : Boolean
      {
         return param1 >= §1"k§.§+%2§ && param1 < §8"j§.§;9§;
      }
      
      public static function §7%#§(param1:int) : Boolean
      {
         return param1 >= §1"k§.§;#h§ && param1 < 3000;
      }
      
      public static function §`!2§(param1:int) : Boolean
      {
         var _loc2_:uint = 0;
         for each(_loc2_ in §=#1§)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         for each(_loc2_ in §0"O§)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}

