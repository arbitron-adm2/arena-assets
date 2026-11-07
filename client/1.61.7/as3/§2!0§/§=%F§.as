package §2!0§
{
   import § &5§.§0&$§;
   import §#%!§.*;
   import §&"c§.§5$n§;
   import §+#m§.§@"i§;
   import §<!W§.§7!L§;
   import §=&!§.§<$Z§;
   import §@<§.§+%]§;
   import §^4§.§4&4§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §=%F§
   {
      
      public function §=%F§()
      {
         super();
      }
      
      public static function create(param1:§1#+§, param2:String) : §@"i§
      {
         switch(param1.getType())
         {
            case §7"n§.VK:
               return new §@"i§(param2);
            case §7"n§.FB:
               return new §@"i§(param2);
            case §7"n§.OK:
               return new §@"i§(param2);
            case §7"n§.MM:
               return new §@"i§(param2);
            case §7"n§.NONE:
               return new §@"i§(param2);
            default:
               return new §@"i§(param2);
         }
      }
   }
}

