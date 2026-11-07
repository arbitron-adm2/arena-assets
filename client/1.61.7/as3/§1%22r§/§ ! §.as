package §1"r§
{
   import §##y§.CollisionEvent;
   import §%L§.§%%w§;
   import §0%[§.§^"5§;
   import §<%E§.§'$g§;
   import §<%E§.§0#G§;
   import §=&!§.§<$Z§;
   import §?$L§.§ "N§;
   import §@!i§.§8%6§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   
   public class § ! § extends §0#G§
   {
      
      public static const ACTIVE:String = "ACTIVE";
      
      public static const BLOCKED:String = "BLOCKED";
      
      public static const ADMIN:String = "ADMIN";
      
      public static const MODERATOR:String = "MODERATOR";
      
      public static const PASSIVE:String = "PASSIVE";
      
      public static const UNKNOWN:String = "UNKNOWN";
      
      private var _status:String;
      
      public function § ! §()
      {
         super();
      }
      
      public function get status() : String
      {
         return this._status;
      }
      
      public function set status(param1:String) : void
      {
         this._status = param1;
      }
   }
}

