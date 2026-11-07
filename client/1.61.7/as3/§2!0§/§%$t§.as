package §2!0§
{
   import § K§.§2!!§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#$e§.§!a§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0%j§.§0$+§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §7$t§.§^$E§;
   import §<%E§.§,$2§;
   import §=#g§.*;
   import §[#q§.§,"m§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.facebook.controller.§4$g§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §%$t§
   {
      
      public function §%$t§()
      {
         super();
      }
      
      public static function create(param1:§1#+§) : §2!!§
      {
         switch(param1.getType())
         {
            case §7"n§.VK:
               return new §,"m§(§]s§(param1));
            case §7"n§.OK:
               return new §,"m§(§?#w§(param1));
            case §7"n§.MM:
               return new §,"m§(§0$+§(param1));
            case §7"n§.FB:
               return new §4$g§(§!a§(param1));
            default:
               return null;
         }
      }
   }
}

