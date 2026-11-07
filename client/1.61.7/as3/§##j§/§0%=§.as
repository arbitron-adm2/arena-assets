package §##j§
{
   import §6_§.*;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §]$&§.§2&2§;
   import §^!]§.MineSetUpEvent;
   import config.§^"2§;
   import flash.display.SimpleButton;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §0%=§ extends §9x§
   {
      
      private var profile:UserProfile;
      
      public function §0%=§(param1:UserProfile)
      {
         super(1);
         name = "mercenary";
         this.profile = param1;
      }
      
      public function getProfile() : UserProfile
      {
         return this.profile;
      }
      
      public function getRecord() : §+%7§
      {
         var _loc1_:int = this.profile.getId();
         if(_loc1_ < 0 && _loc1_ >= §^"2§.§'![§(§^"2§.list.length - 1).id)
         {
            return §4&A§.§'![§(_loc1_);
         }
         return null;
      }
      
      override public function toString() : String
      {
         return "{" + name + ",id=" + this.profile.getId() + "}";
      }
   }
}

