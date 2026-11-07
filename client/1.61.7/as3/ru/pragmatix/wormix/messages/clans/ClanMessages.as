package ru.pragmatix.wormix.messages.clans
{
   import § #9§.§3L§;
   import §2#i§.§+%z§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §@<§.§+%]§;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class ClanMessages
   {
      
      private static const §4!6§:uint = 7000;
      
      private static const §[&?§:uint = 17000;
      
      private static const §5!D§:uint = 7100;
      
      public static const LOGIN_REQUEST:uint = §4!6§ + 1;
      
      public static const LOGIN_CREATE_REQUEST:uint = §4!6§ + 2;
      
      public static const LOGIN_JOIN_REQUEST:uint = §4!6§ + 3;
      
      public static const LOGIN_RESPONSE:uint = §[&?§ + 1;
      
      public static const LOGIN_ERROR_RESPONSE:uint = §[&?§ + 3;
      
      public static const LOGOUT_REQUEST:uint = §4!6§ + 7;
      
      public static const DELETE_CLAN_REQUEST:uint = §4!6§ + 11;
      
      public static const DELETE_CLAN_RESPONSE:uint = §[&?§ + 11;
      
      public static const INVITE_TO_CLAN_REQUEST:uint = §4!6§ + 102;
      
      public static const INVITE_TO_CLAN_RESPONSE:uint = §[&?§ + 102;
      
      public static const EXPEL_FROM_CLAN_REQUEST:uint = §4!6§ + 104;
      
      public static const EXPEL_FROM_CLAN_RESPONSE:uint = §[&?§ + 104;
      
      public static const QUIT_CLAN_REQUEST:uint = §4!6§ + 105;
      
      public static const QUIT_FROM_CLAN_RESPONSE:uint = §[&?§ + 105;
      
      public static const PROMOTE_IN_RANK_REQUEST:uint = §4!6§ + 106;
      
      public static const PROMOTE_IN_RANK_RESPONSE:uint = §[&?§ + 106;
      
      public static const LOWER_IN_RANK_REQUEST:uint = §4!6§ + 107;
      
      public static const LOWER_IN_RANK_RESPONSE:uint = §[&?§ + 107;
      
      public static const INCREASE_LEVEL_CLAN_REQUEST:uint = §4!6§ + 108;
      
      public static const INCREASE_LEVEL_CLAN_RESPONSE:uint = §[&?§ + 108;
      
      public static const POST_TO_CHAT_REQUEST:uint = §4!6§ + 109;
      
      public static const POST_TO_CHAT_RESPONSE:uint = §[&?§ + 109;
      
      public static const CHAT_MESSAGE_EVENT:uint = §5!D§ + 109;
      
      public static const POST_NEWS_REQUEST:uint = §4!6§ + 110;
      
      public static const POST_NEWS_RESPONSE:uint = §[&?§ + 110;
      
      public static const CLAN_SUMMARY_REQUEST:uint = §4!6§ + 112;
      
      public static const CLAN_SUMMARY_RESPONSE:uint = §[&?§ + 112;
      
      public static const LIST_CLANS_REQUEST:uint = §4!6§ + 113;
      
      public static const LIST_CLANS_RESPONSE:uint = §[&?§ + 113;
      
      public static const RENAME_CLAN_REQUEST:uint = §4!6§ + 114;
      
      public static const RENAME_CLAN_RESPONSE:uint = §[&?§ + 114;
      
      public static const CHANGE_CLAN_EMBLEM_REQUEST:uint = §4!6§ + 115;
      
      public static const CHANGE_CLAN_EMBLEM_RESPONSE:uint = §[&?§ + 115;
      
      public static const CHANGE_CLAN_DESCRIPTION_REQUEST:uint = §4!6§ + 116;
      
      public static const CHANGE_CLAN_DESCRIPTION_RESPONSE:uint = §[&?§ + 116;
      
      public static const TOP_CLANS_REQUEST:uint = §4!6§ + 117;
      
      public static const TOP_CLANS_RESPONSE:uint = §[&?§ + 117;
      
      public static const CHANGE_CLAN_REVIEW_STATE_REQUEST:uint = §4!6§ + 118;
      
      public static const UPDATE_CLAN_REQUEST:uint = §4!6§ + 119;
      
      public static const CHANGE_CLAN_JOIN_RATING_REQUEST:uint = §4!6§ + 120;
      
      public static const CHANGE_CLAN_JOIN_RATING_RESPONSE:uint = §[&?§ + 120;
      
      public static const DONATE_REQUEST:uint = §4!6§ + 121;
      
      public static const DONATE_RESPONSE:uint = §[&?§ + 121;
      
      public static const CHANGE_CLAN_CLOSE_EXIT_REQUEST:uint = §4!6§ + 122;
      
      public static const CHANGE_CLAN_CLOSE_EXIT_RESPONSE:uint = §[&?§ + 122;
      
      public static const CHANGE_CLAN_MEDAL_PRICE_REQUEST:uint = §4!6§ + 123;
      
      public static const CHANGE_CLAN_MEDAL_PRICE_RESPONSE:uint = §[&?§ + 123;
      
      public static const CASH_MEDALS_REQUEST:uint = §4!6§ + 124;
      
      public static const CASH_MEDALS_RESPONSE:uint = §[&?§ + 124;
      
      public static const AUDIT_ACTIONS_REQUEST:uint = §4!6§ + 125;
      
      public static const AUDIT_ACTIONS_RESPONSE:uint = §[&?§ + 125;
      
      public static const GLADIATOR_FINISH_EVENT:uint = §5!D§ + 26;
      
      public static const SET_EXPEL_PERMIT_REQUEST:uint = §4!6§ + 127;
      
      public static const SET_EXPEL_PERMIT_RESPONSE:uint = §[&?§ + 127;
      
      public static const SET_MUTE_MODE_REQUEST:uint = §4!6§ + 128;
      
      public static const SET_MUTE_MODE_RESPONSE:uint = §[&?§ + 128;
      
      public static const CRAFT_LEGENDARY_EVENT:uint = §5!D§ + 29;
      
      public function ClanMessages()
      {
         super();
      }
   }
}

