package §@"!§
{
   import §!!i§.§@&&§;
   import §!$Z§.§6=§;
   import §!L§.§7%0§;
   import §"$+§.§@C§;
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §+%S§.§`$l§;
   import §-8§.§`%[§;
   import §0%[§.§0%§;
   import §1#p§.Team;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<!W§.§1N§;
   import §=&!§.§<$Z§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §[!`§.*;
   import §^"y§.§]#i§;
   import com.greensock.TweenMax;
   import config.§`!a§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.InviteToClanRequest;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class § %@§ implements §7$x§
   {
      
      private var result:§<$Z§ = null;
      
      public function § %@§()
      {
         super();
      }
      
      public function §@!'§(param1:Vector.<Team>) : §<$Z§
      {
         if(param1.length == 0)
         {
            this.result = §<$Z§.§!M§;
         }
         return this.result;
      }
      
      public function §1%h§(param1:§<$Z§) : void
      {
         this.result = param1;
      }
   }
}

