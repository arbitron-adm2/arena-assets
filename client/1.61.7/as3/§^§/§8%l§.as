package §^§
{
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §,!f§.*;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §@$§.*;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   use namespace gestouch_internal;
   
   public class §8%l§ extends §<"'§
   {
      
      public var §8"U§:String = §%$-§("VIRAL_SHARE");
      
      public var §2$Q§:String = §%$-§("VIRAL_NEW_RACE_TITLE");
      
      public var §["L§:String = §%$-§("VIRAL_NEW_RACE");
      
      public var §>$l§:String = §%$-§("VIRAL_NEW_SKIN_TITLE");
      
      public var §=$v§:String = §%$-§("VIRAL_NEW_SKIN");
      
      public var §>&I§:String = §%$-§("VIRAL_WIN_PVP_NO_RATING");
      
      public var §4!j§:String = §%$-§("VIRAL_WIN_PVP_WAGER_SURVIVE");
      
      public var §`%r§:String = §%$-§("VIRAL_WIN_PVP_WAGER");
      
      public var §&#A§:String = §%$-§("VIRAL_WIN_PVP_WAGER_WITH_ALLY");
      
      public var looseInPvp:String = §%$-§("VIRAL_LOOSE_PVP");
      
      public var §"#;§:String = §%$-§("VIRAL_LOOSE_PVP_EMENIES");
      
      public var §^#-§:String = §%$-§("VIRAL_WIN_ROPE_RACE_COOP");
      
      public var §#$W§:String = §%$-§("VIRAL_WIN_ROPE_RACE_VS_FRIEND");
      
      public var looseRopeRace:String = §%$-§("VIRAL_LOOSE_ROPE_RACE");
      
      public var §"!H§:String = §%$-§("VIRAL_FOUND_RUBY_TITLE");
      
      public var rubyFoundInHouse:String = §%$-§("VIRAL_FOUND_RUBY");
      
      public var enter7DaySequenceTitle:String = §%$-§("VIRAL_5DAY_SEQUENCE_TITLE");
      
      public var enter7DaySequence:String = §%$-§("VIRAL_5DAY_SEQUENCE");
      
      public var enter7DaySequence_rubies:String = §%$-§("VIRAL_5DAY_RUBIES_REWARD");
      
      public var §0!=§:String = §%$-§("VIRAL_NEW_HAT_TITLE");
      
      public var §?%&§:String = §%$-§("VIRAL_NEW_HAT");
      
      public var §%x§:String = §%$-§("VIRAL_NEW_WEAPON_TITLE");
      
      public var §"#i§:String = §%$-§("VIRAL_NEW_WEAPON");
      
      public var §9$X§:String = §%$-§("VIRAL_NEW_ARTIFACT_TITLE");
      
      public var §1"w§:String = §%$-§("VIRAL_NEW_ARTIFACT");
      
      public var §8%I§:String = §%$-§("VIRAL_NEW_LEVEL");
      
      public var newRank:String = §%$-§("VIRAL_NEW_RANK");
      
      public var rubyLeague:String = §%$-§("VIRAL_RUBY_LEAGUE");
      
      public var §`>§:String = §%$-§("AWARD_LABEL");
      
      public var §>z§:String = §%$-§("WALL_POST_NEW_CLAN");
      
      public var createClan:String = §%$-§("WALL_POST_CLAN_CREATE");
      
      public var §!$T§:String = §%$-§("WALL_POST_JOINED_TO_CLAN_TITLE");
      
      public var §>!>§:String = §%$-§("WALL_POST_JOINED_TO_CLAN");
      
      public var §-#<§:String = §%$-§("WALL_POST_CLAN_EXTENDED_TITLE");
      
      public var §#$S§:String = §%$-§("WALL_POST_CLAN_EXTENDED");
      
      public var §,=§:String = §%$-§("WALL_POST_OPENED_CLAN_TITLE");
      
      public var §#&§:String = §%$-§("WALL_POST_OPENED_CLAN");
      
      public var §#%t§:String = §%$-§("WALL_POST_CLAN_MEMBER_PROMOTE_TITLE");
      
      public var §@$#§:String = §%$-§("WALL_POST_CLAN_MEMBER_PROMOTE");
      
      public var §+$W§:String = §%$-§("WALL_POST_CLAN_MEMBER_PROMOTE_LEADER");
      
      public var §'%I§:String = §%$-§("WALL_POST_CLAN_MEDALS_EXCHANGE_TITLE");
      
      public var §-"Z§:String = §%$-§("WALL_POST_CLAN_MEDALS_EXCHANGE");
      
      public var §#$y§:String = §%$-§("WALL_POST_CLAN_DISSOLUTION_TITLE");
      
      public var §,#i§:String = §%$-§("WALL_POST_CLAN_DISSOLUTION");
      
      public var §;"D§:String = §%$-§("WALL_POST_CLAN_MEMBER_EXIT_TITLE");
      
      public var §<"s§:String = §%$-§("WALL_POST_CLAN_MEMBER_EXIT");
      
      public var §?$=§:Array = [§%$-§("AWARD_WEAPON_MESSAGE_1"),§%$-§("AWARD_WEAPON_MESSAGE_2"),§%$-§("AWARD_WEAPON_MESSAGE_3")];
      
      public var §0%<§:Array = [§%$-§("RARE_CHEST_MESSAGE_1"),§%$-§("RARE_CHEST_MESSAGE_2"),§%$-§("RARE_CHEST_MESSAGE_3")];
      
      public var §7!T§:Array = [§%$-§("ACHIEVEMENT_MESSAGE_1"),§%$-§("ACHIEVEMENT_MESSAGE_2"),§%$-§("ACHIEVEMENT_MESSAGE_3")];
      
      public var §4!$§:String = §%$-§("COOPERATIVE_LOSE_GAMEOVER_BOSS_MESSAGE");
      
      public var §%#s§:String = §%$-§("LOSE_GAMEOVER_BOSS_MESSAGE");
      
      public var §5"-§:String = §%$-§("COOPERATIVE_LOSE_GAMEOVER_SUPERBOSS_MESSAGE");
      
      public var §#"M§:String = §%$-§("LOSE_GAMEOVER_SUPERBOSS_MESSAGE");
      
      public var §]"H§:String = §%$-§("DRAW_GAMEOVER_BOSS_MESSAGE");
      
      public var §&$j§:String = §%$-§("TUTORIAL_COMPLETE_MESSAGE");
      
      public var gladiatorComplete:String = §%$-§("GLADIATOR_COMPLETE_MESSAGE");
      
      private const §,#P§:Vector.<String> = new <String>[§%$-§("WALL_POST_PLAYER_WIN_BOSS_FARMER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_HUNTER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_MANIACS"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_MINER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_SAMURAI_CAT"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_SERGEANT"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_BURNING_DEAD"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_WANDERING_SOUL"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_SHAMAN"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ILLUSIONIST"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_VIKING"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_PIRATE"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_WINDMASTER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_YAKUZA"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_REVIVED_CAPTAIN"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ROMEO_JULIET"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_KING_DEAD"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ANCIENT_GHOST"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ENGINEER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_GUARDIANS_DEPTHS"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_DARK_KNIGHT"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ASSASSIN"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ALCHEMIST"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ARCHBOT"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_EMPEROR"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_SCIENTIST"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_SYMBIOTE"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_BLACKSMITH"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_SOUL_MASTER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_REBEL_ROBOT"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_DEVOTEE")];
      
      private const §;%9§:Vector.<String>;
      
      public function §8%l§()
      {
         §§push(this);
         var _temp_46:* = new <String>[§%$-§("WALL_POST_PLAYER_WIN_BOSS_PALADIN"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_HACKER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_THIEVES"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_PSIONIC"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_PHANTOMS"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ARCHIDEMON"),§%$-§("WALL_POST_WIN_BOSS_DRUID"),§%$-§("WALL_POST_WIN_BOSS_PHARAOH"),§%$-§("WALL_POST_WIN_BOSS_CYBORG"),§%$-§("WALL_POST_WIN_BOSS_JARL"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ENCHANTER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ARCHIVIST"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_GRAVITY_MASTER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_SOLAR_PRIEST"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ARCTIC_WARRIOR"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_SPIDERS_QUEEN")];
         §§pop().§;%9§ = new <String>[§%$-§("WALL_POST_PLAYER_WIN_BOSS_PALADIN"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_HACKER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_THIEVES"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_PSIONIC"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_PHANTOMS"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ARCHIDEMON"),§%$-§("WALL_POST_WIN_BOSS_DRUID"),§%$-§("WALL_POST_WIN_BOSS_PHARAOH"),§%$-§("WALL_POST_WIN_BOSS_CYBORG"),§%$-§("WALL_POST_WIN_BOSS_JARL"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ENCHANTER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ARCHIVIST"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_GRAVITY_MASTER"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_SOLAR_PRIEST"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_ARCTIC_WARRIOR"),§%$-§("WALL_POST_PLAYER_WIN_BOSS_SPIDERS_QUEEN")];
         super();
         log = new §&`§(§8%l§);
      }
      
      public function §3$a§(param1:uint) : String
      {
         if(§6&'§.getInstance().contains(param1))
         {
            return this.§,#P§[param1 - 1];
         }
         if(§!#3§.getInstance().contains(param1))
         {
            param1 -= §!#3§.getInstance().§+#q§();
            return this.§;%9§[param1 - 1];
         }
         return "";
      }
      
      public function get §<$J§() : String
      {
         var _loc1_:Array = [§%$-§("NEW_ITEM_CRAFTED_1"),§%$-§("NEW_ITEM_CRAFTED_2"),§%$-§("NEW_ITEM_CRAFTED_3")];
         return _loc1_[Math.round(Math.random() * 2)];
      }
   }
}

