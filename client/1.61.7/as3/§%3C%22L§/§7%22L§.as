package §<"L§
{
   import §%L§.§%%w§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanBase;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §7"L§
   {
      
      public static const §1$R§:int = 40;
      
      public function §7"L§()
      {
         super();
      }
      
      public static function §9!R§(param1:LoginClanBase) : void
      {
         var _loc2_:UserProfile = Application.userProfile;
         param1.protocolVersion = §##-§.§%"E§;
         param1.socialId = §8"%§.§[f§.getType() == §7"n§.NONE ? int(§7"n§.VK.§1#&§) : int(§8"%§.§[f§.getType().§1#&§);
         param1.profileId = _loc2_.getId();
         param1.socialProfileId = _loc2_.§"%D§();
         param1.name = §4! §.§<&-§(_loc2_,§1$R§);
         param1.sessionKey = §%%w§.§7F§.§?$X§();
      }
   }
}

