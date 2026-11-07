package §2#8§
{
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import §2#x§.*;
   import §4$b§.§6!G§;
   import §<"L§.*;
   import §`%&§.§,%§;
   import com.adobe.serialization.json.JSON;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.QuitClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   
   public class §]&!§ extends §`&-§
   {
      
      private var charIcon:§6!G§;
      
      public function §]&!§(param1:DisplayObject)
      {
         super(param1);
      }
      
      public function §@$`§(param1:UserProfile) : void
      {
         this.charIcon = §"$t§.§!!1§(this.charIcon,param1,§'$a§("charIcon"));
         this.charIcon.§!$B§();
         §"$t§.§<$W§(param1,getContainer() as MovieClip);
      }
   }
}

