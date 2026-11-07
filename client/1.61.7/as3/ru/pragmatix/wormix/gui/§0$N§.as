package ru.pragmatix.wormix.gui
{
   import § !8§.§`!d§;
   import § "d§.§,!c§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §'!Z§.§[&$§;
   import §+#P§.§]!E§;
   import §+5§.§^$[§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#x§.*;
   import §3#T§.§+&F§;
   import §3#a§.§-!`§;
   import §4!!§.§!%n§;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6%2§.§,x§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8$V§.*;
   import §<!f§.§!"<§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]#[§.§2%o§;
   import §^"y§.§]#i§;
   import §^-§.§ %s§;
   import §^-§.Rope;
   import §`"p§.*;
   import §`#x§.§"$r§;
   import config.§5%T§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §0$N§
   {
      
      public static var §]"4§:Boolean;
      
      private static const §"#u§:Object = {};
      
      public static const LOADING:String = §%! §("LOADING");
      
      public static const SAVING:String = §%! §("SAVING");
      
      public static const WAITING_DATA:String = §%! §("WAITING_DATA");
      
      public static const WAITING_STABLE_SCENE:String = §%! §("WAITING_STABLE_SCENE");
      
      public static const SWITCHING_TURN:String = §%! §("SWITCHING_TURN");
      
      public static const FRIEND_LIST_CHEAT:String = §%! §("FRIEND_LIST_CHEAT");
      
      public static const GENERAL_BAN:String = §%! §("GENERAL_BAN");
      
      public static const RESTRICT_FOR:String = §%! §("RESTRICT_FOR");
      
      public static const CHAT_RESTRICTED:String = §%! §("CHAT_RESTRICTED");
      
      public static const RENAMES_RESTRICTED:String = §%! §("RENAMES_RESTRICTED");
      
      public static const ENTER_MESSAGE:String = §%! §("ENTER_MESSAGE");
      
      public static const GLOBAL_CHAT_NOT_ALLOWED:String = §%! §("GLOBAL_CHAT_NOT_ALLOWED");
      
      public static const GLOBAL_CHAT_ILLEGAL_STATE:String = §%! §("GLOBAL_CHAT_ILLEGAL_STATE");
      
      public static const GLOBAL_CHAT_TOO_FAST:String = §%! §("GLOBAL_CHAT_TOO_FAST");
      
      public static const GLOBAL_CHAT_ILLEGAL_ACTION:String = §%! §("GLOBAL_CHAT_ILLEGAL_ACTION");
      
      public static const RESET_NAME_CONFIRM_MESSAGE:String = §%! §("RESET_NAME_CONFIRM_MESSAGE");
      
      public static const VIP_FREE_RENAME_CHAR:String = §%! §("VIP_FREE_RENAME_CHAR");
      
      public static const REPLACE_LABEL:String = §%! §("REPLACE_LABEL");
      
      public static const TO_RESERVE_LABEL:String = §%! §("TO_RESERVE_LABEL");
      
      public static const TO_BATTLE_LABEL:String = §%! §("TO_BATTLE_LABEL");
      
      public static const GET_OFF_BTN_HINT:String = §%! §("GET_OFF_BTN_HINT");
      
      public static const RENAME_LABEL:String = §%! §("RENAME_LABEL");
      
      public static const §6$$§:String = §%! §("MEMBER.HIMSELF");
      
      public static const §0%P§:String = §%! §("MEMBER.FRIEND");
      
      public static const §0d§:String = §%! §("MEMBER.MERCENARY");
      
      public static const §0&A§:String = §%! §("MEMBER.CLANMATE");
      
      public static const §@"F§:String = §%! §("MEMBER.LEAVE_CLAN");
      
      public static const §%$8§:String = §%! §("MEMBER.LEVEL_TOO_HIGH");
      
      public static const §#$c§:String = §%! §("MEMBER.UNAVAILABLE");
      
      public static const TITLE_WELCOME:String = §%! §("TITLE_WELCOME");
      
      public static const TITLE_SERVER_MSG:String = §%! §("TITLE_SERVER_MSG");
      
      public static const SERVER_UPDATE:String = §%! §("SERVER_UPDATE");
      
      public static const TITLE_ATTENTION:String = §%! §("TITLE_ATTENTION");
      
      public static const TITLE_CONGRATULATE:String = §%! §("TITLE_CONGRATULATE");
      
      public static const TITLE_ERROR:String = §%! §("TITLE_ERROR");
      
      public static const TITLE_BAN:String = §%! §("TITLE_BAN");
      
      public static const GAME_NAME:String = §%! §("GAME_NAME");
      
      public static const BATTLE_SETTINGS_MENU_TITLE:String = §%! §("BATTLE_SETTINGS_MENU_TITLE");
      
      public static const SETTINGS_QTIP:String = §%! §("SETTINGS_QTIP");
      
      public static const SETTING_EFFECT_TITLE:String = §%! §("SETTING_EFFECT_TITLE");
      
      public static const SETTING_SHELL_TRACE_TITLE:String = §%! §("SETTING_SHELL_TRACE_TITLE");
      
      public static const SETTING_ALTERNATIVE_SQUAD_COLORS_TITLE:String = §%! §("SETTING_ALTERNATIVE_SQUAD_COLORS_TITLE");
      
      public static const SETTING_SQUAD_TURN_DAMAGE_TITLE:String = §%! §("SETTING_SQUAD_TURN_DAMAGE_TITLE");
      
      public static const SETTING_AUTOSELECT_LAYER_TITLE:String = §%! §("SETTING_AUTOSELECT_LAYER_TITLE");
      
      public static const SETTING_AUTOWEAR_EQUIP_TITLE:String = §%! §("SETTING_AUTOWEAR_EQUIP_TITLE");
      
      public static const SETTING_VIP_NOTES_TITLE:String = §%! §("SETTING_VIP_NOTES_TITLE");
      
      public static const SETTING_SHARE_DIALOG_TITLE:String = §%! §("SETTING_SHARE_DIALOG_TITLE");
      
      public static const SETTING_UNIT_AIM_TITLE:String = §%! §("SETTING_UNIT_AIM_TITLE");
      
      public static const SETTING_CONTROL_WASD_TITLE:String = §%! §("SETTING_CONTROL_WASD_TITLE");
      
      public static const SETTING_CONTROL_LETTER_JUMPS_TITLE:String = §%! §("SETTING_CONTROL_LETTER_JUMPS_TITLE");
      
      public static const SETTING_CONTROL_NONLETTER_JUMPS_TITLE:String = §%! §("SETTING_CONTROL_NONLETTER_JUMPS_TITLE");
      
      public static const SETTING_CONTROL_USE_TITLE:String = §%! §("SETTING_CONTROL_USE_TITLE");
      
      public static const SETTING_CONTROL_BAG_Q_TITLE:String = §%! §("SETTING_CONTROL_BAG_Q_TITLE");
      
      public static const §9!L§:String = §%! §("SETTING_CONTROL_BAG_I_TITLE");
      
      public static const SETTING_CONTROL_NUM0_TITLE:String = §%! §("SETTING_CONTROL_NUM0_TITLE");
      
      public static const SETTING_CONTROL_NUMPAD_TITLE:String = §%! §("SETTING_CONTROL_NUMPAD_TITLE");
      
      public static const QUALITY_CONTROL_PANEL_TITLE:String = §%! §("QUALITY_CONTROL_PANEL_TITLE");
      
      public static const SETTING_CLOUDS_TITLE:String = §%! §("SETTING_CLOUDS_TITLE");
      
      public static const SETTING_LEGENDS_TITLE:String = §%! §("SETTING_LEGENDS_TITLE");
      
      public static const SETTING_UNIT_TRACE_TITLE:String = §%! §("SETTING_UNIT_TRACE_TITLE");
      
      public static const EQUIP_ANIM_TITLE:String = §%! §("EQUIP_ANIM_TITLE");
      
      public static const SCREEN_SHAKE_TITLE:String = §%! §("SCREEN_SHAKE_TITLE");
      
      public static const TAUNTS_TITLE:String = §%! §("TAUNTS_TITLE");
      
      public static const WEATHER_TITLE:String = §%! §("WEATHER_TITLE");
      
      public static const WATER_TITLE:String = §%! §("WATER_TITLE");
      
      public static const AMMO_TRAIL_TITLE:String = §%! §("AMMO_TRAIL_TITLE");
      
      public static const PARTICLES_TITLE:String = §%! §("PARTICLES_TITLE");
      
      public static const UNIT_IDLES_TITLE:String = §%! §("UNIT_IDLES_TITLE");
      
      public static const POPUP_COOLDOWNS_TITLE:String = §%! §("POPUP_COOLDOWNS_TITLE");
      
      public static const POPUP_HP_TITLE:String = §%! §("POPUP_HP_TITLE");
      
      public static const GROUND_SMOOTHING_TITLE:String = §%! §("GROUND_SMOOTHING_TITLE");
      
      public static const BATTLE_BACKPACK_TITLE:String = §%! §("BATTLE_BACKPACK_TITLE");
      
      public static const BATTLE_BACKPACK_LAYOUT:String = §%! §("BATTLE_BACKPACK_LAYOUT");
      
      public static const STORAGE_TITLE:String = §%! §("STORAGE_TITLE");
      
      public static const ZOMBIE_RISING_BATTLE_OFFER_TITLE:String = §%! §("ZOMBIE_RISING_BATTLE_OFFER_TITLE");
      
      public static const ARSENAL_CELL_CONSUMABLE:String = §%! §("ARSENAL_CELL_CONSUMABLE");
      
      public static const ARSENAL_CELL_FREE:String = §%! §("ARSENAL_CELL_FREE");
      
      public static const ARSENAL_CELL_OVERFLOW:String = §%! §("ARSENAL_CELL_OVERFLOW");
      
      public static const CURRENCY_PLURALS:Array = §%! §("CURRENCY_PLURALS").split(",");
      
      public static const DAY_PLURALS:Array = §%! §("DAY_PLURALS").split(",");
      
      public static const UNIT_PLURALS:Array = §%! §("UNIT_PLURALS").split(",");
      
      public static const RUBY_PLURALS:Array = §%! §("RUBY_PLURALS").split(",");
      
      public static const FUZY_PLURALS:Array = §%! §("FUZY_PLURALS").split(",");
      
      public static const MUTAGEN_PLURALS:Array = §%! §("MUTAGEN_PLURALS").split(",");
      
      public static const MEDAL_PLURALS:Array = §%! §("MEDAL_PLURALS").split(",");
      
      public static const HOUR_PLURALS:Array = §%! §("HOUR_PLURALS").split(",");
      
      public static const MINUTE_PLURALS:Array = §%! §("MINUTE_PLURALS").split(",");
      
      public static const TURN_PLURALS:Array = §%! §("TURN_PLURALS").split(",");
      
      public static const HITS_PLURALS:Array = §%! §("HITS_PLURALS").split(",");
      
      public static const MISSING_PLURALS:Array = §%! §("MISSING_PLURALS").split(",");
      
      public static const LEVELS_PLURALS:Array = §%! §("LEVELS_PLURALS").split(",");
      
      public static const DOWNGRADES_PLURALS:Array = §%! §("DOWNGRADES_PLURALS").split(",");
      
      public static const LEVEL_UP_DIALOG_TITLE:String = §%! §("LEVEL_UP_DIALOG_TITLE");
      
      public static const LEVEL_UP_DIALOG_DESCRIPTION:String = §%! §("LEVEL_UP_DIALOG_DESCRIPTION");
      
      public static const LEVEL_UP_DIALOG_BONUS_TEXT:String = §%! §("LEVEL_UP_DIALOG_BONUS_TEXT");
      
      public static const LEVEL_UP_DIALOG_THINGS_TEXT:String = §%! §("LEVEL_UP_DIALOG_THINGS_TEXT");
      
      public static const LEVEL_UP_DIALOG_BUTTON_SHOP:String = §%! §("LEVEL_UP_DIALOG_BUTTON_SHOP");
      
      public static const LEVEL_UP_DIALOG_LIFE_TIPS:String = §%! §("LEVEL_UP_DIALOG_LIFE_TIPS");
      
      public static const LEVEL_UP_DIALOG_PARAMS_TIPS:String = §%! §("LEVEL_UP_DIALOG_PARAMS_TIPS");
      
      public static const LEVEL_UP_DIALOG_COMMAND_TIPS:String = §%! §("LEVEL_UP_DIALOG_COMMAND_TIPS");
      
      public static const SERVER_IS_STARTING:String = §%! §("SERVER_IS_STARTING");
      
      public static const ERROR_SERVER:String = §%! §("ERROR_SERVER");
      
      public static const ERROR_SAVING:String = §%! §("ERROR_SAVING");
      
      public static const ERROR_SOCIAL:String = §%! §("ERROR_SOCIAL");
      
      public static const OTHER_SOCIAL:String = §%! §("OTHER_SOCIAL");
      
      public static const ERROR_SCENE_LOAD:String = §%! §("ERROR_SCENE_LOAD");
      
      public static const ERROR_SCENE_CREATE:String = §%! §("ERROR_SCENE_CREATE");
      
      public static const ERROR_HACKING_ATTEMPT:String = §%! §("ERROR_HACKING_ATTEMPT");
      
      public static const ERROR_REQUEST_FRIEND_TO_BATTLE:String = §%! §("ERROR_REQUEST_FRIEND_TO_BATTLE");
      
      public static const ERROR_BANK_FAIL:String = §%! §("ERROR_BANK_FAIL");
      
      public static const ERROR_NOT_ENOUGH_MONEY:String = §%! §("ERROR_NOT_ENOUGH_MONEY");
      
      public static const ERROR_NOT_ENOUGH_REAGENTS:String = §%! §("ERROR_NOT_ENOUGH_REAGENTS");
      
      public static const ERROR_NOT_FOR_SALE:String = §%! §("ERROR_NOT_FOR_SALE");
      
      public static const ERROR_NOT_ENOUGH_BATTLE_TOKENS:String = §%! §("ERROR_NOT_ENOUGH_BATTLE_TOKENS");
      
      public static const ERROR_AUTH_KEY:String = §%! §("ERROR_AUTH_KEY");
      
      public static const ERROR_PROTOCOL_VERSION:String = §%! §("ERROR_PROTOCOL_VERSION");
      
      public static const REFRESH_PLEASE:String = §%! §("REFRESH_PLEASE");
      
      public static const UNSYNCH_ERROR:String = §%! §("UNSYNCH_ERROR");
      
      public static const TITLE_ERROR_LOAD_RES:String = §%! §("TITLE_ERROR_LOAD_RES");
      
      public static const MSG_ERROR_LOAD_ROOM_RES:String = §%! §("MSG_ERROR_LOAD_ROOM_RES");
      
      public static const BUY_RUBIES_SUCCESSFULL:String = §%! §("BUY_RUBIES_SUCCESSFULL");
      
      public static const SHOP:String = §%! §("SHOP");
      
      public static const WEAPON_TAB:String = §%! §("WEAPON_TAB");
      
      public static const HAT_TAB:String = §%! §("HAT_TAB");
      
      public static const TITLE_BUY:String = §%! §("TITLE_BUY");
      
      public static const TITLE_SUBSCRIPTION:String = §%! §("TITLE_SUBSCRIPTION");
      
      public static const TITLE_BUY_RACE:String = §%! §("TITLE_BUY_RACE");
      
      public static const SHOP_REQUIRED_LEVEL:String = §%! §("SHOP_REQUIRED_LEVEL");
      
      public static const SHOP_REQUIRED_FRIENDS:String = §%! §("SHOP_REQUIRED_FRIENDS");
      
      public static const SHOP_BUY_FOR_REAL_MONEY:String = §%! §("SHOP_BUY_FOR_REAL_MONEY");
      
      public static const SHOP_REQUIRED_FIELD:String = §%! §("SHOP_REQUIRED_FIELD");
      
      public static const FRIENDS_REQUIREMENT:String = §%! §("FRIENDS_REQUIREMENT");
      
      public static const LEVEL_REQUIREMENT:String = §%! §("LEVEL_REQUIREMENT");
      
      public static const PRICE_LABEL:String = §%! §("PRICE_LABEL");
      
      public static const RATING_REQUIREMENT:String = §%! §("RATING_REQUIREMENT");
      
      public static const SCENARIO_REQUIREMENT:String = §%! §("SCENARIO_REQUIREMENT");
      
      public static const SHOP_SCENARIO_REQUIREMENT:String = §%! §("SHOP_SCENARIO_REQUIREMENT");
      
      public static const REQUIRED_LEVEL_HINT:String = §%! §("REQUIRED_LEVEL_HINT");
      
      public static const BUNDLE_BTN:String = §%! §("BUNDLE_BTN");
      
      public static const PROLONGATION_BTN:String = §%! §("PROLONGATION_BTN");
      
      public static const SUBSCRIPTION_BTN:String = §%! §("SUBSCRIPTION_BTN");
      
      public static const COST_MONTH_BTN:String = §%! §("COST_MONTH_BTN");
      
      public static const CANCEL_SUBSCRIPTION:String = §%! §("CANCEL_SUBSCRIPTION");
      
      public static const RESUME_SUBSCRIPTION:String = §%! §("RESUME_SUBSCRIPTION");
      
      public static const GRANT_VIP_CONGRATULATION:String = §%! §("GRANT_VIP_CONGRATULATION");
      
      public static const VIP_CONGRATULATION_EXTENSION:String = §%! §("VIP_CONGRATULATION_EXTENSION");
      
      public static const GRANT_BUNDLE_CONGRATULATION:String = §%! §("GRANT_BUNDLE_CONGRATULATION");
      
      public static const VIP_TITLE:String = §%! §("VIP_TITLE");
      
      public static const BUNDLES_TITLE:String = §%! §("BUNDLES_TITLE");
      
      public static const PRICE_FREE:String = §%! §("PRICE_FREE");
      
      public static const PRICE_OR_LABEL:String = §%! §("PRICE_OR_LABEL");
      
      public static const SHOP_REQUIRED_RATING:String = §%! §("SHOP_REQUIRED_RATING");
      
      public static const DAMAGE:String = §%! §("DAMAGE");
      
      public static const COUNT_LABEL:String = §%! §("COUNT_LABEL");
      
      public static const QUANTITY_INFINITY:String = §%! §("QUANTITY_INFINITY");
      
      public static const QUANTITY_PER_BATTLE:String = §%! §("QUANTITY_PER_BATTLE");
      
      public static const REACTION_LEVELUP:String = §%! §("REACTION_LEVELUP");
      
      public static const BUY_EXISTING_WEAPON:String = §%! §("BUY_EXISTING_WEAPON");
      
      public static const BUY_EXISTING_HAT:String = §%! §("BUY_EXISTING_HAT");
      
      public static const BUY_EXISTING_BOOSTER:String = §%! §("BUY_EXISTING_BOOSTER");
      
      public static const MORE_POWERFUL_BOOSTER_EXIST:String = §%! §("MORE_POWERFUL_BOOSTER_EXIST");
      
      public static const MORE_LONGLASTING_BOOSTER_EXIST:String = §%! §("MORE_LONGLASTING_BOOSTER_EXIST");
      
      public static const BUY_2_HAT:String = §%! §("BUY_2_HAT");
      
      public static const COMING_SOON:String = §%! §("COMING_SOON",§7"n§.§-"X§);
      
      public static const ARENA:String = §%! §("ARENA");
      
      public static const BATTLES_AVAILABLE:String = §%! §("BATTLES_AVAILABLE");
      
      public static const TEAM_HP_LABEL:String = §%! §("TEAM_HP_LABEL");
      
      public static const TEAM_LABEL:String = §%! §("TEAM_LABEL");
      
      public static const AWARD_LABEL:String = §%! §("AWARD_LABEL");
      
      public static const MISSION_TAB_NAME:String = §%! §("MISSION_TAB_NAME");
      
      public static const MISSION_FREE_GAME:String = §%! §("MISSION_FREE_GAME");
      
      public static const PVP_TAB_NAME:String = §%! §("PVP_TAB_NAME");
      
      public static const BOSS_TAB_NAME:String = §%! §("BOSS_TAB_NAME");
      
      public static const PVP_WAGER_LABEL:String = §%! §("PVP_WAGER_LABEL");
      
      public static const PVP_PRIZE_LABEL:String = §%! §("PVP_PRIZE_LABEL");
      
      public static const PVP_BONUS_LABEL:String = §%! §("PVP_BONUS_LABEL");
      
      public static const ENTER_LABEL:String = §%! §("ENTER_LABEL");
      
      public static const COST_ENTER_LABEL:String = §%! §("COST_ENTER_LABEL");
      
      public static const REWARD_UP_TO:String = §%! §("REWARD_UP_TO");
      
      public static const MINI_COLISEUM:String = §%! §("MINI_COLISEUM");
      
      public static const BUY_GLADIATOR_ENTER_TEXT:String = §%! §("BUY_GLADIATOR_ENTER_TEXT");
      
      public static const BUY_GLADIATOR_ENTER_BUTTON_TEXT:String = §%! §("BUY_GLADIATOR_ENTER_BUTTON_TEXT");
      
      public static const FIRST_GLADIATOR_ENTER_BUTTON_TEXT:String = §%! §("FIRST_GLADIATOR_ENTER_BUTTON_TEXT");
      
      public static const MORE_WINS_MORE_AWARDS_TEXT:String = §%! §("MORE_WINS_MORE_AWARDS_TEXT");
      
      public static const GLADIATOR_DESCRIPTION:String = §%! §("GLADIATOR_DESCRIPTION");
      
      public static const PVP_WAGER_BTN:String = §%! §("PVP_WAGER_BTN");
      
      public static const PVP_WAGER_FRIEND_BTN:String = §%! §("PVP_WAGER_FRIEND_BTN");
      
      public static const PVP_FIND_ENEMY:String = §%! §("PVP_FIND_ENEMY");
      
      public static const PVP_DUEL_CARD:String = §%! §("PVP_DUEL_CARD");
      
      public static const PVP_SURVIVAL_CARD:String = §%! §("PVP_SURVIVAL_CARD");
      
      public static const PVP_DEATH_MATCH_CARD:String = §%! §("PVP_DEATH_MATCH_CARD");
      
      public static const PVP_TWO_VS_TWO_CARD:String = §%! §("PVP_TWO_VS_TWO_CARD");
      
      public static const PVP_TWO_VS_TWO_WITH_FRIEND_CARD_DESC:String = §%! §("PVP_TWO_VS_TWO_WITH_FRIEND_CARD_DESC");
      
      public static const PVP_GLADIATOR_CARD:String = §%! §("PVP_GLADIATOR_CARD");
      
      public static const MISSION_BTN:String = §%! §("MISSION_BTN");
      
      public static const BOSS_BTN:String = §%! §("BOSS_BTN");
      
      public static const ARENA_DELAY_MESSAGE:String = §%! §("ARENA_DELAY_MESSAGE");
      
      public static const ARENA_DELAY_DESC:String = §%! §("ARENA_DELAY_DESC");
      
      public static const ARENA_DELAY_DONT_WAIT:String = §%! §("ARENA_DELAY_DONT_WAIT");
      
      public static const ARENA_BUY_BATTLE:String = §%! §("ARENA_BUY_BATTLE");
      
      public static const ARENA_BUY_FIVE_BATTLES:String = §%! §("ARENA_BUY_FIVE_BATTLES");
      
      public static const ARENA_BUY_BTN_NAME:String = §%! §("ARENA_BUY_BTN_NAME");
      
      public static const ARENA_EXISTS_MONEY:String = §%! §("ARENA_EXISTS_MONEY");
      
      public static const CHOOOSE_FRIEND_BTN_NAME:String = §%! §("CHOOOSE_FRIEND_BTN_NAME");
      
      public static const HOT_SEAT_CARD_TITLE:String = §%! §("HOT_SEAT_CARD_TITLE");
      
      public static const HOT_SEAT_CARD_DESC:String = §%! §("HOT_SEAT_CARD_DESC");
      
      public static const UNKNOWN_CARD_NAME:String = §%! §("UNKNOWN_CARD_NAME");
      
      public static const UNKNOWN_CARD_DESC:String = §%! §("UNKNOWN_CARD_DESC");
      
      public static const PLAY_MISSION_BTN_NAME:String = §%! §("PLAY_MISSION_BTN_NAME");
      
      public static const BOSS_SINGLE_MODE_BTN:String = §%! §("BOSS_SINGLE_MODE_BTN");
      
      public static const FRIEND_COOP_MODE_BTN:String = §%! §("FRIEND_COOP_MODE_BTN");
      
      public static const SUPER_BOSSES_MODE_BTN:String = §%! §("SUPER_BOSSES_MODE_BTN");
      
      public static const BOSS_PLAY_BTN:String = §%! §("BOSS_PLAY_BTN");
      
      public static const BOSS_AWARD:String = §%! §("BOSS_AWARD");
      
      public static const BOSS_LOCKED:String = §%! §("BOSS_LOCKED");
      
      public static const BOSS_LOCKED_BY_TOKENS:String = §%! §("BOSS_LOCKED_BY_TOKENS");
      
      public static const BOSS_UNAVAILABLE_TITLE:String = §%! §("BOSS_UNAVAILABLE_TITLE");
      
      public static const BOSS_UNAVAILABLE_DESC:String = §%! §("BOSS_UNAVAILABLE_DESC");
      
      public static const BOSS_UNAVAILABLE_REQUIRED_LEVEL:String = §%! §("BOSS_UNAVAILABLE_REQUIRED_LEVEL");
      
      public static const BOSS_UNAVAILABLE_REQUIRED_LEVEL_TEXT:String = §%! §("BOSS_UNAVAILABLE_REQUIRED_LEVEL_TEXT");
      
      public static const REPLACE_IN_GROUP:String = §%! §("REPLACE_IN_GROUP");
      
      public static const REMOVE_FROM_GROUP:String = §%! §("REMOVE_FROM_GROUP");
      
      public static const ADD_IN_GROUP:String = §%! §("ADD_IN_GROUP");
      
      public static const ADD_IN_GROUP_CONFIRMATION:String = §%! §("ADD_IN_GROUP_CONFIRMATION");
      
      public static const REPLACE_IN_GROUP_CONFIRMATION:String = §%! §("REPLACE_IN_GROUP_CONFIRMATION");
      
      public static const USER_PAGE:String = §%! §("USER_PAGE");
      
      public static const CALL_TO_BATTLE:String = §%! §("CALL_TO_BATTLE");
      
      public static const CALL_TO_LOCAL_BATTLE:String = §%! §("CALL_TO_LOCAL_BATTLE");
      
      public static const SOLO_HOTSEAT_BTN_NAME:String = §%! §("SOLO_HOTSEAT_BTN_NAME");
      
      public static const CALL_FRIEND_ON_PVP_MENU_TITLE:String = §%! §("CALL_FRIEND_ON_PVP_MENU_TITLE");
      
      public static const GROUP_ICON_QTIP:String = §%! §("GROUP_ICON_QTIP");
      
      public static const CAN_NOT_ADD_IN_GROUP:String = §%! §("CAN_NOT_ADD_IN_GROUP");
      
      public static const REMOVE_FROM_GROUP_CONFIRMATION:String = §%! §("REMOVE_FROM_GROUP_CONFIRMATION");
      
      public static const ALREADY_IN_TEAM:String = §%! §("ALREADY_IN_TEAM");
      
      public static const PARAMS_TITLE:String = §%! §("PARAMS_TITLE");
      
      public static const ALLOCATE_POINTS:String = §%! §("ALLOCATE_POINTS");
      
      public static const NO_POINTS:String = §%! §("NO_POINTS");
      
      public static const POINTS_ICON_QTIP:String = §%! §("POINTS_ICON_QTIP");
      
      public static const ARMOR_DESCRIPTION:String = §%! §("ARMOR_DESCRIPTION");
      
      public static const ATTACK_DESCRIPTION:String = §%! §("ATTACK_DESCRIPTION");
      
      public static const REACTION_DESCRIPTION:String = §%! §("REACTION_DESCRIPTION");
      
      public static const RESET_PARAMS_DESC:String = §%! §("RESET_PARAMS_DESC");
      
      public static const HOUSE_QTIP:String = §%! §("HOUSE_QTIP");
      
      public static const NEWS_QTIP:String = §%! §("NEWS_QTIP");
      
      public static const OFFICIAL_GROUP_BTN_QTIP:String = §%! §("OFFICIAL_GROUP_BTN_QTIP");
      
      public static const HP:String = §%! §("HP");
      
      public static const ATTACK:String = §%! §("ATTACK");
      
      public static const ARMOR:String = §%! §("ARMOR");
      
      public static const REACTION:String = §%! §("REACTION");
      
      public static const §9!>§:String = §%! §("BONUS.POISON_DAMAGE");
      
      public static const §[#S§:String = §%! §("BONUS.FIRE_DAMAGE");
      
      public static const §^"J§:String = §%! §("BONUS.FORTITUDE");
      
      public static const §<#v§:String = §%! §("BONUS.EXTRA_JUMP");
      
      public static const §`$a§:String = §%! §("BONUS.EXTRA_DRAGON_FLY_UPSWING");
      
      public static const §<%$§:String = §%! §("BONUS.SPEED");
      
      public static const §,#6§:String = §%! §("BONUS.SQUAD_SPEED");
      
      public static const §;!m§:String = §%! §("BONUS.SQUAD_ATTACK");
      
      public static const § !m§:String = §%! §("BONUS.SQUAD_ARMOR");
      
      public static const §+k§:String = §%! §("BONUS.SQUAD_HP");
      
      public static const §0$$§:String = §%! §("BONUS.FIRE_DEFENSE");
      
      public static const §5!X§:String = §%! §("BONUS.SHOCK_DAMAGE");
      
      public static const §"%h§:String = §%! §("BONUS.AIR_DAMAGE");
      
      public static const §^b§:String = §%! §("BONUS.FROST_DEFENSE");
      
      public static const §=8§:String = §%! §("BONUS.FROST_DAMAGE");
      
      public static const §1%S§:String = §%! §("BONUS.AIR_DEFENSE");
      
      public static const §>$D§:String = §%! §("BONUS.PHYSICAL_DEFENSE");
      
      public static const §&"Y§:String = §%! §("BONUS.PHYSICAL_DAMAGE");
      
      public static const §+f§:String = §%! §("BONUS.SHOCK_DEFENSE");
      
      public static const §0#V§:String = §%! §("BONUS.LEECH");
      
      public static const §^$4§:String = §%! §("BONUS.LEECH_REGENERATION");
      
      public static const §5%H§:String = §%! §("BONUS.REDUCE_HEALING");
      
      public static const §9N§:String = §%! §("BONUS.SLOW_PROTECTION");
      
      public static const §5$;§:String = §%! §("BONUS.REGENERATION");
      
      public static const §<#u§:String = §%! §("BONUS.DODGE");
      
      public static const §#"O§:String = §%! §("BONUS.CIRCUS_WEAPON_DAMAGE");
      
      public static const §""w§:String = §%! §("BONUS.REVENGE_DAMAGE");
      
      public static const §5H§:String = §%! §("BONUS.REVIVAL_HP");
      
      public static const §]&,§:String = §%! §("BONUS.DEVICE_DURATION");
      
      public static const §5J§:String = §%! §("BONUS.WEAPON_DEVICE_DURATION");
      
      public static const §=v§:String = §%! §("BONUS.FUEL");
      
      public static const §]n§:String = §%! §("BONUS.DRAGON_FLY_SPEED");
      
      public static const §]" §:String = §%! §("BONUS.DAMAGE_BLOCK");
      
      public static const §^&@§:String = §%! §("BONUS.CRITICAL_HIT");
      
      public static const BONUS_CRITICAL_HIT2:String = §%! §("BONUS.CRITICAL_HIT2");
      
      public static const BONUS_CRITICAL_HIT3:String = §%! §("BONUS.CRITICAL_HIT3");
      
      public static const BONUS_CRITICAL_HIT10:String = §%! §("BONUS.CRITICAL_HIT10");
      
      public static const §0%c§:String = §%! §("BONUS.PENETRATION");
      
      public static const §4#U§:String = §%! §("BONUS.EXPLOSION_DEATH");
      
      public static const §!"D§:String = §%! §("BONUS.BOUNCE_PROTECTION");
      
      public static const §4!%§:String = §%! §("BONUS.ATTACK_POWER_ADDITION");
      
      public static const §%"J§:String = §%! §("BONUS.FIRE_DEALER");
      
      public static const §70§:String = §%! §("BONUS.ANTI_HEAL");
      
      public static const §1%W§:String = §%! §("BONUS.INVERTER");
      
      public static const §="O§:String = §%! §("BONUS.DEATH_GRIP");
      
      public static const §8#n§:String = §%! §("BONUS.GROUND_DESTROY");
      
      public static const §3%>§:String = §%! §("BONUS.ATTACK_BOOSTER");
      
      public static const §0h§:String = §%! §("BONUS.СHRISTMAS_MOOD");
      
      public static const RACE:String = §%! §("RACE");
      
      public static const SKIN:String = §%! §("SKIN");
      
      public static const TO_HP:String = §%! §("TO_HP");
      
      public static const RATING:String = §%! §("RATING");
      
      public static const RATING_LEVEL:String = §%! §("RATING_LEVEL");
      
      public static const CALL_TO_BATTLE_BY_ID:String = §%! §("CALL_TO_BATTLE_BY_ID");
      
      public static const REFRESH_FRIENDLIST:String = §%! §("REFRESH_FRIENDLIST");
      
      public static const TIPS_ON_OFF:String = §%! §("TIPS_ON_OFF");
      
      public static const CHAR_HINT_ON_OFF:String = §%! §("CHAR_HINT_ON_OFF");
      
      public static const TIPS_LABEL:String = §%! §("TIPS_LABEL");
      
      public static const DND_LABEL:String = §%! §("DND_LABEL");
      
      public static const HARDNESS:String = §%! §("HARDNESS");
      
      public static const EASY:String = §%! §("EASY");
      
      public static const MEDIUM:String = §%! §("MEDIUM");
      
      public static const HARD:String = §%! §("HARD");
      
      public static const SHOW_FRIEND_HOUSE:String = §%! §("SHOW_FRIEND_HOUSE");
      
      public static const LEVEL_NOT_ENOUGH_FOR_SEARCH:String = §%! §("LEVEL_NOT_ENOUGH_FOR_SEARCH");
      
      public static const INVITE_FRIENDS_TEXT:String = §%! §("INVITE_FRIENDS_TEXT");
      
      public static const SEARCH_HOUSE_TITLE:String = §%! §("SEARCH_HOUSE_TITLE");
      
      public static const NO_FIVE_DAY_DESCR:String = §%! §("NO_FIVE_DAY_DESCR");
      
      public static const SEARCH_TODAY_EMPTY:String = §%! §("SEARCH_TODAY_EMPTY");
      
      public static const RUBY_SEARCH_COMPENSATION:String = §%! §("RUBY_SEARCH_COMPENSATION");
      
      public static const ALBUM_TITLE:String = §%! §("ALBUM_TITLE");
      
      public static const ALBUM_DESCRIPTION:String = §%! §("ALBUM_DESCRIPTION");
      
      public static const PHOTO_MENU_TITLE:String = §%! §("PHOTO_MENU_TITLE");
      
      public static const VIDEO_TITLE:String = §%! §("VIDEO_TITLE",§7"n§.VK,§7"n§.FB);
      
      public static const VIDEO_LIMIT_MSG:String = §%! §("VIDEO_LIMIT_MSG",§7"n§.VK,§7"n§.FB);
      
      public static const VIDEO_LIMIT_DESC:String = §%! §("VIDEO_LIMIT_DESC",§7"n§.VK,§7"n§.FB);
      
      public static const VIDEO_SAVE_TITLE:String = §%! §("VIDEO_SAVE_TITLE",§7"n§.VK,§7"n§.FB);
      
      public static const VIDEO_SAVE_ATTENTION:String = §%! §("VIDEO_SAVE_ATTENTION",§7"n§.VK,§7"n§.FB);
      
      public static const VIDEO_SAVE_SIZE:String = §%! §("VIDEO_SAVE_SIZE",§7"n§.VK,§7"n§.FB);
      
      public static const VIDEO_SAVE_QUESTION:String = §%! §("VIDEO_SAVE_QUESTION",§7"n§.VK,§7"n§.FB);
      
      public static const VIDEO_SAVE_SUCCESS:String = §%! §("VIDEO_SAVE_SUCCESS",§7"n§.VK,§7"n§.FB);
      
      public static const VIDEO_FILE_NAME:String = §%! §("VIDEO_FILE_NAME",§7"n§.VK,§7"n§.FB);
      
      public static const VIDEO_SAVING_TITLE:String = §%! §("VIDEO_SAVING_TITLE",§7"n§.VK,§7"n§.FB);
      
      public static const VIDEO_SAVING_DESC:String = §%! §("VIDEO_SAVING_DESC",§7"n§.VK,§7"n§.FB);
      
      public static const VIRAL_QUESTION_CHALLENGE_POST:String = §%! §("VIRAL_QUESTION_CHALLENGE_POST");
      
      public static const BANK_TITLE:String = §%! §("BANK_TITLE");
      
      public static const BANK_BUY_RUBY:String = §%! §("BANK_BUY_RUBY");
      
      public static const BANK_BUY_COIN:String = §%! §("BANK_BUY_COIN");
      
      public static const BANK_CHOOSE:String = §%! §("BANK_CHOOSE");
      
      public static const NOT_ZERO_BALANCE:String = §%! §("NOT_ZERO_BALANCE",§7"n§.VK);
      
      public static const BANK_CELL_TEXT:String = §%! §("BANK_CELL_TEXT");
      
      public static const VOTES:String = §%! §("VOTES",§7"n§.VK);
      
      public static const VOTES_ALT_END:String = §%! §("VOTES_ALT_END",§7"n§.VK);
      
      public static const VOTES_NO_END:String = §%! §("VOTES_NO_END",§7"n§.VK);
      
      public static const ZERO_BALANCE:String = §%! §("ZERO_BALANCE",§7"n§.VK);
      
      public static const BANK_RUBY_EXCHANGE:String = §%! §("BANK_RUBY_EXCHANGE",§7"n§.VK);
      
      public static const BANK_COIN_EXCHANGE:String = §%! §("BANK_COIN_EXCHANGE",§7"n§.VK);
      
      public static const GO_AT_BANK:String = §%! §("GO_AT_BANK");
      
      public static const BUTTON_GO_AT_BANK:String = §%! §("BUTTON_GO_AT_BANK");
      
      public static const RUBY_PRICE:String = §%! §("RUBY_PRICE");
      
      public static const FUZZES_PRICE:String = §%! §("FUZZES_PRICE");
      
      public static const RUBY_PRICE_ALT_END:String = §%! §("RUBY_PRICE_ALT_END",§7"n§.VK,§7"n§.OK,§7"n§.§;"B§);
      
      public static const FUZZES_PRICE_ALT_END:String = §%! §("FUZZES_PRICE_ALT_END",§7"n§.OK,§7"n§.§;"B§);
      
      public static const RUBY_PRICE_NO_END:String = §%! §("RUBY_PRICE_NO_END",§7"n§.VK,§7"n§.OK,§7"n§.§;"B§);
      
      public static const FUZZES_PRICE_NO_END:String = §%! §("FUZZES_PRICE_NO_END",§7"n§.OK,§7"n§.§;"B§);
      
      public static const DR_DESCR:String = §%! §("DR_DESCR",§7"n§.§1&?§);
      
      public static const DR_CURRENCY:String = §%! §("DR_CURRENCY",§7"n§.§1&?§);
      
      public static const HU_CURRENCY:String = §%! §("HU_CURRENCY",§7"n§.§8%W§);
      
      public static const OK_CURRENCY:String = §%! §("OK_CURRENCY",§7"n§.OK);
      
      public static const FS_CURRENCY:String = §%! §("FS_CURRENCY",§7"n§.§;"B§);
      
      public static const NK_CURRENCY:String = §%! §("NK_CURRENCY",§7"n§.§"%O§);
      
      public static const MM_CURRENCY:String = §%! §("MM_CURRENCY",§7"n§.MM);
      
      public static const NATE_CURRENCY:String = §%! §("NATE_CURRENCY",§7"n§.§-"X§);
      
      public static const BANK_BONUS:String = §%! §("BANK_BONUS");
      
      public static const BANK_INCOME_PAYMENT_RUBY:String = §%! §("BANK_INCOME_PAYMENT_RUBY");
      
      public static const BANK_INCOME_PAYMENT_COIN:String = §%! §("BANK_INCOME_PAYMENT_COIN");
      
      public static const BANK_BTN:String = §%! §("BANK_BTN");
      
      public static const SUPER_BOSS_BATTLE_OFFER_TITLE:String = §%! §("SUPER_BOSS_BATTLE_OFFER_TITLE");
      
      public static const BOSS_BATTLE_OFFER_TITLE:String = §%! §("BOSS_BATTLE_OFFER_TITLE");
      
      public static const BATTLE_OFFER_TITLE:String = §%! §("BATTLE_OFFER_TITLE");
      
      public static const BATTLE_2X2_OFFER_TITLE:String = §%! §("BATTLE_2X2_OFFER_TITLE");
      
      public static const BATTLE_OFFER_ACCEPT:String = §%! §("BATTLE_OFFER_ACCEPT");
      
      public static const BATTLE_WAIT_LABEL:String = §%! §("BATTLE_WAIT_LABEL");
      
      public static const SEC_LABEL:String = §%! §("SEC_LABEL");
      
      public static const BATTLE_OP_REQUEST_TITLE:String = §%! §("BATTLE_OP_REQUEST_TITLE");
      
      public static const BATTLE_REQUEST_MSG:String = §%! §("BATTLE_REQUEST_MSG");
      
      public static const ENEMY_WAITING_MSG:String = §%! §("ENEMY_WAITING_MSG");
      
      public static const BATTLE_REQUEST_TITLE:String = §%! §("BATTLE_REQUEST_TITLE");
      
      public static const BATTLE_CANCEL_TITLE:String = §%! §("BATTLE_CANCEL_TITLE");
      
      public static const BATTLE_PARTICIPANTS_IDS:String = §%! §("BATTLE_PARTICIPANTS_IDS");
      
      public static const BATTLE_LOST_TITLE:String = §%! §("BATTLE_LOST_TITLE");
      
      public static const BATTLE_REQUEST_BUSY:String = §%! §("BATTLE_REQUEST_BUSY");
      
      public static const BATTLE_LOGIN_TIMEOUT:String = §%! §("BATTLE_LOGIN_TIMEOUT");
      
      public static const BATTLE_REQUEST_DECLINE:String = §%! §("BATTLE_REQUEST_DECLINE");
      
      public static const BATTLE_REQUEST_NOT_ONLINE:String = §%! §("BATTLE_REQUEST_NOT_ONLINE");
      
      public static const PVP_SERVER_CONNECTION_ERROR:String = §%! §("PVP_SERVER_CONNECTION_ERROR");
      
      public static const PVP_SERVER_LOGIN_ERROR:String = §%! §("PVP_SERVER_LOGIN_ERROR");
      
      public static const PVP_SERVER_CONNECTION_CLOSED:String = §%! §("PVP_SERVER_CONNECTION_CLOSED");
      
      public static const MAIN_SERVER_CONNECTION_CLOSED:String = §%! §("MAIN_SERVER_CONNECTION_CLOSED");
      
      public static const MAIN_SERVER_CONNECTION_CLOSED_LOSE:String = §%! §("MAIN_SERVER_CONNECTION_CLOSED_LOSE");
      
      public static const PVP_SERVER_PROFILACTIC_WORK:String = §%! §("PVP_SERVER_PROFILACTIC_WORK");
      
      public static const PVP_BATTLE_STUCK:String = §%! §("PVP_BATTLE_STUCK");
      
      public static const PVP_BATTLE_UNSYNC:String = §%! §("PVP_BATTLE_UNSYNC");
      
      public static const REFRESH_ON_ERROR_TEXT:String = §%! §("REFRESH_ON_ERROR_TEXT");
      
      public static const PVP_SERVER_DOWN:String = §%! §("PVP_SERVER_DOWN");
      
      public static const WAITING_FOR_OTHER_PLAYERS:String = §%! §("WAITING_FOR_OTHER_PLAYERS");
      
      public static const CURRENT_USER_ALREADY_IN_BATTLE:String = §%! §("CURRENT_USER_ALREADY_IN_BATTLE");
      
      public static const PVP_WAGER_AVAILABLE_FOR:String = §%! §("PVP_WAGER_AVAILABLE_FOR");
      
      public static const PVP_WAGER_AVAILABLE_FOR_TEAM:String = §%! §("PVP_WAGER_AVAILABLE_FOR_TEAM");
      
      public static const PVP_WAGER_AVAILABLE_FOR_PRIME:String = §%! §("PVP_WAGER_AVAILABLE_FOR_PRIME");
      
      public static const PVP_WAGER_CLANMATE_REPLACE:String = §%! §("PVP_WAGER_CLANMATE_REPLACE");
      
      public static const PVP_WAGER_CLANMATE_REPLACE_TO_OTHER:String = §%! §("PVP_WAGER_CLANMATE_REPLACE_TO_OTHER");
      
      public static const LEADERSHIP_AVAILABLE_FOR_TEAM:String = §%! §("LEADERSHIP_AVAILABLE_FOR_TEAM");
      
      public static const LEADERSHIP_DEACTIVATE_CASE:String = §%! §("LEADERSHIP_DEACTIVATE_CASE");
      
      public static const YOUR_ID:String = §%! §("YOUR_ID");
      
      public static const ENEMY_ID:String = §%! §("ENEMY_ID");
      
      public static const ENTER_ID_FRIEND:String = §%! §("ENTER_ID_FRIEND");
      
      public static const ENTER_INCORRECT_ID_FRIEND:String = §%! §("ENTER_INCORRECT_ID_FRIEND");
      
      public static const CALL_TO_BATTLE_YOUSELF:String = §%! §("CALL_TO_BATTLE_YOUSELF");
      
      public static const ENTER_ID_FRIEND_IS_NOT_FRIEND:String = §%! §("ENTER_ID_FRIEND_IS_NOT_FRIEND");
      
      public static const EXCEEDED_MAX_LENGTH:String = §%! §("EXCEEDED_MAX_LENGTH");
      
      public static const FUZY_QTIP:String = §%! §("FUZY_QTIP");
      
      public static const RUBY_QTIP:String = §%! §("RUBY_QTIP");
      
      public static const MUTAGEN_QTIP:String = §%! §("MUTAGEN_QTIP");
      
      public static const OK_PAYMENT_NAME:String = §%! §("OK_PAYMENT_NAME",§7"n§.OK);
      
      public static const AVAILABLE_RUBIES_OFFERS_NAME:String = §%! §("AVAILABLE_RUBIES_OFFERS_NAME",§7"n§.VK);
      
      public static const AVAILABLE_RUBIES_OFFERS_DESCR:String = §%! §("AVAILABLE_RUBIES_OFFERS_DESCR",§7"n§.VK);
      
      public static const AVAILABLE_FUZIES_OFFERS_NAME:String = §%! §("AVAILABLE_FUZIES_OFFERS_NAME",§7"n§.VK);
      
      public static const AVAILABLE_FUZIES_OFFERS_DESCR:String = §%! §("AVAILABLE_FUZIES_OFFERS_DESCR",§7"n§.VK);
      
      public static const NO_OFFERS:String = §%! §("NO_OFFERS",§7"n§.VK);
      
      public static const OFFER_BUTTON_GET:String = §%! §("OFFER_BUTTON_GET",§7"n§.VK);
      
      public static const ENEMY_TURN_MSG:String = §%! §("ENEMY_TURN_MSG");
      
      public static const WINNER_TITLE:String = §%! §("WINNER_TITLE");
      
      public static const LOOSER_TITLE:String = §%! §("LOOSER_TITLE");
      
      public static const DRAW_TITLE:String = §%! §("DRAW_TITLE");
      
      public static const OPPONENT_CHEATER:String = §%! §("OPPONENT_CHEATER");
      
      public static const OPPONENT_SURRENDER_TITLE:String = §%! §("OPPONENT_SURRENDER_TITLE");
      
      public static const PROTOCOL_CHEATER:String = §%! §("PROTOCOL_CHEATER");
      
      public static const FPS_CHEATER:String = §%! §("FPS_CHEATER");
      
      public static const SPEED_HACK_CHEATER:String = §%! §("SPEED_HACK_CHEATER");
      
      public static const SERVER_SAID_I_AM_CHEATER:String = §%! §("SERVER_SAID_I_AM_CHEATER");
      
      public static const WINNER_RATING:String = §%! §("WINNER_RATING");
      
      public static const WINNER_MONEY:String = §%! §("WINNER_MONEY");
      
      public static const LOSED_RATING:String = §%! §("LOSED_RATING");
      
      public static const LOSED_MONEY:String = §%! §("LOSED_MONEY");
      
      public static const GO_EXP_LABEL:String = §%! §("GO_EXP_LABEL");
      
      public static const GO_BONUS_EXP_LABEL:String = §%! §("GO_BONUS_EXP_LABEL");
      
      public static const GO_MONEY_LABEL:String = §%! §("GO_MONEY_LABEL");
      
      public static const GO_NEW_LEVEL:String = §%! §("GO_NEW_LEVEL");
      
      public static const LEVEL_LABEL:String = §%! §("LEVEL_LABEL");
      
      public static const GET_FREE:String = §%! §("GET_FREE");
      
      public static const BONUS:String = §%! §("BONUS");
      
      public static const DISABLE_CHAT:String = §%! §("DISABLE_CHAT");
      
      public static const CHAT_DISABLED:String = §%! §("CHAT_DISABLED");
      
      public static const ENABLE_CHAT:String = §%! §("ENABLE_CHAT");
      
      public static const CHAT_ENABLED:String = §%! §("CHAT_ENABLED");
      
      public static const CHAT_CALL_TO_PVP:String = §%! §("CHAT_CALL_TO_PVP");
      
      public static const FRIEND_GIFT_MENU:String = §%! §("FRIEND_GIFT_MENU",§7"n§.VK);
      
      public static const FRIEND_GIFT_TITLE:String = §%! §("FRIEND_GIFT_TITLE",§7"n§.VK);
      
      public static const FRIEND_GIFT_DESCRIPTION:String = §%! §("FRIEND_GIFT_DESCRIPTION",§7"n§.VK);
      
      public static const EXIT_BATTLE:String = §%! §("EXIT_BATTLE");
      
      public static const EXIT_BATTLE_MSG:String = §%! §("EXIT_BATTLE_MSG");
      
      public static const EXP_CURRENT:String = §%! §("EXP_CURRENT");
      
      public static const RATING_QTIP:String = §%! §("RATING_QTIP");
      
      public static const BONUS_QTIP:String = §%! §("BONUS_QTIP");
      
      public static const WIND_QTIP:String = §%! §("WIND_QTIP");
      
      public static const CHAT_QTIP:String = §%! §("CHAT_QTIP");
      
      public static const BAG_QTIP:String = §%! §("BAG_QTIP");
      
      public static const FLAG_QTIP:String = §%! §("FLAG_QTIP");
      
      public static const SOUND_QTIP:String = §%! §("SOUND_QTIP");
      
      public static const SOUND_IMPORTANT_QTIP:String = §%! §("SOUND_IMPORTANT_QTIP");
      
      public static const MUSIC_QTIP:String = §%! §("MUSIC_QTIP");
      
      public static const SPEECH_QTIP:String = §%! §("SPEECH_QTIP");
      
      public static const ALLSOUND_QTIP:String = §%! §("ALLSOUND_QTIP");
      
      public static const QUALITY_BEST_QTIP:String = §%! §("QUALITY_BEST_QTIP");
      
      public static const QUALITY_HIGH_QTIP:String = §%! §("QUALITY_HIGH_QTIP");
      
      public static const QUALITY_MEDIUM_QTIP:String = §%! §("QUALITY_MEDIUM_QTIP");
      
      public static const QUALITY_LOW_QTIP:String = §%! §("QUALITY_LOW_QTIP");
      
      public static const PHOTO_QTIP:String = §%! §("PHOTO_QTIP");
      
      public static const VIDEO_QTIP:String = §%! §("VIDEO_QTIP");
      
      public static const SCALE_QTIP:String = §%! §("SCALE_QTIP");
      
      public static const VOLUME_QTIP:String = §%! §("VOLUME_QTIP");
      
      public static const REACTION_QTIP:String = §%! §("REACTION_QTIP");
      
      public static const REACTION_LEVEL_QTIP:String = §%! §("REACTION_LEVEL_QTIP");
      
      public static const RATING_QTIP_EX:String = §%! §("RATING_QTIP_EX");
      
      public static const EXPERIENCE:String = §%! §("EXPERIENCE");
      
      public static const STATUS_TEXT:String = §%! §("STATUS_TEXT");
      
      public static const CRAFT_QTIP:String = §%! §("CRAFT_QTIP");
      
      public static const EXIT_QTIP:String = §%! §("EXIT_QTIP");
      
      public static const TEAM_TITLE:String = §%! §("TEAM_TITLE");
      
      public static const RESERVE_TITLE:String = §%! §("RESERVE_TITLE");
      
      public static const RACE_TITLE:String = §%! §("RACE_TITLE");
      
      public static const CAN_HIRE_AT_LEVEL:String = §%! §("CAN_HIRE_AT_LEVEL");
      
      public static const ARMORY_QTIP:String = §%! §("ARMORY_QTIP");
      
      public static const HIRE_TITLE:String = §%! §("HIRE_TITLE");
      
      public static const PHOTOSTUDIO_QTIP:String = §%! §("PHOTOSTUDIO_QTIP",§7"n§.VK);
      
      public static const WIPE_PROFILE_TITLE:String = §%! §("WIPE_PROFILE_TITLE");
      
      public static const WIPE_PROFILE_TITLE2:String = §%! §("WIPE_PROFILE_TITLE2");
      
      public static const WIPE_PROFILE_QUESTION:String = §%! §("WIPE_PROFILE_QUESTION");
      
      public static const SURE_QUESTION:String = §%! §("SURE_QUESTION");
      
      public static const WIPE_PROFILE_ADD_QUESTION:String = §%! §("WIPE_PROFILE_ADD_QUESTION");
      
      public static const WIPE_PROFILE_MSG:String = §%! §("WIPE_PROFILE_MSG");
      
      public static const WIPE_PROFILE_CODE_LABEL:String = §%! §("WIPE_PROFILE_CODE_LABEL");
      
      public static const WIPE_PROFILE_EXAMPLE_LABEL:String = §%! §("WIPE_PROFILE_EXAMPLE_LABEL");
      
      public static const WIPE_PROFILE_SMS_MSG:String = §%! §("WIPE_PROFILE_SMS_MSG");
      
      public static const WIPE_PROFILE_ACCESS:String = §%! §("WIPE_PROFILE_ACCESS");
      
      public static const WIPE_PROFILE_DAILY_LIMIT_EXCEEDED:String = §%! §("WIPE_PROFILE_DAILY_LIMIT_EXCEEDED");
      
      public static const WIPE_PROFILE_WRONG_MOBILE_NUMBER:String = §%! §("WIPE_PROFILE_WRONG_MOBILE_NUMBER");
      
      public static const WIPE_PROFILE_TODAY_ALREADY_WIPED:String = §%! §("WIPE_PROFILE_TODAY_ALREADY_WIPED");
      
      public static const WIPE_PROFILE_ENTER_SMS_CODE:String = §%! §("WIPE_PROFILE_ENTER_SMS_CODE");
      
      public static const WIPE_PROFILE_SUCCESS:String = §%! §("WIPE_PROFILE_SUCCESS");
      
      public static const WIPE_PROFILE_ENTER_NOT_SMS_CODE:String = §%! §("WIPE_PROFILE_ENTER_NOT_SMS_CODE");
      
      public static const WIPE_PROFILE_LINK_PAGE_PHONE_NUMBER:String = §%! §("WIPE_PROFILE_LINK_PAGE_PHONE_NUMBER");
      
      public static const WIPE_PROFILE_CHANGE_PHONE_NUMBER_BTN:String = §%! §("WIPE_PROFILE_CHANGE_PHONE_NUMBER_BTN");
      
      public static const BAG_TITLE:String = §%! §("BAG_TITLE");
      
      public static const RATING_TITLE:String = §%! §("RATING_TITLE");
      
      public static const RATING_POS_LABEL:String = §%! §("RATING_POS_LABEL");
      
      public static const RATING_TO_DAY:String = §%! §("RATING_TO_DAY");
      
      public static const RATING_YESTERDAY:String = §%! §("RATING_YESTERDAY");
      
      public static const RATING_ALL_LEGENDS:String = §%! §("RATING_ALL_LEGENDS");
      
      public static const YOUR_RANK_TITLE:String = §%! §("YOUR_RANK_TITLE");
      
      public static const SEASON_TOP_TITLE:String = §%! §("SEASON_TOP_TITLE");
      
      public static const COMMON_DUELS:String = §%! §("COMMON_DUELS");
      
      public static const COMMON_TWO_VS_TWO:String = §%! §("COMMON_TWO_VS_TWO");
      
      public static const RUBY_RATING_LEAGUE:String = §%! §("RUBY_RATING_LEAGUE");
      
      public static const CONTROL_TITLE:String = §%! §("CONTROL_TITLE");
      
      public static const VOLUME_TITLE:String = §%! §("VOLUME_TITLE");
      
      public static const OTHER_TITLE:String = §%! §("OTHER_TITLE");
      
      public static const BATTLE_OPTIONS_TITLE:String = §%! §("BATTLE_OPTIONS_TITLE");
      
      public static const VISUAL_OPTIONS_TITLE:String = §%! §("VISUAL_OPTIONS_TITLE");
      
      public static const UNIT_CONTROL_TITLE:String = §%! §("UNIT_CONTROL_TITLE");
      
      public static const BUFF_COUNTERS_IN_HINT_TITLE:String = §%! §("BUFF_COUNTERS_IN_HINT_TITLE");
      
      public static const BONUS_HOLIDAYS_TITLE:String = §%! §("BONUS_HOLIDAYS_TITLE");
      
      public static const BONUS_HOLIDAYS_DEFAULT_MSG:String = §%! §("BONUS_HOLIDAYS_DEFAULT_MSG");
      
      public static const DAILY_BONUS_TITLE:String = §%! §("DAILY_BONUS_TITLE");
      
      public static const DAILY_BONUS_BALLOON:String = §%! §("DAILY_BONUS_BALLOON");
      
      public static const DAILY_BONUS_BTN:String = §%! §("DAILY_BONUS_BTN");
      
      public static const NEED_RUBY_TITLE:String = §%! §("NEED_RUBY_TITLE");
      
      public static const BONUS_EXP:String = §%! §("BONUS_EXP");
      
      public static const BONUS_FUZY:String = §%! §("BONUS_FUZY");
      
      public static const SEASON_CLAN_PLACE:String = §%! §("SEASON_CLAN_PLACE");
      
      public static const SEASON_BONUS_TITLE:String = §%! §("SEASON_BONUS_TITLE");
      
      public static const REFFERAL_BONUS_TITLE:String = §%! §("REFFERAL_BONUS_TITLE");
      
      public static const REFFERAL_BONUS_DEFAULT_MSG:String = §%! §("REFFERAL_BONUS_DEFAULT_MSG");
      
      public static const REFFERAL_BONUS_EMPTY_MSG:String = §%! §("REFFERAL_BONUS_EMPTY_MSG");
      
      public static const VIRAL_RANK_SEASON_PLACE_TEXT:String = §%! §("VIRAL_RANK_SEASON_PLACE_TEXT");
      
      public static const VIRAL_RANK_SEASON_RUBY_TEXT:String = §%! §("VIRAL_RANK_SEASON_RUBY_TEXT");
      
      public static const VIRAL_RANK_SEASON_BONUS_TEXT:String = §%! §("VIRAL_RANK_SEASON_BONUS_TEXT");
      
      public static const LEVELS_LABEL:String = §%! §("LEVELS_LABEL");
      
      public static const RANDOM_MAP:String = §%! §("RANDOM_MAP");
      
      public static const MIRROR_MAP:String = §%! §("MIRROR_MAP");
      
      public static const SELECT_MAP_TITLE:String = §%! §("SELECT_MAP_TITLE");
      
      public static const SELECT_RANDOM_WEAPON:String = §%! §("SELECT_RANDOM_WEAPON");
      
      public static const MAP_SELECTED:String = §%! §("MAP_SELECTED");
      
      public static const DISABLED_FLOODING:String = §%! §("DISABLED_FLOODING");
      
      public static const ENDLESS_FLOODING:String = §%! §("ENDLESS_FLOODING");
      
      public static const FLOODING_UP:String = §%! §("FLOODING_UP");
      
      public static const THROWING_PROTECTIONS:String = §%! §("THROWING_PROTECTIONS");
      
      public static const THROWING_PROTECTIONS_DESCR:String = §%! §("THROWING_PROTECTIONS_DESCR");
      
      public static const DAMAGE_ZONE:String = §%! §("DAMAGE_ZONE");
      
      public static const ABILITIES_LABEL:String = §%! §("ABILITIES_LABEL");
      
      public static const LEADERSHIP_LABEL:String = §%! §("LEADERSHIP_LABEL");
      
      public static const RACE_BUY_MESSAGE:String = §%! §("RACE_BUY_MESSAGE");
      
      public static const RACE_SELECT_BUY_MESSAGE:String = §%! §("RACE_SELECT_BUY_MESSAGE");
      
      public static const FREE_RACE_LEFT_MESSAGE:String = §%! §("FREE_RACE_LEFT_MESSAGE");
      
      public static const PHOTO_STUDIO_UPDATE_QTIP:String = §%! §("PHOTO_STUDIO_UPDATE_QTIP",§7"n§.VK);
      
      public static const PHOTO_STUDIO_QTIP1:String = §%! §("PHOTO_STUDIO_QTIP1",§7"n§.VK);
      
      public static const PHOTO_STUDIO_QTIP2:String = §%! §("PHOTO_STUDIO_QTIP2",§7"n§.VK);
      
      public static const PHOTO_STUDIO_QTIP3:String = §%! §("PHOTO_STUDIO_QTIP3",§7"n§.VK);
      
      public static const PHOTO_STUDIO_TITLE:String = §%! §("PHOTO_STUDIO_TITLE",§7"n§.VK);
      
      public static const PHOTO_STUDIO_BUTTON:String = §%! §("PHOTO_STUDIO_BUTTON",§7"n§.VK);
      
      public static const PHOTO_STUDIO_ARTEFACT_BUTTON_QTIP:String = §%! §("PHOTO_STUDIO_ARTEFACT_BUTTON_QTIP",§7"n§.VK);
      
      public static const PHOTO_STUDIO_RACE_BUTTON_QTIP:String = §%! §("PHOTO_STUDIO_RACE_BUTTON_QTIP",§7"n§.VK);
      
      public static const AVATAR_DESCR1:String = §%! §("AVATAR_DESCR1",§7"n§.VK);
      
      public static const AVATAR_DESCR2:String = §%! §("AVATAR_DESCR2",§7"n§.VK);
      
      public static const AVATAR_DESCR3:String = §%! §("AVATAR_DESCR3",§7"n§.VK);
      
      public static const AVATAR_DESCR4:String = §%! §("AVATAR_DESCR4",§7"n§.VK);
      
      public static const AVATAR_DESCR5:String = §%! §("AVATAR_DESCR5",§7"n§.VK);
      
      public static const AVATAR_DESCR6:String = §%! §("AVATAR_DESCR6",§7"n§.VK);
      
      public static const AVATAR_DESCR7:String = §%! §("AVATAR_DESCR7",§7"n§.VK);
      
      public static const AVATAR_DESCR8:String = §%! §("AVATAR_DESCR8",§7"n§.VK);
      
      public static const ACHIEVEMENTS_TITLE:String = §%! §("ACHIEVEMENTS_TITLE");
      
      public static const ACHIEV_QTIP:String = §%! §("ACHIEV_QTIP");
      
      public static const ACHIEV_PROGRESS_LABEL:String = §%! §("ACHIEV_PROGRESS_LABEL");
      
      public static const ACHIEV_AWARD_POINTS_LABEL:String = §%! §("ACHIEV_AWARD_POINTS_LABEL");
      
      public static const ACHIEV_POINTS_LABEL:String = §%! §("ACHIEV_POINTS_LABEL");
      
      public static const AVAILABLE_AWARD:String = §%! §("AVAILABLE_AWARD");
      
      public static const ACHIEV_BATTLE_BUTTON:String = §%! §("ACHIEV_BATTLE_BUTTON");
      
      public static const ACHIEV_GAME_BUTTON:String = §%! §("ACHIEV_GAME_BUTTON");
      
      public static const ACHIEV_SEASON_BUTTON:String = §%! §("ACHIEV_SEASON_BUTTON");
      
      public static const BOSSES_GAME_BUTTON:String = §%! §("BOSSES_GAME_BUTTON");
      
      public static const ACHIEV_STATISTIC_BUTTON:String = §%! §("ACHIEV_STATISTIC_BUTTON");
      
      public static const ACHIEV_AWARD_BUTTON:String = §%! §("ACHIEV_AWARD_BUTTON");
      
      public static const ACHIEV_SELECT_BUTTON:String = §%! §("ACHIEV_SELECT_BUTTON");
      
      public static const ACHIEV_GOAL_TITLE:String = §%! §("ACHIEV_GOAL_TITLE");
      
      public static const ACHIEV_LEVELUP_TITLE:String = §%! §("ACHIEV_LEVELUP_TITLE");
      
      public static const ACHIEV_BURNED_ENEMIES_1LEVEL_TITLE:String = §%! §("ACHIEV_BURNED_ENEMIES_1LEVEL_TITLE");
      
      public static const ACHIEV_BURNED_ENEMIES_2LEVEL_TITLE:String = §%! §("ACHIEV_BURNED_ENEMIES_2LEVEL_TITLE");
      
      public static const ACHIEV_BURNED_ENEMIES_3LEVEL_TITLE:String = §%! §("ACHIEV_BURNED_ENEMIES_3LEVEL_TITLE");
      
      public static const ACHIEV_DESTROYED_SQUARE_1LEVEL_TITLE:String = §%! §("ACHIEV_DESTROYED_SQUARE_1LEVEL_TITLE");
      
      public static const ACHIEV_DESTROYED_SQUARE_2LEVEL_TITLE:String = §%! §("ACHIEV_DESTROYED_SQUARE_2LEVEL_TITLE");
      
      public static const ACHIEV_DESTROYED_SQUARE_3LEVEL_TITLE:String = §%! §("ACHIEV_DESTROYED_SQUARE_3LEVEL_TITLE");
      
      public static const ACHIEV_DROWNED_OPPONENTS_1LEVEL_TITLE:String = §%! §("ACHIEV_DROWNED_OPPONENTS_1LEVEL_TITLE");
      
      public static const ACHIEV_DROWNED_OPPONENTS_2LEVEL_TITLE:String = §%! §("ACHIEV_DROWNED_OPPONENTS_2LEVEL_TITLE");
      
      public static const ACHIEV_DROWNED_OPPONENTS_3LEVEL_TITLE:String = §%! §("ACHIEV_DROWNED_OPPONENTS_3LEVEL_TITLE");
      
      public static const ACHIEV_WAGER_WINNER_1LEVEL_TITLE:String = §%! §("ACHIEV_WAGER_WINNER_1LEVEL_TITLE");
      
      public static const ACHIEV_WAGER_WINNER_2LEVEL_TITLE:String = §%! §("ACHIEV_WAGER_WINNER_2LEVEL_TITLE");
      
      public static const ACHIEV_WAGER_WINNER_3LEVEL_TITLE:String = §%! §("ACHIEV_WAGER_WINNER_3LEVEL_TITLE");
      
      public static const ACHIEV_DIPLOMAT_1LEVEL_TITLE:String = §%! §("ACHIEV_DIPLOMAT_1LEVEL_TITLE");
      
      public static const ACHIEV_DIPLOMAT_2LEVEL_TITLE:String = §%! §("ACHIEV_DIPLOMAT_2LEVEL_TITLE");
      
      public static const ACHIEV_DIPLOMAT_3LEVEL_TITLE:String = §%! §("ACHIEV_DIPLOMAT_3LEVEL_TITLE");
      
      public static const ACHIEV_WIND_KILLS_1LEVEL_TITLE:String = §%! §("ACHIEV_WIND_KILLS_1LEVEL_TITLE");
      
      public static const ACHIEV_WIND_KILLS_2LEVEL_TITLE:String = §%! §("ACHIEV_WIND_KILLS_2LEVEL_TITLE");
      
      public static const ACHIEV_WIND_KILLS_3LEVEL_TITLE:String = §%! §("ACHIEV_WIND_KILLS_3LEVEL_TITLE");
      
      public static const ACHIEV_MASSIVE_DAMAGE_1LEVEL_TITLE:String = §%! §("ACHIEV_MASSIVE_DAMAGE_1LEVEL_TITLE");
      
      public static const ACHIEV_MASSIVE_DAMAGE_2LEVEL_TITLE:String = §%! §("ACHIEV_MASSIVE_DAMAGE_2LEVEL_TITLE");
      
      public static const ACHIEV_MASSIVE_DAMAGE_3LEVEL_TITLE:String = §%! §("ACHIEV_MASSIVE_DAMAGE_3LEVEL_TITLE");
      
      public static const ACHIEV_GRAVES_SANK_1LEVEL_TITLE:String = §%! §("ACHIEV_GRAVES_SANK_1LEVEL_TITLE");
      
      public static const ACHIEV_GRAVES_SANK_2LEVEL_TITLE:String = §%! §("ACHIEV_GRAVES_SANK_2LEVEL_TITLE");
      
      public static const ACHIEV_GRAVES_SANK_3LEVEL_TITLE:String = §%! §("ACHIEV_GRAVES_SANK_3LEVEL_TITLE");
      
      public static const ACHIEV_ONE_HP_WIN_1LEVEL_TITLE:String = §%! §("ACHIEV_ONE_HP_WIN_1LEVEL_TITLE");
      
      public static const ACHIEV_ONE_HP_WIN_2LEVEL_TITLE:String = §%! §("ACHIEV_ONE_HP_WIN_2LEVEL_TITLE");
      
      public static const ACHIEV_ONE_HP_WIN_3LEVEL_TITLE:String = §%! §("ACHIEV_ONE_HP_WIN_3LEVEL_TITLE");
      
      public static const ACHIEV_IMMOBILE_KILLS_1LEVEL_TITLE:String = §%! §("ACHIEV_IMMOBILE_KILLS_1LEVEL_TITLE");
      
      public static const ACHIEV_IMMOBILE_KILLS_2LEVEL_TITLE:String = §%! §("ACHIEV_IMMOBILE_KILLS_2LEVEL_TITLE");
      
      public static const ACHIEV_IMMOBILE_KILLS_3LEVEL_TITLE:String = §%! §("ACHIEV_IMMOBILE_KILLS_3LEVEL_TITLE");
      
      public static const ACHIEV_FLAWLESS_VICTORIES_1LEVEL_TITLE:String = §%! §("ACHIEV_FLAWLESS_VICTORIES_1LEVEL_TITLE");
      
      public static const ACHIEV_FLAWLESS_VICTORIES_2LEVEL_TITLE:String = §%! §("ACHIEV_FLAWLESS_VICTORIES_2LEVEL_TITLE");
      
      public static const ACHIEV_FLAWLESS_VICTORIES_3LEVEL_TITLE:String = §%! §("ACHIEV_FLAWLESS_VICTORIES_3LEVEL_TITLE");
      
      public static const ACHIEV_FLEW_MILES_1LEVEL_TITLE:String = §%! §("ACHIEV_FLEW_MILES_1LEVEL_TITLE");
      
      public static const ACHIEV_FLEW_MILES_2LEVEL_TITLE:String = §%! §("ACHIEV_FLEW_MILES_2LEVEL_TITLE");
      
      public static const ACHIEV_FLEW_MILES_3LEVEL_TITLE:String = §%! §("ACHIEV_FLEW_MILES_3LEVEL_TITLE");
      
      public static const ACHIEV_DOUBLE_KILLLS_1LEVEL_TITLE:String = §%! §("ACHIEV_DOUBLE_KILLLS_1LEVEL_TITLE");
      
      public static const ACHIEV_DOUBLE_KILLLS_2LEVEL_TITLE:String = §%! §("ACHIEV_DOUBLE_KILLLS_2LEVEL_TITLE");
      
      public static const ACHIEV_DOUBLE_KILLLS_3LEVEL_TITLE:String = §%! §("ACHIEV_DOUBLE_KILLLS_3LEVEL_TITLE");
      
      public static const ACHIEV_MEDKIT_KILLS_1LEVEL_TITLE:String = §%! §("ACHIEV_MEDKIT_KILLS_1LEVEL_TITLE");
      
      public static const ACHIEV_MEDKIT_KILLS_2LEVEL_TITLE:String = §%! §("ACHIEV_MEDKIT_KILLS_2LEVEL_TITLE");
      
      public static const ACHIEV_MEDKIT_KILLS_3LEVEL_TITLE:String = §%! §("ACHIEV_MEDKIT_KILLS_3LEVEL_TITLE");
      
      public static const ACHIEV_GATHERED_SUPPLIES_1LEVEL_TITLE:String = §%! §("ACHIEV_GATHERED_SUPPLIES_1LEVEL_TITLE");
      
      public static const ACHIEV_GATHERED_SUPPLIES_2LEVEL_TITLE:String = §%! §("ACHIEV_GATHERED_SUPPLIES_2LEVEL_TITLE");
      
      public static const ACHIEV_GATHERED_SUPPLIES_3LEVEL_TITLE:String = §%! §("ACHIEV_GATHERED_SUPPLIES_3LEVEL_TITLE");
      
      public static const ACHIEV_KAMIKAZE_1LEVEL_TITLE:String = §%! §("ACHIEV_KAMIKAZE_1LEVEL_TITLE");
      
      public static const ACHIEV_KAMIKAZE_2LEVEL_TITLE:String = §%! §("ACHIEV_KAMIKAZE_2LEVEL_TITLE");
      
      public static const ACHIEV_KAMIKAZE_3LEVEL_TITLE:String = §%! §("ACHIEV_KAMIKAZE_3LEVEL_TITLE");
      
      public static const ACHIEV_ROPED_MILES_1LEVEL_TITLE:String = §%! §("ACHIEV_ROPED_MILES_1LEVEL_TITLE");
      
      public static const ACHIEV_ROPED_MILES_2LEVEL_TITLE:String = §%! §("ACHIEV_ROPED_MILES_2LEVEL_TITLE");
      
      public static const ACHIEV_ROPED_MILES_3LEVEL_TITLE:String = §%! §("ACHIEV_ROPED_MILES_3LEVEL_TITLE");
      
      public static const ACHIEV_FUZZES_SPENT_1LEVEL_TITLE:String = §%! §("ACHIEV_FUZZES_SPENT_1LEVEL_TITLE");
      
      public static const ACHIEV_FUZZES_SPENT_2LEVEL_TITLE:String = §%! §("ACHIEV_FUZZES_SPENT_2LEVEL_TITLE");
      
      public static const ACHIEV_FUZZES_SPENT_3LEVEL_TITLE:String = §%! §("ACHIEV_FUZZES_SPENT_3LEVEL_TITLE");
      
      public static const ACHIEV_RUBIES_SPENT_1LEVEL_TITLE:String = §%! §("ACHIEV_RUBIES_SPENT_1LEVEL_TITLE");
      
      public static const ACHIEV_RUBIES_SPENT_2LEVEL_TITLE:String = §%! §("ACHIEV_RUBIES_SPENT_2LEVEL_TITLE");
      
      public static const ACHIEV_RUBIES_SPENT_3LEVEL_TITLE:String = §%! §("ACHIEV_RUBIES_SPENT_3LEVEL_TITLE");
      
      public static const ACHIEV_PUMPED_REACTION_1LEVEL_TITLE:String = §%! §("ACHIEV_PUMPED_REACTION_1LEVEL_TITLE");
      
      public static const ACHIEV_PUMPED_REACTION_2LEVEL_TITLE:String = §%! §("ACHIEV_PUMPED_REACTION_2LEVEL_TITLE");
      
      public static const ACHIEV_PUMPED_REACTION_3LEVEL_TITLE:String = §%! §("ACHIEV_PUMPED_REACTION_3LEVEL_TITLE");
      
      public static const ACHIEV_RUBIES_FOUND_1LEVEL_TITLE:String = §%! §("ACHIEV_RUBIES_FOUND_1LEVEL_TITLE");
      
      public static const ACHIEV_RUBIES_FOUND_2LEVEL_TITLE:String = §%! §("ACHIEV_RUBIES_FOUND_2LEVEL_TITLE");
      
      public static const ACHIEV_RUBIES_FOUND_3LEVEL_TITLE:String = §%! §("ACHIEV_RUBIES_FOUND_3LEVEL_TITLE");
      
      public static const ACHIEV_MADE_PHOTO_1LEVEL_TITLE:String = §%! §("ACHIEV_MADE_PHOTO_1LEVEL_TITLE");
      
      public static const ACHIEV_MADE_PHOTO_2LEVEL_TITLE:String = §%! §("ACHIEV_MADE_PHOTO_2LEVEL_TITLE");
      
      public static const ACHIEV_MADE_PHOTO_3LEVEL_TITLE:String = §%! §("ACHIEV_MADE_PHOTO_3LEVEL_TITLE");
      
      public static const ACHIEV_MADE_VIDEO_1LEVEL_TITLE:String = §%! §("ACHIEV_MADE_VIDEO_1LEVEL_TITLE");
      
      public static const ACHIEV_MADE_VIDEO_2LEVEL_TITLE:String = §%! §("ACHIEV_MADE_VIDEO_2LEVEL_TITLE");
      
      public static const ACHIEV_MADE_VIDEO_3LEVEL_TITLE:String = §%! §("ACHIEV_MADE_VIDEO_3LEVEL_TITLE");
      
      public static const ACHIEV_GAME_VISITS_1LEVEL_TITLE:String = §%! §("ACHIEV_GAME_VISITS_1LEVEL_TITLE");
      
      public static const ACHIEV_GAME_VISITS_2LEVEL_TITLE:String = §%! §("ACHIEV_GAME_VISITS_2LEVEL_TITLE");
      
      public static const ACHIEV_GAME_VISITS_3LEVEL_TITLE:String = §%! §("ACHIEV_GAME_VISITS_3LEVEL_TITLE");
      
      public static const ACHIEV_DROP_WATER_1LEVEL_TITLE:String = §%! §("ACHIEV_DROP_WATER_1LEVEL_TITLE");
      
      public static const ACHIEV_DROP_WATER_2LEVEL_TITLE:String = §%! §("ACHIEV_DROP_WATER_2LEVEL_TITLE");
      
      public static const ACHIEV_DROP_WATER_3LEVEL_TITLE:String = §%! §("ACHIEV_DROP_WATER_3LEVEL_TITLE");
      
      public static const ACHIEV_DROP_WATER_FIRST_TURN_1LEVEL_TITLE:String = §%! §("ACHIEV_DROP_WATER_FIRST_TURN_1LEVEL_TITLE");
      
      public static const ACHIEV_DROP_WATER_FIRST_TURN_2LEVEL_TITLE:String = §%! §("ACHIEV_DROP_WATER_FIRST_TURN_2LEVEL_TITLE");
      
      public static const ACHIEV_DROP_WATER_FIRST_TURN_3LEVEL_TITLE:String = §%! §("ACHIEV_DROP_WATER_FIRST_TURN_3LEVEL_TITLE");
      
      public static const ACHIEV_KILL_WALKING_ZOMBIES_1LEVEL_TITLE:String = §%! §("ACHIEV_KILL_WALKING_ZOMBIES_1LEVEL_TITLE");
      
      public static const ACHIEV_KILL_WALKING_ZOMBIES_2LEVEL_TITLE:String = §%! §("ACHIEV_KILL_WALKING_ZOMBIES_2LEVEL_TITLE");
      
      public static const ACHIEV_KILL_WALKING_ZOMBIES_3LEVEL_TITLE:String = §%! §("ACHIEV_KILL_WALKING_ZOMBIES_3LEVEL_TITLE");
      
      public static const ACHIEV_KILL_WEAR_HATS_1LEVEL_TITLE:String = §%! §("ACHIEV_KILL_WEAR_HATS_1LEVEL_TITLE");
      
      public static const ACHIEV_KILL_WEAR_HATS_2LEVEL_TITLE:String = §%! §("ACHIEV_KILL_WEAR_HATS_2LEVEL_TITLE");
      
      public static const ACHIEV_KILL_WEAR_HATS_3LEVEL_TITLE:String = §%! §("ACHIEV_KILL_WEAR_HATS_3LEVEL_TITLE");
      
      public static const ACHIEV_PARTISAN_1LEVEL_TITLE:String = §%! §("ACHIEV_PARTISAN_1LEVEL_TITLE");
      
      public static const ACHIEV_PARTISAN_2LEVEL_TITLE:String = §%! §("ACHIEV_PARTISAN_2LEVEL_TITLE");
      
      public static const ACHIEV_PARTISAN_3LEVEL_TITLE:String = §%! §("ACHIEV_PARTISAN_3LEVEL_TITLE");
      
      public static const ACHIEV_COLLECTOR_1LEVEL_TITLE:String = §%! §("ACHIEV_COLLECTOR_1LEVEL_TITLE");
      
      public static const ACHIEV_COLLECTOR_2LEVEL_TITLE:String = §%! §("ACHIEV_COLLECTOR_2LEVEL_TITLE");
      
      public static const ACHIEV_COLLECTOR_3LEVEL_TITLE:String = §%! §("ACHIEV_COLLECTOR_3LEVEL_TITLE");
      
      public static const ACHIEV_BURNED_ENEMIES_DESCR:String = §%! §("ACHIEV_BURNED_ENEMIES_DESCR");
      
      public static const ACHIEV_DESTROYED_SQUARE_DESCR:String = §%! §("ACHIEV_DESTROYED_SQUARE_DESCR");
      
      public static const ACHIEV_DROWNED_OPPONENTS_DESCR:String = §%! §("ACHIEV_DROWNED_OPPONENTS_DESCR");
      
      public static const ACHIEV_WAGER_WINNER_DESCR:String = §%! §("ACHIEV_WAGER_WINNER_DESCR");
      
      public static const ACHIEV_DIPLOMAT_DESCR:String = §%! §("ACHIEV_DIPLOMAT_DESCR");
      
      public static const ACHIEV_WIND_KILLS_DESCR:String = §%! §("ACHIEV_WIND_KILLS_DESCR");
      
      public static const ACHIEV_MASSIVE_DAMAGE_DESCR:String = §%! §("ACHIEV_MASSIVE_DAMAGE_DESCR");
      
      public static const ACHIEV_GRAVES_SANK_DESCR:String = §%! §("ACHIEV_GRAVES_SANK_DESCR");
      
      public static const ACHIEV_ONE_HP_WIN_DESCR:String = §%! §("ACHIEV_ONE_HP_WIN_DESCR");
      
      public static const ACHIEV_IMMOBILE_KILLS_DESCR:String = §%! §("ACHIEV_IMMOBILE_KILLS_DESCR");
      
      public static const ACHIEV_FLAWLESS_VICTORIES:String = §%! §("ACHIEV_FLAWLESS_VICTORIES");
      
      public static const ACHIEV_FLEW_MILES_DESCR:String = §%! §("ACHIEV_FLEW_MILES_DESCR");
      
      public static const ACHIEV_DOUBLE_KILLLS_DESCR:String = §%! §("ACHIEV_DOUBLE_KILLLS_DESCR");
      
      public static const ACHIEV_MEDKIT_KILLS_DESCR:String = §%! §("ACHIEV_MEDKIT_KILLS_DESCR");
      
      public static const ACHIEV_GATHERED_SUPPLIES_DESCR:String = §%! §("ACHIEV_GATHERED_SUPPLIES_DESCR");
      
      public static const ACHIEV_KAMIKAZE_DESCR:String = §%! §("ACHIEV_KAMIKAZE_DESCR");
      
      public static const ACHIEV_ROPED_MILES_DESCR:String = §%! §("ACHIEV_ROPED_MILES_DESCR");
      
      public static const ACHIEV_FUZZES_SPENT_DESCR:String = §%! §("ACHIEV_FUZZES_SPENT_DESCR");
      
      public static const ACHIEV_RUBIES_SPENT_DESCR:String = §%! §("ACHIEV_RUBIES_SPENT_DESCR");
      
      public static const ACHIEV_PUMPED_REACTION_DESCR:String = §%! §("ACHIEV_PUMPED_REACTION_DESCR");
      
      public static const ACHIEV_RUBIES_FOUND_DESCR:String = §%! §("ACHIEV_RUBIES_FOUND_DESCR");
      
      public static const ACHIEV_MADE_PHOTO_DESCR:String = §%! §("ACHIEV_MADE_PHOTO_DESCR");
      
      public static const ACHIEV_MADE_VIDEO_DESCR:String = §%! §("ACHIEV_MADE_VIDEO_DESCR");
      
      public static const ACHIEV_GAME_VISITS_DESCR:String = §%! §("ACHIEV_GAME_VISITS_DESCR");
      
      public static const ACHIEV_DROP_WATER_DESCR:String = §%! §("ACHIEV_DROP_WATER_DESCR");
      
      public static const ACHIEV_DROP_WATER_FIRST_TURN_DESCR:String = §%! §("ACHIEV_DROP_WATER_FIRST_TURN_DESCR");
      
      public static const ACHIEV_KILL_WALKING_ZOMBIES_DESCR:String = §%! §("ACHIEV_KILL_WALKING_ZOMBIES_DESCR");
      
      public static const ACHIEV_WEAR_HATS_DESCR:String = §%! §("ACHIEV_WEAR_HATS_DESCR");
      
      public static const ACHIEV_PARTISAN_DESCR:String = §%! §("ACHIEV_PARTISAN_DESCR");
      
      public static const ACHIEV_COLLECTOR_DESCR:String = §%! §("ACHIEV_COLLECTOR_DESCR");
      
      public static const ACHIEV_GUNS_IN_BOX_DESCR:String = §%! §("ACHIEV_GUNS_IN_BOX_DESCR");
      
      public static const ACHIEV_GUNS_IN_BOX_1LEVEL_TITLE:String = §%! §("ACHIEV_GUNS_IN_BOX_1LEVEL_TITLE");
      
      public static const ACHIEV_GUNS_IN_BOX_2LEVEL_TITLE:String = §%! §("ACHIEV_GUNS_IN_BOX_2LEVEL_TITLE");
      
      public static const ACHIEV_GUNS_IN_BOX_3LEVEL_TITLE:String = §%! §("ACHIEV_GUNS_IN_BOX_3LEVEL_TITLE");
      
      public static const ACHIEV_WEAPONS_UPGRADE_DESCR:String = §%! §("ACHIEV_WEAPONS_UPGRADE_DESCR");
      
      public static const ACHIEV_WEAPONS_UPGRADE_1LEVEL_TITLE:String = §%! §("ACHIEV_WEAPONS_UPGRADE_1LEVEL_TITLE");
      
      public static const ACHIEV_WEAPONS_UPGRADE_2LEVEL_TITLE:String = §%! §("ACHIEV_WEAPONS_UPGRADE_2LEVEL_TITLE");
      
      public static const ACHIEV_WEAPONS_UPGRADE_3LEVEL_TITLE:String = §%! §("ACHIEV_WEAPONS_UPGRADE_3LEVEL_TITLE");
      
      public static const ACHIEV_CRAFT_LEGENDARY_DESCR:String = §%! §("ACHIEV_CRAFT_LEGENDARY_DESCR");
      
      public static const ACHIEV_CRAFT_LEGENDARY_1LEVEL_DESCR:String = §%! §("ACHIEV_CRAFT_LEGENDARY_1LEVEL_DESCR");
      
      public static const ACHIEV_CRAFT_LEGENDARY_1LEVEL_TITLE:String = §%! §("ACHIEV_CRAFT_LEGENDARY_1LEVEL_TITLE");
      
      public static const ACHIEV_CRAFT_LEGENDARY_2LEVEL_TITLE:String = §%! §("ACHIEV_CRAFT_LEGENDARY_2LEVEL_TITLE");
      
      public static const ACHIEV_CRAFT_LEGENDARY_3LEVEL_TITLE:String = §%! §("ACHIEV_CRAFT_LEGENDARY_3LEVEL_TITLE");
      
      public static const ACHIEV_SUPERBOSS_DEFEATED_DESCR:String = §%! §("ACHIEV_SUPERBOSS_DEFEATED_DESCR");
      
      public static const ACHIEV_SUPERBOSS_DEFEATED_1LEVEL_TITLE:String = §%! §("ACHIEV_SUPERBOSS_DEFEATED_1LEVEL_TITLE");
      
      public static const ACHIEV_SUPERBOSS_DEFEATED_2LEVEL_TITLE:String = §%! §("ACHIEV_SUPERBOSS_DEFEATED_2LEVEL_TITLE");
      
      public static const ACHIEV_SUPERBOSS_DEFEATED_3LEVEL_TITLE:String = §%! §("ACHIEV_SUPERBOSS_DEFEATED_3LEVEL_TITLE");
      
      public static const ACHIEV_SOCIAL_POST_DESCR:String = §%! §("ACHIEV_SOCIAL_POST_DESCR");
      
      public static const ACHIEV_SOCIAL_POST_1LEVEL_TITLE:String = §%! §("ACHIEV_SOCIAL_POST_1LEVEL_TITLE");
      
      public static const ACHIEV_SOCIAL_POST_2LEVEL_TITLE:String = §%! §("ACHIEV_SOCIAL_POST_2LEVEL_TITLE");
      
      public static const ACHIEV_SOCIAL_POST_3LEVEL_TITLE:String = §%! §("ACHIEV_SOCIAL_POST_3LEVEL_TITLE");
      
      public static const ACHIEV_OPEN_RACE_DESCR:String = §%! §("ACHIEV_OPEN_RACE_DESCR");
      
      public static const ACHIEV_OPEN_RACE_1LEVEL_DESCR:String = §%! §("ACHIEV_OPEN_RACE_1LEVEL_DESCR");
      
      public static const ACHIEV_OPEN_RACE_1LEVEL_TITLE:String = §%! §("ACHIEV_OPEN_RACE_1LEVEL_TITLE");
      
      public static const ACHIEV_OPEN_RACE_2LEVEL_TITLE:String = §%! §("ACHIEV_OPEN_RACE_2LEVEL_TITLE");
      
      public static const ACHIEV_OPEN_RACE_3LEVEL_TITLE:String = §%! §("ACHIEV_OPEN_RACE_3LEVEL_TITLE");
      
      public static const ACHIEV_RETURN_FRIENDS_DESCR:String = §%! §("ACHIEV_RETURN_FRIENDS_DESCR");
      
      public static const ACHIEV_RETURN_FRIENDS_1LEVEL_TITLE:String = §%! §("ACHIEV_RETURN_FRIENDS_1LEVEL_TITLE");
      
      public static const ACHIEV_RETURN_FRIENDS_2LEVEL_TITLE:String = §%! §("ACHIEV_RETURN_FRIENDS_2LEVEL_TITLE");
      
      public static const ACHIEV_RETURN_FRIENDS_3LEVEL_TITLE:String = §%! §("ACHIEV_RETURN_FRIENDS_3LEVEL_TITLE");
      
      public static const ACHIEV_GLADIATOR_WINNER_DESCR:String = §%! §("ACHIEV_GLADIATOR_WINNER_DESCR");
      
      public static const ACHIEV_GLADIATOR_WINNER_1LEVEL_TITLE:String = §%! §("ACHIEV_GLADIATOR_WINNER_1LEVEL_TITLE");
      
      public static const ACHIEV_GLADIATOR_WINNER_2LEVEL_TITLE:String = §%! §("ACHIEV_GLADIATOR_WINNER_2LEVEL_TITLE");
      
      public static const ACHIEV_GLADIATOR_WINNER_3LEVEL_TITLE:String = §%! §("ACHIEV_GLADIATOR_WINNER_3LEVEL_TITLE");
      
      public static const ACHIEV_GLADIATOR_TEN_WINNER_DESCR:String = §%! §("ACHIEV_GLADIATOR_TEN_WINNER_DESCR");
      
      public static const ACHIEV_GLADIATOR_TEN_WINNER_1LEVEL_DESCR:String = §%! §("ACHIEV_GLADIATOR_TEN_WINNER_1LEVEL_DESCR");
      
      public static const ACHIEV_GLADIATOR_TEN_WINNER_1LEVEL_TITLE:String = §%! §("ACHIEV_GLADIATOR_TEN_WINNER_1LEVEL_TITLE");
      
      public static const ACHIEV_GLADIATOR_TEN_WINNER_2LEVEL_DESCR:String = §%! §("ACHIEV_GLADIATOR_TEN_WINNER_2LEVEL_DESCR");
      
      public static const ACHIEV_GLADIATOR_TEN_WINNER_2LEVEL_TITLE:String = §%! §("ACHIEV_GLADIATOR_TEN_WINNER_2LEVEL_TITLE");
      
      public static const ACHIEV_GLADIATOR_TEN_WINNER_3LEVEL_TITLE:String = §%! §("ACHIEV_GLADIATOR_TEN_WINNER_3LEVEL_TITLE");
      
      public static const ACHIEV_COOP_FRIEND_WINNER_DESCR:String = §%! §("ACHIEV_COOP_FRIEND_WINNER_DESCR");
      
      public static const ACHIEV_COOP_FRIEND_WINNER_1LEVEL_TITLE:String = §%! §("ACHIEV_COOP_FRIEND_WINNER_1LEVEL_TITLE");
      
      public static const ACHIEV_COOP_FRIEND_WINNER_2LEVEL_TITLE:String = §%! §("ACHIEV_COOP_FRIEND_WINNER_2LEVEL_TITLE");
      
      public static const ACHIEV_COOP_FRIEND_WINNER_3LEVEL_TITLE:String = §%! §("ACHIEV_COOP_FRIEND_WINNER_3LEVEL_TITLE");
      
      public static const ACHIEV_EXOTIC_WEAPON_MASTER_DESCR:String = §%! §("ACHIEV_EXOTIC_WEAPON_MASTER_DESCR");
      
      public static const ACHIEV_EXOTIC_WEAPON_MASTER_1LEVEL_TITLE:String = §%! §("ACHIEV_EXOTIC_WEAPON_MASTER_1LEVEL_TITLE");
      
      public static const ACHIEV_EXOTIC_WEAPON_MASTER_2LEVEL_TITLE:String = §%! §("ACHIEV_EXOTIC_WEAPON_MASTER_2LEVEL_TITLE");
      
      public static const ACHIEV_EXOTIC_WEAPON_MASTER_3LEVEL_TITLE:String = §%! §("ACHIEV_EXOTIC_WEAPON_MASTER_3LEVEL_TITLE");
      
      public static const ACHIEV_REWARD_CHEST_DESCR:String = §%! §("ACHIEV_REWARD_CHEST_DESCR");
      
      public static const ACHIEV_REWARD_CHEST_1LEVEL_TITLE:String = §%! §("ACHIEV_REWARD_CHEST_1LEVEL_TITLE");
      
      public static const ACHIEV_REWARD_CHEST_2LEVEL_TITLE:String = §%! §("ACHIEV_REWARD_CHEST_2LEVEL_TITLE");
      
      public static const ACHIEV_REWARD_CHEST_3LEVEL_TITLE:String = §%! §("ACHIEV_REWARD_CHEST_3LEVEL_TITLE");
      
      public static const ACHIEV_OPEN_SKIN_DESCR:String = §%! §("ACHIEV_OPEN_SKIN_DESCR");
      
      public static const ACHIEV_OPEN_SKIN_1LEVEL_TITLE:String = §%! §("ACHIEV_OPEN_SKIN_1LEVEL_TITLE");
      
      public static const ACHIEV_OPEN_SKIN_2LEVEL_TITLE:String = §%! §("ACHIEV_OPEN_SKIN_2LEVEL_TITLE");
      
      public static const ACHIEV_OPEN_SKIN_3LEVEL_TITLE:String = §%! §("ACHIEV_OPEN_SKIN_3LEVEL_TITLE");
      
      public static const ACHIEV_SEASON_WEAPON_COLLECT_DESCR:String = §%! §("ACHIEV_SEASON_WEAPON_COLLECT_DESCR");
      
      public static const ACHIEV_SEASON_WEAPON_COLLECT_TITLE:String = §%! §("ACHIEV_SEASON_WEAPON_COLLECT_TITLE");
      
      public static const ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_DESCR:String = §%! §("ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_DESCR");
      
      public static const ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_1LEVEL_TITLE:String = §%! §("ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_1LEVEL_TITLE");
      
      public static const ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_2LEVEL_TITLE:String = §%! §("ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_2LEVEL_TITLE");
      
      public static const ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_3LEVEL_TITLE:String = §%! §("ACHIEV_RISING_ZOMBIES_WAVES_COMPLETE_3LEVEL_TITLE");
      
      public static const ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_DESCR:String = §%! §("ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_DESCR");
      
      public static const ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_1LEVEL_TITLE:String = §%! §("ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_1LEVEL_TITLE");
      
      public static const ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_2LEVEL_TITLE:String = §%! §("ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_2LEVEL_TITLE");
      
      public static const ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_3LEVEL_TITLE:String = §%! §("ACHIEV_RISING_ZOMBIES_WINNER_FULL_TEAM_3LEVEL_TITLE");
      
      public static const ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_DESCR:String = §%! §("ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_DESCR");
      
      public static const ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_1LEVEL_TITLE:String = §%! §("ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_1LEVEL_TITLE");
      
      public static const ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_2LEVEL_TITLE:String = §%! §("ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_2LEVEL_TITLE");
      
      public static const ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_3LEVEL_TITLE:String = §%! §("ACHIEV_RISING_ZOMBIES_RARE_BOT_KILLS_3LEVEL_TITLE");
      
      public static const ACHIEV_SHOCKED_ENEMIES_DESCR:String = §%! §("ACHIEV_SHOCKED_ENEMIES_DESCR");
      
      public static const ACHIEV_SHOCKED_ENEMIES_1LEVEL_TITLE:String = §%! §("ACHIEV_SHOCKED_ENEMIES_1LEVEL_TITLE");
      
      public static const ACHIEV_SHOCKED_ENEMIES_2LEVEL_TITLE:String = §%! §("ACHIEV_SHOCKED_ENEMIES_2LEVEL_TITLE");
      
      public static const ACHIEV_SHOCKED_ENEMIES_3LEVEL_TITLE:String = §%! §("ACHIEV_SHOCKED_ENEMIES_3LEVEL_TITLE");
      
      public static const ACHIEV_BOSS_EXTRA_REWARD_DESCR:String = §%! §("ACHIEV_BOSS_EXTRA_REWARD_DESCR");
      
      public static const ACHIEV_BOSS_EXTRA_REWARD_1LEVEL_TITLE:String = §%! §("ACHIEV_BOSS_EXTRA_REWARD_1LEVEL_TITLE");
      
      public static const ACHIEV_BOSS_EXTRA_REWARD_2LEVEL_TITLE:String = §%! §("ACHIEV_BOSS_EXTRA_REWARD_2LEVEL_TITLE");
      
      public static const ACHIEV_BOSS_EXTRA_REWARD_3LEVEL_TITLE:String = §%! §("ACHIEV_BOSS_EXTRA_REWARD_3LEVEL_TITLE");
      
      public static const ACHIEV_MERC_WIN_DESCR:String = §%! §("ACHIEV_MERC_WIN_DESCR");
      
      public static const ACHIEV_MERC_WIN_1LEVEL_TITLE:String = §%! §("ACHIEV_MERC_WIN_1LEVEL_TITLE");
      
      public static const ACHIEV_MERC_WIN_2LEVEL_TITLE:String = §%! §("ACHIEV_MERC_WIN_2LEVEL_TITLE");
      
      public static const ACHIEV_MERC_WIN_3LEVEL_TITLE:String = §%! §("ACHIEV_MERC_WIN_3LEVEL_TITLE");
      
      public static const ACHIEV_ROPE_PERFECT_WIN_DESCR:String = §%! §("ACHIEV_ROPE_PERFECT_WIN_DESCR");
      
      public static const ACHIEV_ROPE_PERFECT_WIN_1LEVEL_TITLE:String = §%! §("ACHIEV_ROPE_PERFECT_WIN_1LEVEL_TITLE");
      
      public static const ACHIEV_ROPE_PERFECT_WIN_2LEVEL_TITLE:String = §%! §("ACHIEV_ROPE_PERFECT_WIN_2LEVEL_TITLE");
      
      public static const ACHIEV_ROPE_PERFECT_WIN_3LEVEL_TITLE:String = §%! §("ACHIEV_ROPE_PERFECT_WIN_3LEVEL_TITLE");
      
      public static const §-%x§:String = §%! §("PVP_PLAYED");
      
      public static const §2&I§:String = §%! §("PVP_WON");
      
      public static const §4#l§:String = §%! §("PVP_DRAWS");
      
      public static const §6!_§:String = §%! §("MISSIONS_PLAYED");
      
      public static const §%#a§:String = §%! §("MISSIONS_WON");
      
      public static const §8#c§:String = §%! §("MISSIONS_EARNED");
      
      public static const §%$]§:String = §%! §("WAGERS_EARNED");
      
      public static const §3#v§:String = §%! §("RUBIES_FOUND");
      
      public static const §]$p§:String = §%! §("SOLO_DAMAGE");
      
      public static const §[!a§:String = §%! §("TEAM_DAMAGE");
      
      public static const §3%$§:String = §%! §("SOLO_DAMAGE_TAKEN");
      
      public static const §&"b§:String = §%! §("TEAM_DAMAGE_TAKEN");
      
      public static const §9$7§:String = §%! §("FRIENDLY_FIRE");
      
      public static const §+%<§:String = §%! §("SNIPER_SHOTS");
      
      public static const §%%s§:String = §%! §("WIND_SHOTS");
      
      public static const §0"D§:String = §%! §("KILLED_BOXERS");
      
      public static const §'%,§:String = §%! §("KILLED_DEMONS");
      
      public static const §1%8§:String = §%! §("KILLED_RABBITS");
      
      public static const §;&=§:String = §%! §("KILLED_ZOMBIES");
      
      public static const §4!M§:String = §%! §("KILLED_CATS");
      
      public static const §]6§:String = §%! §("KILLED_DRAGONS");
      
      public static const §-n§:String = §%! §("KILLED_ROBOTS");
      
      public static const §7!&§:String = §%! §("KILLED_RHINOS");
      
      public static const §+!$§:String = §%! §("KILLED_BOARS");
      
      public static const §!$>§:String = §%! §("KILLED_ALIENS");
      
      public static const §6%L§:String = §%! §("KILLED_REVIVED");
      
      public static const KILLED_TOTAL:String = §%! §("KILLED_TOTAL");
      
      public static const §2&A§:String = §%! §("UNITS_LOST");
      
      public static const §?!v§:String = §%! §("COLLECTED_MEDKITS");
      
      public static const §4%B§:String = §%! §("COLLECTED_CRATES");
      
      public static const §2+§:String = §%! §("COLLECTED_STARS");
      
      public static const §0#L§:String = §%! §("DESTROYED_SUPPLIES");
      
      public static const §`%;§:String = §%! §("GRAVES_SANK");
      
      public static const §?%?§:String = §%! §("METERS_FLOWN");
      
      public static const §""<§:String = §%! §("METERS_WALKED");
      
      public static const BUTTON_YES:String = §%! §("BUTTON_YES");
      
      public static const BUTTON_NO:String = §%! §("BUTTON_NO");
      
      public static const BUTTON_OK:String = §%! §("BUTTON_OK");
      
      public static const BUTTON_CANCEL:String = §%! §("BUTTON_CANCEL");
      
      public static const BUTTON_REJECT:String = §%! §("BUTTON_REJECT");
      
      public static const BUTTON_CLOSE:String = §%! §("BUTTON_CLOSE");
      
      public static const BUTTON_HIRE:String = §%! §("BUTTON_HIRE");
      
      public static const BUTTON_OPEN:String = §%! §("BUTTON_OPEN");
      
      public static const BUTTON_VIEW:String = §%! §("BUTTON_VIEW");
      
      public static const BUTTON_RELEASE_NOTES:String = §%! §("BUTTON_RELEASE_NOTES");
      
      public static const BUTTON_BUY:String = §%! §("BUTTON_BUY");
      
      public static const BUTTON_RESET:String = §%! §("BUTTON_RESET");
      
      public static const BUTTON_ADD:String = §%! §("BUTTON_ADD");
      
      public static const BUTTON_SELECT:String = §%! §("BUTTON_SELECT");
      
      public static const BUTTON_PUBLISH:String = §%! §("BUTTON_PUBLISH");
      
      public static const BUTTON_SEND:String = §%! §("BUTTON_SEND");
      
      public static const BUTTON_REQUEST:String = §%! §("BUTTON_REQUEST");
      
      public static const BUTTON_NEW_PROFILE:String = §%! §("BUTTON_NEW_PROFILE");
      
      public static const BUTTON_ASK_FRIEND:String = §%! §("BUTTON_ASK_FRIEND");
      
      public static const BUTTON_ASK_FRIEND2:String = §%! §("BUTTON_ASK_FRIEND2");
      
      public static const BUTTON_INFO:String = §%! §("BUTTON_INFO");
      
      public static const FOR_TEST_MODE_QTIP:String = §%! §("FOR_TEST_MODE_QTIP");
      
      public static const BATTLE_INIT:String = §%! §("BATTLE_INIT");
      
      public static const BATTLE_INIT_POS:String = §%! §("BATTLE_INIT_POS");
      
      public static const BATTLE_INIT_MAP:String = §%! §("BATTLE_INIT_MAP");
      
      public static const BATTLE_LOAD_MAP_CONFIG:String = §%! §("BATTLE_LOAD_MAP_CONFIG");
      
      public static const BATTLE_LOAD_MAP:String = §%! §("BATTLE_LOAD_MAP");
      
      public static const BATTLE_ENEMY_DATA_LOAD:String = §%! §("BATTLE_ENEMY_DATA_LOAD");
      
      public static const BATTLE_PVP_LOGIN:String = §%! §("BATTLE_PVP_LOGIN");
      
      public static const BATTLE_MISSION_LOAD:String = §%! §("BATTLE_MISSION_LOAD");
      
      public static const BATTLE_PVP_CONNECT:String = §%! §("BATTLE_PVP_CONNECT");
      
      public static const BOSS_RESOURCES_LOAD:String = §%! §("BOSS_RESOURCES_LOAD");
      
      public static const REACTION_MENU_TITLE:String = §%! §("REACTION_MENU_TITLE");
      
      public static const ASK_FRIEND_PUMP_REACTION_TITLE:String = §%! §("ASK_FRIEND_PUMP_REACTION_TITLE");
      
      public static const REACTION_MENU_BUTTON:String = §%! §("REACTION_MENU_BUTTON");
      
      public static const REACTION_MENU_MSG_NONE_SELECTED:String = §%! §("REACTION_MENU_MSG_NONE_SELECTED");
      
      public static const REACTION_MENU_MSG_NONE_PUMPED_3DAYS:String = §%! §("REACTION_MENU_MSG_NONE_PUMPED_3DAYS");
      
      public static const PUMP_REACTION_DAY_LIMIT_ADD:String = §%! §("PUMP_REACTION_DAY_LIMIT_ADD");
      
      public static const PUMP_REACTION_DAY_LIMIT_ADD_CLAN:String = §%! §("PUMP_REACTION_DAY_LIMIT_ADD_CLAN");
      
      public static const GRENADE_TIMER:String = §%! §("GRENADE_TIMER");
      
      public static const CROSSHAIR_TOO_HIGH:String = §%! §("CROSSHAIR_TOO_HIGH");
      
      public static const GIRDER_IMPOSSIBLE:String = §%! §("GIRDER_IMPOSSIBLE");
      
      public static const GIRDER_SCENE_UNSTABLE:String = §%! §("GIRDER_SCENE_UNSTABLE");
      
      public static const ALREADY_BANDAGED:String = §%! §("ALREADY_BANDAGED");
      
      public static const ALREADY_ANTITOXIN:String = §%! §("ALREADY_ANTITOXIN");
      
      public static const BANDAGE_USELESS:String = §%! §("BANDAGE_USELESS");
      
      public static const HAVE_WATER_PROTECTION:String = §%! §("HAVE_WATER_PROTECTION");
      
      public static const HP_NOT_EXIST_FOR_ACTIVATE:String = §%! §("HP_NOT_EXIST_FOR_ACTIVATE");
      
      public static const KAMIKAZE_ALREADY_ACTIVATED:String = §%! §("KAMIKAZE_ALREADY_ACTIVATED");
      
      public static const PRIZE_TWO_MISSION:String = §%! §("PRIZE_TWO_MISSION");
      
      public static const CONTAINS_RANDOM_WEAPON:String = §%! §("CONTAINS_RANDOM_WEAPON");
      
      public static const TITLE_MSG:String = §%! §("TITLE_MSG");
      
      public static const IGNORE_USER_BTN:String = §%! §("IGNORE_USER_BTN");
      
      public static const PUMP_REACTION_OK:String = §%! §("PUMP_REACTION_OK");
      
      public static const PUMP_REACTION_DAY_LIMIT:String = §%! §("PUMP_REACTION_DAY_LIMIT");
      
      public static const PUMP_REACTION_TODAY_ALREADY:String = §%! §("PUMP_REACTION_TODAY_ALREADY");
      
      public static const PUMP_REACTION_ERROR:String = §%! §("PUMP_REACTION_ERROR");
      
      public static const SEARCH_QTIP:String = §%! §("SEARCH_QTIP");
      
      public static const REACTION2_QTIP:String = §%! §("REACTION2_QTIP");
      
      public static const ATTRIBUTE_BALLS_ATTENTION:String = §%! §("ATTRIBUTE_BALLS_ATTENTION");
      
      public static const BUTTON_BALLS:String = §%! §("BUTTON_BALLS");
      
      public static const BUTTON_ARENA:String = §%! §("BUTTON_ARENA");
      
      public static const ALBUM_PHOTO_STATUS_DESCRIPTION:String = §%! §("ALBUM_PHOTO_STATUS_DESCRIPTION",§7"n§.VK);
      
      public static const ALBUM_PHOTO_STATUS_TITLE:String = §%! §("ALBUM_PHOTO_STATUS_TITLE",§7"n§.VK);
      
      public static const PHOTO_STATUS_DESCRIPTION:String = §%! §("PHOTO_STATUS_DESCRIPTION",§7"n§.VK);
      
      public static const EMPTY_TEXT:String = §%! §("EMPTY_TEXT");
      
      public static const DAILY_BONUS_CONGRATZ:String = §%! §("DAILY_BONUS_CONGRATZ");
      
      public static const DAILY_BONUS_TEXT:String = §%! §("DAILY_BONUS_TEXT");
      
      public static const DAILY_BONUS_DAY:String = §%! §("DAILY_BONUS_DAY");
      
      public static const DAILY_BONUS_WEEK:String = §%! §("DAILY_BONUS_WEEK");
      
      public static const WEAPONS_BONUS_TITLE:String = §%! §("WEAPONS_BONUS_TITLE");
      
      public static const WEAPONS_BONUS_TEXT:String = §%! §("WEAPONS_BONUS_TEXT");
      
      public static const DOWNGRADE_WEAPONS_COMPENSATION_TITLE:String = §%! §("DOWNGRADE_WEAPONS_COMPENSATION_TITLE");
      
      public static const DOWNGRADE_WEAPONS_COMPENSATION_TEXT:String = §%! §("DOWNGRADE_WEAPONS_COMPENSATION_TEXT");
      
      public static const CLAN_SEASON_BONUS_TEXT:String = §%! §("CLAN_SEASON_BONUS_TEXT");
      
      public static const MASSIVE_DAMAGE:String = §%! §("MASSIVE_DAMAGE");
      
      public static const DOUBLE_KILL:String = §%! §("DOUBLE_KILL");
      
      public static const TRIPPLE_KILL:String = §%! §("TRIPPLE_KILL");
      
      public static const ULTRA_KILL:String = §%! §("ULTRA_KILL");
      
      public static const SYSPVP_OPPONENT_OUT:String = §%! §("SYSPVP_OPPONENT_OUT");
      
      public static const SYSPVP_INACTIVITY_DROP:String = §%! §("SYSPVP_INACTIVITY_DROP");
      
      public static const SYSPVP_UNCONFIRMED_EOT:String = §%! §("SYSPVP_UNCONFIRMED_EOT");
      
      public static const SYSPVP_OPPONENT_SURRENDER:String = §%! §("SYSPVP_OPPONENT_SURRENDER");
      
      public static const SYSPVP_OPPONENT_CHEATER:String = §%! §("SYSPVP_OPPONENT_CHEATER");
      
      public static const SYSPVP_OPPONENT_LOST_CONNECTION:String = §%! §("SYSPVP_OPPONENT_LOST_CONNECTION");
      
      public static const SYSPVP_OPPONENT_RETURNED:String = §%! §("SYSPVP_OPPONENT_RETURNED");
      
      public static const SYSPVP_LONG_TURN:String = §%! §("SYSPVP_LONG_TURN");
      
      public static const SYSPVP_SERVER_RESTARTING:String = §%! §("SYSPVP_SERVER_RESTARTING");
      
      public static const SYSPVP_UNDEFINED:String = §%! §("SYSPVP_UNDEFINED");
      
      public static const SYSPVP_NEW_TURN:String = §%! §("SYSPVP_NEW_TURN");
      
      public static const SYSPVP_BATTLE_ID:String = §%! §("SYSPVP_BATTLE_ID");
      
      public static const SYSPVP_MAP_ID:String = §%! §("SYSPVP_MAP_ID");
      
      public static const SYSPVP_PLAYER_WIPED:String = §%! §("SYSPVP_PLAYER_WIPED");
      
      public static const SYSPVP_PLAYER_REPEATED_COMMAND:String = §%! §("SYSPVP_PLAYER_REPEATED_COMMAND");
      
      public static const SYSPVP_PLAYER_SKIPPED_COMMAND:String = §%! §("SYSPVP_PLAYER_SKIPPED_COMMAND");
      
      public static const SYSPVP_YOU_PLAY_FOR:String = §%! §("SYSPVP_YOU_PLAY_FOR");
      
      public static const SYSPVP_ALLY_PLAYS_FOR:String = §%! §("SYSPVP_ALLY_PLAYS_FOR");
      
      public static const SYSPVP_USE_FOR:String = §%! §("SYSPVP_USE_FOR");
      
      public static const SYSPVP_WORK_FOR:String = §%! §("SYSPVP_WORK_FOR");
      
      public static const SYSPVP_COMPANION_SURRENDER:String = §%! §("SYSPVP_COMPANION_SURRENDER");
      
      public static const SYSPVP_SECOND_TURN:String = §%! §("SYSPVP_SECOND_TURN");
      
      public static const COMMON_CHAT_BTN:String = §%! §("COMMON_CHAT_BTN");
      
      public static const TEAM_CHAT_BTN:String = §%! §("TEAM_CHAT_BTN");
      
      public static const CLAN_CHAT_BTN:String = §%! §("CLAN_CHAT_BTN");
      
      public static const EVENTS_CHAT_BTN:String = §%! §("EVENTS_CHAT_BTN");
      
      public static const PLAY_CAPTION:String = §%! §("PLAY_CAPTION",§7"n§.§1&?§,§7"n§.§-"X§);
      
      public static const PAYMENT_MSG_FAILED:String = §%! §("PAYMENT_MSG_FAILED",§7"n§.§-"X§,§7"n§.§"%O§);
      
      public static const LITTLE_COUNT_POINTS:String = §%! §("LITTLE_COUNT_POINTS");
      
      public static const NEED_PREV_AWARDS_MSG:String = §%! §("NEED_PREV_AWARDS_MSG");
      
      public static const NEED_AWARDS:String = §%! §("NEED_AWARDS");
      
      public static const REPLACES_AWARD:String = §%! §("REPLACES_AWARD");
      
      public static const REPLACED_AWARD:String = §%! §("REPLACED_AWARD");
      
      public static const BTN_SHARE_NAME:String = §%! §("BTN_SHARE_NAME");
      
      public static const WIN_GAME_SHARE:String = §%! §("WIN_GAME_SHARE");
      
      public static const RUBY_NAME:String = §%! §("RUBY_NAME",§7"n§.§"%O§);
      
      public static const COIN_NAME:String = §%! §("COIN_NAME",§7"n§.§"%O§);
      
      public static const NO_KEYS_IN_SEARCH_HOUSE:String = §%! §("NO_KEYS_IN_SEARCH_HOUSE");
      
      public static const HINT_KEY_COUNT:String = §%! §("HINT_KEY_COUNT");
      
      public static const OPENING_SOON:String = §%! §("OPENING_SOON");
      
      public static const FORBIDDEN_TRANSITION_PAGE:String = §%! §("FORBIDDEN_TRANSITION_PAGE",§7"n§.§=#J§);
      
      public static const SENDER_MESSAGE_FRIEND:String = §%! §("SENDER_MESSAGE_FRIEND",§7"n§.§=#J§);
      
      public static const LEARNING_MISSION_1_NAME:String = §%! §("LEARNING_MISSION_1_NAME");
      
      public static const LEARNING_MISSION_2_NAME:String = §%! §("LEARNING_MISSION_2_NAME");
      
      public static const LEARNING_MISSION_3_NAME:String = §%! §("LEARNING_MISSION_3_NAME");
      
      public static const LEARNING_MISSION_4_NAME:String = §%! §("LEARNING_MISSION_4_NAME");
      
      public static const LEARNING_MISSION_5_NAME:String = §%! §("LEARNING_MISSION_5_NAME");
      
      public static const LEARNING_MISSION_1_DESCR:String = §%! §("LEARNING_MISSION_1_DESCR");
      
      public static const LEARNING_MISSION_2_DESCR:String = §%! §("LEARNING_MISSION_2_DESCR");
      
      public static const LEARNING_MISSION_3_DESCR:String = §%! §("LEARNING_MISSION_3_DESCR");
      
      public static const LEARNING_MISSION_4_DESCR:String = §%! §("LEARNING_MISSION_4_DESCR");
      
      public static const LEARNING_MISSION_5_DESCR:String = §%! §("LEARNING_MISSION_5_DESCR");
      
      public static const BOSS_PIRATE_NAME:String = §%! §("BOSS_PIRATE_NAME");
      
      public static const BOSS_PIRATE_DESCR:String = §%! §("BOSS_PIRATE_DESCR");
      
      public static const BOSS_ILLUSIONIST_NAME:String = §%! §("BOSS_ILLUSIONIST_NAME");
      
      public static const BOSS_ILLUSIONIST_DESCR:String = §%! §("BOSS_ILLUSIONIST_DESCR");
      
      public static const BOSS_SHAMAN_NAME:String = §%! §("BOSS_SHAMAN_NAME");
      
      public static const BOSS_SHAMAN_DESCR:String = §%! §("BOSS_SHAMAN_DESCR");
      
      public static const BOSS_VIKING_NAME:String = §%! §("BOSS_VIKING_NAME");
      
      public static const BOSS_VIKING_DESCR:String = §%! §("BOSS_VIKING_DESCR");
      
      public static const BOSS_WIND_MASTER_NAME:String = §%! §("BOSS_WIND_MASTER_NAME");
      
      public static const BOSS_WIND_MASTER_DESCR:String = §%! §("BOSS_WIND_MASTER_DESCR");
      
      public static const BOSS_SAMURAI_CAT_NAME:String = §%! §("BOSS_SAMURAI_CAT_NAME");
      
      public static const BOSS_SAMURAI_CAT_DESCR:String = §%! §("BOSS_SAMURAI_CAT_DESCR");
      
      public static const TEAM_NAME_SAMURAI_CAT:String = §%! §("TEAM_NAME_SAMURAI_CAT");
      
      public static const BOT_NAME_SAMURAI_CAT:String = §%! §("BOT_NAME_SAMURAI_CAT");
      
      public static const BOSS_MINER_NAME:String = §%! §("BOSS_MINER_NAME");
      
      public static const BOSS_MINER_DESCR:String = §%! §("BOSS_MINER_DESCR");
      
      public static const BOSS_BURNING_ZOMBIES_NAME:String = §%! §("BOSS_BURNING_ZOMBIES_NAME");
      
      public static const BOSS_BURNING_ZOMBIES_DESCR:String = §%! §("BOSS_BURNING_ZOMBIES_DESCR");
      
      public static const BOSS_SOUL_NAME:String = §%! §("BOSS_SOUL_NAME");
      
      public static const BOSS_SOUL_DESCR:String = §%! §("BOSS_SOUL_DESCR");
      
      public static const BOSS_GHOST_NAME:String = §%! §("BOSS_GHOST_NAME");
      
      public static const BOSS_GHOST_DESCR:String = §%! §("BOSS_GHOST_DESCR");
      
      public static const BOSS_YAKUZA_NAME:String = §%! §("BOSS_YAKUZA_NAME");
      
      public static const BOSS_YAKUZA_DESCR:String = §%! §("BOSS_YAKUZA_DESCR");
      
      public static const BOSS_ROMEO_JULIET_NAME:String = §%! §("BOSS_ROMEO_JULIET_NAME");
      
      public static const BOSS_ROMEO_JULIET_DESCR:String = §%! §("BOSS_ROMEO_JULIET_DESCR");
      
      public static const BOSS_KING_DEAD_NAME:String = §%! §("BOSS_KING_DEAD_NAME");
      
      public static const BOT_KING_DEAD_SUMMONER:String = §%! §("BOT_KING_DEAD_SUMMONER");
      
      public static const TEAM_KING_DEAD_MINIONS:String = §%! §("TEAM_KING_DEAD_MINIONS");
      
      public static const BOSS_KING_DEAD_DESCR:String = §%! §("BOSS_KING_DEAD_DESCR");
      
      public static const BOSS_REVIVED_CAPTAIN_NAME:String = §%! §("BOSS_REVIVED_CAPTAIN_NAME");
      
      public static const BOSS_REVIVED_CAPTAIN_DESCR:String = §%! §("BOSS_REVIVED_CAPTAIN_DESCR");
      
      public static const BOSS_SERGEANT_NAME:String = §%! §("BOSS_SERGEANT_NAME");
      
      public static const BOSS_SERGEANT_DESCR:String = §%! §("BOSS_SERGEANT_DESCR");
      
      public static const DESCR_REWARD_BOSS_INFO_FIRST_COMPLETE:String = §%! §("DESCR_REWARD_BOSS_INFO_FIRST_COMPLETE");
      
      public static const DESCR_REWARD_BOSS_INFO:String = §%! §("DESCR_REWARD_BOSS_INFO");
      
      public static const BATTLE_BTN:String = §%! §("BATTLE_BTN");
      
      public static const ZOMBIE_RISING_CARD:String = §%! §("ZOMBIE_RISING_CARD");
      
      public static const ONE_DAY_PANEL_NAME:String = §%! §("ONE_DAY_PANEL_NAME");
      
      public static const ONE_DAY_PANEL_RETURN_TOMORROW:String = §%! §("ONE_DAY_PANEL_RETURN_TOMORROW");
      
      public static const ONE_DAY_PANEL_DESCR:String = §%! §("ONE_DAY_PANEL_DESCR");
      
      public static const HELP_LEARNING_MISSION_ITEM_MENU:String = §%! §("HELP_LEARNING_MISSION_ITEM_MENU");
      
      public static const LEVEL_NOT_APPROPRIATE_PANEL_NAME:String = §%! §("LEVEL_NOT_APPROPRIATE_PANEL_NAME");
      
      public static const LEVEL_NOT_APPROPRIATE_PANEL_DESCR:String = §%! §("LEVEL_NOT_APPROPRIATE_PANEL_DESCR");
      
      public static const BOSS_GAMEOVER_LOSE_TITLE_2:String = §%! §("BOSS_GAMEOVER_LOSE_TITLE_2");
      
      public static const BOSS_GAMEOVER_LOSE_DESCR_1:String = §%! §("BOSS_GAMEOVER_LOSE_DESCR_1");
      
      public static const BOSS_GAMEOVER_LOSE_DESCR_2:String = §%! §("BOSS_GAMEOVER_LOSE_DESCR_2");
      
      public static const BOSS_GAMEOVER_DRAW_TITLE_2:String = §%! §("BOSS_GAMEOVER_DRAW_TITLE_2");
      
      public static const BOSS_GAMEOVER_DRAW_DESCR:String = §%! §("BOSS_GAMEOVER_DRAW_DESCR");
      
      public static const EQUIP_AVAILABLE_IN_BUNDLE:String = §%! §("EQUIP_AVAILABLE_IN_BUNDLE");
      
      public static const SEARCH_ZONE_GRADE_W:String = §%! §(§,x§.SEARCH_ZONE_GRADE_W);
      
      public static const SEARCH_ZONE_GRADE_A:String = §%! §(§,x§.SEARCH_ZONE_GRADE_A);
      
      public static const SEARCH_ZONE_GRADE_T:String = §%! §(§,x§.SEARCH_ZONE_GRADE_T);
      
      public static const SEARCH_ZONE_GRADE_R:String = §%! §(§,x§.SEARCH_ZONE_GRADE_R);
      
      public static const EQUIP_IS_ON_BOSS:String = §%! §("EQUIP_IS_ON_BOSS");
      
      public static const EQUIP_DISAPPEAR:String = §%! §("EQUIP_DISAPPEAR");
      
      public static const ONLY_FOR_RACE:String = §%! §("ONLY_FOR_RACE");
      
      public static const IS_REVIVED:String = §%! §("IS_REVIVED");
      
      public static const ONLY_FOR_RACES:String = §%! §("ONLY_FOR_RACES");
      
      public static const BONUS_ATTACK:String = §%! §("BONUS_ATTACK");
      
      public static const BONUS_ARMOR:String = §%! §("BONUS_ARMOR");
      
      public static const TITLE_CONFIRMATION:String = §%! §("TITLE_CONFIRMATION");
      
      public static const CONFIRMATION_DOWNGRADE_TEXT:String = §%! §("CONFIRMATION_DOWNGRADE_TEXT");
      
      public static const DOWNGRADES_LEFT:String = §%! §("DOWNGRADES_LEFT");
      
      public static const DOWNGRADES_LIMIT_REACHED:String = §%! §("DOWNGRADES_LIMIT_REACHED");
      
      public static const UNLOCK_BOSS_RESULT_TITLE:String = §%! §("UNLOCK_BOSS_RESULT_TITLE");
      
      public static const UNLOCK_BOSS_RESULT_SUCCESS:String = §%! §("UNLOCK_BOSS_RESULT_SUCCESS");
      
      public static const UNLOCK_BOSS_RESULT_ERROR:String = §%! §("UNLOCK_BOSS_RESULT_ERROR");
      
      public static const UNLOCK_BOSS_TEXT:String = §%! §("UNLOCK_BOSS_TEXT");
      
      public static const UNLOCK_FOR:String = §%! §("UNLOCK_FOR");
      
      public static const UNLOCK_BOSS_PANEL_TEXT:String = §%! §("UNLOCK_BOSS_PANEL_TEXT");
      
      public static const BACK_BTN:String = §%! §("BACK_BTN");
      
      public static const CRAFT_REWARD_TITLE:String = §%! §("CRAFT_REWARD_TITLE");
      
      public static const COLLECT_FOR_REAGENT_BTN:String = §%! §("COLLECT_FOR_REAGENT_BTN");
      
      public static const COLLECT_FOR_RUBY_BTN:String = §%! §("COLLECT_FOR_RUBY_BTN");
      
      public static const DOWNGRADE_BTN:String = §%! §("DOWNGRADE_BTN");
      
      public static const PRONOUN_I:String = §%! §("PRONOUN_I",§7"n§.OK);
      
      public static const SUCCESS_SEND:String = §%! §("SUCCESS_SEND",§7"n§.OK);
      
      public static const BOSS_FARMER_NAME:String = §%! §("BOSS_FARMER_NAME");
      
      public static const BOSS_FARMER_DESCR:String = §%! §("BOSS_FARMER_DESCR");
      
      public static const BOSS_HUNTER_NAME:String = §%! §("BOSS_HUNTER_NAME");
      
      public static const BOSS_HUNTER_DESCR:String = §%! §("BOSS_HUNTER_DESCR");
      
      public static const BOSS_MANIACS_NAME:String = §%! §("BOSS_MANIACS_NAME");
      
      public static const BOSS_MANIACS_DESCR:String = §%! §("BOSS_MANIACS_DESCR");
      
      public static const BOSS_ENGINEER_NAME:String = §%! §("BOSS_ENGINEER_NAME");
      
      public static const BOSS_ENGINEER_DESCR:String = §%! §("BOSS_ENGINEER_DESCR");
      
      public static const BOSS_ASSASSIN_DESCR:String = §%! §("BOSS_ASSASSIN_DESCR");
      
      public static const BOSS_ALCHEMIST_DESCR:String = §%! §("BOSS_ALCHEMIST_DESCR");
      
      public static const BOSS_ARCHBOT_DESCR:String = §%! §("BOSS_ARCHBOT_DESCR");
      
      public static const BOSS_EMPEROR_DESCR:String = §%! §("BOSS_EMPEROR_DESCR");
      
      public static const BOSS_GUARDIANS_DEPTHS_NAME:String = §%! §("BOSS_GUARDIANS_DEPTHS_NAME");
      
      public static const BOSS_GUARDIANS_DEPTHS_DESCR:String = §%! §("BOSS_GUARDIANS_DEPTHS_DESCR");
      
      public static const TEAM_GUARDIANS_DEPTHS_NAME:String = §%! §("TEAM_GUARDIANS_DEPTHS_NAME");
      
      public static const BOT_GUARDIANS_DEPTHS:String = §%! §("BOT_GUARDIANS_DEPTHS");
      
      public static const PROGRESS_BAR_GUARDIANS_DEPTHS:String = §%! §("PROGRESS_BAR_GUARDIANS_DEPTHS");
      
      public static const BOSS_DEVOTEE_NAME:String = §%! §("BOSS_DEVOTEE_NAME");
      
      public static const BOSS_DEVOTEE_MINION_NAME:String = §%! §("BOSS_DEVOTEE_MINION_NAME");
      
      public static const BOSS_DEVOTEE_DESCR:String = §%! §("BOSS_DEVOTEE_DESCR");
      
      public static const BOSS_REBEL_ROBOT_DESCR:String = §%! §("BOSS_REBEL_ROBOT_DESCR");
      
      public static const BOSS_SOUL_MASTER_DESCR:String = §%! §("BOSS_SOUL_MASTER_DESCR");
      
      public static const BOSS_BLACKSMITH_DESCR:String = §%! §("BOSS_BLACKSMITH_DESCR");
      
      public static const BOSS_SYMBIOTE_DESCR:String = §%! §("BOSS_SYMBIOTE_DESCR");
      
      public static const BOSS_SCIENTIST_DESCR:String = §%! §("BOSS_SCIENTIST_DESCR");
      
      public static const MOVE_TEAMMATE_HINT:String = §%! §("MOVE_TEAMMATE_HINT");
      
      public static const RETURN_FRIENDS_MENU_TITLE:String = §%! §("RETURN_FRIENDS_MENU_TITLE");
      
      public static const RETURN_FRIENDS_MENU_MSG:String = §%! §("RETURN_FRIENDS_MENU_MSG");
      
      public static const RETURN_FRIENDS_MENU_BTN:String = §%! §("RETURN_FRIENDS_MENU_BTN");
      
      public static const RETURN_FRIENDS_MENU_DESCR_1:String = §%! §("RETURN_FRIENDS_MENU_DESCR_1");
      
      public static const RETURN_FRIENDS_MENU_DESCR_2:String = §%! §("RETURN_FRIENDS_MENU_DESCR_2");
      
      public static const RETURN_FRIENDS_MENU_LABEL_1:String = §%! §("RETURN_FRIENDS_MENU_LABEL_1");
      
      public static const RETURN_FRIENDS_MENU_LABEL_2:String = §%! §("RETURN_FRIENDS_MENU_LABEL_2");
      
      public static const RETURN_FRIENDS_MENU_DISABLE_TEXT_BTN:String = §%! §("RETURN_FRIENDS_MENU_DISABLE_TEXT_BTN");
      
      public static const RETURN_FRIEND_REWARD_MENU_DESCR_1:String = §%! §("RETURN_FRIEND_REWARD_MENU_DESCR_1");
      
      public static const RETURN_FRIEND_REWARD_MENU_DESCR_2:String = §%! §("RETURN_FRIEND_REWARD_MENU_DESCR_2");
      
      public static const RETURN_FRIEND_BTN_QTIP:String = §%! §("RETURN_FRIEND_BTN_QTIP");
      
      public static const RETURN_FRIEND_REQUEST_MENU_TITLE:String = §%! §("RETURN_FRIEND_REQUEST_MENU_TITLE");
      
      public static const RETURN_FRIEND_REQUEST_MENU_DESCR:String = §%! §("RETURN_FRIEND_REQUEST_MENU_DESCR");
      
      public static const RETURN_FRIEND_REQUEST_CELL_DESCR:String = §%! §("RETURN_FRIEND_REQUEST_CELL_DESCR");
      
      public static const RETURN_FRIEND_REQUEST_CELL_BTN:String = §%! §("RETURN_FRIEND_REQUEST_CELL_BTN");
      
      public static const REAGENTS_QTIP:String = §%! §("REAGENTS_QTIP");
      
      public static const RETURN_FRIEND_REQUEST_MENU_MSG:String = §%! §("RETURN_FRIEND_REQUEST_MENU_MSG");
      
      public static const RETURN_FRIEND_POST_MSG:String = §%! §("RETURN_FRIEND_POST_MSG");
      
      public static const COMEBACK_POST_MSG:String = §%! §("COMEBACK_POST_MSG");
      
      public static const CRAFT_CRATE:String = §%! §("CRAFT_CRATE");
      
      public static const BY_DEFAULT:String = §%! §("BY_DEFAULT");
      
      public static const ERROR_AT_UPDATE_BALANCE:String = §%! §("ERROR_AT_UPDATE_BALANCE");
      
      public static const PVP_MESSAGE:String = §%! §("PVP_MESSAGE");
      
      public static const UPDATE_YOUR_PLAYER:String = §%! §("UPDATE_YOUR_PLAYER");
      
      public static const ACHIEVE_HTML_TEMPLATE:String = §%! §("ACHIEVE_HTML_TEMPLATE",§7"n§.FB);
      
      public static const VIEW_ACTION_LINK:String = §%! §("VIEW_ACTION_LINK",§7"n§.§;"B§,§7"n§.OK);
      
      public static const OFFHAND_TAB:String = §%! §("OFFHAND_TAB");
      
      public static const BOOSTERS_TAB:String = §%! §("BOOSTERS_TAB");
      
      public static const §""D§:String = §%! §("BONUS.HEAL");
      
      public static const BOSS_DARK_KNIGHT_NAME:String = §%! §("BOSS_DARK_KNIGHT_NAME");
      
      public static const BOSS_DARK_KNIGHT_DESCR:String = §%! §("BOSS_DARK_KNIGHT_DESCR");
      
      public static const BOSS_DARK_KNIGHT_TEAM_ACOLYTES:String = §%! §("BOSS_DARK_KNIGHT_TEAM_ACOLYTES");
      
      public static const BOSS_DARK_KNIGHT_ACOLYTE:String = §%! §("BOSS_DARK_KNIGHT_ACOLYTE");
      
      public static const BOSS_PALADIN_NAME:String = §%! §("BOSS_PALADIN_NAME");
      
      public static const BOSS_PALADIN_DESCR:String = §%! §("BOSS_PALADIN_DESCR");
      
      public static const BOSS_HACKER_NAME:String = §%! §("BOSS_HACKER_NAME");
      
      public static const BOSS_HACKER_DESCR:String = §%! §("BOSS_HACKER_DESCR");
      
      public static const BOSS_HACKER_TEAM_PUPILS:String = §%! §("BOSS_HACKER_TEAM_PUPILS");
      
      public static const BOSS_HACKER_PUPILS:String = §%! §("BOSS_HACKER_PUPILS");
      
      public static const BOSS_THIEVES_NAME:String = §%! §("BOSS_THIEVES_NAME");
      
      public static const BOSS_THIEVES_DESCR:String = §%! §("BOSS_THIEVES_DESCR");
      
      public static const BOSS_THIEF_BOT_1_NAME:String = §%! §("BOSS_THIEF_BOT_1_NAME");
      
      public static const BOSS_THIEF_BOT_2_NAME:String = §%! §("BOSS_THIEF_BOT_2_NAME");
      
      public static const BOSS_ASSASSIN_NAME:String = §%! §("BOSS_ASSASSIN_NAME");
      
      public static const BOSS_ARCHBOT_NAME:String = §%! §("BOSS_ARCHBOT_NAME");
      
      public static const BOSS_ARCHBOT_ASISSTANT_TEAM:String = §%! §("BOSS_ARCHBOT_ASISSTANT_TEAM");
      
      public static const BOSS_ARCHBOT_GOLEM:String = §%! §("BOSS_ARCHBOT_GOLEM");
      
      public static const BOSS_EMPEROR_NAME:String = §%! §("BOSS_EMPEROR_NAME");
      
      public static const BOSS_SCIENTIST_NAME:String = §%! §("BOSS_SCIENTIST_NAME");
      
      public static const BOSS_SYMBIOTE_NAME:String = §%! §("BOSS_SYMBIOTE_NAME");
      
      public static const BOSS_BLACKSMITH_NAME:String = §%! §("BOSS_BLACKSMITH_NAME");
      
      public static const BOSS_SOUL_MASTER_NAME:String = §%! §("BOSS_SOUL_MASTER_NAME");
      
      public static const BOSS_REBEL_ROBOT_NAME:String = §%! §("BOSS_REBEL_ROBOT_NAME");
      
      public static const BOSS_DRUID_NAME:String = §%! §("BOSS_DRUID_NAME");
      
      public static const BOSS_JARL_NAME:String = §%! §("BOSS_JARL_NAME");
      
      public static const ABILITY_LEVEL_REQUIREMENT:String = §%! §("ABILITY_LEVEL_REQUIREMENT");
      
      public static const BATTLE_REQUEST_CALLEE_TEAM_IS_SMALL:String = §%! §("BATTLE_REQUEST_CALLEE_TEAM_IS_SMALL");
      
      public static const CHOOSE_FRIEND_BTN:String = §%! §("CHOOSE_FRIEND_BTN");
      
      public static const FRIEND_EXCEED_BATTLES:String = §%! §("FRIEND_EXCEED_BATTLES");
      
      public static const FRIEND_MISSION_LOCKED:String = §%! §("FRIEND_MISSION_LOCKED");
      
      public static const NO_FRIENDS_FOR_COOP_MISSION:String = §%! §("NO_FRIENDS_FOR_COOP_MISSION");
      
      public static const BOSS_ARCHDEMON_NAME:String = §%! §("BOSS_ARCHDEMON_NAME");
      
      public static const BOSS_ARCHDEMON_DESCR:String = §%! §("BOSS_ARCHDEMON_DESCR");
      
      public static const BOSS_PSIONICS_NAME:String = §%! §("BOSS_PSIONICS_NAME");
      
      public static const BOSS_PSIONICS_DESCR:String = §%! §("BOSS_PSIONICS_DESCR");
      
      public static const BOSS_PSIONICS_BOT_NAME_1:String = §%! §("BOSS_PSIONICS_BOT_NAME_1");
      
      public static const BOSS_PSIONICS_TEAM_BOT_2:String = §%! §("BOSS_PSIONICS_TEAM_BOT_2");
      
      public static const BOSS_PSIONICS_BOT_NAME_2:String = §%! §("BOSS_PSIONICS_BOT_NAME_2");
      
      public static const BOSS_ALCHEMIST_NAME:String = §%! §("BOSS_ALCHEMIST_NAME");
      
      public static const BOSS_ALCHEMIST_ASISSTANT:String = §%! §("BOSS_ALCHEMIST_ASISSTANT");
      
      public static const BOSS_ALCHEMIST_ASISSTANT_TEAM:String = §%! §("BOSS_ALCHEMIST_ASISSTANT_TEAM");
      
      public static const BOSS_PHANTOMS_NAME:String = §%! §("BOSS_PHANTOMS_NAME");
      
      public static const BOSS_PHANTOMS_DESCR:String = §%! §("BOSS_PHANTOMS_DESCR");
      
      public static const BOSS_PHANTOMS_BOT_NAME:String = §%! §("BOSS_PHANTOMS_BOT_NAME");
      
      public static const PREV_SEASON_PLACE:String = §%! §("PREV_SEASON_PLACE");
      
      public static const PREV_SEASON_LABEL:String = §%! §("PREV_SEASON_LABEL");
      
      public static const INVITE_CONFIRMATION_TITLE:String = §%! §("INVITE_CONFIRMATION_TITLE");
      
      public static const INVITE_CONFIRMATION_TEXT:String = §%! §("INVITE_CONFIRMATION_TEXT");
      
      public static const JOIN_CLAN_CONFIRMATION_TITLE:String = §%! §("JOIN_CLAN_CONFIRMATION_TITLE");
      
      public static const JOIN_CLAN_CONFIRMATION_TEXT:String = §%! §("JOIN_CLAN_CONFIRMATION_TEXT");
      
      public static const CLAN_JOIN_DISABLE_BY_LEVEL:String = §%! §("CLAN_JOIN_DISABLE_BY_LEVEL");
      
      public static const CLAN_EMBLEM:String = §%! §("CLAN_EMBLEM");
      
      public static const TERMS_OF_JOINT:String = §%! §("TERMS_OF_JOINT");
      
      public static const CREATE_CLAN_BTN:String = §%! §("CREATE_CLAN_BTN");
      
      public static const CREATE_FOR_BTN:String = §%! §("CREATE_FOR_BTN");
      
      public static const UPGRADE_FOR_BTN:String = §%! §("UPGRADE_FOR_BTN");
      
      public static const CLAN_NAME:String = §%! §("CLAN_NAME");
      
      public static const MAX_LENGTH_LABEL:String = §%! §("MAX_LENGTH_LABEL");
      
      public static const CLAN_DESCRIPTION:String = §%! §("CLAN_DESCRIPTION");
      
      public static const CLAN_LOGO:String = §%! §("CLAN_LOGO");
      
      public static const SETTINGS_TEXT:String = §%! §("SETTINGS_TEXT");
      
      public static const LOGO_LABEL_TEXT:String = §%! §("LOGO_LABEL_TEXT");
      
      public static const LOGO_COLOR_LABEL_TEXT:String = §%! §("LOGO_COLOR_LABEL_TEXT");
      
      public static const PATTERN_LABEL_TEXT:String = §%! §("PATTERN_LABEL_TEXT");
      
      public static const COLOR_LABEL_TEXT:String = §%! §("COLOR_LABEL_TEXT");
      
      public static const NOT_IN_CLAN:String = §%! §("NOT_IN_CLAN");
      
      public static const CLAN_CHAT_VELCOME:String = §%! §("CLAN_CHAT_VELCOME");
      
      public static const CLAN_CHAT_OFFER_CREATE:String = §%! §("CLAN_CHAT_OFFER_CREATE");
      
      public static const CREATE_CLAN_CONFIRMATION:String = §%! §("CREATE_CLAN_CONFIRMATION");
      
      public static const CLAN_CHAT_TAB_NAME:String = §%! §("CLAN_CHAT_TAB_NAME");
      
      public static const GLOBAL_CHAT_TAB_NAME:String = §%! §("GLOBAL_CHAT_TAB_NAME");
      
      public static const § "n§:String = §%! §("TAB_CREATE_CLAN");
      
      public static const TAB_CLAN_CHAT:String = §%! §("TAB_CLAN_CHAT");
      
      public static const §5!1§:String = §%! §("TAB_SEARCH_CLAN");
      
      public static const TAB_INVITES_TO_CLAN:String = §%! §("TAB_INVITES_TO_CLAN");
      
      public static const §!!H§:String = §%! §("TAB_CONTRACTS_CLAN");
      
      public static const §?$n§:String = §%! §("TAB_TREASURY_CLAN");
      
      public static const OPEN_CLAN:String = §%! §("OPEN_CLAN");
      
      public static const CLOSE_CLAN:String = §%! §("CLOSE_CLAN");
      
      public static const OPEN_FOR_RATING:String = §%! §("OPEN_FOR_RATING");
      
      public static const SETTING_LABEL:String = §%! §("SETTING_LABEL");
      
      public static const CLAN_INFO_TAB:String = §%! §("CLAN_INFO_TAB");
      
      public static const CLAN_EDIT_TAB:String = §%! §("CLAN_EDIT_TAB");
      
      public static const CLAN_COMPOSITION:String = §%! §("CLAN_COMPOSITION");
      
      public static const CLAN_RATING:String = §%! §("CLAN_RATING");
      
      public static const CLAN_PLACE_IN_TOP:String = §%! §("CLAN_PLACE_IN_TOP");
      
      public static const CLAN_LEAVE_BTN:String = §%! §("CLAN_LEAVE_BTN");
      
      public static const MESSAGE_TO_CLAN:String = §%! §("MESSAGE_TO_CLAN");
      
      public static const EDIT_CLAN_TAB:String = §%! §("EDIT_CLAN_TAB");
      
      public static const CLAN_CAPACITY_LABEL:String = §%! §("CLAN_CAPACITY_LABEL");
      
      public static const CLAN_EXPAND_TO:String = §%! §("CLAN_EXPAND_TO");
      
      public static const EXPAND_CLAN_BUTTON:String = §%! §("EXPAND_CLAN_BUTTON");
      
      public static const CLAN_RATING_POINTS:String = §%! §("CLAN_RATING_POINTS");
      
      public static const JOIN_TO_CLAN_BTN:String = §%! §("JOIN_TO_CLAN_BTN");
      
      public static const JOIN_TO_CLAN_LABEL:String = §%! §("JOIN_TO_CLAN_LABEL");
      
      public static const MEDAL_COST_LABEL:String = §%! §("MEDAL_COST_LABEL");
      
      public static const REQUIRED_RATING_FOR_JOINT:String = §%! §("REQUIRED_RATING_FOR_JOINT");
      
      public static const DONATE_CLAN_CONFIRMATION:String = §%! §("DONATE_CLAN_CONFIRMATION");
      
      public static const CHANGE_CLAN_NAME_CONFIRMATION:String = §%! §("CHANGE_CLAN_NAME_CONFIRMATION");
      
      public static const CHANGE_CLAN_EMBLEM_CONFIRMATION:String = §%! §("CHANGE_CLAN_EMBLEM_CONFIRMATION");
      
      public static const CHANGE_CLAN_DESCRIPTION_CONFIRMATION:String = §%! §("CHANGE_CLAN_DESCRIPTION_CONFIRMATION");
      
      public static const EXPAND_CLAN_CONFIRMATION:String = §%! §("EXPAND_CLAN_CONFIRMATION");
      
      public static const CHANGE_CLAN_EMBLEM_FAILED:String = §%! §("CHANGE_CLAN_EMBLEM_FAILED");
      
      public static const INVITES_COUNT:String = §%! §("INVITES_COUNT");
      
      public static const INVITE_TEXT:String = §%! §("INVITE_TEXT");
      
      public static const ERROR_MIN_CHAR_CLAN_NAME:String = §%! §("ERROR_MIN_CHAR_CLAN_NAME");
      
      public static const MAX_CHAR_CLAN_NAME_LABEL:String = §%! §("MAX_CHAR_CLAN_NAME_LABEL");
      
      public static const CLAN_HAS_NEW_NAME:String = §%! §("CLAN_HAS_NEW_NAME");
      
      public static const CLAN_HAS_NEW_DESCRIPTION:String = §%! §("CLAN_HAS_NEW_DESCRIPTION");
      
      public static const MAX_CAPACITY_TITLE:String = §%! §("MAX_CAPACITY_TITLE");
      
      public static const MAX_CAPACITY_LABEL:String = §%! §("MAX_CAPACITY_LABEL");
      
      public static const CLAN_HAS_NEW_CAPACITY:String = §%! §("CLAN_HAS_NEW_CAPACITY");
      
      public static const DEFAULT_NEWS_CLAN_TITLE:String = §%! §("DEFAULT_NEWS_CLAN_TITLE");
      
      public static const NEWS_POST_INFO:String = §%! §("NEWS_POST_INFO");
      
      public static const CLAN_HAS_NEW_EMBLEM:String = §%! §("CLAN_HAS_NEW_EMBLEM");
      
      public static const ERR_CLAN_NAME_EXISTS:String = §%! §("ERR_CLAN_NAME_EXISTS");
      
      public static const NO_RESPONSE_FROM_SERVER_CLAN:String = §%! §("NO_RESPONSE_FROM_SERVER_CLAN");
      
      public static const ERR_ALREADY_IN_CLAN:String = §%! §("ERR_ALREADY_IN_CLAN");
      
      public static const ERR_INVALID_ARGUMENT:String = §%! §("ERR_INVALID_ARGUMENT");
      
      public static const CLAN_LOCKED_MESSAGE:String = §%! §("CLAN_LOCKED_MESSAGE");
      
      public static const ERR_ACCESS_DENIED_FOR_EXPEL_CLANMATE:String = §%! §("ERR_ACCESS_DENIED_FOR_EXPEL_CLANMATE");
      
      public static const ERR_ACCESS_DENIED_FOR_CLAN_CHAT:String = §%! §("ERR_ACCESS_DENIED_FOR_CLAN_CHAT");
      
      public static const PROMOTION_LEADER_FAILED:String = §%! §("PROMOTION_LEADER_FAILED");
      
      public static const PROMOTION_LEADER_FAILED_2:String = §%! §("PROMOTION_LEADER_FAILED_2");
      
      public static const PROMOTION_OFFICER_FAILED:String = §%! §("PROMOTION_OFFICER_FAILED");
      
      public static const PROMOTION_OFFICER_FAILED_LIMIT:String = §%! §("PROMOTION_OFFICER_FAILED_LIMIT");
      
      public static const CONTEXT_MENU_CALL_ZOMBIE_RISING_BATTLE:String = §%! §("CONTEXT_MENU_CALL_ZOMBIE_RISING_BATTLE");
      
      public static const CONTEXT_MENU_CALL_ROPE_RACE_WITH_FRIEND:String = §%! §("CONTEXT_MENU_CALL_ROPE_RACE_WITH_FRIEND");
      
      public static const CONTEXT_MENU_CALL_ROPE_RACE_VS_FRIEND:String = §%! §("CONTEXT_MENU_CALL_ROPE_RACE_VS_FRIEND");
      
      public static const CONTEXT_MENU_JOINT_FIGHT_BOSS:String = §%! §("CONTEXT_MENU_JOINT_FIGHT_BOSS");
      
      public static const CONTEXT_MENU_JOINT_FIGHT:String = §%! §("CONTEXT_MENU_JOINT_FIGHT");
      
      public static const CONTEXT_MENU_DUEL:String = §%! §("CONTEXT_MENU_DUEL");
      
      public static const CONTEXT_VISIT_USER:String = §%! §("CONTEXT_VISIT_USER");
      
      public static const CONTEXT_MENU_ADD_USER_TO_TEAM:String = §%! §("CONTEXT_MENU_ADD_USER_TO_TEAM");
      
      public static const CONTEXT_MENU_INCREASE_RANK:String = §%! §("CONTEXT_MENU_INCREASE_RANK");
      
      public static const CONTEXT_MENU_REDUCE_RANK:String = §%! §("CONTEXT_MENU_REDUCE_RANK");
      
      public static const CONTEXT_MENU_MAKE_LEADER:String = §%! §("CONTEXT_MENU_MAKE_LEADER");
      
      public static const CONTEXT_MENU_FIRE_FROM_CLAN:String = §%! §("CONTEXT_MENU_FIRE_FROM_CLAN");
      
      public static const CONTEXT_MENU_MUTE_MODE_ON:String = §%! §("CONTEXT_MENU_MUTE_MODE_ON");
      
      public static const CONTEXT_MENU_MUTE_MODE_OFF:String = §%! §("CONTEXT_MENU_MUTE_MODE_OFF");
      
      public static const CONTEXT_MENU_EXPEL_PERMISSION_ON:String = §%! §("CONTEXT_MENU_EXPEL_PERMISSION_ON");
      
      public static const CONTEXT_MENU_EXPEL_PERMISSION_OFF:String = §%! §("CONTEXT_MENU_EXPEL_PERMISSION_OFF");
      
      public static const SEARCH_FRIEND_BTN:String = §%! §("SEARCH_FRIEND_BTN");
      
      public static const SEARCH_FRIEND_MENU_TITLE:String = §%! §("SEARCH_FRIEND_MENU_TITLE");
      
      public static const SEARCH_FRIEND_LABEL:String = §%! §("SEARCH_FRIEND_LABEL");
      
      public static const FRIENDS_NOT_FOUND:String = §%! §("FRIENDS_NOT_FOUND");
      
      public static const CHANGE_CLAN_NAME_FAILED:String = §%! §("CHANGE_CLAN_NAME_FAILED");
      
      public static const CHANGE_CLAN_DESCRIPTION_FAILED:String = §%! §("CHANGE_CLAN_DESCRIPTION_FAILED");
      
      public static const EXIT_CLAN_LABEL:String = §%! §("EXIT_CLAN_LABEL");
      
      public static const DELETE_CLAN_LABEL:String = §%! §("DELETE_CLAN_LABEL");
      
      public static const LEADER_PROMOTE_RANK_MEMBER:String = §%! §("LEADER_PROMOTE_RANK_MEMBER");
      
      public static const LEADER_LOWER_RANK_MEMBER:String = §%! §("LEADER_LOWER_RANK_MEMBER");
      
      public static const LEADER_SWITCHED_WITH_OFFICER:String = §%! §("LEADER_SWITCHED_WITH_OFFICER");
      
      public static const CLAN_TITLE_EMPTY:String = §%! §("CLAN_TITLE_EMPTY");
      
      public static const MEMBER_JOINED_CLAN:String = §%! §("MEMBER_JOINED_CLAN");
      
      public static const MEMBER_LEFT_CLAN:String = §%! §("MEMBER_LEFT_CLAN");
      
      public static const MEMBER_WAS_EXPELLED:String = §%! §("MEMBER_WAS_EXPELLED");
      
      public static const CLAN_UNKNOWN_MESSAGE:String = §%! §("CLAN_UNKNOWN_MESSAGE");
      
      public static const CLAN_EXIT_HAS_CLOSED:String = §%! §("CLAN_EXIT_HAS_CLOSED");
      
      public static const CLAN_EXIT_HAS_OPENED:String = §%! §("CLAN_EXIT_HAS_OPENED");
      
      public static const DONATE_CLAN_MEMBER:String = §%! §("DONATE_CLAN_MEMBER");
      
      public static const CHANGE_MEDAL_PRICE_CLAN:String = §%! §("CHANGE_MEDAL_PRICE_CLAN");
      
      public static const EXCHANGE_MEDALS_CLAN_MEMBER:String = §%! §("EXCHANGE_MEDALS_CLAN_MEMBER");
      
      public static const MEMBER_GLADIATOR_COMPLETE_MESSAGE:String = §%! §("MEMBER_GLADIATOR_COMPLETE_MESSAGE");
      
      public static const MEMBER_CRAFT_LEGENDARY_MESSAGE:String = §%! §("MEMBER_CRAFT_LEGENDARY_MESSAGE");
      
      public static const OFFICER_WAS_EXPEL_PERMISSION_ON:String = §%! §("OFFICER_WAS_EXPEL_PERMISSION_ON");
      
      public static const OFFICER_WAS_EXPEL_PERMISSION_OFF:String = §%! §("OFFICER_WAS_EXPEL_PERMISSION_OFF");
      
      public static const MEMBER_WAS_MUTED:String = §%! §("MEMBER_WAS_MUTED");
      
      public static const MEMBER_WAS_UNMUTED:String = §%! §("MEMBER_WAS_UNMUTED");
      
      public static const CANT_CREATE_CLAN:String = §%! §("CANT_CREATE_CLAN");
      
      public static const CANT_CREATE_CLAN_DESC:String = §%! §("CANT_CREATE_CLAN_DESC");
      
      public static const USER_EXPELLED_FROM_CLAN_MSG:String = §%! §("USER_EXPELLED_FROM_CLAN_MSG");
      
      public static const USER_EXPELLED_BY_OFFICER_MSG:String = §%! §("USER_EXPELLED_BY_OFFICER_MSG");
      
      public static const USER_EXPELLED_COMPENSATION:String = §%! §("USER_EXPELLED_COMPENSATION");
      
      public static const ERR_REPEATED_INVITE:String = §%! §("ERR_REPEATED_INVITE");
      
      public static const ERR_PROFILE_INVITE_LIMIT:String = §%! §("ERR_PROFILE_INVITE_LIMIT");
      
      public static const ERR_CLAN_INVITE_LIMIT:String = §%! §("ERR_CLAN_INVITE_LIMIT");
      
      public static const ERR_INTEROP_ON_INVITE:String = §%! §("ERR_INTEROP_ON_INVITE");
      
      public static const CLAN_CLOSE_EXIT:String = §%! §("CLAN_CLOSE_EXIT");
      
      public static const CLAN_LEADER_CANT_WIPE_SELF:String = §%! §("CLAN_LEADER_CANT_WIPE_SELF");
      
      public static const CRAFT_COST:String = §%! §("CRAFT_COST");
      
      public static const OFFICERS_POSITIONS:String = §%! §("OFFICERS_POSITIONS");
      
      public static const DAY_TEXT:String = §%! §("DAY_TEXT");
      
      public static const HOURS_TEXT:String = §%! §("HOURS_TEXT");
      
      public static const MINUTE_TEXT:String = §%! §("MINUTE_TEXT");
      
      public static const LESS_HOUR_TEXT:String = §%! §("LESS_HOUR_TEXT");
      
      public static const LESS_MINUTE_TEXT:String = §%! §("LESS_MINUTE_TEXT");
      
      public static const BOSS_PHARAOH_NAME:String = §%! §("BOSS_PHARAOH_NAME");
      
      public static const BOSS_PHARAOH_MINION_NAME:String = §%! §("BOSS_PHARAOH_MINION_NAME");
      
      public static const BOSS_CYBORG_NAME:String = §%! §("BOSS_CYBORG_NAME");
      
      public static const BOSS_CYBORG_MINION_NAME:String = §%! §("BOSS_CYBORG_MINION_NAME");
      
      public static const ITEM_EXPIRED_NOW:String = §%! §("ITEM_EXPIRED_NOW");
      
      public static const LETS_GO_TO_TOP:String = §%! §("LETS_GO_TO_TOP");
      
      public static const TEAMMATE_DISABLED:String = §%! §("TEAMMATE_DISABLED");
      
      public static const TEAMMATE_SWAP_TITLE:String = §%! §("TEAMMATE_SWAP_TITLE");
      
      public static const CLAN_MATE_MEMBER_TITLE:String = §%! §("CLAN_MATE_MEMBER_TITLE");
      
      public static const FRIEND_TEAM_MEMBER_TITLE:String = §%! §("FRIEND_TEAM_MEMBER_TITLE");
      
      public static const MERCENARY_TEAM_MEMBER_TITLE:String = §%! §("MERCENARY_TEAM_MEMBER_TITLE");
      
      public static const ALREADY_IN_TEAM_QTIP:String = §%! §("ALREADY_IN_TEAM_QTIP");
      
      public static const BOSS_ENCHANTER_NAME:String = §%! §("BOSS_ENCHANTER_NAME");
      
      public static const BOSS_ENCHANTER_DESCR:String = §%! §("BOSS_ENCHANTER_DESCR");
      
      public static const BOSS_ENCHANTER_BOT_NAME_1:String = §%! §("BOSS_ENCHANTER_BOT_NAME_1");
      
      public static const BOSS_ENCHANTER_TEAM_BOT_2:String = §%! §("BOSS_ENCHANTER_TEAM_BOT_2");
      
      public static const BOSS_ENCHANTER_BOT_NAME_2:String = §%! §("BOSS_ENCHANTER_BOT_NAME_2");
      
      public static const BOSS_ARCHIVIST_NAME:String = §%! §("BOSS_ARCHIVIST_NAME");
      
      public static const BOSS_ARCHIVIST_DESCR:String = §%! §("BOSS_ARCHIVIST_DESCR");
      
      public static const BOSS_ARCHIVIST_BOT_NAME_1:String = §%! §("BOSS_ARCHIVIST_BOT_NAME_1");
      
      public static const BOSS_ARCHIVIST_TEAM_BOT_2:String = §%! §("BOSS_ARCHIVIST_TEAM_BOT_2");
      
      public static const BOSS_ARCHIVIST_BOT_NAME_2:String = §%! §("BOSS_ARCHIVIST_BOT_NAME_2");
      
      public static const BOSS_DRUID_DESCR:String = §%! §("BOSS_DRUID_DESCR");
      
      public static const BOSS_DRUID_HELPER_TEAM:String = §%! §("BOSS_DRUID_HELPER_TEAM");
      
      public static const BOSS_DRUID_HELPER_FIRE:String = §%! §("BOSS_DRUID_HELPER_FIRE");
      
      public static const BOSS_DRUID_HELPER_POISON:String = §%! §("BOSS_DRUID_HELPER_POISON");
      
      public static const BOSS_DRUID_TOTEM_FIRE:String = §%! §("BOSS_DRUID_TOTEM_FIRE");
      
      public static const BOSS_DRUID_TOTEM_POISION:String = §%! §("BOSS_DRUID_TOTEM_POISION");
      
      public static const BOSS_PHARAOH_DESCR:String = §%! §("BOSS_PHARAOH_DESCR");
      
      public static const BOSS_CYBORG_DESCR:String = §%! §("BOSS_CYBORG_DESCR");
      
      public static const BOSS_JARL_DESCR:String = §%! §("BOSS_JARL_DESCR");
      
      public static const GRAVITY_MASTER_NAME:String = §%! §("GRAVITY_MASTER_NAME");
      
      public static const GRAVITY_MASTER_DESCR:String = §%! §("GRAVITY_MASTER_DESCR");
      
      public static const BOSS_SOLAR_PRIEST_NAME:String = §%! §("BOSS_SOLAR_PRIEST_NAME");
      
      public static const BOSS_SOLAR_PRIEST_DESCR:String = §%! §("BOSS_SOLAR_PRIEST_DESCR");
      
      public static const BOSS_ARCTIC_WARRIOR_NAME:String = §%! §("BOSS_ARCTIC_WARRIOR_NAME");
      
      public static const BOSS_ARCTIC_WARRIOR_DESCR:String = §%! §("BOSS_ARCTIC_WARRIOR_DESCR");
      
      public static const BOSS_QUEEN_SPIDERS_NAME:String = §%! §("BOSS_QUEEN_SPIDERS_NAME");
      
      public static const BOSS_QUEEN_SPIDERS_DESCR:String = §%! §("BOSS_QUEEN_SPIDERS_DESCR");
      
      public static const BOSS_QUEEN_SPIDERS_MINION_NAME:String = §%! §("BOSS_QUEEN_SPIDERS_MINION_NAME");
      
      public static const BOSS_QUEEN_SPIDERS_EGG:String = §%! §("BOSS_QUEEN_SPIDERS_EGG");
      
      public static const ARMOR_REDUCTION:String = §%! §("ARMOR_REDUCTION");
      
      public static const ATTACK_REDUCTION:String = §%! §("ATTACK_REDUCTION");
      
      public static const DOCTOR_BAG_USELESS:String = §0$N§.§%! §("DOCTOR_BAG_USELESS");
      
      public static const DOCTOR_BAG_USELESS_NO_ALLIES:String = §0$N§.§%! §("DOCTOR_BAG_USELESS_NO_ALLIES");
      
      public static const DOCTOR_BAG_USELESS_MAX_HP:String = §0$N§.§%! §("DOCTOR_BAG_USELESS_MAX_HP");
      
      public static const UNDERWATER_BREATH_POTION_USELESS:String = §0$N§.§%! §("UNDERWATER_BREATH_POTION_USELESS");
      
      public static const SEARCH_BTN:String = §0$N§.§%! §("SEARCH_BTN");
      
      public static const SAVE_BTN:String = §0$N§.§%! §("SAVE_BTN");
      
      public static const CHANGE_BTN:String = §0$N§.§%! §("CHANGE_BTN");
      
      public static const FILLED_INCORRECTLY:String = §%! §("FILLED_INCORRECTLY");
      
      public static const BOSS_COOP_TITLE:String = §%! §("BOSS_COOP_TITLE");
      
      public static const RANDOM_WEAPON_HINT:String = §%! §("RANDOM_WEAPON_HINT");
      
      public static const CLAN_OP_TITLE_EXPAND_CAPACITY:String = §%! §("CLAN_OP_TITLE_EXPAND_CAPACITY");
      
      public static const CLAN_OP_TITLE_CHANGE_DESCRIPTION:String = §%! §("CLAN_OP_TITLE_CHANGE_DESCRIPTION");
      
      public static const CLAN_OP_TITLE_CHANGE_EMBLEM:String = §%! §("CLAN_OP_TITLE_CHANGE_EMBLEM");
      
      public static const CLAN_OP_TITLE_RENAME:String = §%! §("CLAN_OP_TITLE_RENAME");
      
      public static const CLAN_OP_TITLE_DEFAULT:String = §%! §("CLAN_OP_TITLE_DEFAULT");
      
      public static const CALL_REINFORCEMENTS_USELESS:String = §%! §("CALL_REINFORCEMENTS_USELESS");
      
      public static const ATTRIBUTES_BONUS:String = §%! §("ATTRIBUTES_BONUS");
      
      public static const ENEMY:String = §%! §("ENEMY");
      
      public static const PUSHING_MINE_USELESS:String = §0$N§.§%! §("PUSHING_MINE_USELESS");
      
      public static const PUSHING_MINE_GROUND_SETUP:String = §0$N§.§%! §("PUSHING_MINE_GROUND_SETUP");
      
      public static const PUSHING_MINE_UNIT_SETUP:String = §0$N§.§%! §("PUSHING_MINE_UNIT_SETUP");
      
      public static const GLADIATOR_CHEST_DESCRIPTION:String = §0$N§.§%! §("GLADIATOR_CHEST_DESCRIPTION");
      
      public static const GLADIATOR_COMPLETE_DESCRIPTION:String = §0$N§.§%! §("GLADIATOR_COMPLETE_DESCRIPTION");
      
      public static const GLADIATOR_AWARD_DESCRIPTION:String = §0$N§.§%! §("GLADIATOR_AWARD_DESCRIPTION");
      
      public static const DEFEAT_LABEL:String = §0$N§.§%! §("DEFEAT_LABEL");
      
      public static const WIN_LABEL:String = §0$N§.§%! §("WIN_LABEL");
      
      public static const GLADIATOR_MENU_TITLE:String = §0$N§.§%! §("GLADIATOR_MENU_TITLE");
      
      public static const GLADIATOR_TEAM_NOTIFY:String = §0$N§.§%! §("GLADIATOR_TEAM_NOTIFY");
      
      public static const GLADIATOR_DEFEAT_BUTTON_HINT:String = §%! §("GLADIATOR_DEFEAT_BUTTON_HINT");
      
      public static const BUTTON_SELECT_ALL:String = §0$N§.§%! §("BUTTON_SELECT_ALL");
      
      public static const BUTTON_RESET_ARMOR_ATTACK:String = §%! §("BUTTON_RESET_ARMOR_ATTACK");
      
      public static const COLISEUM_ERROR:String = §%! §("COLISEUM_ERROR");
      
      public static const COLISEUM_ERROR_CLOSED:String = §%! §("COLISEUM_ERROR_CLOSED");
      
      public static const COLISEUM_ERROR_TEAM_FULL:String = §%! §("COLISEUM_ERROR_TEAM_FULL");
      
      public static const COLISEUM_ERROR_INVALID_INDEX:String = §%! §("COLISEUM_ERROR_INVALID_INDEX");
      
      public static const COLISEUM_ERROR_ALREADY_OPEN:String = §%! §("COLISEUM_ERROR_ALREADY_OPEN");
      
      public static const COLISEUM_ERROR_NO_TICKET:String = §%! §("COLISEUM_ERROR_NO_TICKET");
      
      public static const COLISEUM_PRIMETIME_MSG:String = §%! §("COLISEUM_PRIMETIME_MSG");
      
      public static const TIME_IN_MSG:String = §%! §("TIME_IN_MSG");
      
      public static const COUNT_ITEMS:String = §%! §("COUNT_ITEMS");
      
      public static const §[#e§:String = §%! §("TAB_CLAN_ACTIVITY");
      
      public static const CLAN_CREATED:String = §%! §("CLAN_CREATED");
      
      public static const CLAN_DELETED:String = §%! §("CLAN_DELETED");
      
      public static const CLAN_HISTORY_HEADER:String = §%! §("CLAN_HISTORY_HEADER");
      
      public static const CLAN_NO_ACTIVITY_THIS_MONTH:String = §%! §("CLAN_NO_ACTIVITY_THIS_MONTH");
      
      public static const RESURRECTION_FLASK_USELESS:String = §0$N§.§%! §("RESURRECTION_FLASK_USELESS");
      
      public static const NO_NEARBY_ALLIES:String = §0$N§.§%! §("NO_NEARBY_ALLIES");
      
      public static const ALREADY_ACTIVE_UNIT:String = §0$N§.§%! §("ALREADY_ACTIVE_UNIT");
      
      public static const OPEN_SPACE_DEVICE_USELESS:String = §0$N§.§%! §("OPEN_SPACE_DEVICE_USELESS");
      
      public static const REQUIRED_OPEN_SPACE:String = §0$N§.§%! §("REQUIRED_OPEN_SPACE");
      
      public static const COOLDOWN_RESET_USELESS:String = §0$N§.§%! §("COOLDOWN_RESET_USELESS");
      
      public static const NOT_FOUND_UNITS_NEARBY:String = §0$N§.§%! §("NOT_FOUND_UNITS_NEARBY");
      
      public static const NO_NECESSARY_WEAPONS_IN_BAG:String = §0$N§.§%! §("NO_NECESSARY_WEAPONS_IN_BAG");
      
      public static const MOLE_USELESS:String = §0$N§.§%! §("MOLE_USELESS");
      
      public static const NO_NECESSARY_UNITS_IN_TEAMS:String = §0$N§.§%! §("NO_NECESSARY_UNITS_IN_TEAMS");
      
      public static const USAGE_LIMIT_ON_TURN_EXHAUSTED:String = §0$N§.§%! §("USAGE_LIMIT_ON_TURN_EXHAUSTED");
      
      public static const USAGE_LIMIT_CONSUMABLES_EXHAUSTED:String = §0$N§.§%! §("USAGE_LIMIT_CONSUMABLES_EXHAUSTED");
      
      public static const §?@§:String = §%! §("QUEST_DESCRIPTION_WINTER");
      
      public static const §!%1§:String = §%! §("QUEST_DESCRIPTION_MORE_WINTER");
      
      public static const §&%§:String = §%! §("QUEST_SUBTITLE_WINTER");
      
      public static const §]"r§:String = §%! §("QUEST_GIFT_NOTIFY_WINTER");
      
      public static const QUEST_GIFT_TEXT1:String = §%! §("QUEST_GIFT_TEXT1_WINTER");
      
      public static const QUEST_GIFT_TEXT2:String = §%! §("QUEST_GIFT_TEXT2_WINTER");
      
      public static const §&#-§:String = §%! §("QUEST_GIFT_TOMORROW_WINTER");
      
      public static const MERCS_QUEST_BUILD_TEAM:String = §%! §("MERCS_QUEST_BUILD_TEAM");
      
      public static const MERCS_QUEST_TEAM_LABEL:String = §%! §("MERCS_QUEST_TEAM_LABEL");
      
      public static const MERCS_QUEST_TIME_LEFT:String = §%! §("MERCS_QUEST_TIME_LEFT");
      
      public static const MERCS_QUEST_LAST_DAY:String = §%! §("MERCS_QUEST_LAST_DAY");
      
      public static const MERCS_QUEST_OPEN:String = §%! §("MERCS_QUEST_OPEN");
      
      public static const MERCS_QUEST_BATTLE_COINS:String = §%! §("MERCS_QUEST_BATTLE_COINS");
      
      public static const MERCS_QUEST_BUY_DIALOG_DESCRIPTION:String = §%! §("MERCS_QUEST_BUY_DIALOG_DESCRIPTION");
      
      public static const MERCS_QUEST_PROGRESS_DESCRIPTION:String = §%! §("MERCS_QUEST_PROGRESS_DESCRIPTION");
      
      public static const MERCS_QUEST_BUILD_TEAM_HEADER:String = §%! §("MERCS_QUEST_BUILD_TEAM_HEADER");
      
      public static const MERCS_QUEST_BUILD_TEAM_DESCRIPTION:String = §%! §("MERCS_QUEST_BUILD_TEAM_DESCRIPTION");
      
      public static const MERCS_QUEST_CHAR_PARAMS:String = §%! §("MERCS_QUEST_CHAR_PARAMS");
      
      public static const MERCS_QUEST_PICK_UNIT:String = §%! §("MERCS_QUEST_PICK_UNIT");
      
      public static const MERCS_QUEST_REMOVE_UNIT:String = §%! §("MERCS_QUEST_REMOVE_UNIT");
      
      public static const MERCS_QUEST_PLAYERS_TEAM:String = §%! §("MERCS_QUEST_PLAYERS_TEAM");
      
      public static const MERCS_QUEST_TEAM_READY:String = §%! §("MERCS_QUEST_TEAM_READY");
      
      public static const MERCS_QUEST_GIFT_WIN:String = §%! §("MERCS_QUEST_GIFT_WIN");
      
      public static const MERCS_QUEST_GIFT_LOSE:String = §%! §("MERCS_QUEST_GIFT_LOSE");
      
      public static const MERCS_QUEST_NO_MORE_BATTLES:String = §%! §("MERCS_QUEST_NO_MORE_BATTLES");
      
      public static const CALL_ON_ACTION_MODE:String = §%! §("CALL_ON_ACTION_MODE");
      
      public static const RACE_QUEST_TITLE:String = §%! §("RACE_QUEST_TITLE");
      
      public static const RACE_TRAINING_TITLE:String = §%! §("RACE_TRAINING_TITLE");
      
      public static const MERCS_QUEST_TITLE:String = §%! §("MERCS_QUEST_TITLE");
      
      public static const ACTION_QUEST_LABEL:String = §%! §("ACTION_QUEST_LABEL");
      
      public static const CHRISTMAS_BONUS_TITLE:String = §%! §("CHRISTMAS_BONUS_TITLE");
      
      public static const CHRISTMAS_BONUS_MESSAGE:String = §%! §("CHRISTMAS_BONUS_MESSAGE");
      
      public static const PRESS_SHIFT:String = §%! §("PRESS_SHIFT");
      
      public static const PLAYED_TOTAL:String = §%! §("PLAYED_TOTAL");
      
      public static const ACTION_TITLE:String = §%! §("ACTION_TITLE");
      
      public static const RACE_QUEST_PLAY_WITH_FRIEND:String = §%! §("RACE_QUEST_PLAY_WITH_FRIEND");
      
      public static const RACE_QUEST_CALL_FRIEND:String = §%! §("RACE_QUEST_CALL_FRIEND");
      
      public static const RACE_QUEST_OPEN_REWARD:String = §%! §("RACE_QUEST_OPEN_REWARD");
      
      public static const RACE_QUEST_NOT_REWARDED:String = §%! §("RACE_QUEST_NOT_REWARDED");
      
      public static const RACE_QUEST_REWARDED:String = §%! §("RACE_QUEST_REWARDED");
      
      public static const RACE_QUEST_REWARD_BTN_DISABLED:String = §%! §("RACE_QUEST_REWARD_BTN_DISABLED");
      
      public static const RACE_QUEST_GIFT_WIN:String = §%! §("RACE_QUEST_GIFT_WIN");
      
      public static const RACE_QUEST_HINT:String = §%! §("RACE_QUEST_HINT");
      
      public static const BUY_BATTLE_TOKENS_DESCRIPTION_NO_BATTLES:String = §%! §("BUY_BATTLE_TOKENS_DESCRIPTION_NO_BATTLES");
      
      public static const BUY_BATTLE_TOKENS_OFFER_NO_BATTLES:String = §%! §("BUY_BATTLE_TOKENS_OFFER_NO_BATTLES");
      
      public static const BUY_BATTLE_TOKENS_DESCRIPTION:String = §%! §("BUY_BATTLE_TOKENS_DESCRIPTION");
      
      public static const BUY_BATTLE_TOKENS_OFFER:String = §%! §("BUY_BATTLE_TOKENS_OFFER");
      
      public static const BATTLE_TOKENS_RESTORES:String = §%! §("BATTLE_TOKENS_RESTORES");
      
      public static const BATTLE_TOKENS:String = §%! §("BATTLE_TOKENS");
      
      public static const WAGER_TOKENS:String = §%! §("WAGER_TOKENS");
      
      public static const WAGER_TOKEN:String = §%! §("WAGER_TOKEN");
      
      public static const BOSS_TOKENS:String = §%! §("BOSS_TOKENS");
      
      public static const BOSS_TOKEN:String = §%! §("BOSS_TOKEN");
      
      public static const SUPERBOSS_TOKENS:String = §%! §("SUPERBOSS_TOKENS");
      
      public static const SUPERBOSS_TOKEN:String = §%! §("SUPERBOSS_TOKEN");
      
      public static const GLADIATOR_TOKENS:String = §%! §("GLADIATOR_TOKENS");
      
      public static const GLADIATOR_TOKEN:String = §%! §("GLADIATOR_TOKEN");
      
      public static const BATTLE_TOKENS_TEXT:String = §%! §("BATTLE_TOKENS_TEXT");
      
      public static const WAGER_TOKENS_TEXT:String = §%! §("WAGER_TOKENS_TEXT");
      
      public static const BOSS_TOKENS_TEXT:String = §%! §("BOSS_TOKENS_TEXT");
      
      public static const SUPERBOSS_TOKENS_TEXT:String = §%! §("SUPERBOSS_TOKENS_TEXT");
      
      public static const GLADIATOR_TOKENS_TEXT:String = §%! §("GLADIATOR_TOKENS_TEXT");
      
      public static const FREE_BATTLE_TOKENS:String = §%! §("FREE_BATTLE_TOKENS");
      
      public static const ONE_TOKEN_RESTORE:String = §%! §("ONE_TOKEN_RESTORE");
      
      public static const ALL_TOKENS_EXPIRE:String = §%! §("ALL_TOKENS_EXPIRE");
      
      public static const CHRISTMASS_KEY:String = §%! §("CHRISTMASS_KEY");
      
      public static const SEASON_WEAPONS:String = §%! §("SEASON_WEAPONS");
      
      public static const CURRENT_SEASON_ITEMS:String = §%! §("CURRENT_SEASON_ITEMS");
      
      public static const SEASON_ITEMS_MEANS:String = §%! §("SEASON_ITEMS_MEANS");
      
      public static const CAN_NOT_PLACE_DEVICE:String = §%! §("CAN_NOT_PLACE_DEVICE");
      
      public static const WEAPONS_COOLDOWNS:String = §%! §("WEAPONS_COOLDOWNS");
      
      public static const REMOVE_WEAPONS_COOLDOWNS_HINT:String = §%! §("REMOVE_WEAPONS_COOLDOWNS_HINT");
      
      public static const BATTLE_RESULT_WAITING:String = §%! §("BATTLE_RESULT_WAITING");
      
      public static const QUEST_REWARD_ERROR:String = §%! §("QUEST_REWARD_ERROR");
      
      public static const ADRENALINE_BUFFED:String = §%! §("ADRENALINE_BUFFED");
      
      public static const SPEED_DEBUFFED:String = §%! §("SPEED_DEBUFFED");
      
      public static const IMMOBILITY_DEBUFFED:String = §%! §("IMMOBILITY_DEBUFFED");
      
      public static const FREEZE_DEBUFFED:String = §%! §("FREEZE_DEBUFFED");
      
      public static const POISON_DEBUFFED:String = §%! §("POISON_DEBUFFED");
      
      public static const THEIF_ATTACK_DEBUFFED:String = §%! §("THEIF_ATTACK_DEBUFFED");
      
      public static const POISON_DEFENCE_REDUCTION_DEBUFFED:String = §%! §("POISON_DEFENCE_REDUCTION_DEBUFFED");
      
      public static const ANTIDODGE_DEBUFFED:String = §%! §("ANTIDODGE_DEBUFFED");
      
      public static const ANTIHEAL_DEBUFFED:String = §%! §("ANTIHEAL_DEBUFFED");
      
      public static const ITEM_DISPLACEMENT_DEBUFFED:String = §%! §("ITEM_DISPLACEMENT_DEBUFFED");
      
      public static const RACE_SWAP_BUFFED:String = §%! §("RACE_SWAP_BUFFED");
      
      public static const SHARPCLAWS_DEBUFFED:String = §%! §("SHARPCLAWS_DEBUFFED");
      
      public static const ANTIPOISON_BUFFED:String = §%! §("ANTIPOISON_BUFFED");
      
      public static const POISONING_REDUC_DEC_DEBUFFED:String = §%! §("POISONING_REDUC_DEC_DEBUFFED");
      
      public static const COUNT_TURNS:String = §%! §("COUNT_TURNS");
      
      public static const WEAPON_IMPROVE_NEED:String = §%! §("WEAPON_IMPROVE_NEED");
      
      public static const WEAPON_MAX_IMPROVE_PRICE:String = §%! §("WEAPON_MAX_IMPROVE_PRICE");
      
      public static const FULL_PRICE_WEAPON_IMPROVE:String = §%! §("FULL_PRICE_WEAPON_IMPROVE");
      
      public static const VIP_FREE_CHANGE_RACE:String = §%! §("VIP_FREE_CHANGE_RACE");
      
      public static const VIP_FREE_SELECT_RACE:String = §%! §("VIP_FREE_SELECT_RACE");
      
      public static const VIP_TOKENS_RESTORE_FAST:String = §%! §("VIP_TOKENS_RESTORE_FAST");
      
      public static const VIP_FREE_RESET_AWARD_ACHIEVE:String = §%! §("VIP_FREE_RESET_AWARD_ACHIEVE");
      
      public static const RACE_OPERATE_LABEL:String = §%! §("RACE_OPERATE_LABEL");
      
      public static const SKIN_OPERATE_LABEL:String = §%! §("SKIN_OPERATE_LABEL");
      
      public static const COLOR_GREEN_ACCUS:String = §%! §("COLOR_GREEN_ACCUS");
      
      public static const COLOR_RED_ACCUS:String = §%! §("COLOR_RED_ACCUS");
      
      public static const COLOR_YELLOW_ACCUS:String = §%! §("COLOR_YELLOW_ACCUS");
      
      public static const COLOR_BLUE_ACCUS:String = §%! §("COLOR_BLUE_ACCUS");
      
      public static const COLOR_ORANGE_ACCUS:String = §%! §("COLOR_ORANGE_ACCUS");
      
      public static const COLOR_UNKNOWN_ACCUS:String = §%! §("COLOR_UNKNOWN_ACCUS");
      
      public static const COLOR_GREEN_GEN:String = §%! §("COLOR_GREEN_GEN");
      
      public static const COLOR_RED_GEN:String = §%! §("COLOR_RED_GEN");
      
      public static const COLOR_YELLOW_GEN:String = §%! §("COLOR_YELLOW_GEN");
      
      public static const COLOR_BLUE_GEN:String = §%! §("COLOR_BLUE_GEN");
      
      public static const COLOR_ORANGE_GEN:String = §%! §("COLOR_ORANGE_GEN");
      
      public static const COLOR_UNKNOWN_GEN:String = §%! §("COLOR_UNKNOWN_GEN");
      
      public static const MEMBER_IS_ACTIVE:String = §%! §("MEMBER_IS_ACTIVE");
      
      public static const BATTLE_REQUEST_ATTEMPT:String = §%! §("BATTLE_REQUEST_ATTEMPT");
      
      public static const SETS_INFO_TITLE:String = §%! §("SETS_INFO_TITLE");
      
      public static const SETS_INFO_SUBTITLE:String = §%! §("SETS_INFO_SUBTITLE");
      
      public static const SETS_INFO_SUBTITLE2:String = §%! §("SETS_INFO_SUBTITLE2");
      
      public static const SETS_INFO_DESC:String = §%! §("SETS_INFO_DESC");
      
      public static const SETS_INFO_HINT:String = §%! §("SETS_INFO_HINT");
      
      public static const TOURNAMENT_INFO_TITLE:String = §%! §("TOURNAMENT_INFO_TITLE");
      
      public static const TOURNAMENT_INFO_MSG:String = §%! §("TOURNAMENT_INFO_MSG");
      
      public static const BUNDLE_PART_COMPENSATION:String = §%! §("BUNDLE_PART_COMPENSATION");
      
      public static const ARTIFACT_NOT_SAVED:String = §%! §("ARTIFACT_NOT_SAVED");
      
      public static const HAT_NOT_SAVED:String = §%! §("HAT_NOT_SAVED");
      
      public static const TRANSFER_PROFILE_TITLE:String = §%! §("TRANSFER_PROFILE_TITLE");
      
      public static const TRANSFER_PROFILE_SOCIAL_SELECT:String = §%! §("TRANSFER_PROFILE_SOCIAL_SELECT");
      
      public static const TRANSFER_FROM_VK:String = §%! §("TRANSFER_FROM_VK");
      
      public static const TRANSFER_FROM_OK:String = §%! §("TRANSFER_FROM_OK");
      
      public static const TRANSFER_FROM_MM:String = §%! §("TRANSFER_FROM_MM");
      
      public static const TRANSFER_PROFILE_MSG:String = §%! §("TRANSFER_PROFILE_MSG");
      
      public static const TRANSFER_PROFILE_MSG2:String = §%! §("TRANSFER_PROFILE_MSG2");
      
      public static const TRANSFER_PROFILE_LEADER:String = §%! §("TRANSFER_PROFILE_LEADER");
      
      public static const TRANSFER_PROFILE_UNAVAILABLE:String = §%! §("TRANSFER_PROFILE_UNAVAILABLE");
      
      public static const AGREE:String = §%! §("AGREE");
      
      public static const SUBSCRIPTION_ACTIVE:String = §%! §("SUBSCRIPTION_ACTIVE");
      
      public static const INIVTE_TO_CLAN_POPUP_MENU_ITEM:String = §%! §("INIVTE_TO_CLAN_POPUP_MENU_ITEM");
      
      public static const SHOW_CLAN_INFO_BTN:String = §%! §("SHOW_CLAN_INFO_BTN");
      
      public static const USER_ID:String = §%! §("USER_ID");
      
      public static const GAMER_ID:String = §%! §("GAMER_ID");
      
      public static const BOT_KING_DEAD_MINION:String = §%! §("BOT_KING_DEAD_MINION");
      
      public static const ALIEN_AVAILABLE_ON_VIP:String = §%! §("ALIEN_AVAILABLE_ON_VIP");
      
      public static const §6#[§:String = §%! §("TURRET.NAME");
      
      public static const INTERFERENCES_FROM_TURRETS:String = §%! §("INTERFERENCES_FROM_TURRETS");
      
      public static const NOT_ENOUGH_UNITS_FOR_TELEPORT:String = §%! §("NOT_ENOUGH_UNITS_FOR_TELEPORT");
      
      public static const WATER_CLOSE_TABU:String = §%! §("WATER_CLOSE_TABU");
      
      public static const ACTION_IMPOSSIBLE:String = §%! §("ACTION_IMPOSSIBLE");
      
      public static const NUCLEAR_LAUNCH_DETECTED:String = §%! §("NUCLEAR_LAUNCH_DETECTED");
      
      public static const PIRANHA_LAUNCH_DETECTED:String = §%! §("PIRANHA_LAUNCH_DETECTED");
      
      public static const NO_CHRISTMAS_GIFTS:String = §%! §("NO_CHRISTMAS_GIFTS");
      
      public static const MORE_BUNDLES:String = §%! §("MORE_BUNDLES");
      
      public static const ZONE_ACTIVATED:String = §%! §("ZONE_ACTIVATED");
      
      public static const RED_ZONE_ACTIVATED:String = §%! §("RED_ZONE_ACTIVATED");
      
      public static const APOCALYPSE_NOW:String = §%! §("APOCALYPSE_NOW");
      
      public static const FLOODING_COMING_SOON:String = §%! §("FLOODING_COMING_SOON");
      
      public static const WATER_LEVEL_DECREASE_COMING_SOON:String = §%! §("WATER_LEVEL_DECREASE_COMING_SOON");
      
      public static const WATER_LEVEL_INCREASE_COMING_SOON:String = §%! §("WATER_LEVEL_INCREASE_COMING_SOON");
      
      public static const FLOODING_WILL_BEGIN:String = §%! §("FLOODING_WILL_BEGIN");
      
      public static const WATER_DECREASE_WILL_BEGIN:String = §%! §("WATER_DECREASE_WILL_BEGIN");
      
      public static const WATER_INCREASE_WILL_BEGIN:String = §%! §("WATER_INCREASE_WILL_BEGIN");
      
      public static const FLOODING_WILL_END:String = §%! §("FLOODING_WILL_END");
      
      public static const WATER_DECREASE_WILL_END:String = §%! §("WATER_DECREASE_WILL_END");
      
      public static const WATER_INCREASE_WILL_END:String = §%! §("WATER_INCREASE_WILL_END");
      
      public static const FLOODING_NOW:String = §%! §("FLOODING_NOW");
      
      public static const WATER_DECREASE_NOW:String = §%! §("WATER_DECREASE_NOW");
      
      public static const WATER_INCREASE_NOW:String = §%! §("WATER_INCREASE_NOW");
      
      public static const FLOODING_STOP:String = §%! §("FLOODING_STOP");
      
      public static const WATER_DECREASE_STOP:String = §%! §("WATER_DECREASE_STOP");
      
      public static const WATER_INCREASE_STOP:String = §%! §("WATER_INCREASE_STOP");
      
      public static const NOVELTY:String = §%! §("NOVELTY");
      
      public static const HOLIDAY_POWERED:String = §%! §("HOLIDAY_POWERED");
      
      public static const POWERED:String = §%! §("POWERED");
      
      public static const POWERED_MALE:String = §%! §("POWERED_MALE");
      
      public static const SALE_PRICE:String = §%! §("SALE_PRICE");
      
      public static const SPECIAL_PRICE:String = §%! §("SPECIAL_PRICE");
      
      public static const NEED_LEVEL:String = §%! §("NEED_LEVEL");
      
      public static const ITEM_TOBE_PRESENT:String = §%! §("ITEM_TOBE_PRESENT");
      
      public static const ONE_LEVEL_ITEM_TOBE_PRESENT:String = §%! §("ONE_LEVEL_ITEM_TOBE_PRESENT");
      
      public static const EQUIP_STACKING_NOTIFY:String = §%! §("EQUIP_STACKING_NOTIFY");
      
      public static const BUNDLE_TIME_REMAINING:String = §%! §("BUNDLE_TIME_REMAINING");
      
      public static const BUNDLE_REMAINING_LAST_DAY:String = §%! §("BUNDLE_REMAINING_LAST_DAY");
      
      public static const §%"a§:String = §%! §("BUNDLE.SAVE");
      
      public static const §"%p§:String = §%! §("BUNDLE.CONTENT");
      
      public static const §+%j§:String = §%! §("BONUS.WATER_PROTECTION_FIRST_ACT");
      
      public static const LEGENDARY_ITEM_FIRST_ACT:String = §%! §("BONUS.LEGENDARY_ITEM_FIRST_ACT");
      
      public static const EPIC_ITEM_FIRST_ACT:String = §%! §("BONUS.EPIC_ITEM_FIRST_ACT");
      
      public static const §1"`§:String = §%! §("BONUS.POISONING_ADDITION");
      
      public static const §81§:String = §%! §("BONUS.POISONING_REDUCTION");
      
      public static const §1!X§:String = §%! §("BONUS.REPELL");
      
      public static const §9%h§:String = §%! §("BONUS.IMMOBILITY_ADDITION");
      
      public static const §3!e§:String = §%! §("BONUS.IMMOBILITY_REDUCTION");
      
      public static const §["E§:String = §%! §("BONUS.WATER_PROTECTION");
      
      public static const §3!K§:String = §%! §("BONUS.REACTION_REDUCTION");
      
      public static const §'$b§:String = §%! §("BONUS.REACTION_ADDITION");
      
      public static const §`&"§:String = §%! §("BONUS.HAM_HEAL");
      
      public static const BONUS_HAM_HEAL05:String = §%! §("BONUS.HAM_HEAL05");
      
      public static const BONUS_HAM_HEAL06:String = §%! §("BONUS.HAM_HEAL06");
      
      public static const §`$z§:String = §%! §("BONUS.WATER_BREATH");
      
      public static const §!"a§:String = §%! §("BONUS.POISON_DEFENSE");
      
      public static const §4$w§:String = §%! §("BONUS.MIGHTY_JUMP");
      
      public static const WEAPON_COOLDOWN_NEXT:String = §%! §("WEAPON_COOLDOWN_NEXT");
      
      public static const WEAPON_FIRST_DELAY:String = §%! §("WEAPON_FIRST_DELAY");
      
      public static const WEAPON_COOLDOWN_BETWEEN:String = §%! §("WEAPON_COOLDOWN_BETWEEN");
      
      public static const FALL_DAMAGE_WARNING:String = §%! §("FALL_DAMAGE_WARNING");
      
      public static const §[%-§:String = §%! §("PREFIX.LEGENDARY");
      
      public static const §<!E§:String = §%! §("PREFIX.EPIC");
      
      public static const §7A§:String = §%! §("PREFIX.VIOLENT");
      
      public static const §>%0§:String = §%! §("PREFIX.AGGRESSIVE");
      
      public static const §&!B§:String = §%! §("PREFIX.SUPERIOR");
      
      public static const §?"M§:String = §%! §("PREFIX.NORMAL");
      
      public static const §%&H§:String = §%! §("PREFIX.LEGENDARY.FEMININE");
      
      public static const §=#S§:String = §%! §("PREFIX.EPIC.FEMININE");
      
      public static const §;!k§:String = §%! §("PREFIX.VIOLENT.FEMININE");
      
      public static const §-"b§:String = §%! §("PREFIX.AGGRESSIVE.FEMININE");
      
      public static const §8$U§:String = §%! §("PREFIX.SUPERIOR.FEMININE");
      
      public static const §&$B§:String = §%! §("PREFIX.NORMAL.FEMININE");
      
      public static const §+i§:String = §%! §("PREFIX.LEGENDARY.NEUTER");
      
      public static const §6!E§:String = §%! §("PREFIX.EPIC.NEUTER");
      
      public static const §7%t§:String = §%! §("PREFIX.VIOLENT.NEUTER");
      
      public static const §8&7§:String = §%! §("PREFIX.AGGRESSIVE.NEUTER");
      
      public static const §#&!§:String = §%! §("PREFIX.SUPERIOR.NEUTER");
      
      public static const §8!j§:String = §%! §("PREFIX.NORMAL.NEUTER");
      
      public static const §&!I§:String = §%! §("PREFIX.SET_ITEMS");
      
      public static const §]%o§:String = §%! §("PREFIX.ANTISET_ITEMS");
      
      public static const PVP_SERVER_INCORRECT_BATTLE_NUMBER:String = §%! §("PVP_SERVER_INCORRECT_BATTLE_NUMBER");
      
      public static const PVP_SERVER_BATTLE_CREATION_TIMEOUT:String = §%! §("PVP_SERVER_BATTLE_CREATION_TIMEOUT");
      
      public static const PVP_SERVER_BANNED:String = §%! §("PVP_SERVER_BANNED");
      
      public static const RECONNECT_TIMEOUT:String = §%! §("RECONNECT_TIMEOUT");
      
      public static const INCORRECT_PROTOCOL_VERSION:String = §%! §("INCORRECT_PROTOCOL_VERSION");
      
      public static const SERVER_RECONNECTION_TRY:String = §%! §("SERVER_RECONNECTION_TRY");
      
      public static const ALREADY_IN_GAME_LOGIN_TRYING_LIMIT_OUT:String = §%! §("ALREADY_IN_GAME_LOGIN_TRYING_LIMIT_OUT");
      
      public static const ERR_SOCIAL_ID:String = §%! §("ERR_SOCIAL_ID");
      
      public static const MAP_CAPACITY_FOR_JOIN_CLAN:String = §%! §("MAP_CAPACITY_FOR_JOIN_CLAN");
      
      public static const ERR_INVITE_ALREADY_PASSED:String = §%! §("ERR_INVITE_ALREADY_PASSED");
      
      public static const LIGHT_VERSION:String = §%! §("LIGHT_VERSION");
      
      public static const SCRIPT_WEAPON_DELAY_REDUCED:String = §%! §("SCRIPT_WEAPON_DELAY_REDUCED");
      
      public static const SCRIPT_WATER_PROTECTION_INFO:String = §%! §("SCRIPT_WATER_PROTECTION_INFO");
      
      public static const SCRIPT_WATER_PROTECTION_OFF:String = §%! §("SCRIPT_WATER_PROTECTION_OFF");
      
      public static const HEROIC_BOSSES_DIFFICULTY_EASY:String = §%! §("HEROIC_BOSSES_DIFFICULTY_EASY");
      
      public static const HEROIC_BOSSES_DIFFICULTY_MEDIUM:String = §%! §("HEROIC_BOSSES_DIFFICULTY_MEDIUM");
      
      public static const HEROIC_BOSSES_DIFFICULTY_HARD:String = §%! §("HEROIC_BOSSES_DIFFICULTY_HARD");
      
      public static const HEROIC_BOSSES_DIFFICULTY_INSANE:String = §%! §("HEROIC_BOSSES_DIFFICULTY_INSANE");
      
      public static const CRAFT_DISABLE_QTIP:String = §%! §("CRAFT_DISABLE_QTIP");
      
      public static const ARMORY_BTN:String = §%! §("ARMORY_BTN");
      
      public static const SHOP_BTN:String = §%! §("SHOP_BTN");
      
      public static const ARENA_BTN:String = §%! §("ARENA_BTN");
      
      public static const PROBLEMS_WITH_CONNECTION:String = §%! §("PROBLEMS_WITH_CONNECTION");
      
      public static const CONNECTION_IS_OK:String = §%! §("CONNECTION_IS_OK");
      
      public static const TOP_RATING_REWARD_COMMON_MESSAGE:String = §%! §("TOP_RATING_REWARD_COMMON_MESSAGE");
      
      public static const WALL_POST_TOP_RATING_REWARD_COMMON:String = §%! §("WALL_POST_TOP_RATING_REWARD_COMMON");
      
      public static const TOP_RATING_REWARD_WAGER_MESSAGE:String = §%! §("TOP_RATING_REWARD_WAGER_MESSAGE");
      
      public static const WALL_POST_TOP_RATING_REWARD_WAGER:String = §%! §("WALL_POST_TOP_RATING_REWARD_WAGER");
      
      public static const CONGRATULATION_TITLE:String = §%! §("CONGRATULATION_TITLE");
      
      public static const BONUS_HEROIC_TEXT:String = §%! §("BONUS_HEROIC_TEXT");
      
      public static const USE_WEAPONS_TEXT:String = §%! §("USE_WEAPONS_TEXT");
      
      public static const CHOOSE_FRIEND_FOR_BOSS_TITLE:String = §%! §("CHOOSE_FRIEND_FOR_BOSS_TITLE");
      
      public static const FRIENDS_TITLE:String = §%! §("FRIENDS_TITLE");
      
      public static const RANDOM_PARTNER:String = §%! §("RANDOM_PARTNER");
      
      public static const RESET_AWARD_ACHIEV_ATTENTION:String = §%! §("RESET_AWARD_ACHIEV_ATTENTION");
      
      public static const TITLE_RESET_AWARD_ACHIEV:String = §%! §("TITLE_RESET_AWARD_ACHIEV");
      
      public static const NOT_TAKEN_AWARD_FOR_ACHIEV:String = §%! §("NOT_TAKEN_AWARD_FOR_ACHIEV");
      
      public static const RESET_AWARD_ACHIEV_BTN_QTIP:String = §%! §("RESET_AWARD_ACHIEV_BTN_QTIP");
      
      public static const PVP_IGNORE_MODE_ON:String = §%! §("PVP_IGNORE_MODE_ON");
      
      public static const PVP_IGNORE_MODE_OFF:String = §%! §("PVP_IGNORE_MODE_OFF");
      
      public static const VERSION:String = §%! §("VERSION");
      
      public static const QUEST_ACCESS_LEVEL_MESSAGE:String = §%! §("QUEST_ACCESS_LEVEL_MESSAGE");
      
      public static const QUEST_THEEND_WINTER:String = §%! §("QUEST_THEEND_WINTER");
      
      public static const MERCS_QUEST_THEEND:String = §%! §("MERCS_QUEST_THEEND");
      
      public static const RACE_QUEST_THEEND:String = §%! §("RACE_QUEST_THEEND");
      
      public static const ACTION_QUEST_THEEND:String = §%! §("ACTION_QUEST_THEEND");
      
      public static const REAGENT_DEMAND:String = §%! §("REAGENT_DEMAND");
      
      public static const GRADE_S_DEMAND:String = §%! §("GRADE_S_DEMAND");
      
      public static const BADGE:String = §%! §("BADGE");
      
      public static const SEASON_WEAPON_COMPENSATED:String = §%! §("SEASON_WEAPON_COMPENSATED");
      
      public static const SEASON_WEAPON_COMPENSATION:String = §%! §("SEASON_WEAPON_COMPENSATION");
      
      public static const OPEN_UPGRADES:String = §%! §("OPEN_UPGRADES");
      
      public static const NEWS_SUBTITLE:String = §%! §("NEWS_SUBTITLE");
      
      public static const §<"E§:String = §%! §("VIP.STACKING_NOTIFY");
      
      public static const §`#7§:String = §%! §("BOOSTER.REACTION_STACKING_NOTIFY");
      
      public static const NEXT_RELEASE_TIME_LEFT:String = §%! §("NEXT_RELEASE_TIME_LEFT");
      
      public static const NEXT_RELEASE_IS_COMING:String = §%! §("NEXT_RELEASE_IS_COMING");
      
      public static const AVAILABLE_PANEL_DESCRIPTION:String = §%! §("AVAILABLE_PANEL_DESCRIPTION");
      
      public static const BOSS_PROMPT_UNAVAILABLE:String = §%! §("BOSS_PROMPT_UNAVAILABLE");
      
      public static const TITLE_HEROIC_BOSSES_PANEL:String = §%! §("TITLE_HEROIC_BOSSES_PANEL");
      
      public static const HEROIC_EXTRA_BONUS_DESCRIPTION:String = §%! §("HEROIC_EXTRA_BONUS_DESCRIPTION");
      
      public static const UNAVAILABLE_PANEL_TITLE:String = §%! §("UNAVAILABLE_PANEL_TITLE");
      
      public static const UNAVAILABLE_PANEL_DESCRIPTION_1:String = §%! §("UNAVAILABLE_PANEL_DESCRIPTION_1");
      
      public static const UNAVAILABLE_PANEL_DESCRIPTION_2:String = §%! §("UNAVAILABLE_PANEL_DESCRIPTION_2");
      
      public static const ZOMBIE_RISING_PROMPT:String = §%! §("ZOMBIE_RISING_PROMPT");
      
      public static const GAME_OVER_ZOMBIE_RISING_FAIL:String = §%! §("GAME_OVER_ZOMBIE_RISING_FAIL");
      
      public static const GAME_OVER_ZOMBIE_RISING_WIN:String = §%! §("GAME_OVER_ZOMBIE_RISING_WIN");
      
      public static const RACES_OVERVIEW_LABEL:String = §%! §("RACES_OVERVIEW_LABEL");
      
      public static const ALREADY_SELECTED_LABEL:String = §%! §("ALREADY_SELECTED_LABEL");
      
      public static const CAN_SELECT_LABEL:String = §%! §("CAN_SELECT_LABEL");
      
      public static const AVAILABLE_FOR_VIP:String = §%! §("AVAILABLE_FOR_VIP");
      
      public static const REINFORCEMENT_UNIT_NAME:String = §%! §("REINFORCEMENT_UNIT_NAME");
      
      public static const REFER_BONUS_AVAILABLE:String = §%! §("REFER_BONUS_AVAILABLE");
      
      public static const REGEN_CANDIDATES_QTIP:String = §%! §("REGEN_CANDIDATES_QTIP");
      
      public static const REGEN_CANDIDATES_QUESTION:String = §%! §("REGEN_CANDIDATES_QUESTION");
      
      public static const WIPE_TEAM_QTIP:String = §%! §("WIPE_TEAM_QTIP");
      
      public static const WIPE_TEAM_QUESTION:String = §%! §("WIPE_TEAM_QUESTION");
      
      public static const ENTER_TUTORIAL_QUESTION:String = §%! §("ENTER_TUTORIAL_QUESTION");
      
      public static const TUTORIAL_AVAILABLES:String = §%! §("TUTORIAL_AVAILABLES");
      
      public static const TEAM_CAPACITY:String = §%! §("TEAM_CAPACITY");
      
      public static const BACKPACK_CAPACITY:String = §%! §("BACKPACK_CAPACITY");
      
      public static const FOR_MISSIONS:String = §%! §("FOR_MISSIONS");
      
      public static const FOR_BOSSES:String = §%! §("FOR_BOSSES");
      
      public static const FOR_SUPERBOSSES:String = §%! §("FOR_SUPERBOSSES");
      
      public static const FOR_WAGER:String = §%! §("FOR_WAGER");
      
      public static const FOR_WAGERS:String = §%! §("FOR_WAGERS");
      
      public static const WITH_1_COUNT_UNIT:String = §%! §("WITH_1_COUNT_UNIT");
      
      public static const WITH_2_COUNT_UNIT:String = §%! §("WITH_2_COUNT_UNIT");
      
      public static const WITH_3_COUNT_UNIT:String = §%! §("WITH_3_COUNT_UNIT");
      
      public static const WITH_4_COUNT_UNIT:String = §%! §("WITH_4_COUNT_UNIT");
      
      public static const WITH_ANY_COUNT_UNITS:String = §%! §("WITH_ANY_COUNT_UNITS");
      
      public static const TURNS_COUNTER:String = §%! §("TURNS_COUNTER");
      
      public static const ROUNDS_COUNTER:String = §%! §("ROUNDS_COUNTER");
      
      public static const TAUNTS_TARGET:String = §%! §("TAUNTS_TARGET");
      
      public static const TAUNTS_SOURCE:String = §%! §("TAUNTS_SOURCE");
      
      public static const RACE_ZOMBIE_NAME:String = §%! §("RACE_ZOMBIE_NAME");
      
      public static const ARCTIC_WARRIOR_SUPPORT_NAME:String = §%! §("ARCTIC_WARRIOR_SUPPORT_NAME");
      
      public static const COMMANDER_ZOMBIE_NAME:String = §%! §("COMMANDER_ZOMBIE_NAME");
      
      public static const MASTER_REVENGE_ZOMBIE_NAME:String = §%! §("MASTER_REVENGE_ZOMBIE_NAME");
      
      public static const MASTER_FREEZE_ZOMBIE_NAME:String = §%! §("MASTER_FREEZE_ZOMBIE_NAME");
      
      public static const MASTER_TOXIC_ZOMBIE_NAME:String = §%! §("MASTER_TOXIC_ZOMBIE_NAME");
      
      public static const COMMANDER_REVIVE_ZOMBIE_NAME:String = §%! §("COMMANDER_REVIVE_ZOMBIE_NAME");
      
      public static const COMMANDER_MARCH_ZOMBIE_NAME:String = §%! §("COMMANDER_MARCH_ZOMBIE_NAME");
      
      public static const HUNGRY_ZOMBIE_NAME:String = §%! §("HUNGRY_ZOMBIE_NAME");
      
      public static const REVIVED_ZOMBIE_NAME:String = §%! §("REVIVED_ZOMBIE_NAME");
      
      public static const REVENGE_ZOMBIE_NAME:String = §%! §("REVENGE_ZOMBIE_NAME");
      
      public static const FREEZE_ZOMBIE_NAME:String = §%! §("FREEZE_ZOMBIE_NAME");
      
      public static const MARCH_ZOMBIE_NAME:String = §%! §("MARCH_ZOMBIE_NAME");
      
      public static const DRILL_ZOMBIE_NAME:String = §%! §("DRILL_ZOMBIE_NAME");
      
      public static const COMMANDER_DRILL_ZOMBIE_NAME:String = §%! §("COMMANDER_DRILL_ZOMBIE_NAME");
      
      public static const TOXIC_ZOMBIE_NAME:String = §%! §("TOXIC_ZOMBIE_NAME");
      
      public static const AQUALUNG_ZOMBIE_NAME:String = §%! §("AQUALUNG_ZOMBIE_NAME");
      
      public static const SUPER_AQUALUNG_ZOMBIE_NAME:String = §%! §("SUPER_AQUALUNG_ZOMBIE_NAME");
      
      public static const PUMPKIN_ZOMBIE_NAME:String = §%! §("PUMPKIN_ZOMBIE_NAME");
      
      public static const COMMANDER_PUMPKIN_ZOMBIE_NAME:String = §%! §("COMMANDER_PUMPKIN_ZOMBIE_NAME");
      
      public static const NOT_SANTA_ZOMBIE_NAME:String = §%! §("NOT_SANTA_ZOMBIE_NAME");
      
      public static const RADIOACTIVE_ZOMBIE_NAME:String = §%! §("RADIOACTIVE_ZOMBIE_NAME");
      
      public static const RADIOMASTER_ZOMBIE_NAME:String = §%! §("RADIOMASTER_ZOMBIE_NAME");
      
      public static const PROMOCODE:String = §%! §("PROMOCODE");
      
      public static const PROMOCODE_DESCR:String = §%! §("PROMOCODE_DESCR");
      
      public static const PROMOCODE_ERROR:String = §%! §("PROMOCODE_ERROR");
      
      public static const INVALID_AWARD_TYPE_ERROR:String = §%! §("INVALID_AWARD_TYPE_ERROR");
      
      public static const EMPTY_AWARD_ERROR:String = §%! §("EMPTY_AWARD_ERROR");
      
      public static const REFFERAL_BONUS_TEXT:String = §%! §("REFFERAL_BONUS_TEXT");
      
      public static const PROMOCODE_EXAMPLE:String = §%! §("PROMOCODE_EXAMPLE");
      
      public static const ENTER_PROMOCODE_PLEASE:String = §%! §("ENTER_PROMOCODE_PLEASE");
      
      public static const ENTER_PROMOCODE_VALID_PLEASE:String = §%! §("ENTER_PROMOCODE_VALID_PLEASE");
      
      public static const DOUBLE_CLICK_RESET_SETTINGS_GROUP:String = §%! §("DOUBLE_CLICK_RESET_SETTINGS_GROUP");
      
      public static const REFFERAL_BONUS_REQUIRED_TEXT:String = §%! §("REFFERAL_BONUS_REQUIRED_TEXT");
      
      public static const NOT_FITTABLE_MERC_NOTE:String = §%! §("NOT_FITTABLE_MERC_NOTE");
      
      public static const TIME_IS_OUT:String = §%! §("TIME_IS_OUT");
      
      public static const TARGETS_TOO_CLOSED:String = §%! §("TARGETS_TOO_CLOSED");
      
      public static const HOLIDAY_TITLE:String = §%! §("HOLIDAY_TITLE");
      
      public static const HOLIDAY_DESCR:String = §%! §("HOLIDAY_DESCR");
      
      public static const HOLIDAY_EVENT_TEXT:String = §%! §("HOLIDAY_EVENT_TEXT");
      
      public static const HALLOWEEN_EVENT_TITLE:String = §%! §("HALLOWEEN_EVENT_TITLE");
      
      public static const DAILY_TASKS:String = §%! §("DAILY_TASKS");
      
      public static const DAILY_TASKS_DAY_NUMBER:String = §%! §("DAILY_TASKS_DAY_NUMBER");
      
      public static const DAILY_TASKS_DAY_COOLDOWN:String = §%! §("DAILY_TASKS_DAY_COOLDOWN");
      
      public static const DAILY_TASKS_DAY_TIME_IS_OUT:String = §%! §("DAILY_TASKS_DAY_TIME_IS_OUT");
      
      public static const DAILY_TASKS_WEEK_TIME_IS_OUT:String = §%! §("DAILY_TASKS_WEEK_TIME_IS_OUT");
      
      public static const DAILY_TASKS_ERROR_LOAD:String = §%! §("DAILY_TASKS_ERROR_LOAD");
      
      public static const DAILY_TASKS_ACCESS:String = §%! §("DAILY_TASKS_ACCESS");
      
      public static const DAILY_TASKS_OPENED:String = §%! §("DAILY_TASKS_OPENED");
      
      public static const DAILY_TASKS_DESCR:String = §%! §("DAILY_TASKS_DESCR");
      
      public static const DAILY_TASKS_AVAILABLE:String = §%! §("DAILY_TASKS_AVAILABLE");
      
      public static const DAILY_TASKS_REWARD_READY_QTIP:String = §%! §("DAILY_TASKS_REWARD_READY_QTIP");
      
      public static const DAILY_TASKS_REWARD_UNLOCK_QTIP:String = §%! §("DAILY_TASKS_REWARD_UNLOCK_QTIP");
      
      public static const DAILY_TASKS_REWARD_EMPTY_QTIP:String = §%! §("DAILY_TASKS_REWARD_EMPTY_QTIP");
      
      public static const DAILY_TASKS_RESET_QTIP:String = §%! §("DAILY_TASKS_RESET_QTIP");
      
      public static const DAILY_TASKS_NEXT_PARAM_QTIP:String = §%! §("DAILY_TASKS_NEXT_PARAM_QTIP");
      
      public static const DAILY_TASKS_NEXT_DAY_QTIP:String = §%! §("DAILY_TASKS_NEXT_DAY_QTIP");
      
      public static const DAILY_TASK_REPLACE_SUCCESS:String = §%! §("DAILY_TASK_REPLACE_SUCCESS");
      
      public static const DAILY_TASK_REPLACE_FAIL:String = §%! §("DAILY_TASK_REPLACE_FAIL");
      
      public static const DAILY_TASKS_CLEARED:String = §%! §("DAILY_TASKS_CLEARED");
      
      public static const DAILY_TASKS_INCREASE_SCORE_QTIP:String = §%! §("DAILY_TASKS_INCREASE_SCORE_QTIP");
      
      public static const DAILY_TASKS_NEXT_PARAM:String = §%! §("DAILY_TASKS_NEXT_PARAM");
      
      public static const DAILY_TASKS_NEXT_DAY:String = §%! §("DAILY_TASKS_NEXT_DAY");
      
      public static const DAILY_TASKS_CHEST_QTIP:String = §%! §("DAILY_TASKS_CHEST_QTIP");
      
      public static const DAILY_TASKS_CHEST_EMPTY_QTIP:String = §%! §("DAILY_TASKS_CHEST_EMPTY_QTIP");
      
      public static const DAILY_TASKS_REWARD_GETNOW_QTIP:String = §%! §("DAILY_TASKS_REWARD_GETNOW_QTIP");
      
      public static const DAILY_TASKS_TAKE_REWARD:String = §%! §("DAILY_TASKS_TAKE_REWARD");
      
      public static const DAILY_TASKS_TAKE_CHEST_REWARD:String = §%! §("DAILY_TASKS_TAKE_CHEST_REWARD");
      
      public static const BUY_TASK_REPLACE_QUESTION:String = §%! §("BUY_TASK_REPLACE_QUESTION");
      
      public static const BUY_TASK_REPLACE_TEXT:String = §%! §("BUY_TASK_REPLACE_TEXT");
      
      public static const DAILY_TASKS_STARTED:String = §%! §("DAILY_TASKS_STARTED");
      
      public static const DAILY_TASKS_INFO:String = §%! §("DAILY_TASKS_INFO");
      
      public static const DAILY_TASKS_QTIP:String = §%! §("DAILY_TASKS_QTIP");
      
      public static const DAILY_TASKS_REPLACE_QTIP:String = §%! §("DAILY_TASKS_REPLACE_QTIP");
      
      public static const PROMPT_AVAILABLE_TASKS:String = §%! §("PROMPT_AVAILABLE_TASKS");
      
      public static const COPY_ID:String = §%! §("COPY_ID");
      
      public static const ADMIN_CHAT_MESSAGE:String = §%! §("ADMIN_CHAT_MESSAGE");
      
      public static const TEMPORAL_ITEM:String = §%! §("TEMPORAL_ITEM");
      
      private static const §0%o§:Vector.<String> = new Vector.<String>(0);
      
      private static const §<I§:Vector.<String> = new Vector.<String>(0);
      
      public function §0$N§()
      {
         super();
      }
      
      public static function §%! §(param1:String, ... rest) : String
      {
         var isFound:Boolean = false;
         var type:§7"n§ = null;
         var message:String = null;
         var key:String = param1;
         var onlyFor:Array = rest;
         if(!§8"%§.§[f§)
         {
            return "";
         }
         if(Boolean(onlyFor) && Boolean(onlyFor.length))
         {
            isFound = false;
            for each(type in onlyFor)
            {
               isFound ||= §8"%§.§[f§.getType().equals(type);
            }
            if(!isFound)
            {
               return "";
            }
         }
         else if(Boolean(§"#u§[key]) && !§7"n§(§"#u§[key]).equals(§8"%§.§[f§.getType()))
         {
            return "";
         }
         try
         {
            message = §<"G§.§%! §(key);
            return message;
         }
         catch(error:Error)
         {
            return "";
         }
      }
      
      public static function §<N§(param1:String, param2:String = null) : String
      {
         var message:String = null;
         var key:String = param1;
         var defaultValue:String = param2;
         message = defaultValue != null ? defaultValue : key;
         try
         {
            message = §<"G§.§%! §(key);
            if(Boolean(message) && §<I§.indexOf(message) == -1)
            {
               §<I§.push(message);
            }
         }
         catch(error:Error)
         {
         }
         finally
         {
            return message;
         }
      }
      
      public static function §>!v§() : String
      {
         var _loc1_:int = 0;
         if(!§0%o§.length)
         {
            return "";
         }
         _loc1_ = Math.round((§0%o§.length - 1) * Math.random());
         return §0%o§[_loc1_];
      }
      
      public static function §`&4§() : String
      {
         var _loc1_:int = 0;
         if(!§<I§.length)
         {
            return "";
         }
         _loc1_ = Math.round((§<I§.length - 1) * Math.random());
         return §<I§[_loc1_];
      }
   }
}

