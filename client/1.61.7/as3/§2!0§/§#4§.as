package §2!0§
{
   import § K§.§+2§;
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §&$Y§.§2$4§;
   import §+#P§.§]!E§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2#i§.§9##§;
   import §3#a§.§-#M§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §=#g§.§&%5§;
   import §=$#§.§1!$§;
   import §=&6§.§[$f§;
   import §>%I§.§`!g§;
   import §?"[§.§57§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §@!N§.§'+§;
   import §@!N§.§3!3§;
   import §@"x§.*;
   import §@<§.§+%]§;
   import §[#q§.§0T§;
   import §^#[§.§&$2§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.facebook.controller.§^# §;
   
   public class §#4§
   {
      
      public function §#4§()
      {
         super();
      }
      
      public static function create(param1:§1#+§) : §+2§
      {
         switch(param1.getType())
         {
            case §7"n§.VK:
               return new §0T§(param1);
            case §7"n§.OK:
               return new §[$f§(param1);
            case §7"n§.FB:
               return new §^# §(param1);
            case §7"n§.MM:
               return new §57§(param1);
            default:
               return new §2$4§(param1);
         }
      }
   }
}

