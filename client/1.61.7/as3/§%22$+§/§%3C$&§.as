package §"$+§
{
   import §!$d§.§<$c§;
   import §0%[§.§0%§;
   import §1#p§.*;
   import §7$t§.§&!e§;
   import §?#g§.Race;
   import §@!N§.§2"e§;
   import §^"y§.§]#i§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §<$&§
   {
      
      public function §<$&§()
      {
         super();
      }
      
      public static function §!%a§(param1:ClanChatMessageTO) : String
      {
         var _loc7_:ClanMemberTO = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§&!e§ = null;
         var _loc11_:String = null;
         var _loc2_:String = §1#a§(param1.publisherName,§@C§.§+#d§);
         var _loc3_:String = §1#a§(param1.memberName,§@C§.§+#d§);
         var _loc4_:String = "";
         var _loc5_:String = "";
         var _loc6_:String = "";
         switch(param1.actionCode)
         {
            case ClanMessages.LOGIN_JOIN_REQUEST:
               _loc4_ = §0%§.format(§0$N§.MEMBER_JOINED_CLAN,{"name":_loc2_});
               break;
            case ClanMessages.QUIT_CLAN_REQUEST:
               _loc4_ = §0%§.format(§0$N§.MEMBER_LEFT_CLAN,{"name":_loc2_});
               break;
            case ClanMessages.RENAME_CLAN_REQUEST:
               _loc4_ = §0%§.format(§0$N§.CLAN_HAS_NEW_NAME,{"name":_loc2_});
               break;
            case ClanMessages.CHANGE_CLAN_DESCRIPTION_REQUEST:
               _loc4_ = §0%§.format(§0$N§.CLAN_HAS_NEW_DESCRIPTION,{"name":_loc2_});
               break;
            case ClanMessages.INCREASE_LEVEL_CLAN_REQUEST:
               _loc4_ = §0%§.format(§0$N§.CLAN_HAS_NEW_CAPACITY,{"name":_loc2_});
               break;
            case ClanMessages.CHANGE_CLAN_EMBLEM_REQUEST:
               _loc4_ = §0$N§.CLAN_HAS_NEW_EMBLEM;
               break;
            case ClanMessages.PROMOTE_IN_RANK_REQUEST:
               _loc7_ = §=%_§.§<!5§(param1.memberProfileId);
               _loc4_ = (Boolean(_loc7_)) && _loc7_.rank == §`&$§.§+#8§ ? §0%§.format(§0$N§.LEADER_SWITCHED_WITH_OFFICER,{"name":_loc3_}) : §0%§.format(§0$N§.LEADER_PROMOTE_RANK_MEMBER,{
                  "name":_loc3_,
                  "rank":§0$N§.§%! §("RANK_OFFICER_ACCUSITIVE")
               });
               break;
            case ClanMessages.LOWER_IN_RANK_REQUEST:
               _loc4_ = §0%§.format(§0$N§.LEADER_LOWER_RANK_MEMBER,{
                  "name":_loc3_,
                  "rank":§0$N§.§%! §("RANK_SOLDIER_ACCUSITIVE")
               });
               break;
            case ClanMessages.EXPEL_FROM_CLAN_REQUEST:
               _loc4_ = §0%§.format(§0$N§.MEMBER_WAS_EXPELLED,{
                  "name":_loc3_,
                  "subject":_loc2_
               });
               break;
            case ClanMessages.CHANGE_CLAN_CLOSE_EXIT_REQUEST:
               _loc4_ = !§]#i§.userClan.isExitClosed ? §0$N§.CLAN_EXIT_HAS_CLOSED : §0$N§.CLAN_EXIT_HAS_OPENED;
               break;
            case ClanMessages.DONATE_REQUEST:
               _loc6_ = Social.§-%c§.§4!]§(int(param1.params),§0$N§.RUBY_PLURALS);
               _loc4_ = §0%§.format(§0$N§.DONATE_CLAN_MEMBER,{
                  "name":_loc2_,
                  "count":param1.params,
                  "rubies":_loc6_
               });
               break;
            case ClanMessages.CHANGE_CLAN_MEDAL_PRICE_REQUEST:
               _loc6_ = Social.§-%c§.§4!]§(int(param1.params),§0$N§.RUBY_PLURALS);
               _loc4_ = §0%§.format(§0$N§.CHANGE_MEDAL_PRICE_CLAN,{
                  "count":param1.params,
                  "rubies":_loc6_
               });
               break;
            case ClanMessages.CASH_MEDALS_REQUEST:
               _loc8_ = Social.§-%c§.§4!]§(int(param1.params),§0$N§.MEDAL_PLURALS);
               _loc4_ = §0%§.format(§0$N§.EXCHANGE_MEDALS_CLAN_MEMBER,{
                  "name":_loc2_,
                  "count":param1.params,
                  "medals":_loc8_
               });
               break;
            case ClanMessages.GLADIATOR_FINISH_EVENT:
               _loc4_ = §0%§.format(§0$N§.MEMBER_GLADIATOR_COMPLETE_MESSAGE,{
                  "name":_loc2_,
                  "count":param1.params
               });
               break;
            case ClanMessages.SET_EXPEL_PERMIT_REQUEST:
               _loc5_ = param1.params == "true" ? §0$N§.OFFICER_WAS_EXPEL_PERMISSION_ON : §0$N§.OFFICER_WAS_EXPEL_PERMISSION_OFF;
               _loc4_ = §2"e§.§#"I§(§0%§.format(_loc5_,{
                  "name":_loc3_,
                  "subject":_loc2_
               }),§@C§.§0%y§);
               break;
            case ClanMessages.SET_MUTE_MODE_REQUEST:
               _loc5_ = param1.params == "true" ? §0$N§.MEMBER_WAS_MUTED : §0$N§.MEMBER_WAS_UNMUTED;
               _loc4_ = §2"e§.§#"I§(§0%§.format(_loc5_,{
                  "name":_loc3_,
                  "subject":_loc2_
               }),§@C§.§0%y§);
               break;
            case ClanMessages.CRAFT_LEGENDARY_EVENT:
               _loc9_ = int(param1.params);
               _loc10_ = §<$c§.§8&E§(_loc9_,Race.§+#T§.§]!D§());
               _loc11_ = _loc10_.§7%z§();
               _loc4_ = §0%§.format(§0$N§.MEMBER_CRAFT_LEGENDARY_MESSAGE,{
                  "name":_loc2_,
                  "item":_loc11_
               });
               break;
            default:
               _loc4_ += §0$N§.CLAN_UNKNOWN_MESSAGE + " actionCode=" + param1.actionCode + " params=" + param1.params;
         }
         return "<b>" + §2"e§.§#"I§(_loc4_,"#64AEFF") + "</b>";
      }
      
      public static function §;%g§(param1:ClanChatMessageTO) : String
      {
         var _loc3_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§&!e§ = null;
         var _loc11_:String = null;
         var _loc2_:String = §1#a§(§=%_§.§?"F§(param1.publisherProfileId,30));
         _loc3_ = §1#a§(§=%_§.§?"F§(param1.memberProfileId,30));
         var _loc4_:String = "";
         var _loc5_:String = "";
         var _loc6_:String = "";
         switch(param1.actionCode)
         {
            case ClanMessages.POST_TO_CHAT_REQUEST:
               _loc4_ = §2"e§.§#"I§(_loc2_ + ": ","#696969") + §2"e§.§#"I§(param1.params,"#9A9A9A");
               break;
            case ClanMessages.LOGIN_JOIN_REQUEST:
               _loc4_ = §2"e§.§#"I§(§0%§.format(§0$N§.MEMBER_JOINED_CLAN,{"name":_loc2_}),§@C§.§0%y§);
               break;
            case ClanMessages.QUIT_CLAN_REQUEST:
               _loc4_ = §2"e§.§#"I§(§0%§.format(§0$N§.MEMBER_LEFT_CLAN,{"name":_loc2_}),§@C§.§0%y§);
               break;
            case ClanMessages.RENAME_CLAN_REQUEST:
               _loc4_ = §2"e§.§#"I§(§0%§.format(§0$N§.CLAN_HAS_NEW_NAME,{"newName":§]#i§.userClan.name}),§@C§.§0%y§);
               break;
            case ClanMessages.CHANGE_CLAN_DESCRIPTION_REQUEST:
               _loc4_ = §2"e§.§#"I§(§0$N§.CLAN_HAS_NEW_DESCRIPTION,§@C§.§0%y§);
               break;
            case ClanMessages.INCREASE_LEVEL_CLAN_REQUEST:
               _loc4_ = §2"e§.§#"I§(§0%§.format(§0$N§.CLAN_HAS_NEW_CAPACITY,{"name":_loc2_}),§@C§.§0%y§);
               break;
            case ClanMessages.CHANGE_CLAN_EMBLEM_REQUEST:
               _loc4_ = §2"e§.§#"I§(§0$N§.CLAN_HAS_NEW_EMBLEM,§@C§.§0%y§);
               break;
            case ClanMessages.PROMOTE_IN_RANK_REQUEST:
               _loc7_ = §=%_§.§<!5§(param1.memberProfileId).rank == §`&$§.§+#8§ ? §0%§.format(§0$N§.LEADER_SWITCHED_WITH_OFFICER,{"name":_loc3_}) : §0%§.format(§0$N§.LEADER_PROMOTE_RANK_MEMBER,{
                  "name":_loc3_,
                  "rank":§0$N§.§%! §("RANK_OFFICER_ACCUSITIVE")
               });
               _loc4_ = §2"e§.§#"I§(_loc7_,§@C§.§0%y§);
               break;
            case ClanMessages.LOWER_IN_RANK_REQUEST:
               _loc4_ = §2"e§.§#"I§(§0%§.format(§0$N§.LEADER_LOWER_RANK_MEMBER,{
                  "name":_loc3_,
                  "rank":§0$N§.§%! §("RANK_SOLDIER_ACCUSITIVE")
               }),§@C§.§0%y§);
               break;
            case ClanMessages.EXPEL_FROM_CLAN_REQUEST:
               _loc4_ = §2"e§.§#"I§(§0%§.format(§0$N§.MEMBER_WAS_EXPELLED,{
                  "name":_loc3_,
                  "subject":_loc2_
               }),§@C§.§0%y§);
               break;
            case ClanMessages.CHANGE_CLAN_CLOSE_EXIT_REQUEST:
               break;
            case ClanMessages.DONATE_REQUEST:
               _loc6_ = Social.§-%c§.§4!]§(int(param1.params),§0$N§.RUBY_PLURALS);
               _loc4_ = §0%§.format(§0$N§.DONATE_CLAN_MEMBER,{
                  "name":_loc2_,
                  "count":param1.params,
                  "rubies":_loc6_
               });
               break;
            case ClanMessages.CHANGE_CLAN_MEDAL_PRICE_REQUEST:
               _loc6_ = Social.§-%c§.§4!]§(int(param1.params),§0$N§.RUBY_PLURALS);
               _loc4_ = §0%§.format(§0$N§.CHANGE_MEDAL_PRICE_CLAN,{
                  "count":param1.params,
                  "rubies":_loc6_
               });
               break;
            case ClanMessages.CASH_MEDALS_REQUEST:
               _loc8_ = Social.§-%c§.§4!]§(int(param1.params),§0$N§.MEDAL_PLURALS);
               _loc4_ = §0%§.format(§0$N§.EXCHANGE_MEDALS_CLAN_MEMBER,{
                  "name":_loc2_,
                  "count":param1.params,
                  "medals":_loc8_
               });
               break;
            case ClanMessages.GLADIATOR_FINISH_EVENT:
               _loc4_ = §0%§.format(§0$N§.MEMBER_GLADIATOR_COMPLETE_MESSAGE,{
                  "name":_loc2_,
                  "count":param1.params
               });
               break;
            case ClanMessages.SET_EXPEL_PERMIT_REQUEST:
               _loc5_ = param1.params == "true" ? §0$N§.OFFICER_WAS_EXPEL_PERMISSION_ON : §0$N§.OFFICER_WAS_EXPEL_PERMISSION_OFF;
               _loc4_ = §2"e§.§#"I§(§0%§.format(_loc5_,{
                  "name":_loc3_,
                  "subject":_loc2_
               }),§@C§.§0%y§);
               break;
            case ClanMessages.SET_MUTE_MODE_REQUEST:
               _loc5_ = param1.params == "true" ? §0$N§.MEMBER_WAS_MUTED : §0$N§.MEMBER_WAS_UNMUTED;
               _loc4_ = §2"e§.§#"I§(§0%§.format(_loc5_,{
                  "name":_loc3_,
                  "subject":_loc2_
               }),§@C§.§0%y§);
               break;
            case ClanMessages.CRAFT_LEGENDARY_EVENT:
               _loc9_ = int(param1.params);
               _loc10_ = §<$c§.§8&E§(_loc9_,Race.§+#T§.§]!D§());
               _loc11_ = _loc10_.§7%z§();
               _loc4_ = §0%§.format(§0$N§.MEMBER_CRAFT_LEGENDARY_MESSAGE,{
                  "name":_loc2_,
                  "item":_loc11_
               });
               break;
            default:
               _loc4_ += §2"e§.§#"I§(§0$N§.CLAN_UNKNOWN_MESSAGE + " actionCode=" + param1.actionCode + " params=" + param1.params,§@C§.§0%y§);
         }
         return _loc4_;
      }
      
      public static function §1#a§(param1:String, param2:int = -1) : String
      {
         var _loc3_:String = null;
         if(param2 == -1)
         {
            param2 = int(§@C§.§]%Z§);
         }
         if(!param1)
         {
            return §2"e§.NA;
         }
         if(param1.length < param2)
         {
            return param1;
         }
         _loc3_ = param1.split(" ")[0];
         return _loc3_.length < §@C§.§]%Z§ ? _loc3_ : _loc3_.substr(0,§@C§.§]%Z§ - 1) + "...";
      }
   }
}

