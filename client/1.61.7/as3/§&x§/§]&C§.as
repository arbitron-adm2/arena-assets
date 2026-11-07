package §&x§
{
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §2$]§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §@!i§.*;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetPromocodeBonus;
   import ru.pragmatix.wormix.messages.server.GetPromocodeBonusResult;
   
   use namespace gestouch_internal;
   
   public class §]&C§
   {
      
      private static const § c§:Array = [{
         "code":51,
         "type":§8$5§.CARROT,
         "name":"CARROT"
      },{
         "code":52,
         "type":§8$5§.FIRE,
         "name":"FIRE"
      },{
         "code":53,
         "type":§8$5§.AIR,
         "name":"AIR"
      },{
         "code":54,
         "type":§8$5§.§=$K§,
         "name":"ARMS"
      },{
         "code":55,
         "type":§8$5§.ARMS,
         "name":"ARMS"
      },{
         "code":56,
         "type":§8$5§.CARROT,
         "name":"ANIMAL"
      },{
         "code":57,
         "type":§8$5§.§=$K§,
         "name":"NAVAL"
      },{
         "code":58,
         "type":§8$5§.§=$K§,
         "name":"SECRET"
      },{
         "code":59,
         "type":§8$5§.POISON,
         "name":"TOXIC"
      },{
         "code":60,
         "type":§8$5§.ARMS,
         "name":"BURNING"
      },{
         "code":61,
         "type":§8$5§.§6"Q§,
         "name":"COLD"
      },{
         "code":62,
         "type":§8$5§.AIR,
         "name":"JUDGMENT"
      },{
         "code":63,
         "type":§8$5§.ARMS,
         "name":"CRIMINAL"
      },{
         "code":64,
         "type":§8$5§.POISON,
         "name":"MINER"
      },{
         "code":65,
         "type":§8$5§.§=$K§,
         "name":"RARITY"
      },{
         "code":66,
         "type":§8$5§.AIR,
         "name":"FORBIDDEN"
      },{
         "code":67,
         "type":§8$5§.CARROT,
         "name":"FESTIVE"
      },{
         "code":68,
         "type":§8$5§.AIR,
         "name":"PERSIAN"
      },{
         "code":69,
         "type":§8$5§.ARMS,
         "name":"POLICE"
      },{
         "code":70,
         "type":§8$5§.§=$-§,
         "name":"ENGINEERING"
      },{
         "code":73,
         "type":§8$5§.§=$K§,
         "name":"STORM"
      },{
         "code":74,
         "type":§8$5§.AIR,
         "name":"GROUND"
      },{
         "code":75,
         "type":§8$5§.§=$-§,
         "name":"SPYWARE"
      },{
         "code":76,
         "type":§8$5§.ARMS,
         "name":"SAVING"
      },{
         "code":77,
         "type":§8$5§.AIR,
         "name":"HEAVENLY"
      },{
         "code":78,
         "type":§8$5§.POISON,
         "name":"ANIMAL"
      },{
         "code":79,
         "type":§8$5§.§=$-§,
         "name":"NAVAL"
      },{
         "code":80,
         "type":§8$5§.§=$K§,
         "name":"SECRET"
      },{
         "code":81,
         "type":§8$5§.POISON,
         "name":"ANIMAL"
      },{
         "code":82,
         "type":§8$5§.§=$-§,
         "name":"NAVAL"
      },{
         "code":101,
         "type":§8$5§.OTHER9,
         "name":"RURAL"
      },{
         "code":102,
         "type":§8$5§.OTHER7,
         "name":"MUSIC"
      },{
         "code":103,
         "type":§8$5§.OTHER4,
         "name":"HAIRDRESSING"
      },{
         "code":104,
         "type":§8$5§.OTHER2,
         "name":"SAVING"
      },{
         "code":105,
         "type":§8$5§.OTHER8,
         "name":"LOST"
      },{
         "code":106,
         "type":§8$5§.OTHER6,
         "name":"NIGHT"
      },{
         "code":107,
         "type":§8$5§.§&!c§,
         "name":"TIBETAN"
      },{
         "code":108,
         "type":§8$5§.OTHER3,
         "name":"MEXICAN"
      },{
         "code":109,
         "type":§8$5§.OTHER5,
         "name":"SPACE"
      },{
         "code":110,
         "type":§8$5§.§&!c§,
         "name":"BLACK"
      },{
         "code":111,
         "type":§8$5§.OTHER9,
         "name":"THIEVES"
      },{
         "code":112,
         "type":§8$5§.OTHER4,
         "name":"SWAMP"
      },{
         "code":113,
         "type":§8$5§.OTHER2,
         "name":"SIBERIAN"
      },{
         "code":114,
         "type":§8$5§.OTHER8,
         "name":"SHAMANIC"
      },{
         "code":301,
         "type":§8$5§.SMALL_HEALERS,
         "name":"SMALL_HEALERS"
      },{
         "code":302,
         "type":§8$5§.MIDDLE_HEALERS,
         "name":"MIDDLE_HEALERS"
      },{
         "code":303,
         "type":§8$5§.LARGE_HEALERS,
         "name":"LARGE_HEALERS"
      },{
         "code":311,
         "type":§8$5§.SEASON2,
         "name":"SEASONAL_MASTER"
      },{
         "code":312,
         "type":§8$5§.SEASON2,
         "name":"SEASONAL_MASTER"
      },{
         "code":313,
         "type":§8$5§.SEASON2,
         "name":"SEASONAL_MASTER"
      },{
         "code":351,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.§1#A§,
         "name":"HOMEMADE"
      },{
         "code":352,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.FIRE_MASK,
         "name":"WILD"
      },{
         "code":353,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.PYROMANCER,
         "name":"SECRETIVE"
      },{
         "code":354,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.ABSORBER,
         "name":"CURSED_NEON"
      },{
         "code":355,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.ARCHIDEMON_SWORD,
         "name":"DEMONIC"
      },{
         "code":501,
         "type":§8$5§.SMALL_HEALERS,
         "name":"SMALL_HEALERS"
      },{
         "code":502,
         "type":§8$5§.MIDDLE_HEALERS,
         "name":"MIDDLE_HEALERS"
      },{
         "code":503,
         "type":§8$5§.LARGE_HEALERS,
         "name":"LARGE_HEALERS"
      },{
         "code":504,
         "type":§8$5§.SMALL_HEALERS,
         "name":"SMALL_HEALERS_FULL"
      },{
         "code":505,
         "type":§8$5§.MIDDLE_HEALERS,
         "name":"MIDDLE_HEALERS_FULL"
      },{
         "code":506,
         "type":§8$5§.LARGE_HEALERS,
         "name":"LARGE_HEALERS_FULL"
      },{
         "code":551,
         "type":§8$5§.§ #K§,
         "name":"PROFI-S"
      },{
         "code":552,
         "type":§8$5§.§'#u§,
         "name":"PROFI-M"
      },{
         "code":553,
         "type":§8$5§.§ !W§,
         "name":"PROFI-L"
      },{
         "code":701,
         "type":§8$5§.RACE2,
         "name":"BUNDLE_RACE"
      },{
         "code":702,
         "type":§8$5§.RACE2,
         "name":"BUNDLE_RACE"
      },{
         "code":703,
         "type":§8$5§.RACE2,
         "name":"BUNDLE_RACE"
      },{
         "code":704,
         "type":§8$5§.RACE2,
         "name":"BUNDLE_RACE"
      },{
         "code":705,
         "type":§8$5§.RACE2,
         "name":"BUNDLE_RACE"
      },{
         "code":751,
         "type":§8$5§.RACE3,
         "name":"BUNDLE_RACE"
      },{
         "code":752,
         "type":§8$5§.RACE3,
         "name":"BUNDLE_RACE"
      },{
         "code":753,
         "type":§8$5§.RACE3,
         "name":"BUNDLE_RACE"
      },{
         "code":754,
         "type":§8$5§.RACE3,
         "name":"BUNDLE_RACE"
      },{
         "code":755,
         "type":§8$5§.RACE3,
         "name":"BUNDLE_RACE"
      },{
         "code":799,
         "type":§8$5§.RACE2,
         "name":"BUNDLE_RACE"
      },{
         "code":801,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.BLAZING_AXE,
         "name":"FAIRY_TALE"
      },{
         "code":802,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.§##s§,
         "name":"GREAT"
      },{
         "code":803,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.STRATEGIST_FAN,
         "name":"STRATEGIC"
      },{
         "code":804,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.§1#A§,
         "name":"HOMEMADE"
      },{
         "code":805,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.ARCHIDEMON_SWORD,
         "name":"DEMONIC"
      },{
         "code":806,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.DEATH_HAMMER,
         "name":"MYSTICAL"
      },{
         "code":807,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.FIRE_MASK,
         "name":"WILD"
      },{
         "code":808,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.VILE_MASK,
         "name":"GHOST"
      },{
         "code":809,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.SURGEON_BAND,
         "name":"GOLD"
      },{
         "code":810,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.COMISSAR_HAT,
         "name":"DIPLOMATIC"
      },{
         "code":811,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.HEALER_STAFF,
         "name":"EAGLE"
      },{
         "code":812,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.MIRAGE,
         "name":"UNSUCCESSFUL"
      },{
         "code":813,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.PYROMANCER,
         "name":"SECRETIVE"
      },{
         "code":814,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.ABSORBER,
         "name":"CURSED_NEON"
      },{
         "code":815,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.HOLOGRAM,
         "name":"HOLOGRAM_KIT"
      },{
         "code":816,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.MAGMATIC_STETSON,
         "name":"MAGMATIC_KIT"
      },{
         "code":817,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.BIOLAMP,
         "name":"ARTHROPOD_KIT"
      },{
         "code":818,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.COCKED_HAT,
         "name":"SEA_KIT"
      },{
         "code":819,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.GUL_MASK,
         "name":"PARTY_KIT"
      },{
         "code":820,
         "type":§8$5§.CRAFT3,
         "craftId":§!#^§.SOUL_DESTROYER,
         "name":"SOUL_DESTROYER_KIT"
      },{
         "code":821,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.PULSAR,
         "name":"PULSAR_KIT"
      },{
         "code":822,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.DRAGON_STAFF,
         "name":"DRAGON_STAFF_KIT"
      },{
         "code":823,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.NEUROMANCER,
         "name":"NEUROMANCER_KIT"
      },{
         "isNew":true,
         "code":824,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.§;l§,
         "name":"GRIM_REAPER_KIT"
      },{
         "isNew":true,
         "code":825,
         "type":§8$5§.CRAFT2,
         "craftId":§!#^§.INQUISITOR,
         "name":"INQUISITOR_KIT"
      },{
         "isNew":true,
         "code":826,
         "type":§8$5§.§'#"§,
         "craftId":§!#^§.SPYGLASS,
         "name":"SPYGLASS_KIT"
      },{
         "code":991,
         "type":§8$5§.§[Q§,
         "name":"SEASONAL_KILLER"
      },{
         "code":992,
         "type":§8$5§.§[Q§,
         "name":"SEASONAL_KILLER"
      },{
         "code":993,
         "type":§8$5§.§[Q§,
         "name":"SEASONAL_KILLER"
      },{
         "code":998,
         "type":§8$5§.SEASON2,
         "name":"SEASONAL"
      },{
         "code":999,
         "type":§8$5§.§[Q§,
         "name":"SEASONAL"
      }];
      
      public function §]&C§()
      {
         super();
      }
      
      public static function §8#l§(param1:int) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in § c§)
         {
            if(_loc2_.code == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §7$W§(param1:int) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in § c§)
         {
            if(_loc2_.code == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}

