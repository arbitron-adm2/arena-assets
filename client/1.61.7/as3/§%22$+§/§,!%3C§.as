package §"$+§
{
   import §!L§.§`#p§;
   import §0%[§.§0%§;
   import §=!p§.§'%#§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §,!<§
   {
      
      §§push(§§findproperty(§5#v§));
      
      public static const §5#v§:Vector.<int> = new <int>[CREATE,§6!Z§,§@#A§,§3#7§,§2&9§,§[U§,§6&!§,§?§,§?#l§,§<$R§,§@&G§,§&#8§,§1#_§,§=]§,§#">§,§!"6§,§1$§];
      
      private static const CREATE:uint = 1;
      
      private static const §6!Z§:uint = 2;
      
      private static const §@#A§:uint = 3;
      
      private static const §3#7§:uint = 4;
      
      private static const §2&9§:uint = 5;
      
      private static const §[U§:uint = 6;
      
      private static const §6&!§:uint = 7;
      
      private static const §?§:uint = 8;
      
      private static const §?#l§:uint = 9;
      
      private static const §<$R§:uint = 10;
      
      private static const §@&G§:uint = 11;
      
      private static const §&#8§:uint = 12;
      
      private static const §1#_§:uint = 14;
      
      private static const §=]§:uint = 15;
      
      private static const §#">§:uint = 16;
      
      private static const §!"6§:uint = 17;
      
      private static const §1$§:uint = 18;
      
      public function §,!<§()
      {
         super();
      }
      
      public static function §%! §(param1:ClanAuditActionTO) : String
      {
         var _loc2_:ClanMemberTO = null;
         var _loc3_:ClanMemberTO = null;
         var _loc8_:String = null;
         _loc2_ = §=%_§.§<!5§(param1.publisherId);
         _loc3_ = §=%_§.§<!5§(param1.memberId);
         var _loc4_:String = §8Y§(param1.publisherId,_loc2_ ? _loc2_.socialId : 0);
         var _loc5_:String = §8Y§(param1.memberId,_loc3_ ? _loc3_.socialId : 0);
         var _loc6_:String = "";
         var _loc7_:String = "";
         switch(param1.action)
         {
            case CREATE:
               _loc6_ = §0%§.format(§0$N§.CLAN_CREATED,{"name":_loc4_});
               break;
            case §6!Z§:
               _loc6_ = §0%§.format(§0$N§.CLAN_DELETED,{"name":_loc4_});
               break;
            case §@#A§:
               _loc6_ = §0%§.format(§0$N§.MEMBER_JOINED_CLAN,{"name":_loc4_});
               break;
            case §3#7§:
               _loc6_ = §0%§.format(§0$N§.MEMBER_WAS_EXPELLED,{
                  "name":_loc5_,
                  "subject":_loc4_
               });
               break;
            case §2&9§:
               _loc6_ = §0%§.format(§0$N§.MEMBER_LEFT_CLAN,{"name":_loc4_});
               break;
            case §[U§:
               _loc6_ = §7![§(param1.param == §`&$§.§+#8§ ? §0%§.format(§0$N§.LEADER_SWITCHED_WITH_OFFICER,{"name":_loc5_}) : §0%§.format(§0$N§.LEADER_PROMOTE_RANK_MEMBER,{
                  "name":_loc5_,
                  "rank":§0$N§.§%! §("RANK_OFFICER_ACCUSITIVE")
               }),_loc4_);
               break;
            case §6&!§:
               _loc6_ = §7![§(§0%§.format(§0$N§.LEADER_LOWER_RANK_MEMBER,{
                  "name":_loc5_,
                  "rank":§0$N§.§%! §("RANK_SOLDIER_ACCUSITIVE")
               }),_loc4_);
               break;
            case §?§:
               _loc6_ = §0%§.format(§0$N§.CLAN_HAS_NEW_CAPACITY,{"name":_loc4_});
               break;
            case §?#l§:
               _loc6_ = §0%§.format(§0$N§.CLAN_HAS_NEW_NAME,{"name":_loc4_});
               break;
            case §<$R§:
               _loc6_ = §0%§.format(§0$N§.CLAN_HAS_NEW_DESCRIPTION,{"name":_loc4_});
               break;
            case §@&G§:
               _loc6_ = §7![§(§0%§.format(§0$N§.CLAN_HAS_NEW_EMBLEM,{"name":_loc4_}),_loc4_);
               break;
            case §&#8§:
               _loc6_ = §7![§(§0%§.format(param1.param == 0 ? §0$N§.CLAN_EXIT_HAS_OPENED : §0$N§.CLAN_EXIT_HAS_CLOSED),_loc4_);
               break;
            case §1#_§:
               _loc7_ = Social.§-%c§.§4!]§(int(param1.param),§0$N§.RUBY_PLURALS);
               _loc6_ = §0%§.format(§0$N§.DONATE_CLAN_MEMBER,{
                  "name":_loc4_,
                  "count":param1.param,
                  "rubies":_loc7_
               });
               break;
            case §=]§:
               _loc7_ = Social.§-%c§.§4!]§(int(param1.param),§0$N§.RUBY_PLURALS);
               _loc6_ = §7![§(§0%§.format(§0$N§.CHANGE_MEDAL_PRICE_CLAN,{
                  "count":param1.param,
                  "rubies":_loc7_
               }),_loc4_);
               break;
            case §#">§:
               _loc8_ = Social.§-%c§.§4!]§(int(param1.param),§0$N§.MEDAL_PLURALS);
               _loc6_ = §0%§.format(§0$N§.EXCHANGE_MEDALS_CLAN_MEMBER,{
                  "name":_loc4_,
                  "count":param1.param,
                  "medals":_loc8_
               });
               break;
            case §!"6§:
               _loc6_ = §0%§.format(param1.param == 0 ? §0$N§.OFFICER_WAS_EXPEL_PERMISSION_OFF : §0$N§.OFFICER_WAS_EXPEL_PERMISSION_ON,{
                  "name":_loc5_,
                  "subject":_loc4_
               });
               break;
            case §1$§:
               _loc6_ = §0%§.format(param1.param == 0 ? §0$N§.MEMBER_WAS_UNMUTED : §0$N§.MEMBER_WAS_MUTED,{
                  "name":_loc5_,
                  "subject":_loc4_
               });
         }
         return _loc6_;
      }
      
      private static function §7![§(param1:String, param2:String) : String
      {
         return param1.slice(0,param1.length - 1) + " (" + param2 + ").";
      }
      
      private static function §8Y§(param1:int, param2:int) : String
      {
         var _loc7_:§'%#§ = null;
         var _loc3_:UserProfile = §`#p§.§ !§(param1);
         var _loc4_:uint = §8"%§.context.§54§().§1#&§;
         if(Boolean(_loc3_) && Boolean(_loc3_.getSocialData()) && param2 == _loc4_)
         {
            _loc7_ = _loc3_.getSocialData();
            return §`%L§(_loc7_.§#$5§() + " " + _loc7_.§8!_§(),_loc7_.§[#s§());
         }
         var _loc5_:String = §0$N§.§%! §("CLAN_CAPTION_PLAYER") + " " + param1;
         var _loc6_:String = param2 == _loc4_ ? Social.settings.§@%"§(String(param1)) : "";
         return _loc6_ ? §`%L§(_loc5_,_loc6_) : _loc5_;
      }
      
      private static function §`%L§(param1:String, param2:String) : String
      {
         return "<font color=\"#27A0FF\"><a href=\"" + param2 + "\" target=\"_blank\">" + param1 + "</a></font>";
      }
   }
}

